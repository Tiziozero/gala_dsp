; ModuleID = '.gala_build/gala_744116._clap.ll'
source_filename = ".gala_build/gala_744116._clap.ll"
target datalayout = "e-m:w-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-windows-msvc"

%gala_144156._.._onin_gala_core_mem_windows.Allocator = type { ptr, ptr }
%gala_144156._.._onin_gala_core_mem_windows.Arena = type { ptr, i64, i64, i64, i1 }
%gala_162268._.._onin_gala_core_cfunctions_windows.TypeInfo = type { { ptr, i64 }, i64, i64, i64, i64, { ptr, i64 } }
%gala_546687._.._onin_gala_core_core_windows.Builder = type { [4096 x i8], i64 }
%gala_144156._.._onin_gala_core_mem_windows.Pool = type { ptr, i64, i64, ptr, i64 }
%gala_744116._clap.ClapVersion = type { i32, i32, i32 }
%gala_744116._clap.ClapInputEvents = type { ptr, ptr, ptr }
%gala_744116._clap.ClapOutputEvents = type { ptr, ptr }
%gala_744116._clap.ClapHost = type { %gala_744116._clap.ClapVersion, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@gala_162268._.._onin_gala_core_cfunctions_windows.SEEK_SET = external global i32
@gala_162268._.._onin_gala_core_cfunctions_windows.SEEK_CUR = external global i32
@gala_162268._.._onin_gala_core_cfunctions_windows.SEEK_END = external global i32
@gala_144156._.._onin_gala_core_mem_windows.KB = external global i64
@gala_144156._.._onin_gala_core_mem_windows.MB = external global i64
@gala_144156._.._onin_gala_core_mem_windows.GB = external global i64
@gala_144156._.._onin_gala_core_mem_windows.MODE_ALLOC = external global i32
@gala_144156._.._onin_gala_core_mem_windows.MODE_FREE = external global i32
@gala_144156._.._onin_gala_core_mem_windows.MODE_FREE_ALL = external global i32
@gala_144156._.._onin_gala_core_mem_windows.MODE_RESIZE = external global i32
@gala_144156._.._onin_gala_core_mem_windows.base_allocator = external global %gala_144156._.._onin_gala_core_mem_windows.Allocator
@gala_144156._.._onin_gala_core_mem_windows.temp_arena = external global %gala_144156._.._onin_gala_core_mem_windows.Arena
@gala_144156._.._onin_gala_core_mem_windows.PANIC_ALLOCATOR = external global %gala_144156._.._onin_gala_core_mem_windows.Allocator
@gala_744116._clap.CLAP_PLUGIN_FACTORY_ID = global ptr null
@gala_744116._clap.CLAP_EXT_AUDIO_PORTS = global ptr null
@gala_744116._clap.CLAP_EXT_NOTE_PORTS = global ptr null
@gala_744116._clap.CLAP_EXT_PARAMS = global ptr null
@gala_744116._clap.CLAP_EXT_STATE = global ptr null
@gala_744116._clap.CLAP_PORT_MONO = global ptr null
@gala_744116._clap.CLAP_PORT_STEREO = global ptr null
@string1 = private unnamed_addr constant [23 x i8] c"core/core_windows.gala\00", align 1
@string2 = private unnamed_addr constant [22 x i8] c"core/mem_windows.gala\00", align 1
@string3 = private unnamed_addr constant [29 x i8] c"core/cfunctions_windows.gala\00", align 1
@string4 = private unnamed_addr constant [21 x i8] c"core/core_posix.gala\00", align 1
@string5 = private unnamed_addr constant [20 x i8] c"core/mem_posix.gala\00", align 1
@string6 = private unnamed_addr constant [27 x i8] c"core/cfunctions_posix.gala\00", align 1
@string7 = private unnamed_addr constant [12 x i8] c"./clap.gala\00", align 1
@string8 = private unnamed_addr constant [28 x i8] c"com.example.galayalang.gain\00", align 1
@string9 = private unnamed_addr constant [12 x i8] c"Galaya Gain\00", align 1
@string10 = private unnamed_addr constant [8 x i8] c"example\00", align 1
@string11 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@string12 = private unnamed_addr constant [6 x i8] c"0.1.0\00", align 1
@string13 = private unnamed_addr constant [34 x i8] c"Simple gain written in galayalang\00", align 1
@string14 = private unnamed_addr constant [13 x i8] c"audio-effect\00", align 1
@string15 = private unnamed_addr constant [8 x i8] c"utility\00", align 1
@string16 = private unnamed_addr constant [5 x i8] c"Main\00", align 1
@string17 = private unnamed_addr constant [5 x i8] c"Gain\00", align 1
@string18 = private unnamed_addr constant [26 x i8] c"./cfunctions_windows.gala\00", align 1
@string19 = private unnamed_addr constant [3 x i8] c"0x\00", align 1
@string20 = private unnamed_addr constant [4 x i8] c"nan\00", align 1
@string21 = private unnamed_addr constant [4 x i8] c"inf\00", align 1
@string22 = private unnamed_addr constant [10 x i8] c"<too big>\00", align 1
@string23 = private unnamed_addr constant [4 x i8] c" {}\00", align 1
@string24 = private unnamed_addr constant [4 x i8] c" { \00", align 1
@string25 = private unnamed_addr constant [3 x i8] c", \00", align 1
@string26 = private unnamed_addr constant [4 x i8] c" = \00", align 1
@string27 = private unnamed_addr constant [3 x i8] c" }\00", align 1
@string28 = private unnamed_addr constant [5 x i8] c"true\00", align 1
@string29 = private unnamed_addr constant [6 x i8] c"false\00", align 1
@string30 = private unnamed_addr constant [4 x i8] c"nil\00", align 1
@string31 = private unnamed_addr constant [10 x i8] c"<missing>\00", align 1
@string32 = private unnamed_addr constant [20 x i8] c"./core_windows.gala\00", align 1
@string33 = private unnamed_addr constant [8 x i8] c"allocs:\00", align 1
@string34 = private unnamed_addr constant [7 x i8] c"frees:\00", align 1
@string35 = private unnamed_addr constant [8 x i8] c"failed:\00", align 1
@string36 = private unnamed_addr constant [12 x i8] c"live bytes:\00", align 1
@string37 = private unnamed_addr constant [6 x i8] c"peak:\00", align 1
@string38 = private unnamed_addr constant [7 x i8] c"total:\00", align 1
@string39 = private unnamed_addr constant [58 x i8] c"PANIC: attempted allocation operation on a wrapped buffer\00", align 1
@string40 = private unnamed_addr constant [20 x i8] c"clap.plugin-factory\00", align 1
@string41 = private unnamed_addr constant [17 x i8] c"clap.audio-ports\00", align 1
@string42 = private unnamed_addr constant [16 x i8] c"clap.note-ports\00", align 1
@string43 = private unnamed_addr constant [12 x i8] c"clap.params\00", align 1
@string44 = private unnamed_addr constant [11 x i8] c"clap.state\00", align 1
@string45 = private unnamed_addr constant [5 x i8] c"mono\00", align 1
@string46 = private unnamed_addr constant [7 x i8] c"stereo\00", align 1
@__gala_types = external constant [0 x %gala_162268._.._onin_gala_core_cfunctions_windows.TypeInfo]

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #1

declare i32 @_write(i32, ptr, i32)

declare i32 @_read(i32, ptr, i32)

declare i32 @_close(i32)

declare i32 @_open(ptr, i32, ...)

declare i32 @printf(ptr, ...)

declare i32 @fprintf(ptr, ptr, ...)

declare i32 @snprintf(ptr, i64, ptr, ...)

declare ptr @fopen(ptr, ptr)

declare i32 @fclose(ptr)

declare i32 @fputs(ptr, ptr)

declare i64 @fwrite(ptr, i64, i64, ptr)

declare i64 @fread(ptr, i64, i64, ptr)

declare void @fflush(ptr)

declare i32 @fseek(ptr, i64, i32)

declare i64 @ftell(ptr)

declare ptr @malloc(i64)

declare ptr @calloc(i64, i64)

declare ptr @realloc(ptr, i64)

declare void @free(ptr)

declare ptr @memcpy(ptr, ptr, i64)

declare ptr @memmove(ptr, ptr, i64)

declare ptr @memset(ptr, i32, i64)

declare i32 @memcmp(ptr, ptr, i64)

declare i64 @strlen(ptr)

declare i32 @strcmp(ptr, ptr)

declare i32 @strncmp(ptr, ptr, i64)

declare ptr @strcpy(ptr, ptr)

declare ptr @strncpy(ptr, ptr, i64)

declare ptr @strcat(ptr, ptr)

declare ptr @strncat(ptr, ptr, i64)

declare ptr @strchr(ptr, i32)

declare ptr @strrchr(ptr, i32)

declare i32 @atoi(ptr)

declare i64 @atol(ptr)

declare i64 @atoll(ptr)

declare i64 @strtol(ptr, ptr, i32)

declare i64 @strtoll(ptr, ptr, i32)

declare i64 @strtoul(ptr, ptr, i32)

declare i64 @strtoull(ptr, ptr, i32)

declare float @strtof(ptr, ptr)

declare double @strtod(ptr, ptr)

declare i32 @rand()

declare void @srand(i32)

declare i64 @time(ptr)

declare void @exit(i32)

declare void @abort()

declare i32 @atexit(ptr)

declare ptr @getenv(ptr)

declare double @sqrt(double)

declare double @pow(double, double)

declare double @sin(double)

declare double @cos(double)

declare double @tan(double)

declare double @asin(double)

declare double @acos(double)

declare double @atan(double)

declare double @atan2(double, double)

declare double @sinh(double)

declare double @cosh(double)

declare double @tanh(double)

declare double @log(double)

declare double @log10(double)

declare double @exp(double)

declare double @floor(double)

declare double @ceil(double)

declare double @round(double)

declare double @fabs(double)

declare float @sqrtf(float)

declare float @powf(float, float)

declare float @sinf(float)

declare float @cosf(float)

declare float @tanf(float)

declare float @asinf(float)

declare float @acosf(float)

declare float @atanf(float)

declare float @atan2f(float, float)

declare float @sinhf(float)

declare float @coshf(float)

declare float @tanhf(float)

declare float @logf(float)

declare float @log10f(float)

declare float @expf(float)

declare float @floorf(float)

declare float @ceilf(float)

declare float @roundf(float)

declare float @fabsf(float)

declare void @gala_162268._.._onin_gala_core_cfunctions_windows.__init_globals()

declare ptr @gala_546687._.._onin_gala_core_core_windows.ptr_add(ptr, i64)

declare ptr @gala_546687._.._onin_gala_core_core_windows.str_data(ptr noundef)

declare zeroext i1 @gala_546687._.._onin_gala_core_core_windows.str_eq(ptr noundef, ptr noundef)

declare void @gala_546687._.._onin_gala_core_core_windows.builder_make(ptr sret(%gala_546687._.._onin_gala_core_core_windows.Builder) align 8)

declare void @gala_546687._.._onin_gala_core_core_windows.builder_push_byte(ptr, i8)

declare void @gala_546687._.._onin_gala_core_core_windows.builder_push_string(ptr, ptr noundef)

declare void @gala_546687._.._onin_gala_core_core_windows.builder_push_digit(ptr, i64)

declare void @gala_546687._.._onin_gala_core_core_windows.builder_bytes(ptr sret({ ptr, i64 }) align 8, ptr)

declare i64 @gala_546687._.._onin_gala_core_core_windows.write_fd(i32, ptr noundef)

declare i64 @gala_546687._.._onin_gala_core_core_windows.write_stdout(ptr noundef)

declare i64 @gala_546687._.._onin_gala_core_core_windows.builder_flush(ptr, i32)

declare void @gala_546687._.._onin_gala_core_core_windows.fmt_u64_padded(ptr, i64, i64, i64)

declare void @gala_546687._.._onin_gala_core_core_windows.fmt_u64(ptr, i64)

declare void @gala_546687._.._onin_gala_core_core_windows.fmt_i64(ptr, i64)

declare void @gala_546687._.._onin_gala_core_core_windows.fmt_hex(ptr, i64)

declare void @gala_546687._.._onin_gala_core_core_windows.fmt_f64(ptr, double)

declare void @gala_546687._.._onin_gala_core_core_windows.fmt_int_at(ptr, ptr, i64)

declare void @gala_546687._.._onin_gala_core_core_windows.fmt_uint_at(ptr, ptr, i64)

declare void @gala_546687._.._onin_gala_core_core_windows.fmt_float_at(ptr, ptr, i64)

declare void @gala_546687._.._onin_gala_core_core_windows.fmt_struct_at(ptr, ptr, ptr)

declare void @gala_546687._.._onin_gala_core_core_windows.fmt_list_at(ptr, ptr, ptr)

declare void @gala_546687._.._onin_gala_core_core_windows.fmt_value(ptr, ptr, i64, i1 zeroext)

declare void @gala_546687._.._onin_gala_core_core_windows.fmt_any(ptr, ptr noundef)

declare zeroext i1 @gala_546687._.._onin_gala_core_core_windows.next_is(ptr noundef, i64, i8)

declare zeroext i1 @gala_546687._.._onin_gala_core_core_windows.has_placeholder(ptr noundef)

declare void @gala_546687._.._onin_gala_core_core_windows.format_into(ptr, ptr noundef, ptr noundef)

declare ptr @gala_546687._.._onin_gala_core_core_windows.leading_format(ptr noundef)

declare void @gala_546687._.._onin_gala_core_core_windows.print_into(ptr, ptr noundef, i1 zeroext)

declare zeroext i1 @gala_546687._.._onin_gala_core_core_windows.__default_0()

declare void @gala_546687._.._onin_gala_core_core_windows.print_to_fd(i32, ptr noundef, i1 zeroext)

declare void @gala_546687._.._onin_gala_core_core_windows.format_to_fd(i32, ptr noundef, ptr noundef)

declare void @gala_546687._.._onin_gala_core_core_windows.print(ptr noundef)

declare void @gala_546687._.._onin_gala_core_core_windows.println(ptr noundef)

declare void @gala_546687._.._onin_gala_core_core_windows.printfmt(ptr noundef, ptr noundef)

declare void @gala_546687._.._onin_gala_core_core_windows.eprintln(ptr noundef)

declare void @gala_546687._.._onin_gala_core_core_windows.eprintfmt(ptr noundef, ptr noundef)

declare void @gala_546687._.._onin_gala_core_core_windows.fprintln(i32, ptr noundef)

declare void @gala_546687._.._onin_gala_core_core_windows.fprintfmt(i32, ptr noundef, ptr noundef)

declare void @gala_546687._.._onin_gala_core_core_windows.bprintln(ptr, ptr noundef)

declare void @gala_546687._.._onin_gala_core_core_windows.bprintfmt(ptr, ptr noundef, ptr noundef)

declare void @Sleep(i32)

declare void @gala_546687._.._onin_gala_core_core_windows.sleep_ms(i64)

declare ptr @gala_546687._.._onin_gala_core_core_windows.any_as.any.string.v0(ptr noundef)

declare ptr @gala_546687._.._onin_gala_core_core_windows.raw_data.a_byte.v0(ptr noundef)

declare i64 @gala_144156._.._onin_gala_core_mem_windows.addr(ptr)

declare ptr @gala_144156._.._onin_gala_core_mem_windows.from_addr(i64)

declare zeroext i1 @gala_144156._.._onin_gala_core_mem_windows.is_power_of_two(i64)

declare i64 @gala_144156._.._onin_gala_core_mem_windows.align_forward(i64, i64)

declare i64 @gala_144156._.._onin_gala_core_mem_windows.align_for_size(i64)

declare i64 @gala_144156._.._onin_gala_core_mem_windows.min_u64(i64, i64)

declare i64 @gala_144156._.._onin_gala_core_mem_windows.max_u64(i64, i64)

declare void @gala_144156._.._onin_gala_core_mem_windows.mem_copy(ptr, ptr, i64)

declare void @gala_144156._.._onin_gala_core_mem_windows.mem_zero(ptr, i64)

declare void @gala_144156._.._onin_gala_core_mem_windows.mem_set(ptr, i32, i64)

declare zeroext i1 @gala_144156._.._onin_gala_core_mem_windows.mem_equal(ptr, ptr, i64)

declare void @gala_144156._.._onin_gala_core_mem_windows.bytes_from(ptr sret({ ptr, i64 }) align 8, ptr, i64)

declare void @gala_144156._.._onin_gala_core_mem_windows.set_allocator(ptr noundef)

declare i64 @gala_144156._.._onin_gala_core_mem_windows.__default_1()

declare void @gala_144156._.._onin_gala_core_mem_windows.__default_2(ptr sret(%gala_144156._.._onin_gala_core_mem_windows.Allocator) align 8)

declare ptr @gala_144156._.._onin_gala_core_mem_windows.alloc(i64, i64, ptr noundef)

declare i64 @gala_144156._.._onin_gala_core_mem_windows.__default_3()

declare void @gala_144156._.._onin_gala_core_mem_windows.__default_4(ptr sret(%gala_144156._.._onin_gala_core_mem_windows.Allocator) align 8)

declare void @gala_144156._.._onin_gala_core_mem_windows.dealloc(ptr, i64, ptr noundef)

declare void @gala_144156._.._onin_gala_core_mem_windows.__default_5(ptr sret(%gala_144156._.._onin_gala_core_mem_windows.Allocator) align 8)

declare void @gala_144156._.._onin_gala_core_mem_windows.dealloc_all(ptr noundef)

declare i64 @gala_144156._.._onin_gala_core_mem_windows.__default_6()

declare void @gala_144156._.._onin_gala_core_mem_windows.__default_7(ptr sret(%gala_144156._.._onin_gala_core_mem_windows.Allocator) align 8)

declare ptr @gala_144156._.._onin_gala_core_mem_windows.resize(ptr, i64, i64, i64, ptr noundef)

declare void @gala_144156._.._onin_gala_core_mem_windows.__default_8(ptr sret(%gala_144156._.._onin_gala_core_mem_windows.Allocator) align 8)

declare void @gala_144156._.._onin_gala_core_mem_windows.alloc_bytes(ptr sret({ ptr, i64 }) align 8, i64, ptr noundef)

declare void @gala_144156._.._onin_gala_core_mem_windows.__default_9(ptr sret(%gala_144156._.._onin_gala_core_mem_windows.Allocator) align 8)

declare void @gala_144156._.._onin_gala_core_mem_windows.free_bytes(ptr noundef, ptr noundef)

declare void @gala_144156._.._onin_gala_core_mem_windows.__default_10(ptr sret(%gala_144156._.._onin_gala_core_mem_windows.Allocator) align 8)

declare void @gala_144156._.._onin_gala_core_mem_windows.clone_string(ptr sret({ ptr, i64 }) align 8, ptr noundef, ptr noundef)

declare void @gala_144156._.._onin_gala_core_mem_windows.__default_11(ptr sret(%gala_144156._.._onin_gala_core_mem_windows.Allocator) align 8)

declare ptr @gala_144156._.._onin_gala_core_mem_windows.clone_cstring(ptr noundef, ptr noundef)

declare void @gala_144156._.._onin_gala_core_mem_windows.__default_12(ptr sret(%gala_144156._.._onin_gala_core_mem_windows.Allocator) align 8)

declare void @gala_144156._.._onin_gala_core_mem_windows.free_string(ptr noundef, ptr noundef)

declare void @gala_144156._.._onin_gala_core_mem_windows.__default_13(ptr sret(%gala_144156._.._onin_gala_core_mem_windows.Allocator) align 8)

declare void @gala_144156._.._onin_gala_core_mem_windows.__default_14(ptr sret(%gala_144156._.._onin_gala_core_mem_windows.Allocator) align 8)

declare i64 @gala_144156._.._onin_gala_core_mem_windows.__default_15()

declare void @gala_144156._.._onin_gala_core_mem_windows.__default_16(ptr sret(%gala_144156._.._onin_gala_core_mem_windows.Allocator) align 8)

declare void @gala_144156._.._onin_gala_core_mem_windows.__default_17(ptr sret(%gala_144156._.._onin_gala_core_mem_windows.Allocator) align 8)

declare ptr @gala_144156._.._onin_gala_core_mem_windows.heap_proc(ptr, i32, i64, i64, ptr, i64)

declare void @gala_144156._.._onin_gala_core_mem_windows.heap_allocator(ptr sret(%gala_144156._.._onin_gala_core_mem_windows.Allocator) align 8)

declare void @gala_144156._.._onin_gala_core_mem_windows.arena_empty(ptr sret(%gala_144156._.._onin_gala_core_mem_windows.Arena) align 8)

declare void @gala_144156._.._onin_gala_core_mem_windows.arena_init(ptr, ptr, i64)

declare void @gala_144156._.._onin_gala_core_mem_windows.arena_make(ptr sret(%gala_144156._.._onin_gala_core_mem_windows.Arena) align 8, i64)

declare void @gala_144156._.._onin_gala_core_mem_windows.arena_destroy(ptr)

declare void @gala_144156._.._onin_gala_core_mem_windows.arena_reset(ptr)

declare i64 @gala_144156._.._onin_gala_core_mem_windows.arena_used(ptr)

declare i64 @gala_144156._.._onin_gala_core_mem_windows.arena_remaining(ptr)

declare i64 @gala_144156._.._onin_gala_core_mem_windows.arena_mark(ptr)

declare void @gala_144156._.._onin_gala_core_mem_windows.arena_restore(ptr, i64)

declare ptr @gala_144156._.._onin_gala_core_mem_windows.arena_push(ptr, i64, i64)

declare ptr @gala_144156._.._onin_gala_core_mem_windows.arena_proc(ptr, i32, i64, i64, ptr, i64)

declare void @gala_144156._.._onin_gala_core_mem_windows.arena_allocator(ptr sret(%gala_144156._.._onin_gala_core_mem_windows.Allocator) align 8, ptr)

declare void @gala_144156._.._onin_gala_core_mem_windows.temp_init(i64)

declare void @gala_144156._.._onin_gala_core_mem_windows.temp_allocator(ptr sret(%gala_144156._.._onin_gala_core_mem_windows.Allocator) align 8)

declare void @gala_144156._.._onin_gala_core_mem_windows.temp_reset()

declare ptr @gala_144156._.._onin_gala_core_mem_windows.link_get(ptr)

declare void @gala_144156._.._onin_gala_core_mem_windows.link_set(ptr, ptr)

declare void @gala_144156._.._onin_gala_core_mem_windows.pool_reset(ptr)

declare void @gala_144156._.._onin_gala_core_mem_windows.pool_make(ptr sret(%gala_144156._.._onin_gala_core_mem_windows.Pool) align 8, i64, i64)

declare void @gala_144156._.._onin_gala_core_mem_windows.pool_destroy(ptr)

declare zeroext i1 @gala_144156._.._onin_gala_core_mem_windows.pool_owns(ptr, ptr)

declare ptr @gala_144156._.._onin_gala_core_mem_windows.pool_proc(ptr, i32, i64, i64, ptr, i64)

declare void @gala_144156._.._onin_gala_core_mem_windows.pool_allocator(ptr sret(%gala_144156._.._onin_gala_core_mem_windows.Allocator) align 8, ptr)

declare void @gala_144156._.._onin_gala_core_mem_windows.tracking_init(ptr, ptr noundef)

declare void @gala_144156._.._onin_gala_core_mem_windows.tracking_reset(ptr)

declare ptr @gala_144156._.._onin_gala_core_mem_windows.tracking_proc(ptr, i32, i64, i64, ptr, i64)

declare void @gala_144156._.._onin_gala_core_mem_windows.tracking_allocator(ptr sret(%gala_144156._.._onin_gala_core_mem_windows.Allocator) align 8, ptr)

declare void @gala_144156._.._onin_gala_core_mem_windows.tracking_report(ptr)

declare ptr @gala_144156._.._onin_gala_core_mem_windows.panic_proc(ptr, i32, i64, i64, ptr, i64)

declare ptr @gala_144156._.._onin_gala_core_mem_windows.new.Allocator.Gain.v0(ptr noundef)

declare ptr @gala_144156._.._onin_gala_core_mem_windows.new.Allocator.ClapPlugin.v1(ptr noundef)

declare void @gala_144156._.._onin_gala_core_mem_windows.__init_globals()

define void @gala_744116._clap.clap_bindings_init() {
entry:
  %slot51 = alloca { ptr, i64 }, align 8
  %slot53 = alloca %gala_144156._.._onin_gala_core_mem_windows.Allocator, align 8
  %slot58 = alloca { ptr, i64 }, align 8
  %slot60 = alloca %gala_144156._.._onin_gala_core_mem_windows.Allocator, align 8
  %slot65 = alloca { ptr, i64 }, align 8
  %slot67 = alloca %gala_144156._.._onin_gala_core_mem_windows.Allocator, align 8
  %slot72 = alloca { ptr, i64 }, align 8
  %slot74 = alloca %gala_144156._.._onin_gala_core_mem_windows.Allocator, align 8
  %slot79 = alloca { ptr, i64 }, align 8
  %slot81 = alloca %gala_144156._.._onin_gala_core_mem_windows.Allocator, align 8
  %slot86 = alloca { ptr, i64 }, align 8
  %slot88 = alloca %gala_144156._.._onin_gala_core_mem_windows.Allocator, align 8
  %slot93 = alloca { ptr, i64 }, align 8
  %slot95 = alloca %gala_144156._.._onin_gala_core_mem_windows.Allocator, align 8
  %0 = load %gala_144156._.._onin_gala_core_mem_windows.Allocator, ptr @gala_144156._.._onin_gala_core_mem_windows.base_allocator, align 8
  %1 = getelementptr inbounds [20 x i8], ptr @string40, i64 0, i64 0
  %2 = insertvalue { ptr, i64 } undef, ptr %1, 0
  %3 = insertvalue { ptr, i64 } %2, i64 19, 1
  store { ptr, i64 } %3, ptr %slot51, align 8
  store %gala_144156._.._onin_gala_core_mem_windows.Allocator %0, ptr %slot53, align 8
  %4 = call ptr @gala_144156._.._onin_gala_core_mem_windows.clone_cstring(ptr noundef %slot51, ptr noundef %slot53)
  store ptr %4, ptr @gala_744116._clap.CLAP_PLUGIN_FACTORY_ID, align 8
  %5 = getelementptr inbounds [17 x i8], ptr @string41, i64 0, i64 0
  %6 = insertvalue { ptr, i64 } undef, ptr %5, 0
  %7 = insertvalue { ptr, i64 } %6, i64 16, 1
  store { ptr, i64 } %7, ptr %slot58, align 8
  store %gala_144156._.._onin_gala_core_mem_windows.Allocator %0, ptr %slot60, align 8
  %8 = call ptr @gala_144156._.._onin_gala_core_mem_windows.clone_cstring(ptr noundef %slot58, ptr noundef %slot60)
  store ptr %8, ptr @gala_744116._clap.CLAP_EXT_AUDIO_PORTS, align 8
  %9 = getelementptr inbounds [16 x i8], ptr @string42, i64 0, i64 0
  %10 = insertvalue { ptr, i64 } undef, ptr %9, 0
  %11 = insertvalue { ptr, i64 } %10, i64 15, 1
  store { ptr, i64 } %11, ptr %slot65, align 8
  store %gala_144156._.._onin_gala_core_mem_windows.Allocator %0, ptr %slot67, align 8
  %12 = call ptr @gala_144156._.._onin_gala_core_mem_windows.clone_cstring(ptr noundef %slot65, ptr noundef %slot67)
  store ptr %12, ptr @gala_744116._clap.CLAP_EXT_NOTE_PORTS, align 8
  %13 = getelementptr inbounds [12 x i8], ptr @string43, i64 0, i64 0
  %14 = insertvalue { ptr, i64 } undef, ptr %13, 0
  %15 = insertvalue { ptr, i64 } %14, i64 11, 1
  store { ptr, i64 } %15, ptr %slot72, align 8
  store %gala_144156._.._onin_gala_core_mem_windows.Allocator %0, ptr %slot74, align 8
  %16 = call ptr @gala_144156._.._onin_gala_core_mem_windows.clone_cstring(ptr noundef %slot72, ptr noundef %slot74)
  store ptr %16, ptr @gala_744116._clap.CLAP_EXT_PARAMS, align 8
  %17 = getelementptr inbounds [11 x i8], ptr @string44, i64 0, i64 0
  %18 = insertvalue { ptr, i64 } undef, ptr %17, 0
  %19 = insertvalue { ptr, i64 } %18, i64 10, 1
  store { ptr, i64 } %19, ptr %slot79, align 8
  store %gala_144156._.._onin_gala_core_mem_windows.Allocator %0, ptr %slot81, align 8
  %20 = call ptr @gala_144156._.._onin_gala_core_mem_windows.clone_cstring(ptr noundef %slot79, ptr noundef %slot81)
  store ptr %20, ptr @gala_744116._clap.CLAP_EXT_STATE, align 8
  %21 = getelementptr inbounds [5 x i8], ptr @string45, i64 0, i64 0
  %22 = insertvalue { ptr, i64 } undef, ptr %21, 0
  %23 = insertvalue { ptr, i64 } %22, i64 4, 1
  store { ptr, i64 } %23, ptr %slot86, align 8
  store %gala_144156._.._onin_gala_core_mem_windows.Allocator %0, ptr %slot88, align 8
  %24 = call ptr @gala_144156._.._onin_gala_core_mem_windows.clone_cstring(ptr noundef %slot86, ptr noundef %slot88)
  store ptr %24, ptr @gala_744116._clap.CLAP_PORT_MONO, align 8
  %25 = getelementptr inbounds [7 x i8], ptr @string46, i64 0, i64 0
  %26 = insertvalue { ptr, i64 } undef, ptr %25, 0
  %27 = insertvalue { ptr, i64 } %26, i64 6, 1
  store { ptr, i64 } %27, ptr %slot93, align 8
  store %gala_144156._.._onin_gala_core_mem_windows.Allocator %0, ptr %slot95, align 8
  %28 = call ptr @gala_144156._.._onin_gala_core_mem_windows.clone_cstring(ptr noundef %slot93, ptr noundef %slot95)
  store ptr %28, ptr @gala_744116._clap.CLAP_PORT_STEREO, align 8
  ret void
}

define zeroext i1 @gala_744116._clap.clap_version_is_compatible(ptr noundef %v) {
entry:
  %0 = getelementptr inbounds %gala_744116._clap.ClapVersion, ptr %v, i32 0, i32 0
  %1 = load i32, ptr %0, align 4
  %2 = icmp uge i32 %1, 1
  ret i1 %2
}

define zeroext i1 @gala_744116._clap.clap_cstr_eq(ptr %a, ptr %b) {
entry:
  %0 = ptrtoint ptr %a to i64
  %1 = inttoptr i64 0 to ptr
  %2 = ptrtoint ptr %1 to i64
  %3 = icmp eq i64 %0, %2
  br i1 %3, label %logic.end.102, label %logic.rhs.102

logic.rhs.102:                                    ; preds = %entry
  %4 = ptrtoint ptr %b to i64
  %5 = inttoptr i64 0 to ptr
  %6 = ptrtoint ptr %5 to i64
  %7 = icmp eq i64 %4, %6
  br label %logic.end.102

logic.end.102:                                    ; preds = %logic.rhs.102, %entry
  %slot101.0 = phi i1 [ %3, %entry ], [ %7, %logic.rhs.102 ]
  br i1 %slot101.0, label %base_block_label100, label %end_label100

base_block_label100:                              ; preds = %logic.end.102
  %8 = ptrtoint ptr %a to i64
  %9 = ptrtoint ptr %b to i64
  %10 = icmp eq i64 %8, %9
  ret i1 %10

end_label100:                                     ; preds = %logic.end.102
  br label %while_cond_label115

while_cond_label115:                              ; preds = %end_label123, %end_label100
  %i.851.0 = phi i64 [ 0, %end_label100 ], [ %19, %end_label123 ]
  %11 = getelementptr inbounds i8, ptr %a, i64 %i.851.0
  %12 = load i8, ptr %11, align 1
  %13 = getelementptr inbounds i8, ptr %b, i64 %i.851.0
  %14 = load i8, ptr %13, align 1
  %15 = icmp eq i8 %12, %14
  br i1 %15, label %while_body_label115, label %while_end_label115

while_body_label115:                              ; preds = %while_cond_label115
  %16 = getelementptr inbounds i8, ptr %a, i64 %i.851.0
  %17 = load i8, ptr %16, align 1
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %base_block_label123, label %end_label123

base_block_label123:                              ; preds = %while_body_label115
  ret i1 true

end_label123:                                     ; preds = %while_body_label115
  %19 = add i64 %i.851.0, 1
  br label %while_cond_label115

while_end_label115:                               ; preds = %while_cond_label115
  ret i1 false
}

define void @gala_744116._clap.clap_copy_cstr(ptr %dst, i64 %cap, ptr %src) {
entry:
  br label %while_cond_label130

while_cond_label130:                              ; preds = %while_body_label130, %entry
  %i.855.0 = phi i64 [ 0, %entry ], [ %8, %while_body_label130 ]
  %0 = sub i64 %cap, 1
  %1 = icmp slt i64 %i.855.0, %0
  br i1 %1, label %logic.rhs.132, label %logic.end.132

logic.rhs.132:                                    ; preds = %while_cond_label130
  %2 = getelementptr inbounds i8, ptr %src, i64 %i.855.0
  %3 = load i8, ptr %2, align 1
  %4 = icmp ne i8 %3, 0
  br label %logic.end.132

logic.end.132:                                    ; preds = %logic.rhs.132, %while_cond_label130
  %slot131.0 = phi i1 [ %4, %logic.rhs.132 ], [ %1, %while_cond_label130 ]
  br i1 %slot131.0, label %while_body_label130, label %while_end_label130

while_body_label130:                              ; preds = %logic.end.132
  %5 = getelementptr inbounds i8, ptr %src, i64 %i.855.0
  %6 = load i8, ptr %5, align 1
  %7 = getelementptr inbounds i8, ptr %dst, i64 %i.855.0
  store i8 %6, ptr %7, align 1
  %8 = add i64 %i.855.0, 1
  br label %while_cond_label130

while_end_label130:                               ; preds = %logic.end.132
  %9 = getelementptr inbounds i8, ptr %dst, i64 %i.855.0
  store i8 0, ptr %9, align 1
  ret void
}

define i64 @gala_744116._clap.clap_events_size(ptr %l) {
entry:
  %0 = getelementptr inbounds %gala_744116._clap.ClapInputEvents, ptr %l, i32 0, i32 1
  %1 = load ptr, ptr %0, align 8
  %2 = call i32 %1(ptr %l)
  %3 = zext i32 %2 to i64
  ret i64 %3
}

define ptr @gala_744116._clap.clap_events_get(ptr %l, i64 %index) {
entry:
  %0 = getelementptr inbounds %gala_744116._clap.ClapInputEvents, ptr %l, i32 0, i32 2
  %1 = load ptr, ptr %0, align 8
  %2 = trunc i64 %index to i32
  %3 = call ptr %1(ptr %l, i32 %2)
  ret ptr %3
}

define zeroext i1 @gala_744116._clap.clap_events_push(ptr %l, ptr %e) {
entry:
  %0 = getelementptr inbounds %gala_744116._clap.ClapOutputEvents, ptr %l, i32 0, i32 1
  %1 = load ptr, ptr %0, align 8
  %2 = call zeroext i1 %1(ptr %l, ptr %e)
  ret i1 %2
}

define void @gala_744116._clap.clap_host_request_callback(ptr %h) {
entry:
  %0 = getelementptr inbounds %gala_744116._clap.ClapHost, ptr %h, i32 0, i32 9
  %1 = load ptr, ptr %0, align 8
  call void %1(ptr %h)
  ret void
}

define void @gala_744116._clap.clap_host_request_process(ptr %h) {
entry:
  %0 = getelementptr inbounds %gala_744116._clap.ClapHost, ptr %h, i32 0, i32 8
  %1 = load ptr, ptr %0, align 8
  call void %1(ptr %h)
  ret void
}

define void @gala_744116._clap.clap_host_request_restart(ptr %h) {
entry:
  %0 = getelementptr inbounds %gala_744116._clap.ClapHost, ptr %h, i32 0, i32 7
  %1 = load ptr, ptr %0, align 8
  call void %1(ptr %h)
  ret void
}

define ptr @gala_744116._clap.clap_host_ext(ptr %h, ptr %id) {
entry:
  %0 = getelementptr inbounds %gala_744116._clap.ClapHost, ptr %h, i32 0, i32 6
  %1 = load ptr, ptr %0, align 8
  %2 = call ptr %1(ptr %h, ptr %id)
  ret ptr %2
}

define void @gala_744116._clap.__init_globals() {
entry:
  %0 = inttoptr i64 0 to ptr
  store ptr %0, ptr @gala_744116._clap.CLAP_PLUGIN_FACTORY_ID, align 8
  %1 = inttoptr i64 0 to ptr
  store ptr %1, ptr @gala_744116._clap.CLAP_EXT_AUDIO_PORTS, align 8
  %2 = inttoptr i64 0 to ptr
  store ptr %2, ptr @gala_744116._clap.CLAP_EXT_NOTE_PORTS, align 8
  %3 = inttoptr i64 0 to ptr
  store ptr %3, ptr @gala_744116._clap.CLAP_EXT_PARAMS, align 8
  %4 = inttoptr i64 0 to ptr
  store ptr %4, ptr @gala_744116._clap.CLAP_EXT_STATE, align 8
  %5 = inttoptr i64 0 to ptr
  store ptr %5, ptr @gala_744116._clap.CLAP_PORT_MONO, align 8
  %6 = inttoptr i64 0 to ptr
  store ptr %6, ptr @gala_744116._clap.CLAP_PORT_STEREO, align 8
  ret void
}

attributes #0 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
