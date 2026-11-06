// Defines the `clap_entry` data symbol the host looks up, and forwards to the
// functions exported from galayalang. No CLAP headers needed.

#include <stdbool.h>
#include <stdint.h>

#if defined(_WIN32)
#define CLAP_EXPORT __declspec(dllexport)
#else
#define CLAP_EXPORT __attribute__((visibility("default")))
#endif

typedef struct { uint32_t major, minor, revision; } clap_version_t;

typedef struct {
    clap_version_t clap_version;
    bool (*init)(const char *plugin_path);
    void (*deinit)(void);
    const void *(*get_factory)(const char *factory_id);
} clap_plugin_entry_t;

// emitted by galac: sets up every module's globals (base_allocator, function
// pointer tables, ...). A normal program does this at startup; a DLL has to
// do it itself, before any galayalang code runs.
extern void gala_init_globals(void);

// exported from galayalang with `export fn`
extern bool        galaya_clap_init(const char *plugin_path);
extern void        galaya_clap_deinit(void);
extern const void *galaya_clap_get_factory(const char *factory_id);

static bool globals_ready = false;

static bool shim_init(const char *plugin_path) {
    if (!globals_ready) {
        gala_init_globals();
        globals_ready = true;
    }
    return galaya_clap_init(plugin_path);
}

CLAP_EXPORT const clap_plugin_entry_t clap_entry = {
    { 1, 2, 2 },
    shim_init,
    galaya_clap_deinit,
    galaya_clap_get_factory,
};