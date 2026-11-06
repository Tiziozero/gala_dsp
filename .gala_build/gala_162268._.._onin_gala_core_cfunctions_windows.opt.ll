; ModuleID = '.gala_build/gala_162268._.._onin_gala_core_cfunctions_windows.ll'
source_filename = ".gala_build/gala_162268._.._onin_gala_core_cfunctions_windows.ll"
target datalayout = "e-m:w-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-windows-msvc"

%gala_162268._.._onin_gala_core_cfunctions_windows.TypeInfo = type { { ptr, i64 }, i64, i64, i64, i64, { ptr, i64 } }

@gala_162268._.._onin_gala_core_cfunctions_windows.SEEK_SET = global i32 0
@gala_162268._.._onin_gala_core_cfunctions_windows.SEEK_CUR = global i32 0
@gala_162268._.._onin_gala_core_cfunctions_windows.SEEK_END = global i32 0
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

define void @gala_162268._.._onin_gala_core_cfunctions_windows.__init_globals() {
entry:
  store i32 0, ptr @gala_162268._.._onin_gala_core_cfunctions_windows.SEEK_SET, align 4
  store i32 1, ptr @gala_162268._.._onin_gala_core_cfunctions_windows.SEEK_CUR, align 4
  store i32 2, ptr @gala_162268._.._onin_gala_core_cfunctions_windows.SEEK_END, align 4
  ret void
}

attributes #0 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
