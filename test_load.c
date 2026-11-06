// Loads a .clap and walks through entry -> factory -> plugin -> process,
// printing before every step, so a crash shows exactly where it happens.
//
//   Windows:  cl /nologo test_load.c        then   .\test_load.exe .\gain.clap
//   Linux:    cc test_load.c -o test_load -ldl   then   ./test_load ./gain.clap
//
// Header-free: struct layouts copied from the CLAP headers.

#include <stdio.h>
#include <stdint.h>
#include <stdbool.h>
#include <string.h>
#ifdef _WIN32
#include <windows.h>
#else
#include <dlfcn.h>
#endif

typedef struct { uint32_t major, minor, revision; } ver_t;

typedef struct clap_host clap_host_t;
struct clap_host {
    ver_t clap_version;
    void *host_data;
    const char *name, *vendor, *url, *version;
    const void *(*get_extension)(const clap_host_t *, const char *);
    void (*request_restart)(const clap_host_t *);
    void (*request_process)(const clap_host_t *);
    void (*request_callback)(const clap_host_t *);
};

typedef struct {
    ver_t clap_version;
    const char *id, *name, *vendor, *url, *manual_url, *support_url, *version, *description;
    const char *const *features;
} desc_t;

typedef struct { uint32_t size, time; uint16_t space_id, type; uint32_t flags; } ev_header_t;
typedef struct {
    ev_header_t header;
    uint32_t param_id;
    void *cookie;
    int32_t note_id;
    int16_t port_index, channel, key;
    double value;
} ev_param_value_t;

typedef struct { void *ctx; uint32_t (*size)(const void *); const ev_header_t *(*get)(const void *, uint32_t); } in_events_t;
typedef struct { void *ctx; bool (*try_push)(const void *, const ev_header_t *); } out_events_t;
typedef struct { float **data32; double **data64; uint32_t channel_count, latency; uint64_t constant_mask; } abuf_t;
typedef struct {
    int64_t steady_time;
    uint32_t frames_count;
    const void *transport;
    const abuf_t *audio_inputs;
    abuf_t *audio_outputs;
    uint32_t audio_inputs_count, audio_outputs_count;
    const in_events_t *in_events;
    const out_events_t *out_events;
} process_t;

typedef struct clap_plugin clap_plugin_t;
struct clap_plugin {
    const desc_t *desc;
    void *plugin_data;
    bool (*init)(const clap_plugin_t *);
    void (*destroy)(const clap_plugin_t *);
    bool (*activate)(const clap_plugin_t *, double, uint32_t, uint32_t);
    void (*deactivate)(const clap_plugin_t *);
    bool (*start_processing)(const clap_plugin_t *);
    void (*stop_processing)(const clap_plugin_t *);
    void (*reset)(const clap_plugin_t *);
    int32_t (*process)(const clap_plugin_t *, const process_t *);
    const void *(*get_extension)(const clap_plugin_t *, const char *);
    void (*on_main_thread)(const clap_plugin_t *);
};

typedef struct {
    uint32_t (*get_plugin_count)(const void *);
    const desc_t *(*get_plugin_descriptor)(const void *, uint32_t);
    const clap_plugin_t *(*create_plugin)(const void *, const clap_host_t *, const char *);
} factory_t;

typedef struct {
    ver_t clap_version;
    bool (*init)(const char *);
    void (*deinit)(void);
    const void *(*get_factory)(const char *);
} entry_t;

typedef struct { uint32_t id; char name[256]; uint32_t flags, channel_count; const char *port_type; uint32_t in_place_pair; } audio_port_info_t;
typedef struct {
    uint32_t (*count)(const clap_plugin_t *, bool);
    bool (*get)(const clap_plugin_t *, uint32_t, bool, audio_port_info_t *);
} audio_ports_t;

typedef struct { uint32_t id, flags; void *cookie; char name[256]; char module[1024]; double min_value, max_value, default_value; } param_info_t;
typedef struct {
    uint32_t (*count)(const clap_plugin_t *);
    bool (*get_info)(const clap_plugin_t *, uint32_t, param_info_t *);
    bool (*get_value)(const clap_plugin_t *, uint32_t, double *);
    bool (*value_to_text)(const clap_plugin_t *, uint32_t, double, char *, uint32_t);
    bool (*text_to_value)(const clap_plugin_t *, uint32_t, const char *, double *);
    void (*flush)(const clap_plugin_t *, const in_events_t *, const out_events_t *);
} params_t;

// ---- fake host ----
static const void *host_get_ext(const clap_host_t *h, const char *id) { (void)h; (void)id; return NULL; }
static void host_noop(const clap_host_t *h) { (void)h; }

// ---- fake event lists ----
static ev_param_value_t g_ev;
static int g_ev_count = 0;
static uint32_t ev_size(const void *l) { (void)l; return (uint32_t)g_ev_count; }
static const ev_header_t *ev_get(const void *l, uint32_t i) { (void)l; (void)i; return &g_ev.header; }
static bool ev_push(const void *l, const ev_header_t *e) { (void)l; (void)e; return true; }

#define STEP(...) do { printf(__VA_ARGS__); printf("\n"); fflush(stdout); } while (0)

int main(int argc, char **argv) {
    setvbuf(stdout, NULL, _IONBF, 0);
    if (argc < 2) { printf("usage: test_load <file.clap>\n"); return 2; }
    const char *path = argv[1];

    STEP("[1] loading %s", path);
#ifdef _WIN32
    HMODULE lib = LoadLibraryA(path);
    if (!lib) { printf("LoadLibrary failed, error %lu\n", GetLastError()); return 1; }
    const entry_t *entry = (const entry_t *)GetProcAddress(lib, "clap_entry");
#else
    void *lib = dlopen(path, RTLD_NOW);
    if (!lib) { printf("dlopen failed: %s\n", dlerror()); return 1; }
    const entry_t *entry = (const entry_t *)dlsym(lib, "clap_entry");
#endif
    if (!entry) { printf("FAIL: no clap_entry symbol\n"); return 1; }

    STEP("[2] clap_entry at %p, version %u.%u.%u", (const void *)entry,
         entry->clap_version.major, entry->clap_version.minor, entry->clap_version.revision);
    STEP("    init=%p deinit=%p get_factory=%p", (void *)entry->init, (void *)entry->deinit, (void *)entry->get_factory);

    STEP("[3] calling entry->init");
    bool ok = entry->init(path);
    STEP("    init returned %d", ok);
    if (!ok) return 1;

    STEP("[4] calling entry->get_factory(\"clap.plugin-factory\")");
    const factory_t *fac = (const factory_t *)entry->get_factory("clap.plugin-factory");
    STEP("    factory = %p", (const void *)fac);
    if (!fac) return 1;

    STEP("[5] get_plugin_count");
    uint32_t n = fac->get_plugin_count(fac);
    STEP("    count = %u", n);
    if (n < 1) return 1;

    STEP("[6] get_plugin_descriptor(0)");
    const desc_t *d = fac->get_plugin_descriptor(fac, 0);
    STEP("    desc = %p", (const void *)d);
    if (!d) return 1;
    STEP("    id=%s name=%s vendor=%s version=%s", d->id, d->name, d->vendor, d->version);
    for (const char *const *f = d->features; f && *f; f++) STEP("    feature: %s", *f);

    STEP("[7] create_plugin");
    clap_host_t host = { {1, 2, 2}, NULL, "test", "test", "", "0", host_get_ext, host_noop, host_noop, host_noop };
    const clap_plugin_t *p = fac->create_plugin(fac, &host, d->id);
    STEP("    plugin = %p", (const void *)p);
    if (!p) return 1;

    STEP("[8] plugin->init");
    STEP("    returned %d", p->init(p));

    STEP("[9] audio-ports extension");
    const audio_ports_t *ap = (const audio_ports_t *)p->get_extension(p, "clap.audio-ports");
    STEP("    ext = %p", (const void *)ap);
    if (ap) {
        STEP("    in=%u out=%u", ap->count(p, true), ap->count(p, false));
        audio_port_info_t ai; memset(&ai, 0, sizeof ai);
        bool g = ap->get(p, 0, true, &ai);
        STEP("    get(0,in)=%d id=%u name=%s ch=%u flags=%u type=%s in_place=%u",
             g, ai.id, ai.name, ai.channel_count, ai.flags, ai.port_type ? ai.port_type : "(null)", ai.in_place_pair);
    }

    STEP("[10] params extension");
    const params_t *pr = (const params_t *)p->get_extension(p, "clap.params");
    STEP("    ext = %p", (const void *)pr);
    if (pr) {
        STEP("    count = %u", pr->count(p));
        param_info_t pi; memset(&pi, 0, sizeof pi);
        bool g = pr->get_info(p, 0, &pi);
        STEP("    get_info(0)=%d id=%u name=%s min=%g max=%g default=%g flags=%u",
             g, pi.id, pi.name, pi.min_value, pi.max_value, pi.default_value, pi.flags);
        double v = -1;
        pr->get_value(p, pi.id, &v);
        STEP("    value = %g", v);
    }
    STEP("    state ext = %p", p->get_extension(p, "clap.state"));

    STEP("[11] activate + start_processing");
    STEP("    activate=%d", p->activate(p, 48000.0, 1, 8));
    STEP("    start_processing=%d", p->start_processing(p));

    STEP("[12] process: 2ch x 8 frames, input all 1.0, gain should be 1.0");
    float inL[8], inR[8], outL[8], outR[8];
    for (int i = 0; i < 8; i++) { inL[i] = inR[i] = 1.0f; outL[i] = outR[i] = -9.0f; }
    float *inp[2] = { inL, inR };
    float *outp[2] = { outL, outR };
    abuf_t ib = { inp, NULL, 2, 0, 0 };
    abuf_t ob = { outp, NULL, 2, 0, 0 };
    in_events_t ie = { NULL, ev_size, ev_get };
    out_events_t oe = { NULL, ev_push };
    process_t pc = { 0, 8, NULL, &ib, &ob, 1, 1, &ie, &oe };

    g_ev_count = 0;
    int32_t st = p->process(p, &pc);
    STEP("    status=%d out[0]=%g out[7]=%g  (expect 1)", st, outL[0], outR[7]);

    STEP("[13] process again with a param event: gain=0.5 at frame 4");
    memset(&g_ev, 0, sizeof g_ev);
    g_ev.header.size = sizeof g_ev;
    g_ev.header.time = 4;
    g_ev.header.space_id = 0;
    g_ev.header.type = 5; // CLAP_EVENT_PARAM_VALUE
    g_ev.param_id = 0;
    g_ev.note_id = -1; g_ev.port_index = -1; g_ev.channel = -1; g_ev.key = -1;
    g_ev.value = 0.5;
    g_ev_count = 1;
    st = p->process(p, &pc);
    STEP("    status=%d out[3]=%g out[4]=%g  (expect 1 and 0.5)", st, outL[3], outL[4]);

    STEP("[14] stop, deactivate, destroy, deinit");
    p->stop_processing(p);
    p->deactivate(p);
    p->destroy(p);
    entry->deinit();
    STEP("ALL STEPS COMPLETED");
    return 0;
}