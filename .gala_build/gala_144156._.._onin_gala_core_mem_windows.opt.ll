; ModuleID = '.gala_build/gala_144156._.._onin_gala_core_mem_windows.ll'
source_filename = ".gala_build/gala_144156._.._onin_gala_core_mem_windows.ll"
target datalayout = "e-m:w-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-windows-msvc"

%gala_144156._.._onin_gala_core_mem_windows.Allocator = type { ptr, ptr }
%gala_144156._.._onin_gala_core_mem_windows.Arena = type { ptr, i64, i64, i64, i1 }
%gala_162268._.._onin_gala_core_cfunctions_windows.TypeInfo = type { { ptr, i64 }, i64, i64, i64, i64, { ptr, i64 } }
%gala_546687._.._onin_gala_core_core_windows.Builder = type { [4096 x i8], i64 }
%gala_144156._.._onin_gala_core_mem_windows.RawSlice = type { ptr, i64 }
%gala_144156._.._onin_gala_core_mem_windows.Pool = type { ptr, i64, i64, ptr, i64 }
%gala_144156._.._onin_gala_core_mem_windows.Tracking = type { %gala_144156._.._onin_gala_core_mem_windows.Allocator, i64, i64, i64, i64, i64, i64 }

@gala_162268._.._onin_gala_core_cfunctions_windows.SEEK_SET = external global i32
@gala_162268._.._onin_gala_core_cfunctions_windows.SEEK_CUR = external global i32
@gala_162268._.._onin_gala_core_cfunctions_windows.SEEK_END = external global i32
@gala_144156._.._onin_gala_core_mem_windows.KB = global i64 0
@gala_144156._.._onin_gala_core_mem_windows.MB = global i64 0
@gala_144156._.._onin_gala_core_mem_windows.GB = global i64 0
@gala_144156._.._onin_gala_core_mem_windows.MODE_ALLOC = global i32 0
@gala_144156._.._onin_gala_core_mem_windows.MODE_FREE = global i32 0
@gala_144156._.._onin_gala_core_mem_windows.MODE_FREE_ALL = global i32 0
@gala_144156._.._onin_gala_core_mem_windows.MODE_RESIZE = global i32 0
@gala_144156._.._onin_gala_core_mem_windows.base_allocator = global %gala_144156._.._onin_gala_core_mem_windows.Allocator zeroinitializer
@gala_144156._.._onin_gala_core_mem_windows.temp_arena = global %gala_144156._.._onin_gala_core_mem_windows.Arena zeroinitializer
@gala_144156._.._onin_gala_core_mem_windows.PANIC_ALLOCATOR = global %gala_144156._.._onin_gala_core_mem_windows.Allocator zeroinitializer
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

define i64 @gala_144156._.._onin_gala_core_mem_windows.addr(ptr %p) {
entry:
  %0 = ptrtoint ptr %p to i64
  ret i64 %0
}

define ptr @gala_144156._.._onin_gala_core_mem_windows.from_addr(i64 %a) {
entry:
  %0 = inttoptr i64 %a to ptr
  ret ptr %0
}

define zeroext i1 @gala_144156._.._onin_gala_core_mem_windows.is_power_of_two(i64 %x) {
entry:
  %0 = icmp eq i64 %x, 0
  br i1 %0, label %base_block_label49, label %end_label49

base_block_label49:                               ; preds = %entry
  ret i1 false

end_label49:                                      ; preds = %entry
  %1 = sub i64 %x, 1
  %2 = and i64 %x, %1
  %3 = icmp eq i64 %2, 0
  ret i1 %3
}

define i64 @gala_144156._.._onin_gala_core_mem_windows.align_forward(i64 %a, i64 %align) {
entry:
  %0 = icmp ule i64 %align, 1
  br i1 %0, label %base_block_label54, label %end_label54

base_block_label54:                               ; preds = %entry
  ret i64 %a

end_label54:                                      ; preds = %entry
  %1 = urem i64 %a, %align
  %2 = icmp eq i64 %1, 0
  br i1 %2, label %base_block_label57, label %end_label57

base_block_label57:                               ; preds = %end_label54
  ret i64 %a

end_label57:                                      ; preds = %end_label54
  %3 = add i64 %a, %align
  %4 = sub i64 %3, %1
  ret i64 %4
}

define i64 @gala_144156._.._onin_gala_core_mem_windows.align_for_size(i64 %n) {
entry:
  %0 = icmp uge i64 %n, 16
  br i1 %0, label %base_block_label63, label %end_label63

base_block_label63:                               ; preds = %entry
  ret i64 16

end_label63:                                      ; preds = %entry
  %1 = icmp uge i64 %n, 8
  br i1 %1, label %base_block_label65, label %end_label65

base_block_label65:                               ; preds = %end_label63
  ret i64 8

end_label65:                                      ; preds = %end_label63
  %2 = icmp uge i64 %n, 4
  br i1 %2, label %base_block_label67, label %end_label67

base_block_label67:                               ; preds = %end_label65
  ret i64 4

end_label67:                                      ; preds = %end_label65
  %3 = icmp uge i64 %n, 2
  br i1 %3, label %base_block_label69, label %end_label69

base_block_label69:                               ; preds = %end_label67
  ret i64 2

end_label69:                                      ; preds = %end_label67
  ret i64 1
}

define i64 @gala_144156._.._onin_gala_core_mem_windows.min_u64(i64 %a, i64 %b) {
entry:
  %0 = icmp ult i64 %a, %b
  br i1 %0, label %base_block_label71, label %end_label71

base_block_label71:                               ; preds = %entry
  ret i64 %a

end_label71:                                      ; preds = %entry
  ret i64 %b
}

define i64 @gala_144156._.._onin_gala_core_mem_windows.max_u64(i64 %a, i64 %b) {
entry:
  %0 = icmp ugt i64 %a, %b
  br i1 %0, label %base_block_label73, label %end_label73

base_block_label73:                               ; preds = %entry
  ret i64 %a

end_label73:                                      ; preds = %entry
  ret i64 %b
}

define void @gala_144156._.._onin_gala_core_mem_windows.mem_copy(ptr %dst, ptr %src, i64 %n) {
entry:
  %0 = call ptr @memmove(ptr %dst, ptr %src, i64 %n)
  ret void
}

define void @gala_144156._.._onin_gala_core_mem_windows.mem_zero(ptr %p, i64 %n) {
entry:
  %0 = call ptr @memset(ptr %p, i32 0, i64 %n)
  ret void
}

define void @gala_144156._.._onin_gala_core_mem_windows.mem_set(ptr %p, i32 %value, i64 %n) {
entry:
  %0 = call ptr @memset(ptr %p, i32 %value, i64 %n)
  ret void
}

define zeroext i1 @gala_144156._.._onin_gala_core_mem_windows.mem_equal(ptr %a, ptr %b, i64 %n) {
entry:
  %0 = call i32 @memcmp(ptr %a, ptr %b, i64 %n)
  %1 = icmp eq i32 %0, 0
  ret i1 %1
}

define void @gala_144156._.._onin_gala_core_mem_windows.bytes_from(ptr sret({ ptr, i64 }) align 8 %.sret, ptr %p, i64 %n) {
entry:
  %slot83 = alloca %gala_144156._.._onin_gala_core_mem_windows.RawSlice, align 8
  %0 = insertvalue %gala_144156._.._onin_gala_core_mem_windows.RawSlice undef, ptr %p, 0
  %1 = insertvalue %gala_144156._.._onin_gala_core_mem_windows.RawSlice %0, i64 %n, 1
  store %gala_144156._.._onin_gala_core_mem_windows.RawSlice %1, ptr %slot83, align 8
  %2 = load { ptr, i64 }, ptr %slot83, align 8
  store { ptr, i64 } %2, ptr %.sret, align 8
  ret void
}

define void @gala_144156._.._onin_gala_core_mem_windows.set_allocator(ptr noundef %a) {
entry:
  %0 = load %gala_144156._.._onin_gala_core_mem_windows.Allocator, ptr %a, align 8
  store %gala_144156._.._onin_gala_core_mem_windows.Allocator %0, ptr @gala_144156._.._onin_gala_core_mem_windows.base_allocator, align 8
  ret void
}

define i64 @gala_144156._.._onin_gala_core_mem_windows.__default_1() {
entry:
  ret i64 16
}

define void @gala_144156._.._onin_gala_core_mem_windows.__default_2(ptr sret(%gala_144156._.._onin_gala_core_mem_windows.Allocator) align 8 %.sret) {
entry:
  %0 = load %gala_144156._.._onin_gala_core_mem_windows.Allocator, ptr @gala_144156._.._onin_gala_core_mem_windows.base_allocator, align 8
  store %gala_144156._.._onin_gala_core_mem_windows.Allocator %0, ptr %.sret, align 8
  ret void
}

define ptr @gala_144156._.._onin_gala_core_mem_windows.alloc(i64 %size, i64 %align, ptr noundef %a) {
entry:
  %0 = getelementptr inbounds %gala_144156._.._onin_gala_core_mem_windows.Allocator, ptr %a, i32 0, i32 0
  %1 = load ptr, ptr %0, align 8
  %2 = getelementptr inbounds %gala_144156._.._onin_gala_core_mem_windows.Allocator, ptr %a, i32 0, i32 1
  %3 = load ptr, ptr %2, align 8
  %4 = load i32, ptr @gala_144156._.._onin_gala_core_mem_windows.MODE_ALLOC, align 4
  %5 = inttoptr i64 0 to ptr
  %6 = call ptr %1(ptr %3, i32 %4, i64 %size, i64 %align, ptr %5, i64 0)
  ret ptr %6
}

define i64 @gala_144156._.._onin_gala_core_mem_windows.__default_3() {
entry:
  ret i64 0
}

define void @gala_144156._.._onin_gala_core_mem_windows.__default_4(ptr sret(%gala_144156._.._onin_gala_core_mem_windows.Allocator) align 8 %.sret) {
entry:
  %0 = load %gala_144156._.._onin_gala_core_mem_windows.Allocator, ptr @gala_144156._.._onin_gala_core_mem_windows.base_allocator, align 8
  store %gala_144156._.._onin_gala_core_mem_windows.Allocator %0, ptr %.sret, align 8
  ret void
}

define void @gala_144156._.._onin_gala_core_mem_windows.dealloc(ptr %p, i64 %size, ptr noundef %a) {
entry:
  %0 = ptrtoint ptr %p to i64
  %1 = inttoptr i64 0 to ptr
  %2 = ptrtoint ptr %1 to i64
  %3 = icmp eq i64 %0, %2
  br i1 %3, label %base_block_label96, label %end_label96

base_block_label96:                               ; preds = %entry
  ret void

end_label96:                                      ; preds = %entry
  %4 = getelementptr inbounds %gala_144156._.._onin_gala_core_mem_windows.Allocator, ptr %a, i32 0, i32 0
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %gala_144156._.._onin_gala_core_mem_windows.Allocator, ptr %a, i32 0, i32 1
  %7 = load ptr, ptr %6, align 8
  %8 = load i32, ptr @gala_144156._.._onin_gala_core_mem_windows.MODE_FREE, align 4
  %9 = call ptr %5(ptr %7, i32 %8, i64 0, i64 0, ptr %p, i64 %size)
  ret void
}

define void @gala_144156._.._onin_gala_core_mem_windows.__default_5(ptr sret(%gala_144156._.._onin_gala_core_mem_windows.Allocator) align 8 %.sret) {
entry:
  %0 = load %gala_144156._.._onin_gala_core_mem_windows.Allocator, ptr @gala_144156._.._onin_gala_core_mem_windows.base_allocator, align 8
  store %gala_144156._.._onin_gala_core_mem_windows.Allocator %0, ptr %.sret, align 8
  ret void
}

define void @gala_144156._.._onin_gala_core_mem_windows.dealloc_all(ptr noundef %a) {
entry:
  %0 = getelementptr inbounds %gala_144156._.._onin_gala_core_mem_windows.Allocator, ptr %a, i32 0, i32 0
  %1 = load ptr, ptr %0, align 8
  %2 = getelementptr inbounds %gala_144156._.._onin_gala_core_mem_windows.Allocator, ptr %a, i32 0, i32 1
  %3 = load ptr, ptr %2, align 8
  %4 = load i32, ptr @gala_144156._.._onin_gala_core_mem_windows.MODE_FREE_ALL, align 4
  %5 = inttoptr i64 0 to ptr
  %6 = call ptr %1(ptr %3, i32 %4, i64 0, i64 0, ptr %5, i64 0)
  ret void
}

define i64 @gala_144156._.._onin_gala_core_mem_windows.__default_6() {
entry:
  ret i64 16
}

define void @gala_144156._.._onin_gala_core_mem_windows.__default_7(ptr sret(%gala_144156._.._onin_gala_core_mem_windows.Allocator) align 8 %.sret) {
entry:
  %0 = load %gala_144156._.._onin_gala_core_mem_windows.Allocator, ptr @gala_144156._.._onin_gala_core_mem_windows.base_allocator, align 8
  store %gala_144156._.._onin_gala_core_mem_windows.Allocator %0, ptr %.sret, align 8
  ret void
}

define ptr @gala_144156._.._onin_gala_core_mem_windows.resize(ptr %p, i64 %old_size, i64 %new_size, i64 %align, ptr noundef %a) {
entry:
  %0 = getelementptr inbounds %gala_144156._.._onin_gala_core_mem_windows.Allocator, ptr %a, i32 0, i32 0
  %1 = load ptr, ptr %0, align 8
  %2 = getelementptr inbounds %gala_144156._.._onin_gala_core_mem_windows.Allocator, ptr %a, i32 0, i32 1
  %3 = load ptr, ptr %2, align 8
  %4 = load i32, ptr @gala_144156._.._onin_gala_core_mem_windows.MODE_RESIZE, align 4
  %5 = call ptr %1(ptr %3, i32 %4, i64 %new_size, i64 %align, ptr %p, i64 %old_size)
  ret ptr %5
}

define void @gala_144156._.._onin_gala_core_mem_windows.__default_8(ptr sret(%gala_144156._.._onin_gala_core_mem_windows.Allocator) align 8 %.sret) {
entry:
  %0 = load %gala_144156._.._onin_gala_core_mem_windows.Allocator, ptr @gala_144156._.._onin_gala_core_mem_windows.base_allocator, align 8
  store %gala_144156._.._onin_gala_core_mem_windows.Allocator %0, ptr %.sret, align 8
  ret void
}

define void @gala_144156._.._onin_gala_core_mem_windows.alloc_bytes(ptr sret({ ptr, i64 }) align 8 %.sret, i64 %n, ptr noundef %a) {
entry:
  %slot128 = alloca { ptr, i64 }, align 8
  %slot133 = alloca %gala_144156._.._onin_gala_core_mem_windows.Allocator, align 8
  %slot141 = alloca { ptr, i64 }, align 8
  %slot144 = alloca { ptr, i64 }, align 8
  %0 = icmp sle i64 %n, 0
  br i1 %0, label %base_block_label126, label %end_label126

base_block_label126:                              ; preds = %entry
  %1 = inttoptr i64 0 to ptr
  call void @gala_144156._.._onin_gala_core_mem_windows.bytes_from(ptr sret({ ptr, i64 }) align 8 %slot128, ptr %1, i64 0)
  %2 = load { ptr, i64 }, ptr %slot128, align 8
  store { ptr, i64 } %2, ptr %.sret, align 8
  ret void

end_label126:                                     ; preds = %entry
  %3 = call i64 @gala_144156._.._onin_gala_core_mem_windows.__default_1()
  %4 = load %gala_144156._.._onin_gala_core_mem_windows.Allocator, ptr %a, align 8
  store %gala_144156._.._onin_gala_core_mem_windows.Allocator %4, ptr %slot133, align 8
  %5 = call ptr @gala_144156._.._onin_gala_core_mem_windows.alloc(i64 %n, i64 %3, ptr noundef %slot133)
  %6 = ptrtoint ptr %5 to i64
  %7 = inttoptr i64 0 to ptr
  %8 = ptrtoint ptr %7 to i64
  %9 = icmp eq i64 %6, %8
  br i1 %9, label %base_block_label135, label %end_label135

base_block_label135:                              ; preds = %end_label126
  %10 = inttoptr i64 0 to ptr
  call void @gala_144156._.._onin_gala_core_mem_windows.bytes_from(ptr sret({ ptr, i64 }) align 8 %slot141, ptr %10, i64 0)
  %11 = load { ptr, i64 }, ptr %slot141, align 8
  store { ptr, i64 } %11, ptr %.sret, align 8
  ret void

end_label135:                                     ; preds = %end_label126
  call void @gala_144156._.._onin_gala_core_mem_windows.bytes_from(ptr sret({ ptr, i64 }) align 8 %slot144, ptr %5, i64 %n)
  %12 = load { ptr, i64 }, ptr %slot144, align 8
  store { ptr, i64 } %12, ptr %.sret, align 8
  ret void
}

define void @gala_144156._.._onin_gala_core_mem_windows.__default_9(ptr sret(%gala_144156._.._onin_gala_core_mem_windows.Allocator) align 8 %.sret) {
entry:
  %0 = load %gala_144156._.._onin_gala_core_mem_windows.Allocator, ptr @gala_144156._.._onin_gala_core_mem_windows.base_allocator, align 8
  store %gala_144156._.._onin_gala_core_mem_windows.Allocator %0, ptr %.sret, align 8
  ret void
}

define void @gala_144156._.._onin_gala_core_mem_windows.free_bytes(ptr noundef %b, ptr noundef %a) {
entry:
  %slot154 = alloca { ptr, i64 }, align 8
  %slot159 = alloca %gala_144156._.._onin_gala_core_mem_windows.Allocator, align 8
  %0 = load { ptr, i64 }, ptr %b, align 8
  %1 = extractvalue { ptr, i64 } %0, 1
  %2 = icmp eq i64 %1, 0
  br i1 %2, label %base_block_label150, label %end_label150

base_block_label150:                              ; preds = %entry
  ret void

end_label150:                                     ; preds = %entry
  %3 = load { ptr, i64 }, ptr %b, align 8
  store { ptr, i64 } %3, ptr %slot154, align 8
  %4 = call ptr @gala_546687._.._onin_gala_core_core_windows.raw_data.a_byte.v0(ptr noundef %slot154)
  %5 = bitcast ptr %4 to ptr
  %6 = load %gala_144156._.._onin_gala_core_mem_windows.Allocator, ptr %a, align 8
  store %gala_144156._.._onin_gala_core_mem_windows.Allocator %6, ptr %slot159, align 8
  call void @gala_144156._.._onin_gala_core_mem_windows.dealloc(ptr %5, i64 %1, ptr noundef %slot159)
  ret void
}

define void @gala_144156._.._onin_gala_core_mem_windows.__default_10(ptr sret(%gala_144156._.._onin_gala_core_mem_windows.Allocator) align 8 %.sret) {
entry:
  %0 = load %gala_144156._.._onin_gala_core_mem_windows.Allocator, ptr @gala_144156._.._onin_gala_core_mem_windows.base_allocator, align 8
  store %gala_144156._.._onin_gala_core_mem_windows.Allocator %0, ptr %.sret, align 8
  ret void
}

define void @gala_144156._.._onin_gala_core_mem_windows.clone_string(ptr sret({ ptr, i64 }) align 8 %.sret, ptr noundef %s, ptr noundef %a) {
entry:
  %slot169 = alloca { ptr, i64 }, align 8
  %slot172 = alloca %gala_144156._.._onin_gala_core_mem_windows.Allocator, align 8
  %slot182 = alloca { ptr, i64 }, align 8
  %slot186 = alloca { ptr, i64 }, align 8
  %0 = load { ptr, i64 }, ptr %s, align 8
  %1 = extractvalue { ptr, i64 } %0, 1
  %2 = icmp eq i64 %1, 0
  br i1 %2, label %base_block_label163, label %end_label163

base_block_label163:                              ; preds = %entry
  %3 = getelementptr inbounds [1 x i8], ptr @string11, i64 0, i64 0
  %4 = insertvalue { ptr, i64 } undef, ptr %3, 0
  %5 = insertvalue { ptr, i64 } %4, i64 0, 1
  store { ptr, i64 } %5, ptr %.sret, align 8
  ret void

end_label163:                                     ; preds = %entry
  %6 = load %gala_144156._.._onin_gala_core_mem_windows.Allocator, ptr %a, align 8
  store %gala_144156._.._onin_gala_core_mem_windows.Allocator %6, ptr %slot172, align 8
  call void @gala_144156._.._onin_gala_core_mem_windows.alloc_bytes(ptr sret({ ptr, i64 }) align 8 %slot169, i64 %1, ptr noundef %slot172)
  %7 = load { ptr, i64 }, ptr %slot169, align 8
  %8 = extractvalue { ptr, i64 } %7, 1
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %base_block_label174, label %end_label174

base_block_label174:                              ; preds = %end_label163
  %10 = getelementptr inbounds [1 x i8], ptr @string11, i64 0, i64 0
  %11 = insertvalue { ptr, i64 } undef, ptr %10, 0
  %12 = insertvalue { ptr, i64 } %11, i64 0, 1
  store { ptr, i64 } %12, ptr %.sret, align 8
  ret void

end_label174:                                     ; preds = %end_label163
  store { ptr, i64 } %7, ptr %slot182, align 8
  %13 = call ptr @gala_546687._.._onin_gala_core_core_windows.raw_data.a_byte.v0(ptr noundef %slot182)
  %14 = bitcast ptr %13 to ptr
  %15 = load { ptr, i64 }, ptr %s, align 8
  store { ptr, i64 } %15, ptr %slot186, align 8
  %16 = call ptr @gala_546687._.._onin_gala_core_core_windows.str_data(ptr noundef %slot186)
  %17 = bitcast ptr %16 to ptr
  call void @gala_144156._.._onin_gala_core_mem_windows.mem_copy(ptr %14, ptr %17, i64 %1)
  store { ptr, i64 } %7, ptr %.sret, align 8
  ret void
}

define void @gala_144156._.._onin_gala_core_mem_windows.__default_11(ptr sret(%gala_144156._.._onin_gala_core_mem_windows.Allocator) align 8 %.sret) {
entry:
  %0 = load %gala_144156._.._onin_gala_core_mem_windows.Allocator, ptr @gala_144156._.._onin_gala_core_mem_windows.base_allocator, align 8
  store %gala_144156._.._onin_gala_core_mem_windows.Allocator %0, ptr %.sret, align 8
  ret void
}

define ptr @gala_144156._.._onin_gala_core_mem_windows.clone_cstring(ptr noundef %s, ptr noundef %a) {
entry:
  %slot200 = alloca %gala_144156._.._onin_gala_core_mem_windows.Allocator, align 8
  %slot214 = alloca { ptr, i64 }, align 8
  %0 = load { ptr, i64 }, ptr %s, align 8
  %1 = extractvalue { ptr, i64 } %0, 1
  %2 = add i64 %1, 1
  %3 = call i64 @gala_144156._.._onin_gala_core_mem_windows.__default_1()
  %4 = load %gala_144156._.._onin_gala_core_mem_windows.Allocator, ptr %a, align 8
  store %gala_144156._.._onin_gala_core_mem_windows.Allocator %4, ptr %slot200, align 8
  %5 = call ptr @gala_144156._.._onin_gala_core_mem_windows.alloc(i64 %2, i64 %3, ptr noundef %slot200)
  %6 = ptrtoint ptr %5 to i64
  %7 = inttoptr i64 0 to ptr
  %8 = ptrtoint ptr %7 to i64
  %9 = icmp eq i64 %6, %8
  br i1 %9, label %base_block_label202, label %end_label202

base_block_label202:                              ; preds = %entry
  %10 = inttoptr i64 0 to ptr
  ret ptr %10

end_label202:                                     ; preds = %entry
  %11 = icmp sgt i64 %1, 0
  br i1 %11, label %base_block_label209, label %end_label209

base_block_label209:                              ; preds = %end_label202
  %12 = load { ptr, i64 }, ptr %s, align 8
  store { ptr, i64 } %12, ptr %slot214, align 8
  %13 = call ptr @gala_546687._.._onin_gala_core_core_windows.str_data(ptr noundef %slot214)
  %14 = bitcast ptr %13 to ptr
  call void @gala_144156._.._onin_gala_core_mem_windows.mem_copy(ptr %5, ptr %14, i64 %1)
  br label %end_label209

end_label209:                                     ; preds = %base_block_label209, %end_label202
  ret ptr %5
}

define void @gala_144156._.._onin_gala_core_mem_windows.__default_12(ptr sret(%gala_144156._.._onin_gala_core_mem_windows.Allocator) align 8 %.sret) {
entry:
  %0 = load %gala_144156._.._onin_gala_core_mem_windows.Allocator, ptr @gala_144156._.._onin_gala_core_mem_windows.base_allocator, align 8
  store %gala_144156._.._onin_gala_core_mem_windows.Allocator %0, ptr %.sret, align 8
  ret void
}

define void @gala_144156._.._onin_gala_core_mem_windows.free_string(ptr noundef %s, ptr noundef %a) {
entry:
  %slot226 = alloca { ptr, i64 }, align 8
  %slot231 = alloca %gala_144156._.._onin_gala_core_mem_windows.Allocator, align 8
  %0 = load { ptr, i64 }, ptr %s, align 8
  %1 = extractvalue { ptr, i64 } %0, 1
  %2 = icmp eq i64 %1, 0
  br i1 %2, label %base_block_label222, label %end_label222

base_block_label222:                              ; preds = %entry
  ret void

end_label222:                                     ; preds = %entry
  %3 = load { ptr, i64 }, ptr %s, align 8
  store { ptr, i64 } %3, ptr %slot226, align 8
  %4 = call ptr @gala_546687._.._onin_gala_core_core_windows.str_data(ptr noundef %slot226)
  %5 = bitcast ptr %4 to ptr
  %6 = load %gala_144156._.._onin_gala_core_mem_windows.Allocator, ptr %a, align 8
  store %gala_144156._.._onin_gala_core_mem_windows.Allocator %6, ptr %slot231, align 8
  call void @gala_144156._.._onin_gala_core_mem_windows.dealloc(ptr %5, i64 %1, ptr noundef %slot231)
  ret void
}

define void @gala_144156._.._onin_gala_core_mem_windows.__default_13(ptr sret(%gala_144156._.._onin_gala_core_mem_windows.Allocator) align 8 %.sret) {
entry:
  %0 = load %gala_144156._.._onin_gala_core_mem_windows.Allocator, ptr @gala_144156._.._onin_gala_core_mem_windows.base_allocator, align 8
  store %gala_144156._.._onin_gala_core_mem_windows.Allocator %0, ptr %.sret, align 8
  ret void
}

define void @gala_144156._.._onin_gala_core_mem_windows.__default_14(ptr sret(%gala_144156._.._onin_gala_core_mem_windows.Allocator) align 8 %.sret) {
entry:
  %0 = load %gala_144156._.._onin_gala_core_mem_windows.Allocator, ptr @gala_144156._.._onin_gala_core_mem_windows.base_allocator, align 8
  store %gala_144156._.._onin_gala_core_mem_windows.Allocator %0, ptr %.sret, align 8
  ret void
}

define i64 @gala_144156._.._onin_gala_core_mem_windows.__default_15() {
entry:
  ret i64 0
}

define void @gala_144156._.._onin_gala_core_mem_windows.__default_16(ptr sret(%gala_144156._.._onin_gala_core_mem_windows.Allocator) align 8 %.sret) {
entry:
  %0 = load %gala_144156._.._onin_gala_core_mem_windows.Allocator, ptr @gala_144156._.._onin_gala_core_mem_windows.base_allocator, align 8
  store %gala_144156._.._onin_gala_core_mem_windows.Allocator %0, ptr %.sret, align 8
  ret void
}

define void @gala_144156._.._onin_gala_core_mem_windows.__default_17(ptr sret(%gala_144156._.._onin_gala_core_mem_windows.Allocator) align 8 %.sret) {
entry:
  %0 = load %gala_144156._.._onin_gala_core_mem_windows.Allocator, ptr @gala_144156._.._onin_gala_core_mem_windows.base_allocator, align 8
  store %gala_144156._.._onin_gala_core_mem_windows.Allocator %0, ptr %.sret, align 8
  ret void
}

define ptr @gala_144156._.._onin_gala_core_mem_windows.heap_proc(ptr %data, i32 %mode, i64 %size, i64 %align, ptr %old, i64 %old_size) {
entry:
  %0 = load i32, ptr @gala_144156._.._onin_gala_core_mem_windows.MODE_ALLOC, align 4
  %1 = icmp eq i32 %mode, %0
  br i1 %1, label %logic.end.240, label %logic.rhs.240

logic.rhs.240:                                    ; preds = %entry
  %2 = load i32, ptr @gala_144156._.._onin_gala_core_mem_windows.MODE_RESIZE, align 4
  %3 = icmp eq i32 %mode, %2
  br label %logic.end.240

logic.end.240:                                    ; preds = %logic.rhs.240, %entry
  %slot239.0 = phi i1 [ %1, %entry ], [ %3, %logic.rhs.240 ]
  br i1 %slot239.0, label %logic.rhs.238, label %logic.end.238

logic.rhs.238:                                    ; preds = %logic.end.240
  %4 = icmp ugt i64 %align, 16
  br label %logic.end.238

logic.end.238:                                    ; preds = %logic.rhs.238, %logic.end.240
  %slot237.0 = phi i1 [ %4, %logic.rhs.238 ], [ %slot239.0, %logic.end.240 ]
  br i1 %slot237.0, label %base_block_label236, label %end_label236

base_block_label236:                              ; preds = %logic.end.238
  %5 = inttoptr i64 0 to ptr
  ret ptr %5

end_label236:                                     ; preds = %logic.end.238
  %6 = load i32, ptr @gala_144156._.._onin_gala_core_mem_windows.MODE_ALLOC, align 4
  %7 = icmp eq i32 %mode, %6
  br i1 %7, label %base_block_label249, label %end_label249

base_block_label249:                              ; preds = %end_label236
  %8 = call ptr @calloc(i64 1, i64 %size)
  ret ptr %8

end_label249:                                     ; preds = %end_label236
  %9 = load i32, ptr @gala_144156._.._onin_gala_core_mem_windows.MODE_FREE, align 4
  %10 = icmp eq i32 %mode, %9
  br i1 %10, label %base_block_label253, label %end_label253

base_block_label253:                              ; preds = %end_label249
  %11 = ptrtoint ptr %old to i64
  %12 = inttoptr i64 0 to ptr
  %13 = ptrtoint ptr %12 to i64
  %14 = icmp ne i64 %11, %13
  br i1 %14, label %base_block_label256, label %end_label256

base_block_label256:                              ; preds = %base_block_label253
  call void @free(ptr %old)
  br label %end_label256

end_label256:                                     ; preds = %base_block_label256, %base_block_label253
  %15 = inttoptr i64 0 to ptr
  ret ptr %15

end_label253:                                     ; preds = %end_label249
  %16 = load i32, ptr @gala_144156._.._onin_gala_core_mem_windows.MODE_RESIZE, align 4
  %17 = icmp eq i32 %mode, %16
  br i1 %17, label %base_block_label262, label %end_label262

base_block_label262:                              ; preds = %end_label253
  %18 = ptrtoint ptr %old to i64
  %19 = inttoptr i64 0 to ptr
  %20 = ptrtoint ptr %19 to i64
  %21 = icmp eq i64 %18, %20
  br i1 %21, label %base_block_label265, label %end_label265

base_block_label265:                              ; preds = %base_block_label262
  %22 = call ptr @calloc(i64 1, i64 %size)
  ret ptr %22

end_label265:                                     ; preds = %base_block_label262
  %23 = call ptr @realloc(ptr %old, i64 %size)
  %24 = ptrtoint ptr %23 to i64
  %25 = inttoptr i64 0 to ptr
  %26 = ptrtoint ptr %25 to i64
  %27 = icmp ne i64 %24, %26
  br i1 %27, label %logic.rhs.274, label %logic.end.274

logic.rhs.274:                                    ; preds = %end_label265
  %28 = icmp ugt i64 %size, %old_size
  br label %logic.end.274

logic.end.274:                                    ; preds = %logic.rhs.274, %end_label265
  %slot273.0 = phi i1 [ %28, %logic.rhs.274 ], [ %27, %end_label265 ]
  br i1 %slot273.0, label %base_block_label272, label %end_label272

base_block_label272:                              ; preds = %logic.end.274
  %29 = call ptr @gala_546687._.._onin_gala_core_core_windows.ptr_add(ptr %23, i64 %old_size)
  %30 = sub i64 %size, %old_size
  call void @gala_144156._.._onin_gala_core_mem_windows.mem_zero(ptr %29, i64 %30)
  br label %end_label272

end_label272:                                     ; preds = %base_block_label272, %logic.end.274
  ret ptr %23

end_label262:                                     ; preds = %end_label253
  %31 = inttoptr i64 0 to ptr
  ret ptr %31
}

define void @gala_144156._.._onin_gala_core_mem_windows.heap_allocator(ptr sret(%gala_144156._.._onin_gala_core_mem_windows.Allocator) align 8 %.sret) {
entry:
  %0 = inttoptr i64 0 to ptr
  %1 = insertvalue %gala_144156._.._onin_gala_core_mem_windows.Allocator undef, ptr @gala_144156._.._onin_gala_core_mem_windows.heap_proc, 0
  %2 = insertvalue %gala_144156._.._onin_gala_core_mem_windows.Allocator %1, ptr %0, 1
  store %gala_144156._.._onin_gala_core_mem_windows.Allocator %2, ptr %.sret, align 8
  ret void
}

define void @gala_144156._.._onin_gala_core_mem_windows.arena_empty(ptr sret(%gala_144156._.._onin_gala_core_mem_windows.Arena) align 8 %.sret) {
entry:
  %0 = inttoptr i64 0 to ptr
  %1 = insertvalue %gala_144156._.._onin_gala_core_mem_windows.Arena undef, ptr %0, 0
  %2 = insertvalue %gala_144156._.._onin_gala_core_mem_windows.Arena %1, i64 0, 1
  %3 = insertvalue %gala_144156._.._onin_gala_core_mem_windows.Arena %2, i64 0, 2
  %4 = insertvalue %gala_144156._.._onin_gala_core_mem_windows.Arena %3, i64 0, 3
  %5 = insertvalue %gala_144156._.._onin_gala_core_mem_windows.Arena %4, i1 false, 4
  store %gala_144156._.._onin_gala_core_mem_windows.Arena %5, ptr %.sret, align 8
  ret void
}

define void @gala_144156._.._onin_gala_core_mem_windows.arena_init(ptr %a, ptr %buf, i64 %size) {
entry:
  %0 = insertvalue %gala_144156._.._onin_gala_core_mem_windows.Arena undef, ptr %buf, 0
  %1 = insertvalue %gala_144156._.._onin_gala_core_mem_windows.Arena %0, i64 %size, 1
  %2 = insertvalue %gala_144156._.._onin_gala_core_mem_windows.Arena %1, i64 0, 2
  %3 = insertvalue %gala_144156._.._onin_gala_core_mem_windows.Arena %2, i64 0, 3
  %4 = insertvalue %gala_144156._.._onin_gala_core_mem_windows.Arena %3, i1 false, 4
  store %gala_144156._.._onin_gala_core_mem_windows.Arena %4, ptr %a, align 8
  ret void
}

define void @gala_144156._.._onin_gala_core_mem_windows.arena_make(ptr sret(%gala_144156._.._onin_gala_core_mem_windows.Arena) align 8 %.sret, i64 %size) {
entry:
  %slot308 = alloca %gala_144156._.._onin_gala_core_mem_windows.Arena, align 8
  %0 = call ptr @malloc(i64 %size)
  %1 = ptrtoint ptr %0 to i64
  %2 = inttoptr i64 0 to ptr
  %3 = ptrtoint ptr %2 to i64
  %4 = icmp eq i64 %1, %3
  br i1 %4, label %base_block_label302, label %end_label302

base_block_label302:                              ; preds = %entry
  call void @gala_144156._.._onin_gala_core_mem_windows.arena_empty(ptr sret(%gala_144156._.._onin_gala_core_mem_windows.Arena) align 8 %slot308)
  %5 = load %gala_144156._.._onin_gala_core_mem_windows.Arena, ptr %slot308, align 8
  store %gala_144156._.._onin_gala_core_mem_windows.Arena %5, ptr %.sret, align 8
  ret void

end_label302:                                     ; preds = %entry
  %6 = insertvalue %gala_144156._.._onin_gala_core_mem_windows.Arena undef, ptr %0, 0
  %7 = insertvalue %gala_144156._.._onin_gala_core_mem_windows.Arena %6, i64 %size, 1
  %8 = insertvalue %gala_144156._.._onin_gala_core_mem_windows.Arena %7, i64 0, 2
  %9 = insertvalue %gala_144156._.._onin_gala_core_mem_windows.Arena %8, i64 0, 3
  %10 = insertvalue %gala_144156._.._onin_gala_core_mem_windows.Arena %9, i1 true, 4
  store %gala_144156._.._onin_gala_core_mem_windows.Arena %10, ptr %.sret, align 8
  ret void
}

define void @gala_144156._.._onin_gala_core_mem_windows.arena_destroy(ptr %a) {
entry:
  %slot321 = alloca %gala_144156._.._onin_gala_core_mem_windows.Arena, align 8
  %0 = getelementptr inbounds %gala_144156._.._onin_gala_core_mem_windows.Arena, ptr %a, i32 0, i32 4
  %1 = load i1, ptr %0, align 1
  br i1 %1, label %base_block_label316, label %end_label316

base_block_label316:                              ; preds = %entry
  %2 = getelementptr inbounds %gala_144156._.._onin_gala_core_mem_windows.Arena, ptr %a, i32 0, i32 0
  %3 = load ptr, ptr %2, align 8
  call void @free(ptr %3)
  br label %end_label316

end_label316:                                     ; preds = %base_block_label316, %entry
  call void @gala_144156._.._onin_gala_core_mem_windows.arena_empty(ptr sret(%gala_144156._.._onin_gala_core_mem_windows.Arena) align 8 %slot321)
  %4 = load %gala_144156._.._onin_gala_core_mem_windows.Arena, ptr %slot321, align 8
  store %gala_144156._.._onin_gala_core_mem_windows.Arena %4, ptr %a, align 8
  ret void
}

define void @gala_144156._.._onin_gala_core_mem_windows.arena_reset(ptr %a) {
entry:
  %0 = getelementptr inbounds %gala_144156._.._onin_gala_core_mem_windows.Arena, ptr %a, i32 0, i32 2
  store i64 0, ptr %0, align 8
  %1 = getelementptr inbounds %gala_144156._.._onin_gala_core_mem_windows.Arena, ptr %a, i32 0, i32 3
  store i64 0, ptr %1, align 8
  ret void
}

define i64 @gala_144156._.._onin_gala_core_mem_windows.arena_used(ptr %a) {
entry:
  %0 = getelementptr inbounds %gala_144156._.._onin_gala_core_mem_windows.Arena, ptr %a, i32 0, i32 2
  %1 = load i64, ptr %0, align 8
  ret i64 %1
}

define i64 @gala_144156._.._onin_gala_core_mem_windows.arena_remaining(ptr %a) {
entry:
  %0 = getelementptr inbounds %gala_144156._.._onin_gala_core_mem_windows.Arena, ptr %a, i32 0, i32 1
  %1 = load i64, ptr %0, align 8
  %2 = getelementptr inbounds %gala_144156._.._onin_gala_core_mem_windows.Arena, ptr %a, i32 0, i32 2
  %3 = load i64, ptr %2, align 8
  %4 = sub i64 %1, %3
  ret i64 %4
}

define i64 @gala_144156._.._onin_gala_core_mem_windows.arena_mark(ptr %a) {
entry:
  %0 = getelementptr inbounds %gala_144156._.._onin_gala_core_mem_windows.Arena, ptr %a, i32 0, i32 2
  %1 = load i64, ptr %0, align 8
  ret i64 %1
}

define void @gala_144156._.._onin_gala_core_mem_windows.arena_restore(ptr %a, i64 %mark) {
entry:
  %0 = getelementptr inbounds %gala_144156._.._onin_gala_core_mem_windows.Arena, ptr %a, i32 0, i32 2
  store i64 %mark, ptr %0, align 8
  %1 = getelementptr inbounds %gala_144156._.._onin_gala_core_mem_windows.Arena, ptr %a, i32 0, i32 3
  store i64 %mark, ptr %1, align 8
  ret void
}

define ptr @gala_144156._.._onin_gala_core_mem_windows.arena_push(ptr %a, i64 %size, i64 %align) {
entry:
  %0 = getelementptr inbounds %gala_144156._.._onin_gala_core_mem_windows.Arena, ptr %a, i32 0, i32 0
  %1 = load ptr, ptr %0, align 8
  %2 = call i64 @gala_144156._.._onin_gala_core_mem_windows.addr(ptr %1)
  %3 = getelementptr inbounds %gala_144156._.._onin_gala_core_mem_windows.Arena, ptr %a, i32 0, i32 1
  %4 = load i64, ptr %3, align 8
  %5 = add i64 %2, %4
  %6 = getelementptr inbounds %gala_144156._.._onin_gala_core_mem_windows.Arena, ptr %a, i32 0, i32 2
  %7 = load i64, ptr %6, align 8
  %8 = add i64 %2, %7
  %9 = call i64 @gala_144156._.._onin_gala_core_mem_windows.align_forward(i64 %8, i64 %align)
  %10 = icmp ugt i64 %9, %5
  br i1 %10, label %logic.end.350, label %logic.rhs.350

logic.rhs.350:                                    ; preds = %entry
  %11 = sub i64 %5, %9
  %12 = icmp ugt i64 %size, %11
  br label %logic.end.350

logic.end.350:                                    ; preds = %logic.rhs.350, %entry
  %slot349.0 = phi i1 [ %10, %entry ], [ %12, %logic.rhs.350 ]
  br i1 %slot349.0, label %base_block_label348, label %end_label348

base_block_label348:                              ; preds = %logic.end.350
  %13 = inttoptr i64 0 to ptr
  ret ptr %13

end_label348:                                     ; preds = %logic.end.350
  %14 = add i64 %9, %size
  %15 = sub i64 %14, %2
  %16 = getelementptr inbounds %gala_144156._.._onin_gala_core_mem_windows.Arena, ptr %a, i32 0, i32 2
  store i64 %15, ptr %16, align 8
  %17 = sub i64 %9, %2
  %18 = getelementptr inbounds %gala_144156._.._onin_gala_core_mem_windows.Arena, ptr %a, i32 0, i32 3
  store i64 %17, ptr %18, align 8
  %19 = call ptr @gala_144156._.._onin_gala_core_mem_windows.from_addr(i64 %9)
  call void @gala_144156._.._onin_gala_core_mem_windows.mem_zero(ptr %19, i64 %size)
  ret ptr %19
}

define ptr @gala_144156._.._onin_gala_core_mem_windows.arena_proc(ptr %data, i32 %mode, i64 %size, i64 %align, ptr %old, i64 %old_size) {
entry:
  %0 = load i32, ptr @gala_144156._.._onin_gala_core_mem_windows.MODE_ALLOC, align 4
  %1 = icmp eq i32 %mode, %0
  br i1 %1, label %base_block_label373, label %end_label373

base_block_label373:                              ; preds = %entry
  %2 = call ptr @gala_144156._.._onin_gala_core_mem_windows.arena_push(ptr %data, i64 %size, i64 %align)
  ret ptr %2

end_label373:                                     ; preds = %entry
  %3 = load i32, ptr @gala_144156._.._onin_gala_core_mem_windows.MODE_FREE_ALL, align 4
  %4 = icmp eq i32 %mode, %3
  br i1 %4, label %base_block_label378, label %end_label378

base_block_label378:                              ; preds = %end_label373
  call void @gala_144156._.._onin_gala_core_mem_windows.arena_reset(ptr %data)
  %5 = inttoptr i64 0 to ptr
  ret ptr %5

end_label378:                                     ; preds = %end_label373
  %6 = load i32, ptr @gala_144156._.._onin_gala_core_mem_windows.MODE_FREE, align 4
  %7 = icmp eq i32 %mode, %6
  br i1 %7, label %base_block_label383, label %end_label383

base_block_label383:                              ; preds = %end_label378
  %8 = ptrtoint ptr %old to i64
  %9 = inttoptr i64 0 to ptr
  %10 = ptrtoint ptr %9 to i64
  %11 = icmp ne i64 %8, %10
  br i1 %11, label %logic.rhs.388, label %logic.end.388

logic.rhs.388:                                    ; preds = %base_block_label383
  %12 = call i64 @gala_144156._.._onin_gala_core_mem_windows.addr(ptr %old)
  %13 = getelementptr inbounds %gala_144156._.._onin_gala_core_mem_windows.Arena, ptr %data, i32 0, i32 0
  %14 = load ptr, ptr %13, align 8
  %15 = call i64 @gala_144156._.._onin_gala_core_mem_windows.addr(ptr %14)
  %16 = getelementptr inbounds %gala_144156._.._onin_gala_core_mem_windows.Arena, ptr %data, i32 0, i32 3
  %17 = load i64, ptr %16, align 8
  %18 = add i64 %15, %17
  %19 = icmp eq i64 %12, %18
  br label %logic.end.388

logic.end.388:                                    ; preds = %logic.rhs.388, %base_block_label383
  %slot387.0 = phi i1 [ %19, %logic.rhs.388 ], [ %11, %base_block_label383 ]
  br i1 %slot387.0, label %base_block_label386, label %end_label386

base_block_label386:                              ; preds = %logic.end.388
  %20 = getelementptr inbounds %gala_144156._.._onin_gala_core_mem_windows.Arena, ptr %data, i32 0, i32 3
  %21 = load i64, ptr %20, align 8
  %22 = getelementptr inbounds %gala_144156._.._onin_gala_core_mem_windows.Arena, ptr %data, i32 0, i32 2
  store i64 %21, ptr %22, align 8
  br label %end_label386

end_label386:                                     ; preds = %base_block_label386, %logic.end.388
  %23 = inttoptr i64 0 to ptr
  ret ptr %23

end_label383:                                     ; preds = %end_label378
  %24 = load i32, ptr @gala_144156._.._onin_gala_core_mem_windows.MODE_RESIZE, align 4
  %25 = icmp eq i32 %mode, %24
  br i1 %25, label %base_block_label410, label %end_label410

base_block_label410:                              ; preds = %end_label383
  %26 = ptrtoint ptr %old to i64
  %27 = inttoptr i64 0 to ptr
  %28 = ptrtoint ptr %27 to i64
  %29 = icmp eq i64 %26, %28
  br i1 %29, label %base_block_label413, label %end_label413

base_block_label413:                              ; preds = %base_block_label410
  %30 = call ptr @gala_144156._.._onin_gala_core_mem_windows.arena_push(ptr %data, i64 %size, i64 %align)
  ret ptr %30

end_label413:                                     ; preds = %base_block_label410
  %31 = call i64 @gala_144156._.._onin_gala_core_mem_windows.addr(ptr %old)
  %32 = getelementptr inbounds %gala_144156._.._onin_gala_core_mem_windows.Arena, ptr %data, i32 0, i32 0
  %33 = load ptr, ptr %32, align 8
  %34 = call i64 @gala_144156._.._onin_gala_core_mem_windows.addr(ptr %33)
  %35 = getelementptr inbounds %gala_144156._.._onin_gala_core_mem_windows.Arena, ptr %data, i32 0, i32 3
  %36 = load i64, ptr %35, align 8
  %37 = add i64 %34, %36
  %38 = icmp eq i64 %31, %37
  br i1 %38, label %logic.rhs.422, label %logic.end.422

logic.rhs.422:                                    ; preds = %end_label413
  %39 = getelementptr inbounds %gala_144156._.._onin_gala_core_mem_windows.Arena, ptr %data, i32 0, i32 1
  %40 = load i64, ptr %39, align 8
  %41 = getelementptr inbounds %gala_144156._.._onin_gala_core_mem_windows.Arena, ptr %data, i32 0, i32 3
  %42 = load i64, ptr %41, align 8
  %43 = sub i64 %40, %42
  %44 = icmp ule i64 %size, %43
  br label %logic.end.422

logic.end.422:                                    ; preds = %logic.rhs.422, %end_label413
  %slot421.0 = phi i1 [ %44, %logic.rhs.422 ], [ %38, %end_label413 ]
  br i1 %slot421.0, label %base_block_label420, label %end_label420

base_block_label420:                              ; preds = %logic.end.422
  %45 = icmp ugt i64 %size, %old_size
  br i1 %45, label %base_block_label442, label %end_label442

base_block_label442:                              ; preds = %base_block_label420
  %46 = call ptr @gala_546687._.._onin_gala_core_core_windows.ptr_add(ptr %old, i64 %old_size)
  %47 = sub i64 %size, %old_size
  call void @gala_144156._.._onin_gala_core_mem_windows.mem_zero(ptr %46, i64 %47)
  br label %end_label442

end_label442:                                     ; preds = %base_block_label442, %base_block_label420
  %48 = getelementptr inbounds %gala_144156._.._onin_gala_core_mem_windows.Arena, ptr %data, i32 0, i32 3
  %49 = load i64, ptr %48, align 8
  %50 = add i64 %49, %size
  %51 = getelementptr inbounds %gala_144156._.._onin_gala_core_mem_windows.Arena, ptr %data, i32 0, i32 2
  store i64 %50, ptr %51, align 8
  ret ptr %old

end_label420:                                     ; preds = %logic.end.422
  %52 = call ptr @gala_144156._.._onin_gala_core_mem_windows.arena_push(ptr %data, i64 %size, i64 %align)
  %53 = ptrtoint ptr %52 to i64
  %54 = inttoptr i64 0 to ptr
  %55 = ptrtoint ptr %54 to i64
  %56 = icmp eq i64 %53, %55
  br i1 %56, label %base_block_label454, label %end_label454

base_block_label454:                              ; preds = %end_label420
  %57 = inttoptr i64 0 to ptr
  ret ptr %57

end_label454:                                     ; preds = %end_label420
  %58 = call i64 @gala_144156._.._onin_gala_core_mem_windows.min_u64(i64 %old_size, i64 %size)
  call void @gala_144156._.._onin_gala_core_mem_windows.mem_copy(ptr %52, ptr %old, i64 %58)
  ret ptr %52

end_label410:                                     ; preds = %end_label383
  %59 = inttoptr i64 0 to ptr
  ret ptr %59
}

define void @gala_144156._.._onin_gala_core_mem_windows.arena_allocator(ptr sret(%gala_144156._.._onin_gala_core_mem_windows.Allocator) align 8 %.sret, ptr %a) {
entry:
  %0 = insertvalue %gala_144156._.._onin_gala_core_mem_windows.Allocator undef, ptr @gala_144156._.._onin_gala_core_mem_windows.arena_proc, 0
  %1 = insertvalue %gala_144156._.._onin_gala_core_mem_windows.Allocator %0, ptr %a, 1
  store %gala_144156._.._onin_gala_core_mem_windows.Allocator %1, ptr %.sret, align 8
  ret void
}

define void @gala_144156._.._onin_gala_core_mem_windows.temp_init(i64 %size) {
entry:
  %slot474 = alloca %gala_144156._.._onin_gala_core_mem_windows.Arena, align 8
  %0 = getelementptr inbounds %gala_144156._.._onin_gala_core_mem_windows.Arena, ptr @gala_144156._.._onin_gala_core_mem_windows.temp_arena, i32 0, i32 0
  %1 = load ptr, ptr %0, align 8
  %2 = ptrtoint ptr %1 to i64
  %3 = inttoptr i64 0 to ptr
  %4 = ptrtoint ptr %3 to i64
  %5 = icmp ne i64 %2, %4
  br i1 %5, label %base_block_label467, label %end_label467

base_block_label467:                              ; preds = %entry
  call void @gala_144156._.._onin_gala_core_mem_windows.arena_destroy(ptr @gala_144156._.._onin_gala_core_mem_windows.temp_arena)
  br label %end_label467

end_label467:                                     ; preds = %base_block_label467, %entry
  call void @gala_144156._.._onin_gala_core_mem_windows.arena_make(ptr sret(%gala_144156._.._onin_gala_core_mem_windows.Arena) align 8 %slot474, i64 %size)
  %6 = load %gala_144156._.._onin_gala_core_mem_windows.Arena, ptr %slot474, align 8
  store %gala_144156._.._onin_gala_core_mem_windows.Arena %6, ptr @gala_144156._.._onin_gala_core_mem_windows.temp_arena, align 8
  ret void
}

define void @gala_144156._.._onin_gala_core_mem_windows.temp_allocator(ptr sret(%gala_144156._.._onin_gala_core_mem_windows.Allocator) align 8 %.sret) {
entry:
  %slot485 = alloca %gala_144156._.._onin_gala_core_mem_windows.Allocator, align 8
  %0 = getelementptr inbounds %gala_144156._.._onin_gala_core_mem_windows.Arena, ptr @gala_144156._.._onin_gala_core_mem_windows.temp_arena, i32 0, i32 0
  %1 = load ptr, ptr %0, align 8
  %2 = ptrtoint ptr %1 to i64
  %3 = inttoptr i64 0 to ptr
  %4 = ptrtoint ptr %3 to i64
  %5 = icmp eq i64 %2, %4
  br i1 %5, label %base_block_label476, label %end_label476

base_block_label476:                              ; preds = %entry
  %6 = load i64, ptr @gala_144156._.._onin_gala_core_mem_windows.MB, align 8
  %7 = mul i64 4, %6
  call void @gala_144156._.._onin_gala_core_mem_windows.temp_init(i64 %7)
  br label %end_label476

end_label476:                                     ; preds = %base_block_label476, %entry
  call void @gala_144156._.._onin_gala_core_mem_windows.arena_allocator(ptr sret(%gala_144156._.._onin_gala_core_mem_windows.Allocator) align 8 %slot485, ptr @gala_144156._.._onin_gala_core_mem_windows.temp_arena)
  %8 = load %gala_144156._.._onin_gala_core_mem_windows.Allocator, ptr %slot485, align 8
  store %gala_144156._.._onin_gala_core_mem_windows.Allocator %8, ptr %.sret, align 8
  ret void
}

define void @gala_144156._.._onin_gala_core_mem_windows.temp_reset() {
entry:
  call void @gala_144156._.._onin_gala_core_mem_windows.arena_reset(ptr @gala_144156._.._onin_gala_core_mem_windows.temp_arena)
  ret void
}

define ptr @gala_144156._.._onin_gala_core_mem_windows.link_get(ptr %chunk) {
entry:
  %0 = load ptr, ptr %chunk, align 8
  ret ptr %0
}

define void @gala_144156._.._onin_gala_core_mem_windows.link_set(ptr %chunk, ptr %next) {
entry:
  store ptr %next, ptr %chunk, align 8
  ret void
}

define void @gala_144156._.._onin_gala_core_mem_windows.pool_reset(ptr %p) {
entry:
  %0 = inttoptr i64 0 to ptr
  %1 = getelementptr inbounds %gala_144156._.._onin_gala_core_mem_windows.Pool, ptr %p, i32 0, i32 3
  store ptr %0, ptr %1, align 8
  %2 = getelementptr inbounds %gala_144156._.._onin_gala_core_mem_windows.Pool, ptr %p, i32 0, i32 4
  store i64 0, ptr %2, align 8
  %3 = getelementptr inbounds %gala_144156._.._onin_gala_core_mem_windows.Pool, ptr %p, i32 0, i32 0
  %4 = load ptr, ptr %3, align 8
  %5 = ptrtoint ptr %4 to i64
  %6 = inttoptr i64 0 to ptr
  %7 = ptrtoint ptr %6 to i64
  %8 = icmp eq i64 %5, %7
  br i1 %8, label %base_block_label493, label %end_label493

base_block_label493:                              ; preds = %entry
  ret void

end_label493:                                     ; preds = %entry
  %9 = getelementptr inbounds %gala_144156._.._onin_gala_core_mem_windows.Pool, ptr %p, i32 0, i32 0
  %10 = load ptr, ptr %9, align 8
  %11 = call i64 @gala_144156._.._onin_gala_core_mem_windows.addr(ptr %10)
  %12 = getelementptr inbounds %gala_144156._.._onin_gala_core_mem_windows.Pool, ptr %p, i32 0, i32 2
  %13 = load i64, ptr %12, align 8
  br label %while_cond_label505

while_cond_label505:                              ; preds = %while_body_label505, %end_label493
  %i.645.0 = phi i64 [ %13, %end_label493 ], [ %15, %while_body_label505 ]
  %14 = icmp ugt i64 %i.645.0, 0
  br i1 %14, label %while_body_label505, label %while_end_label505

while_body_label505:                              ; preds = %while_cond_label505
  %15 = sub i64 %i.645.0, 1
  %16 = getelementptr inbounds %gala_144156._.._onin_gala_core_mem_windows.Pool, ptr %p, i32 0, i32 1
  %17 = load i64, ptr %16, align 8
  %18 = mul i64 %15, %17
  %19 = add i64 %11, %18
  %20 = call ptr @gala_144156._.._onin_gala_core_mem_windows.from_addr(i64 %19)
  %21 = getelementptr inbounds %gala_144156._.._onin_gala_core_mem_windows.Pool, ptr %p, i32 0, i32 3
  %22 = load ptr, ptr %21, align 8
  call void @gala_144156._.._onin_gala_core_mem_windows.link_set(ptr %20, ptr %22)
  %23 = getelementptr inbounds %gala_144156._.._onin_gala_core_mem_windows.Pool, ptr %p, i32 0, i32 3
  store ptr %20, ptr %23, align 8
  br label %while_cond_label505

while_end_label505:                               ; preds = %while_cond_label505
  ret void
}

define void @gala_144156._.._onin_gala_core_mem_windows.pool_make(ptr sret(%gala_144156._.._onin_gala_core_mem_windows.Pool) align 8 %.sret, i64 %chunk_size, i64 %count) {
entry:
  %pl.652 = alloca %gala_144156._.._onin_gala_core_mem_windows.Pool, align 8
  %0 = call i64 @gala_144156._.._onin_gala_core_mem_windows.align_forward(i64 %chunk_size, i64 16)
  %1 = call i64 @gala_144156._.._onin_gala_core_mem_windows.max_u64(i64 %0, i64 16)
  %2 = sub i64 0, 1
  %3 = icmp eq i64 %count, 0
  br i1 %3, label %logic.end.527, label %logic.rhs.527

logic.rhs.527:                                    ; preds = %entry
  %4 = udiv i64 %2, %1
  %5 = icmp ugt i64 %count, %4
  br label %logic.end.527

logic.end.527:                                    ; preds = %logic.rhs.527, %entry
  %slot526.0 = phi i1 [ %3, %entry ], [ %5, %logic.rhs.527 ]
  br i1 %slot526.0, label %base_block_label525, label %end_label525

base_block_label525:                              ; preds = %logic.end.527
  %6 = inttoptr i64 0 to ptr
  %7 = inttoptr i64 0 to ptr
  %8 = insertvalue %gala_144156._.._onin_gala_core_mem_windows.Pool undef, ptr %6, 0
  %9 = insertvalue %gala_144156._.._onin_gala_core_mem_windows.Pool %8, i64 %1, 1
  %10 = insertvalue %gala_144156._.._onin_gala_core_mem_windows.Pool %9, i64 0, 2
  %11 = insertvalue %gala_144156._.._onin_gala_core_mem_windows.Pool %10, ptr %7, 3
  %12 = insertvalue %gala_144156._.._onin_gala_core_mem_windows.Pool %11, i64 0, 4
  store %gala_144156._.._onin_gala_core_mem_windows.Pool %12, ptr %.sret, align 8
  ret void

end_label525:                                     ; preds = %logic.end.527
  %13 = mul i64 %1, %count
  %14 = call ptr @malloc(i64 %13)
  %15 = ptrtoint ptr %14 to i64
  %16 = inttoptr i64 0 to ptr
  %17 = ptrtoint ptr %16 to i64
  %18 = icmp eq i64 %15, %17
  br i1 %18, label %base_block_label545, label %end_label545

base_block_label545:                              ; preds = %end_label525
  %19 = inttoptr i64 0 to ptr
  %20 = inttoptr i64 0 to ptr
  %21 = insertvalue %gala_144156._.._onin_gala_core_mem_windows.Pool undef, ptr %19, 0
  %22 = insertvalue %gala_144156._.._onin_gala_core_mem_windows.Pool %21, i64 %1, 1
  %23 = insertvalue %gala_144156._.._onin_gala_core_mem_windows.Pool %22, i64 0, 2
  %24 = insertvalue %gala_144156._.._onin_gala_core_mem_windows.Pool %23, ptr %20, 3
  %25 = insertvalue %gala_144156._.._onin_gala_core_mem_windows.Pool %24, i64 0, 4
  store %gala_144156._.._onin_gala_core_mem_windows.Pool %25, ptr %.sret, align 8
  ret void

end_label545:                                     ; preds = %end_label525
  %26 = inttoptr i64 0 to ptr
  %27 = insertvalue %gala_144156._.._onin_gala_core_mem_windows.Pool undef, ptr %14, 0
  %28 = insertvalue %gala_144156._.._onin_gala_core_mem_windows.Pool %27, i64 %1, 1
  %29 = insertvalue %gala_144156._.._onin_gala_core_mem_windows.Pool %28, i64 %count, 2
  %30 = insertvalue %gala_144156._.._onin_gala_core_mem_windows.Pool %29, ptr %26, 3
  %31 = insertvalue %gala_144156._.._onin_gala_core_mem_windows.Pool %30, i64 0, 4
  store %gala_144156._.._onin_gala_core_mem_windows.Pool %31, ptr %pl.652, align 8
  call void @gala_144156._.._onin_gala_core_mem_windows.pool_reset(ptr %pl.652)
  %32 = load %gala_144156._.._onin_gala_core_mem_windows.Pool, ptr %pl.652, align 8
  store %gala_144156._.._onin_gala_core_mem_windows.Pool %32, ptr %.sret, align 8
  ret void
}

define void @gala_144156._.._onin_gala_core_mem_windows.pool_destroy(ptr %p) {
entry:
  %0 = getelementptr inbounds %gala_144156._.._onin_gala_core_mem_windows.Pool, ptr %p, i32 0, i32 0
  %1 = load ptr, ptr %0, align 8
  call void @free(ptr %1)
  %2 = inttoptr i64 0 to ptr
  %3 = inttoptr i64 0 to ptr
  %4 = insertvalue %gala_144156._.._onin_gala_core_mem_windows.Pool undef, ptr %2, 0
  %5 = insertvalue %gala_144156._.._onin_gala_core_mem_windows.Pool %4, i64 0, 1
  %6 = insertvalue %gala_144156._.._onin_gala_core_mem_windows.Pool %5, i64 0, 2
  %7 = insertvalue %gala_144156._.._onin_gala_core_mem_windows.Pool %6, ptr %3, 3
  %8 = insertvalue %gala_144156._.._onin_gala_core_mem_windows.Pool %7, i64 0, 4
  store %gala_144156._.._onin_gala_core_mem_windows.Pool %8, ptr %p, align 8
  ret void
}

define zeroext i1 @gala_144156._.._onin_gala_core_mem_windows.pool_owns(ptr %p, ptr %ptr) {
entry:
  %0 = getelementptr inbounds %gala_144156._.._onin_gala_core_mem_windows.Pool, ptr %p, i32 0, i32 0
  %1 = load ptr, ptr %0, align 8
  %2 = ptrtoint ptr %1 to i64
  %3 = inttoptr i64 0 to ptr
  %4 = ptrtoint ptr %3 to i64
  %5 = icmp eq i64 %2, %4
  br i1 %5, label %base_block_label577, label %end_label577

base_block_label577:                              ; preds = %entry
  ret i1 false

end_label577:                                     ; preds = %entry
  %6 = getelementptr inbounds %gala_144156._.._onin_gala_core_mem_windows.Pool, ptr %p, i32 0, i32 0
  %7 = load ptr, ptr %6, align 8
  %8 = call i64 @gala_144156._.._onin_gala_core_mem_windows.addr(ptr %7)
  %9 = call i64 @gala_144156._.._onin_gala_core_mem_windows.addr(ptr %ptr)
  %10 = icmp ult i64 %9, %8
  br i1 %10, label %base_block_label588, label %end_label588

base_block_label588:                              ; preds = %end_label577
  ret i1 false

end_label588:                                     ; preds = %end_label577
  %11 = sub i64 %9, %8
  %12 = getelementptr inbounds %gala_144156._.._onin_gala_core_mem_windows.Pool, ptr %p, i32 0, i32 1
  %13 = load i64, ptr %12, align 8
  %14 = getelementptr inbounds %gala_144156._.._onin_gala_core_mem_windows.Pool, ptr %p, i32 0, i32 2
  %15 = load i64, ptr %14, align 8
  %16 = mul i64 %13, %15
  %17 = icmp uge i64 %11, %16
  br i1 %17, label %base_block_label595, label %end_label595

base_block_label595:                              ; preds = %end_label588
  ret i1 false

end_label595:                                     ; preds = %end_label588
  %18 = getelementptr inbounds %gala_144156._.._onin_gala_core_mem_windows.Pool, ptr %p, i32 0, i32 1
  %19 = load i64, ptr %18, align 8
  %20 = urem i64 %11, %19
  %21 = icmp eq i64 %20, 0
  ret i1 %21
}

define ptr @gala_144156._.._onin_gala_core_mem_windows.pool_proc(ptr %data, i32 %mode, i64 %size, i64 %align, ptr %old, i64 %old_size) {
entry:
  %0 = load i32, ptr @gala_144156._.._onin_gala_core_mem_windows.MODE_ALLOC, align 4
  %1 = icmp eq i32 %mode, %0
  br i1 %1, label %base_block_label608, label %end_label608

base_block_label608:                              ; preds = %entry
  %2 = getelementptr inbounds %gala_144156._.._onin_gala_core_mem_windows.Pool, ptr %data, i32 0, i32 1
  %3 = load i64, ptr %2, align 8
  %4 = icmp ugt i64 %size, %3
  br i1 %4, label %logic.end.615, label %logic.rhs.615

logic.rhs.615:                                    ; preds = %base_block_label608
  %5 = icmp ugt i64 %align, 16
  br label %logic.end.615

logic.end.615:                                    ; preds = %logic.rhs.615, %base_block_label608
  %slot614.0 = phi i1 [ %4, %base_block_label608 ], [ %5, %logic.rhs.615 ]
  br i1 %slot614.0, label %logic.end.613, label %logic.rhs.613

logic.rhs.613:                                    ; preds = %logic.end.615
  %6 = getelementptr inbounds %gala_144156._.._onin_gala_core_mem_windows.Pool, ptr %data, i32 0, i32 3
  %7 = load ptr, ptr %6, align 8
  %8 = ptrtoint ptr %7 to i64
  %9 = inttoptr i64 0 to ptr
  %10 = ptrtoint ptr %9 to i64
  %11 = icmp eq i64 %8, %10
  br label %logic.end.613

logic.end.613:                                    ; preds = %logic.rhs.613, %logic.end.615
  %slot612.0 = phi i1 [ %slot614.0, %logic.end.615 ], [ %11, %logic.rhs.613 ]
  br i1 %slot612.0, label %base_block_label611, label %end_label611

base_block_label611:                              ; preds = %logic.end.613
  %12 = inttoptr i64 0 to ptr
  ret ptr %12

end_label611:                                     ; preds = %logic.end.613
  %13 = getelementptr inbounds %gala_144156._.._onin_gala_core_mem_windows.Pool, ptr %data, i32 0, i32 3
  %14 = load ptr, ptr %13, align 8
  %15 = call ptr @gala_144156._.._onin_gala_core_mem_windows.link_get(ptr %14)
  %16 = getelementptr inbounds %gala_144156._.._onin_gala_core_mem_windows.Pool, ptr %data, i32 0, i32 3
  store ptr %15, ptr %16, align 8
  %17 = getelementptr inbounds %gala_144156._.._onin_gala_core_mem_windows.Pool, ptr %data, i32 0, i32 4
  %18 = load i64, ptr %17, align 8
  %19 = add i64 %18, 1
  store i64 %19, ptr %17, align 8
  %20 = getelementptr inbounds %gala_144156._.._onin_gala_core_mem_windows.Pool, ptr %data, i32 0, i32 1
  %21 = load i64, ptr %20, align 8
  call void @gala_144156._.._onin_gala_core_mem_windows.mem_zero(ptr %14, i64 %21)
  ret ptr %14

end_label608:                                     ; preds = %entry
  %22 = load i32, ptr @gala_144156._.._onin_gala_core_mem_windows.MODE_FREE, align 4
  %23 = icmp eq i32 %mode, %22
  br i1 %23, label %base_block_label647, label %end_label647

base_block_label647:                              ; preds = %end_label608
  %24 = ptrtoint ptr %old to i64
  %25 = inttoptr i64 0 to ptr
  %26 = ptrtoint ptr %25 to i64
  %27 = icmp eq i64 %24, %26
  br i1 %27, label %logic.end.652, label %logic.rhs.652

logic.rhs.652:                                    ; preds = %base_block_label647
  %28 = call zeroext i1 @gala_144156._.._onin_gala_core_mem_windows.pool_owns(ptr %data, ptr %old)
  %29 = xor i1 %28, true
  br label %logic.end.652

logic.end.652:                                    ; preds = %logic.rhs.652, %base_block_label647
  %slot651.0 = phi i1 [ %27, %base_block_label647 ], [ %29, %logic.rhs.652 ]
  br i1 %slot651.0, label %base_block_label650, label %end_label650

base_block_label650:                              ; preds = %logic.end.652
  %30 = inttoptr i64 0 to ptr
  ret ptr %30

end_label650:                                     ; preds = %logic.end.652
  %31 = getelementptr inbounds %gala_144156._.._onin_gala_core_mem_windows.Pool, ptr %data, i32 0, i32 3
  %32 = load ptr, ptr %31, align 8
  call void @gala_144156._.._onin_gala_core_mem_windows.link_set(ptr %old, ptr %32)
  %33 = getelementptr inbounds %gala_144156._.._onin_gala_core_mem_windows.Pool, ptr %data, i32 0, i32 3
  store ptr %old, ptr %33, align 8
  %34 = getelementptr inbounds %gala_144156._.._onin_gala_core_mem_windows.Pool, ptr %data, i32 0, i32 4
  %35 = load i64, ptr %34, align 8
  %36 = icmp ugt i64 %35, 0
  br i1 %36, label %base_block_label667, label %end_label667

base_block_label667:                              ; preds = %end_label650
  %37 = getelementptr inbounds %gala_144156._.._onin_gala_core_mem_windows.Pool, ptr %data, i32 0, i32 4
  %38 = load i64, ptr %37, align 8
  %39 = sub i64 %38, 1
  store i64 %39, ptr %37, align 8
  br label %end_label667

end_label667:                                     ; preds = %base_block_label667, %end_label650
  %40 = inttoptr i64 0 to ptr
  ret ptr %40

end_label647:                                     ; preds = %end_label608
  %41 = load i32, ptr @gala_144156._.._onin_gala_core_mem_windows.MODE_FREE_ALL, align 4
  %42 = icmp eq i32 %mode, %41
  br i1 %42, label %base_block_label677, label %end_label677

base_block_label677:                              ; preds = %end_label647
  call void @gala_144156._.._onin_gala_core_mem_windows.pool_reset(ptr %data)
  %43 = inttoptr i64 0 to ptr
  ret ptr %43

end_label677:                                     ; preds = %end_label647
  %44 = load i32, ptr @gala_144156._.._onin_gala_core_mem_windows.MODE_RESIZE, align 4
  %45 = icmp eq i32 %mode, %44
  br i1 %45, label %base_block_label682, label %end_label682

base_block_label682:                              ; preds = %end_label677
  %46 = ptrtoint ptr %old to i64
  %47 = inttoptr i64 0 to ptr
  %48 = ptrtoint ptr %47 to i64
  %49 = icmp ne i64 %46, %48
  br i1 %49, label %logic.rhs.687, label %logic.end.687

logic.rhs.687:                                    ; preds = %base_block_label682
  %50 = getelementptr inbounds %gala_144156._.._onin_gala_core_mem_windows.Pool, ptr %data, i32 0, i32 1
  %51 = load i64, ptr %50, align 8
  %52 = icmp ule i64 %size, %51
  br label %logic.end.687

logic.end.687:                                    ; preds = %logic.rhs.687, %base_block_label682
  %slot686.0 = phi i1 [ %52, %logic.rhs.687 ], [ %49, %base_block_label682 ]
  br i1 %slot686.0, label %base_block_label685, label %end_label685

base_block_label685:                              ; preds = %logic.end.687
  %53 = icmp ugt i64 %size, %old_size
  br i1 %53, label %base_block_label697, label %end_label697

base_block_label697:                              ; preds = %base_block_label685
  %54 = call ptr @gala_546687._.._onin_gala_core_core_windows.ptr_add(ptr %old, i64 %old_size)
  %55 = sub i64 %size, %old_size
  call void @gala_144156._.._onin_gala_core_mem_windows.mem_zero(ptr %54, i64 %55)
  br label %end_label697

end_label697:                                     ; preds = %base_block_label697, %base_block_label685
  ret ptr %old

end_label685:                                     ; preds = %logic.end.687
  %56 = inttoptr i64 0 to ptr
  ret ptr %56

end_label682:                                     ; preds = %end_label677
  %57 = inttoptr i64 0 to ptr
  ret ptr %57
}

define void @gala_144156._.._onin_gala_core_mem_windows.pool_allocator(ptr sret(%gala_144156._.._onin_gala_core_mem_windows.Allocator) align 8 %.sret, ptr %p) {
entry:
  %0 = insertvalue %gala_144156._.._onin_gala_core_mem_windows.Allocator undef, ptr @gala_144156._.._onin_gala_core_mem_windows.pool_proc, 0
  %1 = insertvalue %gala_144156._.._onin_gala_core_mem_windows.Allocator %0, ptr %p, 1
  store %gala_144156._.._onin_gala_core_mem_windows.Allocator %1, ptr %.sret, align 8
  ret void
}

define void @gala_144156._.._onin_gala_core_mem_windows.tracking_init(ptr %t, ptr noundef %backing) {
entry:
  %0 = load %gala_144156._.._onin_gala_core_mem_windows.Allocator, ptr %backing, align 8
  %1 = insertvalue %gala_144156._.._onin_gala_core_mem_windows.Tracking undef, %gala_144156._.._onin_gala_core_mem_windows.Allocator %0, 0
  %2 = insertvalue %gala_144156._.._onin_gala_core_mem_windows.Tracking %1, i64 0, 1
  %3 = insertvalue %gala_144156._.._onin_gala_core_mem_windows.Tracking %2, i64 0, 2
  %4 = insertvalue %gala_144156._.._onin_gala_core_mem_windows.Tracking %3, i64 0, 3
  %5 = insertvalue %gala_144156._.._onin_gala_core_mem_windows.Tracking %4, i64 0, 4
  %6 = insertvalue %gala_144156._.._onin_gala_core_mem_windows.Tracking %5, i64 0, 5
  %7 = insertvalue %gala_144156._.._onin_gala_core_mem_windows.Tracking %6, i64 0, 6
  store %gala_144156._.._onin_gala_core_mem_windows.Tracking %7, ptr %t, align 8
  ret void
}

define void @gala_144156._.._onin_gala_core_mem_windows.tracking_reset(ptr %t) {
entry:
  %slot715 = alloca %gala_144156._.._onin_gala_core_mem_windows.Allocator, align 8
  %0 = getelementptr inbounds %gala_144156._.._onin_gala_core_mem_windows.Tracking, ptr %t, i32 0, i32 0
  %1 = load %gala_144156._.._onin_gala_core_mem_windows.Allocator, ptr %0, align 8
  store %gala_144156._.._onin_gala_core_mem_windows.Allocator %1, ptr %slot715, align 8
  call void @gala_144156._.._onin_gala_core_mem_windows.tracking_init(ptr %t, ptr noundef %slot715)
  ret void
}

define ptr @gala_144156._.._onin_gala_core_mem_windows.tracking_proc(ptr %data, i32 %mode, i64 %size, i64 %align, ptr %old, i64 %old_size) {
entry:
  %b.678 = alloca %gala_144156._.._onin_gala_core_mem_windows.Allocator, align 8
  %0 = getelementptr inbounds %gala_144156._.._onin_gala_core_mem_windows.Tracking, ptr %data, i32 0, i32 0
  %1 = load %gala_144156._.._onin_gala_core_mem_windows.Allocator, ptr %0, align 8
  store %gala_144156._.._onin_gala_core_mem_windows.Allocator %1, ptr %b.678, align 8
  %2 = getelementptr inbounds %gala_144156._.._onin_gala_core_mem_windows.Allocator, ptr %b.678, i32 0, i32 0
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %gala_144156._.._onin_gala_core_mem_windows.Allocator, ptr %b.678, i32 0, i32 1
  %5 = load ptr, ptr %4, align 8
  %6 = call ptr %3(ptr %5, i32 %mode, i64 %size, i64 %align, ptr %old, i64 %old_size)
  %7 = load i32, ptr @gala_144156._.._onin_gala_core_mem_windows.MODE_ALLOC, align 4
  %8 = icmp eq i32 %mode, %7
  br i1 %8, label %base_block_label725, label %alt_cond_label725_0

base_block_label725:                              ; preds = %entry
  %9 = ptrtoint ptr %6 to i64
  %10 = inttoptr i64 0 to ptr
  %11 = ptrtoint ptr %10 to i64
  %12 = icmp ne i64 %9, %11
  br i1 %12, label %base_block_label728, label %else_block_label728

base_block_label728:                              ; preds = %base_block_label725
  %13 = getelementptr inbounds %gala_144156._.._onin_gala_core_mem_windows.Tracking, ptr %data, i32 0, i32 1
  %14 = load i64, ptr %13, align 8
  %15 = add i64 %14, 1
  store i64 %15, ptr %13, align 8
  %16 = getelementptr inbounds %gala_144156._.._onin_gala_core_mem_windows.Tracking, ptr %data, i32 0, i32 4
  %17 = load i64, ptr %16, align 8
  %18 = add i64 %17, %size
  store i64 %18, ptr %16, align 8
  %19 = getelementptr inbounds %gala_144156._.._onin_gala_core_mem_windows.Tracking, ptr %data, i32 0, i32 6
  %20 = load i64, ptr %19, align 8
  %21 = add i64 %20, %size
  store i64 %21, ptr %19, align 8
  br label %end_label728

else_block_label728:                              ; preds = %base_block_label725
  %22 = getelementptr inbounds %gala_144156._.._onin_gala_core_mem_windows.Tracking, ptr %data, i32 0, i32 3
  %23 = load i64, ptr %22, align 8
  %24 = add i64 %23, 1
  store i64 %24, ptr %22, align 8
  br label %end_label728

end_label728:                                     ; preds = %else_block_label728, %base_block_label728
  br label %end_label725

alt_cond_label725_0:                              ; preds = %entry
  %25 = load i32, ptr @gala_144156._.._onin_gala_core_mem_windows.MODE_FREE, align 4
  %26 = icmp eq i32 %mode, %25
  br i1 %26, label %alt_block_label725_0, label %alt_cond_label725_1

alt_block_label725_0:                             ; preds = %alt_cond_label725_0
  %27 = ptrtoint ptr %old to i64
  %28 = inttoptr i64 0 to ptr
  %29 = ptrtoint ptr %28 to i64
  %30 = icmp ne i64 %27, %29
  br i1 %30, label %base_block_label752, label %end_label752

base_block_label752:                              ; preds = %alt_block_label725_0
  %31 = getelementptr inbounds %gala_144156._.._onin_gala_core_mem_windows.Tracking, ptr %data, i32 0, i32 2
  %32 = load i64, ptr %31, align 8
  %33 = add i64 %32, 1
  store i64 %33, ptr %31, align 8
  %34 = getelementptr inbounds %gala_144156._.._onin_gala_core_mem_windows.Tracking, ptr %data, i32 0, i32 4
  %35 = load i64, ptr %34, align 8
  %36 = sub i64 %35, %old_size
  store i64 %36, ptr %34, align 8
  br label %end_label752

end_label752:                                     ; preds = %base_block_label752, %alt_block_label725_0
  br label %end_label725

alt_cond_label725_1:                              ; preds = %alt_cond_label725_0
  %37 = load i32, ptr @gala_144156._.._onin_gala_core_mem_windows.MODE_FREE_ALL, align 4
  %38 = icmp eq i32 %mode, %37
  br i1 %38, label %alt_block_label725_1, label %alt_cond_label725_2

alt_block_label725_1:                             ; preds = %alt_cond_label725_1
  %39 = getelementptr inbounds %gala_144156._.._onin_gala_core_mem_windows.Tracking, ptr %data, i32 0, i32 4
  store i64 0, ptr %39, align 8
  br label %end_label725

alt_cond_label725_2:                              ; preds = %alt_cond_label725_1
  %40 = load i32, ptr @gala_144156._.._onin_gala_core_mem_windows.MODE_RESIZE, align 4
  %41 = icmp eq i32 %mode, %40
  br i1 %41, label %alt_block_label725_2, label %end_label725

alt_block_label725_2:                             ; preds = %alt_cond_label725_2
  %42 = ptrtoint ptr %6 to i64
  %43 = inttoptr i64 0 to ptr
  %44 = ptrtoint ptr %43 to i64
  %45 = icmp ne i64 %42, %44
  br i1 %45, label %base_block_label771, label %else_block_label771

base_block_label771:                              ; preds = %alt_block_label725_2
  %46 = getelementptr inbounds %gala_144156._.._onin_gala_core_mem_windows.Tracking, ptr %data, i32 0, i32 4
  %47 = load i64, ptr %46, align 8
  %48 = sub i64 %size, %old_size
  %49 = add i64 %47, %48
  store i64 %49, ptr %46, align 8
  %50 = getelementptr inbounds %gala_144156._.._onin_gala_core_mem_windows.Tracking, ptr %data, i32 0, i32 6
  %51 = load i64, ptr %50, align 8
  %52 = add i64 %51, %size
  store i64 %52, ptr %50, align 8
  br label %end_label771

else_block_label771:                              ; preds = %alt_block_label725_2
  %53 = getelementptr inbounds %gala_144156._.._onin_gala_core_mem_windows.Tracking, ptr %data, i32 0, i32 3
  %54 = load i64, ptr %53, align 8
  %55 = add i64 %54, 1
  store i64 %55, ptr %53, align 8
  br label %end_label771

end_label771:                                     ; preds = %else_block_label771, %base_block_label771
  br label %end_label725

end_label725:                                     ; preds = %end_label771, %alt_cond_label725_2, %alt_block_label725_1, %end_label752, %end_label728
  %56 = getelementptr inbounds %gala_144156._.._onin_gala_core_mem_windows.Tracking, ptr %data, i32 0, i32 4
  %57 = load i64, ptr %56, align 8
  %58 = getelementptr inbounds %gala_144156._.._onin_gala_core_mem_windows.Tracking, ptr %data, i32 0, i32 5
  %59 = load i64, ptr %58, align 8
  %60 = icmp sgt i64 %57, %59
  br i1 %60, label %base_block_label790, label %end_label790

base_block_label790:                              ; preds = %end_label725
  %61 = getelementptr inbounds %gala_144156._.._onin_gala_core_mem_windows.Tracking, ptr %data, i32 0, i32 4
  %62 = load i64, ptr %61, align 8
  %63 = getelementptr inbounds %gala_144156._.._onin_gala_core_mem_windows.Tracking, ptr %data, i32 0, i32 5
  store i64 %62, ptr %63, align 8
  br label %end_label790

end_label790:                                     ; preds = %base_block_label790, %end_label725
  ret ptr %6
}

define void @gala_144156._.._onin_gala_core_mem_windows.tracking_allocator(ptr sret(%gala_144156._.._onin_gala_core_mem_windows.Allocator) align 8 %.sret, ptr %t) {
entry:
  %0 = insertvalue %gala_144156._.._onin_gala_core_mem_windows.Allocator undef, ptr @gala_144156._.._onin_gala_core_mem_windows.tracking_proc, 0
  %1 = insertvalue %gala_144156._.._onin_gala_core_mem_windows.Allocator %0, ptr %t, 1
  store %gala_144156._.._onin_gala_core_mem_windows.Allocator %1, ptr %.sret, align 8
  ret void
}

define void @gala_144156._.._onin_gala_core_mem_windows.tracking_report(ptr %t) {
entry:
  %slot806 = alloca [6 x { ptr, i64 }], align 8
  %slot810 = alloca { ptr, i64 }, align 8
  %slot816 = alloca i64, align 8
  %slot823 = alloca { ptr, i64 }, align 8
  %slot829 = alloca i64, align 8
  %slot836 = alloca { ptr, i64 }, align 8
  %slot842 = alloca i64, align 8
  %slot848 = alloca { ptr, i64 }, align 8
  %slot849 = alloca [6 x { ptr, i64 }], align 8
  %slot853 = alloca { ptr, i64 }, align 8
  %slot859 = alloca i64, align 8
  %slot866 = alloca { ptr, i64 }, align 8
  %slot872 = alloca i64, align 8
  %slot879 = alloca { ptr, i64 }, align 8
  %slot885 = alloca i64, align 8
  %slot891 = alloca { ptr, i64 }, align 8
  %0 = getelementptr inbounds [8 x i8], ptr @string33, i64 0, i64 0
  %1 = insertvalue { ptr, i64 } undef, ptr %0, 0
  %2 = insertvalue { ptr, i64 } %1, i64 7, 1
  store { ptr, i64 } %2, ptr %slot810, align 8
  %3 = insertvalue { ptr, i64 } undef, ptr %slot810, 0
  %4 = insertvalue { ptr, i64 } %3, i64 17, 1
  %5 = getelementptr inbounds [6 x { ptr, i64 }], ptr %slot806, i64 0, i64 0
  store { ptr, i64 } %4, ptr %5, align 8
  %6 = getelementptr inbounds %gala_144156._.._onin_gala_core_mem_windows.Tracking, ptr %t, i32 0, i32 1
  %7 = load i64, ptr %6, align 8
  store i64 %7, ptr %slot816, align 8
  %8 = insertvalue { ptr, i64 } undef, ptr %slot816, 0
  %9 = insertvalue { ptr, i64 } %8, i64 3, 1
  %10 = getelementptr inbounds [6 x { ptr, i64 }], ptr %slot806, i64 0, i64 1
  store { ptr, i64 } %9, ptr %10, align 8
  %11 = getelementptr inbounds [7 x i8], ptr @string34, i64 0, i64 0
  %12 = insertvalue { ptr, i64 } undef, ptr %11, 0
  %13 = insertvalue { ptr, i64 } %12, i64 6, 1
  store { ptr, i64 } %13, ptr %slot823, align 8
  %14 = insertvalue { ptr, i64 } undef, ptr %slot823, 0
  %15 = insertvalue { ptr, i64 } %14, i64 17, 1
  %16 = getelementptr inbounds [6 x { ptr, i64 }], ptr %slot806, i64 0, i64 2
  store { ptr, i64 } %15, ptr %16, align 8
  %17 = getelementptr inbounds %gala_144156._.._onin_gala_core_mem_windows.Tracking, ptr %t, i32 0, i32 2
  %18 = load i64, ptr %17, align 8
  store i64 %18, ptr %slot829, align 8
  %19 = insertvalue { ptr, i64 } undef, ptr %slot829, 0
  %20 = insertvalue { ptr, i64 } %19, i64 3, 1
  %21 = getelementptr inbounds [6 x { ptr, i64 }], ptr %slot806, i64 0, i64 3
  store { ptr, i64 } %20, ptr %21, align 8
  %22 = getelementptr inbounds [8 x i8], ptr @string35, i64 0, i64 0
  %23 = insertvalue { ptr, i64 } undef, ptr %22, 0
  %24 = insertvalue { ptr, i64 } %23, i64 7, 1
  store { ptr, i64 } %24, ptr %slot836, align 8
  %25 = insertvalue { ptr, i64 } undef, ptr %slot836, 0
  %26 = insertvalue { ptr, i64 } %25, i64 17, 1
  %27 = getelementptr inbounds [6 x { ptr, i64 }], ptr %slot806, i64 0, i64 4
  store { ptr, i64 } %26, ptr %27, align 8
  %28 = getelementptr inbounds %gala_144156._.._onin_gala_core_mem_windows.Tracking, ptr %t, i32 0, i32 3
  %29 = load i64, ptr %28, align 8
  store i64 %29, ptr %slot842, align 8
  %30 = insertvalue { ptr, i64 } undef, ptr %slot842, 0
  %31 = insertvalue { ptr, i64 } %30, i64 3, 1
  %32 = getelementptr inbounds [6 x { ptr, i64 }], ptr %slot806, i64 0, i64 5
  store { ptr, i64 } %31, ptr %32, align 8
  %33 = insertvalue { ptr, i64 } undef, ptr %slot806, 0
  %34 = insertvalue { ptr, i64 } %33, i64 6, 1
  store { ptr, i64 } %34, ptr %slot848, align 8
  call void @gala_546687._.._onin_gala_core_core_windows.println(ptr noundef %slot848)
  %35 = getelementptr inbounds [12 x i8], ptr @string36, i64 0, i64 0
  %36 = insertvalue { ptr, i64 } undef, ptr %35, 0
  %37 = insertvalue { ptr, i64 } %36, i64 11, 1
  store { ptr, i64 } %37, ptr %slot853, align 8
  %38 = insertvalue { ptr, i64 } undef, ptr %slot853, 0
  %39 = insertvalue { ptr, i64 } %38, i64 17, 1
  %40 = getelementptr inbounds [6 x { ptr, i64 }], ptr %slot849, i64 0, i64 0
  store { ptr, i64 } %39, ptr %40, align 8
  %41 = getelementptr inbounds %gala_144156._.._onin_gala_core_mem_windows.Tracking, ptr %t, i32 0, i32 4
  %42 = load i64, ptr %41, align 8
  store i64 %42, ptr %slot859, align 8
  %43 = insertvalue { ptr, i64 } undef, ptr %slot859, 0
  %44 = insertvalue { ptr, i64 } %43, i64 3, 1
  %45 = getelementptr inbounds [6 x { ptr, i64 }], ptr %slot849, i64 0, i64 1
  store { ptr, i64 } %44, ptr %45, align 8
  %46 = getelementptr inbounds [6 x i8], ptr @string37, i64 0, i64 0
  %47 = insertvalue { ptr, i64 } undef, ptr %46, 0
  %48 = insertvalue { ptr, i64 } %47, i64 5, 1
  store { ptr, i64 } %48, ptr %slot866, align 8
  %49 = insertvalue { ptr, i64 } undef, ptr %slot866, 0
  %50 = insertvalue { ptr, i64 } %49, i64 17, 1
  %51 = getelementptr inbounds [6 x { ptr, i64 }], ptr %slot849, i64 0, i64 2
  store { ptr, i64 } %50, ptr %51, align 8
  %52 = getelementptr inbounds %gala_144156._.._onin_gala_core_mem_windows.Tracking, ptr %t, i32 0, i32 5
  %53 = load i64, ptr %52, align 8
  store i64 %53, ptr %slot872, align 8
  %54 = insertvalue { ptr, i64 } undef, ptr %slot872, 0
  %55 = insertvalue { ptr, i64 } %54, i64 3, 1
  %56 = getelementptr inbounds [6 x { ptr, i64 }], ptr %slot849, i64 0, i64 3
  store { ptr, i64 } %55, ptr %56, align 8
  %57 = getelementptr inbounds [7 x i8], ptr @string38, i64 0, i64 0
  %58 = insertvalue { ptr, i64 } undef, ptr %57, 0
  %59 = insertvalue { ptr, i64 } %58, i64 6, 1
  store { ptr, i64 } %59, ptr %slot879, align 8
  %60 = insertvalue { ptr, i64 } undef, ptr %slot879, 0
  %61 = insertvalue { ptr, i64 } %60, i64 17, 1
  %62 = getelementptr inbounds [6 x { ptr, i64 }], ptr %slot849, i64 0, i64 4
  store { ptr, i64 } %61, ptr %62, align 8
  %63 = getelementptr inbounds %gala_144156._.._onin_gala_core_mem_windows.Tracking, ptr %t, i32 0, i32 6
  %64 = load i64, ptr %63, align 8
  store i64 %64, ptr %slot885, align 8
  %65 = insertvalue { ptr, i64 } undef, ptr %slot885, 0
  %66 = insertvalue { ptr, i64 } %65, i64 3, 1
  %67 = getelementptr inbounds [6 x { ptr, i64 }], ptr %slot849, i64 0, i64 5
  store { ptr, i64 } %66, ptr %67, align 8
  %68 = insertvalue { ptr, i64 } undef, ptr %slot849, 0
  %69 = insertvalue { ptr, i64 } %68, i64 6, 1
  store { ptr, i64 } %69, ptr %slot891, align 8
  call void @gala_546687._.._onin_gala_core_core_windows.println(ptr noundef %slot891)
  ret void
}

define ptr @gala_144156._.._onin_gala_core_mem_windows.panic_proc(ptr %data, i32 %mode, i64 %size, i64 %align, ptr %old, i64 %old_size) {
entry:
  %slot892 = alloca [1 x { ptr, i64 }], align 8
  %slot896 = alloca { ptr, i64 }, align 8
  %slot902 = alloca { ptr, i64 }, align 8
  %0 = getelementptr inbounds [58 x i8], ptr @string39, i64 0, i64 0
  %1 = insertvalue { ptr, i64 } undef, ptr %0, 0
  %2 = insertvalue { ptr, i64 } %1, i64 57, 1
  store { ptr, i64 } %2, ptr %slot896, align 8
  %3 = insertvalue { ptr, i64 } undef, ptr %slot896, 0
  %4 = insertvalue { ptr, i64 } %3, i64 17, 1
  %5 = getelementptr inbounds [1 x { ptr, i64 }], ptr %slot892, i64 0, i64 0
  store { ptr, i64 } %4, ptr %5, align 8
  %6 = insertvalue { ptr, i64 } undef, ptr %slot892, 0
  %7 = insertvalue { ptr, i64 } %6, i64 1, 1
  store { ptr, i64 } %7, ptr %slot902, align 8
  call void @gala_546687._.._onin_gala_core_core_windows.eprintln(ptr noundef %slot902)
  call void @exit(i32 1)
  %8 = inttoptr i64 0 to ptr
  ret ptr %8
}

define ptr @gala_144156._.._onin_gala_core_mem_windows.new.Allocator.Gain.v0(ptr noundef %a) {
entry:
  %slot908 = alloca %gala_144156._.._onin_gala_core_mem_windows.Allocator, align 8
  %0 = call i64 @gala_144156._.._onin_gala_core_mem_windows.align_for_size(i64 16)
  %1 = load %gala_144156._.._onin_gala_core_mem_windows.Allocator, ptr %a, align 8
  store %gala_144156._.._onin_gala_core_mem_windows.Allocator %1, ptr %slot908, align 8
  %2 = call ptr @gala_144156._.._onin_gala_core_mem_windows.alloc(i64 16, i64 %0, ptr noundef %slot908)
  ret ptr %2
}

define ptr @gala_144156._.._onin_gala_core_mem_windows.new.Allocator.ClapPlugin.v1(ptr noundef %a) {
entry:
  %slot914 = alloca %gala_144156._.._onin_gala_core_mem_windows.Allocator, align 8
  %0 = call i64 @gala_144156._.._onin_gala_core_mem_windows.align_for_size(i64 96)
  %1 = load %gala_144156._.._onin_gala_core_mem_windows.Allocator, ptr %a, align 8
  store %gala_144156._.._onin_gala_core_mem_windows.Allocator %1, ptr %slot914, align 8
  %2 = call ptr @gala_144156._.._onin_gala_core_mem_windows.alloc(i64 96, i64 %0, ptr noundef %slot914)
  ret ptr %2
}

define void @gala_144156._.._onin_gala_core_mem_windows.__init_globals() {
entry:
  store i64 1024, ptr @gala_144156._.._onin_gala_core_mem_windows.KB, align 8
  store i64 1048576, ptr @gala_144156._.._onin_gala_core_mem_windows.MB, align 8
  store i64 1073741824, ptr @gala_144156._.._onin_gala_core_mem_windows.GB, align 8
  store i32 0, ptr @gala_144156._.._onin_gala_core_mem_windows.MODE_ALLOC, align 4
  store i32 1, ptr @gala_144156._.._onin_gala_core_mem_windows.MODE_FREE, align 4
  store i32 2, ptr @gala_144156._.._onin_gala_core_mem_windows.MODE_FREE_ALL, align 4
  store i32 3, ptr @gala_144156._.._onin_gala_core_mem_windows.MODE_RESIZE, align 4
  %slot916 = alloca %gala_144156._.._onin_gala_core_mem_windows.Allocator, align 8
  call void @gala_144156._.._onin_gala_core_mem_windows.heap_allocator(ptr sret(%gala_144156._.._onin_gala_core_mem_windows.Allocator) align 8 %slot916)
  %0 = load %gala_144156._.._onin_gala_core_mem_windows.Allocator, ptr %slot916, align 8
  store %gala_144156._.._onin_gala_core_mem_windows.Allocator %0, ptr @gala_144156._.._onin_gala_core_mem_windows.base_allocator, align 8
  %1 = inttoptr i64 0 to ptr
  %2 = insertvalue %gala_144156._.._onin_gala_core_mem_windows.Arena undef, ptr %1, 0
  %3 = insertvalue %gala_144156._.._onin_gala_core_mem_windows.Arena %2, i64 0, 1
  %4 = insertvalue %gala_144156._.._onin_gala_core_mem_windows.Arena %3, i64 0, 2
  %5 = insertvalue %gala_144156._.._onin_gala_core_mem_windows.Arena %4, i64 0, 3
  %6 = insertvalue %gala_144156._.._onin_gala_core_mem_windows.Arena %5, i1 false, 4
  store %gala_144156._.._onin_gala_core_mem_windows.Arena %6, ptr @gala_144156._.._onin_gala_core_mem_windows.temp_arena, align 8
  %7 = inttoptr i64 0 to ptr
  %8 = insertvalue %gala_144156._.._onin_gala_core_mem_windows.Allocator undef, ptr @gala_144156._.._onin_gala_core_mem_windows.panic_proc, 0
  %9 = insertvalue %gala_144156._.._onin_gala_core_mem_windows.Allocator %8, ptr %7, 1
  store %gala_144156._.._onin_gala_core_mem_windows.Allocator %9, ptr @gala_144156._.._onin_gala_core_mem_windows.PANIC_ALLOCATOR, align 8
  ret void
}

attributes #0 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
