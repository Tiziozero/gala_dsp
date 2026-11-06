; ModuleID = '.gala_build/gala_546687._.._onin_gala_core_core_windows.ll'
source_filename = ".gala_build/gala_546687._.._onin_gala_core_core_windows.ll"
target datalayout = "e-m:w-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-windows-msvc"

%gala_162268._.._onin_gala_core_cfunctions_windows.TypeInfo = type { { ptr, i64 }, i64, i64, i64, i64, { ptr, i64 } }
%gala_546687._.._onin_gala_core_core_windows.Builder = type { [4096 x i8], i64 }
%gala_162268._.._onin_gala_core_cfunctions_windows.TypeField = type { { ptr, i64 }, i64, i64 }

@gala_162268._.._onin_gala_core_cfunctions_windows.SEEK_SET = external global i32
@gala_162268._.._onin_gala_core_cfunctions_windows.SEEK_CUR = external global i32
@gala_162268._.._onin_gala_core_cfunctions_windows.SEEK_END = external global i32
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

define ptr @gala_546687._.._onin_gala_core_core_windows.ptr_add(ptr %p, i64 %bytes) {
entry:
  %0 = ptrtoint ptr %p to i64
  %1 = add i64 %0, %bytes
  %2 = inttoptr i64 %1 to ptr
  ret ptr %2
}

define ptr @gala_546687._.._onin_gala_core_core_windows.str_data(ptr noundef %s) {
entry:
  %0 = load { ptr, i64 }, ptr %s, align 8
  %1 = extractvalue { ptr, i64 } %0, 1
  %2 = icmp eq i64 %1, 0
  br i1 %2, label %base_block_label50, label %end_label50

base_block_label50:                               ; preds = %entry
  %3 = inttoptr i64 0 to ptr
  ret ptr %3

end_label50:                                      ; preds = %entry
  %4 = load { ptr, i64 }, ptr %s, align 8
  %5 = extractvalue { ptr, i64 } %4, 0
  %6 = getelementptr inbounds i8, ptr %5, i64 0
  ret ptr %6
}

define zeroext i1 @gala_546687._.._onin_gala_core_core_windows.str_eq(ptr noundef %a, ptr noundef %b) {
entry:
  %0 = load { ptr, i64 }, ptr %a, align 8
  %1 = extractvalue { ptr, i64 } %0, 1
  %2 = load { ptr, i64 }, ptr %b, align 8
  %3 = extractvalue { ptr, i64 } %2, 1
  %4 = icmp ne i64 %1, %3
  br i1 %4, label %base_block_label58, label %end_label58

base_block_label58:                               ; preds = %entry
  ret i1 false

end_label58:                                      ; preds = %entry
  br label %while_cond_label64

while_cond_label64:                               ; preds = %end_label69, %end_label58
  %i.312.0 = phi i64 [ 0, %end_label58 ], [ %17, %end_label69 ]
  %5 = load { ptr, i64 }, ptr %a, align 8
  %6 = extractvalue { ptr, i64 } %5, 1
  %7 = icmp slt i64 %i.312.0, %6
  br i1 %7, label %while_body_label64, label %while_end_label64

while_body_label64:                               ; preds = %while_cond_label64
  %8 = load { ptr, i64 }, ptr %a, align 8
  %9 = extractvalue { ptr, i64 } %8, 0
  %10 = getelementptr inbounds i8, ptr %9, i64 %i.312.0
  %11 = load i8, ptr %10, align 1
  %12 = load { ptr, i64 }, ptr %b, align 8
  %13 = extractvalue { ptr, i64 } %12, 0
  %14 = getelementptr inbounds i8, ptr %13, i64 %i.312.0
  %15 = load i8, ptr %14, align 1
  %16 = icmp ne i8 %11, %15
  br i1 %16, label %base_block_label69, label %end_label69

base_block_label69:                               ; preds = %while_body_label64
  ret i1 false

end_label69:                                      ; preds = %while_body_label64
  %17 = add i64 %i.312.0, 1
  br label %while_cond_label64

while_end_label64:                                ; preds = %while_cond_label64
  ret i1 true
}

define void @gala_546687._.._onin_gala_core_core_windows.builder_make(ptr sret(%gala_546687._.._onin_gala_core_core_windows.Builder) align 8 %.sret) {
entry:
  %0 = getelementptr inbounds %gala_546687._.._onin_gala_core_core_windows.Builder, ptr %.sret, i32 0, i32 0
  call void @llvm.memset.p0.i64(ptr %0, i8 0, i64 4096, i1 false)
  %1 = getelementptr inbounds %gala_546687._.._onin_gala_core_core_windows.Builder, ptr %.sret, i32 0, i32 1
  store i64 0, ptr %1, align 8
  ret void
}

define void @gala_546687._.._onin_gala_core_core_windows.builder_push_byte(ptr %b, i8 %c) {
entry:
  %0 = getelementptr inbounds %gala_546687._.._onin_gala_core_core_windows.Builder, ptr %b, i32 0, i32 1
  %1 = load i64, ptr %0, align 8
  %2 = icmp slt i64 %1, 4096
  br i1 %2, label %base_block_label85, label %end_label85

base_block_label85:                               ; preds = %entry
  %3 = getelementptr inbounds %gala_546687._.._onin_gala_core_core_windows.Builder, ptr %b, i32 0, i32 0
  %4 = getelementptr inbounds %gala_546687._.._onin_gala_core_core_windows.Builder, ptr %b, i32 0, i32 1
  %5 = load i64, ptr %4, align 8
  %6 = getelementptr inbounds i8, ptr %3, i64 %5
  store i8 %c, ptr %6, align 1
  %7 = getelementptr inbounds %gala_546687._.._onin_gala_core_core_windows.Builder, ptr %b, i32 0, i32 1
  %8 = load i64, ptr %7, align 8
  %9 = add i64 %8, 1
  store i64 %9, ptr %7, align 8
  br label %end_label85

end_label85:                                      ; preds = %base_block_label85, %entry
  ret void
}

define void @gala_546687._.._onin_gala_core_core_windows.builder_push_string(ptr %b, ptr noundef %s) {
entry:
  br label %while_cond_label96

while_cond_label96:                               ; preds = %while_body_label96, %entry
  %i.317.0 = phi i64 [ 0, %entry ], [ %7, %while_body_label96 ]
  %0 = load { ptr, i64 }, ptr %s, align 8
  %1 = extractvalue { ptr, i64 } %0, 1
  %2 = icmp slt i64 %i.317.0, %1
  br i1 %2, label %while_body_label96, label %while_end_label96

while_body_label96:                               ; preds = %while_cond_label96
  %3 = load { ptr, i64 }, ptr %s, align 8
  %4 = extractvalue { ptr, i64 } %3, 0
  %5 = getelementptr inbounds i8, ptr %4, i64 %i.317.0
  %6 = load i8, ptr %5, align 1
  call void @gala_546687._.._onin_gala_core_core_windows.builder_push_byte(ptr %b, i8 %6)
  %7 = add i64 %i.317.0, 1
  br label %while_cond_label96

while_end_label96:                                ; preds = %while_cond_label96
  ret void
}

define void @gala_546687._.._onin_gala_core_core_windows.builder_push_digit(ptr %b, i64 %d) {
entry:
  %0 = icmp ult i64 %d, 10
  br i1 %0, label %base_block_label108, label %else_block_label108

base_block_label108:                              ; preds = %entry
  %1 = add i64 48, %d
  %2 = trunc i64 %1 to i8
  call void @gala_546687._.._onin_gala_core_core_windows.builder_push_byte(ptr %b, i8 %2)
  br label %end_label108

else_block_label108:                              ; preds = %entry
  %3 = add i64 97, %d
  %4 = sub i64 %3, 10
  %5 = trunc i64 %4 to i8
  call void @gala_546687._.._onin_gala_core_core_windows.builder_push_byte(ptr %b, i8 %5)
  br label %end_label108

end_label108:                                     ; preds = %else_block_label108, %base_block_label108
  ret void
}

define void @gala_546687._.._onin_gala_core_core_windows.builder_bytes(ptr sret({ ptr, i64 }) align 8 %.sret, ptr %b) {
entry:
  %0 = getelementptr inbounds %gala_546687._.._onin_gala_core_core_windows.Builder, ptr %b, i32 0, i32 1
  %1 = load i64, ptr %0, align 8
  %2 = sub nuw nsw i64 %1, 0
  %3 = getelementptr inbounds %gala_546687._.._onin_gala_core_core_windows.Builder, ptr %b, i32 0, i32 0
  %4 = getelementptr inbounds i8, ptr %3, i64 0
  %5 = insertvalue { ptr, i64 } undef, ptr %4, 0
  %6 = insertvalue { ptr, i64 } %5, i64 %2, 1
  store { ptr, i64 } %6, ptr %.sret, align 8
  ret void
}

define i64 @gala_546687._.._onin_gala_core_core_windows.write_fd(i32 %fd, ptr noundef %data) {
entry:
  %slot138 = alloca { ptr, i64 }, align 8
  %0 = load { ptr, i64 }, ptr %data, align 8
  %1 = extractvalue { ptr, i64 } %0, 1
  br label %while_cond_label124

while_cond_label124:                              ; preds = %end_label145, %entry
  %total.323.0 = phi i64 [ 0, %entry ], [ %18, %end_label145 ]
  %2 = icmp slt i64 %total.323.0, %1
  br i1 %2, label %while_body_label124, label %while_end_label124

while_body_label124:                              ; preds = %while_cond_label124
  %3 = load { ptr, i64 }, ptr %data, align 8
  %4 = extractvalue { ptr, i64 } %3, 1
  %5 = sub nuw nsw i64 %4, %total.323.0
  %6 = load { ptr, i64 }, ptr %data, align 8
  %7 = extractvalue { ptr, i64 } %6, 0
  %8 = getelementptr inbounds i8, ptr %7, i64 %total.323.0
  %9 = insertvalue { ptr, i64 } undef, ptr %8, 0
  %10 = insertvalue { ptr, i64 } %9, i64 %5, 1
  store { ptr, i64 } %10, ptr %slot138, align 8
  %11 = call ptr @gala_546687._.._onin_gala_core_core_windows.raw_data.a_byte.v0(ptr noundef %slot138)
  %12 = extractvalue { ptr, i64 } %10, 1
  %13 = trunc i64 %12 to i32
  %14 = call i32 @_write(i32 %fd, ptr %11, i32 %13)
  %15 = sext i32 %14 to i64
  %16 = icmp sle i64 %15, 0
  br i1 %16, label %base_block_label145, label %end_label145

base_block_label145:                              ; preds = %while_body_label124
  %17 = sub i64 0, 1
  ret i64 %17

end_label145:                                     ; preds = %while_body_label124
  %18 = add i64 %total.323.0, %15
  br label %while_cond_label124

while_end_label124:                               ; preds = %while_cond_label124
  ret i64 %total.323.0
}

define i64 @gala_546687._.._onin_gala_core_core_windows.write_stdout(ptr noundef %data) {
entry:
  %slot154 = alloca { ptr, i64 }, align 8
  %0 = load { ptr, i64 }, ptr %data, align 8
  store { ptr, i64 } %0, ptr %slot154, align 8
  %1 = call i64 @gala_546687._.._onin_gala_core_core_windows.write_fd(i32 1, ptr noundef %slot154)
  ret i64 %1
}

define i64 @gala_546687._.._onin_gala_core_core_windows.builder_flush(ptr %b, i32 %fd) {
entry:
  %slot156 = alloca { ptr, i64 }, align 8
  %slot158 = alloca { ptr, i64 }, align 8
  call void @gala_546687._.._onin_gala_core_core_windows.builder_bytes(ptr sret({ ptr, i64 }) align 8 %slot156, ptr %b)
  %0 = load { ptr, i64 }, ptr %slot156, align 8
  store { ptr, i64 } %0, ptr %slot158, align 8
  %1 = call i64 @gala_546687._.._onin_gala_core_core_windows.write_fd(i32 %fd, ptr noundef %slot158)
  %2 = getelementptr inbounds %gala_546687._.._onin_gala_core_core_windows.Builder, ptr %b, i32 0, i32 1
  store i64 0, ptr %2, align 8
  ret i64 %1
}

define void @gala_546687._.._onin_gala_core_core_windows.fmt_u64_padded(ptr %b, i64 %v, i64 %base, i64 %width) {
entry:
  br label %while_cond_label162

while_cond_label162:                              ; preds = %while_body_label162, %entry
  %digits.336.0 = phi i64 [ 1, %entry ], [ %3, %while_body_label162 ]
  %div.335.0 = phi i64 [ 1, %entry ], [ %2, %while_body_label162 ]
  %0 = udiv i64 %v, %div.335.0
  %1 = icmp uge i64 %0, %base
  br i1 %1, label %while_body_label162, label %while_end_label162

while_body_label162:                              ; preds = %while_cond_label162
  %2 = mul i64 %div.335.0, %base
  %3 = add i64 %digits.336.0, 1
  br label %while_cond_label162

while_end_label162:                               ; preds = %while_cond_label162
  br label %while_cond_label170

while_cond_label170:                              ; preds = %while_body_label170, %while_end_label162
  %digits.336.1 = phi i64 [ %digits.336.0, %while_end_label162 ], [ %5, %while_body_label170 ]
  %4 = icmp slt i64 %digits.336.1, %width
  br i1 %4, label %while_body_label170, label %while_end_label170

while_body_label170:                              ; preds = %while_cond_label170
  call void @gala_546687._.._onin_gala_core_core_windows.builder_push_byte(ptr %b, i8 48)
  %5 = add i64 %digits.336.1, 1
  br label %while_cond_label170

while_end_label170:                               ; preds = %while_cond_label170
  br label %while_cond_label175

while_cond_label175:                              ; preds = %while_body_label175, %while_end_label170
  %div.335.1 = phi i64 [ %div.335.0, %while_end_label170 ], [ %9, %while_body_label175 ]
  %6 = icmp ugt i64 %div.335.1, 0
  br i1 %6, label %while_body_label175, label %while_end_label175

while_body_label175:                              ; preds = %while_cond_label175
  %7 = udiv i64 %v, %div.335.1
  %8 = urem i64 %7, %base
  call void @gala_546687._.._onin_gala_core_core_windows.builder_push_digit(ptr %b, i64 %8)
  %9 = udiv i64 %div.335.1, %base
  br label %while_cond_label175

while_end_label175:                               ; preds = %while_cond_label175
  ret void
}

define void @gala_546687._.._onin_gala_core_core_windows.fmt_u64(ptr %b, i64 %v) {
entry:
  call void @gala_546687._.._onin_gala_core_core_windows.fmt_u64_padded(ptr %b, i64 %v, i64 10, i64 1)
  ret void
}

define void @gala_546687._.._onin_gala_core_core_windows.fmt_i64(ptr %b, i64 %v) {
entry:
  %0 = icmp slt i64 %v, 0
  br i1 %0, label %base_block_label183, label %else_block_label183

base_block_label183:                              ; preds = %entry
  call void @gala_546687._.._onin_gala_core_core_windows.builder_push_byte(ptr %b, i8 45)
  %1 = sub i64 0, %v
  call void @gala_546687._.._onin_gala_core_core_windows.fmt_u64(ptr %b, i64 %1)
  br label %end_label183

else_block_label183:                              ; preds = %entry
  call void @gala_546687._.._onin_gala_core_core_windows.fmt_u64(ptr %b, i64 %v)
  br label %end_label183

end_label183:                                     ; preds = %else_block_label183, %base_block_label183
  ret void
}

define void @gala_546687._.._onin_gala_core_core_windows.fmt_hex(ptr %b, i64 %v) {
entry:
  %slot189 = alloca { ptr, i64 }, align 8
  %0 = getelementptr inbounds [3 x i8], ptr @string19, i64 0, i64 0
  %1 = insertvalue { ptr, i64 } undef, ptr %0, 0
  %2 = insertvalue { ptr, i64 } %1, i64 2, 1
  store { ptr, i64 } %2, ptr %slot189, align 8
  call void @gala_546687._.._onin_gala_core_core_windows.builder_push_string(ptr %b, ptr noundef %slot189)
  call void @gala_546687._.._onin_gala_core_core_windows.fmt_u64_padded(ptr %b, i64 %v, i64 16, i64 1)
  ret void
}

define void @gala_546687._.._onin_gala_core_core_windows.fmt_f64(ptr %b, double %x) {
entry:
  %slot195 = alloca { ptr, i64 }, align 8
  %slot209 = alloca { ptr, i64 }, align 8
  %slot216 = alloca { ptr, i64 }, align 8
  %0 = fcmp une double %x, %x
  br i1 %0, label %base_block_label190, label %end_label190

base_block_label190:                              ; preds = %entry
  %1 = getelementptr inbounds [4 x i8], ptr @string20, i64 0, i64 0
  %2 = insertvalue { ptr, i64 } undef, ptr %1, 0
  %3 = insertvalue { ptr, i64 } %2, i64 3, 1
  store { ptr, i64 } %3, ptr %slot195, align 8
  call void @gala_546687._.._onin_gala_core_core_windows.builder_push_string(ptr %b, ptr noundef %slot195)
  ret void

end_label190:                                     ; preds = %entry
  %4 = fcmp olt double %x, 0.000000e+00
  br i1 %4, label %base_block_label196, label %end_label196

base_block_label196:                              ; preds = %end_label190
  call void @gala_546687._.._onin_gala_core_core_windows.builder_push_byte(ptr %b, i8 45)
  %5 = fsub double 0.000000e+00, %x
  br label %end_label196

end_label196:                                     ; preds = %base_block_label196, %end_label190
  %v.345.0 = phi double [ %5, %base_block_label196 ], [ %x, %end_label190 ]
  %6 = fsub double %v.345.0, %v.345.0
  %7 = fcmp une double %6, 0.000000e+00
  br i1 %7, label %base_block_label201, label %end_label201

base_block_label201:                              ; preds = %end_label196
  %8 = getelementptr inbounds [4 x i8], ptr @string21, i64 0, i64 0
  %9 = insertvalue { ptr, i64 } undef, ptr %8, 0
  %10 = insertvalue { ptr, i64 } %9, i64 3, 1
  store { ptr, i64 } %10, ptr %slot209, align 8
  call void @gala_546687._.._onin_gala_core_core_windows.builder_push_string(ptr %b, ptr noundef %slot209)
  ret void

end_label201:                                     ; preds = %end_label196
  %11 = fcmp oge double %v.345.0, f0x43F0000000000000
  br i1 %11, label %base_block_label210, label %end_label210

base_block_label210:                              ; preds = %end_label201
  %12 = getelementptr inbounds [10 x i8], ptr @string22, i64 0, i64 0
  %13 = insertvalue { ptr, i64 } undef, ptr %12, 0
  %14 = insertvalue { ptr, i64 } %13, i64 9, 1
  store { ptr, i64 } %14, ptr %slot216, align 8
  call void @gala_546687._.._onin_gala_core_core_windows.builder_push_string(ptr %b, ptr noundef %slot216)
  ret void

end_label210:                                     ; preds = %end_label201
  %15 = fptoui double %v.345.0 to i64
  %16 = uitofp i64 %15 to double
  %17 = fsub double %v.345.0, %16
  %18 = fmul double %17, 1.000000e+06
  %19 = fadd double %18, 5.000000e-01
  %20 = fptoui double %19 to i64
  %21 = icmp uge i64 %20, 1000000
  br i1 %21, label %base_block_label226, label %end_label226

base_block_label226:                              ; preds = %end_label210
  %22 = add i64 %15, 1
  %23 = sub i64 %20, 1000000
  br label %end_label226

end_label226:                                     ; preds = %base_block_label226, %end_label210
  %frac.347.0 = phi i64 [ %23, %base_block_label226 ], [ %20, %end_label210 ]
  %int_part.346.0 = phi i64 [ %22, %base_block_label226 ], [ %15, %end_label210 ]
  call void @gala_546687._.._onin_gala_core_core_windows.fmt_u64(ptr %b, i64 %int_part.346.0)
  br label %while_cond_label234

while_cond_label234:                              ; preds = %while_body_label234, %end_label226
  %frac_digits.348.0 = phi i64 [ 6, %end_label226 ], [ %28, %while_body_label234 ]
  %frac.347.1 = phi i64 [ %frac.347.0, %end_label226 ], [ %27, %while_body_label234 ]
  %24 = icmp sgt i64 %frac_digits.348.0, 0
  br i1 %24, label %logic.rhs.236, label %logic.end.236

logic.rhs.236:                                    ; preds = %while_cond_label234
  %25 = urem i64 %frac.347.1, 10
  %26 = icmp eq i64 %25, 0
  br label %logic.end.236

logic.end.236:                                    ; preds = %logic.rhs.236, %while_cond_label234
  %slot235.0 = phi i1 [ %26, %logic.rhs.236 ], [ %24, %while_cond_label234 ]
  br i1 %slot235.0, label %while_body_label234, label %while_end_label234

while_body_label234:                              ; preds = %logic.end.236
  %27 = udiv i64 %frac.347.1, 10
  %28 = sub i64 %frac_digits.348.0, 1
  br label %while_cond_label234

while_end_label234:                               ; preds = %logic.end.236
  %29 = icmp sgt i64 %frac_digits.348.0, 0
  br i1 %29, label %base_block_label247, label %end_label247

base_block_label247:                              ; preds = %while_end_label234
  call void @gala_546687._.._onin_gala_core_core_windows.builder_push_byte(ptr %b, i8 46)
  call void @gala_546687._.._onin_gala_core_core_windows.fmt_u64_padded(ptr %b, i64 %frac.347.1, i64 10, i64 %frac_digits.348.0)
  br label %end_label247

end_label247:                                     ; preds = %base_block_label247, %while_end_label234
  ret void
}

define void @gala_546687._.._onin_gala_core_core_windows.fmt_int_at(ptr %b, ptr %data, i64 %size) {
entry:
  %0 = icmp eq i64 %size, 8
  br i1 %0, label %base_block_label252, label %alt_cond_label252_0

base_block_label252:                              ; preds = %entry
  %1 = bitcast ptr %data to ptr
  %2 = load i64, ptr %1, align 8
  call void @gala_546687._.._onin_gala_core_core_windows.fmt_i64(ptr %b, i64 %2)
  br label %end_label252

alt_cond_label252_0:                              ; preds = %entry
  %3 = icmp eq i64 %size, 4
  br i1 %3, label %alt_block_label252_0, label %alt_cond_label252_1

alt_block_label252_0:                             ; preds = %alt_cond_label252_0
  %4 = bitcast ptr %data to ptr
  %5 = load i32, ptr %4, align 4
  %6 = sext i32 %5 to i64
  call void @gala_546687._.._onin_gala_core_core_windows.fmt_i64(ptr %b, i64 %6)
  br label %end_label252

alt_cond_label252_1:                              ; preds = %alt_cond_label252_0
  %7 = icmp eq i64 %size, 2
  br i1 %7, label %alt_block_label252_1, label %else_block_label252

alt_block_label252_1:                             ; preds = %alt_cond_label252_1
  %8 = bitcast ptr %data to ptr
  %9 = load i16, ptr %8, align 2
  %10 = sext i16 %9 to i64
  call void @gala_546687._.._onin_gala_core_core_windows.fmt_i64(ptr %b, i64 %10)
  br label %end_label252

else_block_label252:                              ; preds = %alt_cond_label252_1
  %11 = bitcast ptr %data to ptr
  %12 = load i8, ptr %11, align 1
  %13 = sext i8 %12 to i64
  call void @gala_546687._.._onin_gala_core_core_windows.fmt_i64(ptr %b, i64 %13)
  br label %end_label252

end_label252:                                     ; preds = %else_block_label252, %alt_block_label252_1, %alt_block_label252_0, %base_block_label252
  ret void
}

define void @gala_546687._.._onin_gala_core_core_windows.fmt_uint_at(ptr %b, ptr %data, i64 %size) {
entry:
  %0 = icmp eq i64 %size, 8
  br i1 %0, label %base_block_label271, label %alt_cond_label271_0

base_block_label271:                              ; preds = %entry
  %1 = bitcast ptr %data to ptr
  %2 = load i64, ptr %1, align 8
  call void @gala_546687._.._onin_gala_core_core_windows.fmt_u64(ptr %b, i64 %2)
  br label %end_label271

alt_cond_label271_0:                              ; preds = %entry
  %3 = icmp eq i64 %size, 4
  br i1 %3, label %alt_block_label271_0, label %alt_cond_label271_1

alt_block_label271_0:                             ; preds = %alt_cond_label271_0
  %4 = bitcast ptr %data to ptr
  %5 = load i32, ptr %4, align 4
  %6 = zext i32 %5 to i64
  call void @gala_546687._.._onin_gala_core_core_windows.fmt_u64(ptr %b, i64 %6)
  br label %end_label271

alt_cond_label271_1:                              ; preds = %alt_cond_label271_0
  %7 = icmp eq i64 %size, 2
  br i1 %7, label %alt_block_label271_1, label %else_block_label271

alt_block_label271_1:                             ; preds = %alt_cond_label271_1
  %8 = bitcast ptr %data to ptr
  %9 = load i16, ptr %8, align 2
  %10 = zext i16 %9 to i64
  call void @gala_546687._.._onin_gala_core_core_windows.fmt_u64(ptr %b, i64 %10)
  br label %end_label271

else_block_label271:                              ; preds = %alt_cond_label271_1
  %11 = bitcast ptr %data to ptr
  %12 = load i8, ptr %11, align 1
  %13 = zext i8 %12 to i64
  call void @gala_546687._.._onin_gala_core_core_windows.fmt_u64(ptr %b, i64 %13)
  br label %end_label271

end_label271:                                     ; preds = %else_block_label271, %alt_block_label271_1, %alt_block_label271_0, %base_block_label271
  ret void
}

define void @gala_546687._.._onin_gala_core_core_windows.fmt_float_at(ptr %b, ptr %data, i64 %size) {
entry:
  %0 = icmp eq i64 %size, 8
  br i1 %0, label %base_block_label290, label %else_block_label290

base_block_label290:                              ; preds = %entry
  %1 = bitcast ptr %data to ptr
  %2 = load double, ptr %1, align 8
  call void @gala_546687._.._onin_gala_core_core_windows.fmt_f64(ptr %b, double %2)
  br label %end_label290

else_block_label290:                              ; preds = %entry
  %3 = bitcast ptr %data to ptr
  %4 = load float, ptr %3, align 4
  %5 = fpext float %4 to double
  call void @gala_546687._.._onin_gala_core_core_windows.fmt_f64(ptr %b, double %5)
  br label %end_label290

end_label290:                                     ; preds = %else_block_label290, %base_block_label290
  ret void
}

define void @gala_546687._.._onin_gala_core_core_windows.fmt_struct_at(ptr %b, ptr %data, ptr %info) {
entry:
  %slot301 = alloca { ptr, i64 }, align 8
  %slot310 = alloca { ptr, i64 }, align 8
  %slot314 = alloca { ptr, i64 }, align 8
  %f.372 = alloca %gala_162268._.._onin_gala_core_cfunctions_windows.TypeField, align 8
  %slot335 = alloca { ptr, i64 }, align 8
  %slot338 = alloca { ptr, i64 }, align 8
  %slot342 = alloca { ptr, i64 }, align 8
  %slot353 = alloca { ptr, i64 }, align 8
  %0 = getelementptr inbounds %gala_162268._.._onin_gala_core_cfunctions_windows.TypeInfo, ptr %info, i32 0, i32 0
  %1 = load { ptr, i64 }, ptr %0, align 8
  store { ptr, i64 } %1, ptr %slot301, align 8
  call void @gala_546687._.._onin_gala_core_core_windows.builder_push_string(ptr %b, ptr noundef %slot301)
  %2 = getelementptr inbounds %gala_162268._.._onin_gala_core_cfunctions_windows.TypeInfo, ptr %info, i32 0, i32 5
  %3 = load { ptr, i64 }, ptr %2, align 8
  %4 = extractvalue { ptr, i64 } %3, 1
  %5 = icmp eq i64 %4, 0
  br i1 %5, label %base_block_label302, label %end_label302

base_block_label302:                              ; preds = %entry
  %6 = getelementptr inbounds [4 x i8], ptr @string23, i64 0, i64 0
  %7 = insertvalue { ptr, i64 } undef, ptr %6, 0
  %8 = insertvalue { ptr, i64 } %7, i64 3, 1
  store { ptr, i64 } %8, ptr %slot310, align 8
  call void @gala_546687._.._onin_gala_core_core_windows.builder_push_string(ptr %b, ptr noundef %slot310)
  ret void

end_label302:                                     ; preds = %entry
  %9 = getelementptr inbounds [4 x i8], ptr @string24, i64 0, i64 0
  %10 = insertvalue { ptr, i64 } undef, ptr %9, 0
  %11 = insertvalue { ptr, i64 } %10, i64 3, 1
  store { ptr, i64 } %11, ptr %slot314, align 8
  call void @gala_546687._.._onin_gala_core_core_windows.builder_push_string(ptr %b, ptr noundef %slot314)
  %12 = getelementptr inbounds %gala_162268._.._onin_gala_core_cfunctions_windows.TypeInfo, ptr %info, i32 0, i32 5
  %13 = load { ptr, i64 }, ptr %12, align 8
  br label %while_cond_label317

while_cond_label317:                              ; preds = %end_label329, %end_label302
  %__for_idx0.995.0 = phi i64 [ 0, %end_label302 ], [ %19, %end_label329 ]
  %i.371.0 = phi i64 [ 0, %end_label302 ], [ %34, %end_label329 ]
  %14 = extractvalue { ptr, i64 } %13, 1
  %15 = icmp slt i64 %__for_idx0.995.0, %14
  br i1 %15, label %while_body_label317, label %while_end_label317

while_body_label317:                              ; preds = %while_cond_label317
  %16 = extractvalue { ptr, i64 } %13, 0
  %17 = getelementptr inbounds %gala_162268._.._onin_gala_core_cfunctions_windows.TypeField, ptr %16, i64 %__for_idx0.995.0
  %18 = load %gala_162268._.._onin_gala_core_cfunctions_windows.TypeField, ptr %17, align 8
  store %gala_162268._.._onin_gala_core_cfunctions_windows.TypeField %18, ptr %f.372, align 8
  %19 = add i64 %__for_idx0.995.0, 1
  %20 = icmp sgt i64 %i.371.0, 0
  br i1 %20, label %base_block_label329, label %end_label329

base_block_label329:                              ; preds = %while_body_label317
  %21 = getelementptr inbounds [3 x i8], ptr @string25, i64 0, i64 0
  %22 = insertvalue { ptr, i64 } undef, ptr %21, 0
  %23 = insertvalue { ptr, i64 } %22, i64 2, 1
  store { ptr, i64 } %23, ptr %slot335, align 8
  call void @gala_546687._.._onin_gala_core_core_windows.builder_push_string(ptr %b, ptr noundef %slot335)
  br label %end_label329

end_label329:                                     ; preds = %base_block_label329, %while_body_label317
  %24 = getelementptr inbounds %gala_162268._.._onin_gala_core_cfunctions_windows.TypeField, ptr %f.372, i32 0, i32 0
  %25 = load { ptr, i64 }, ptr %24, align 8
  store { ptr, i64 } %25, ptr %slot338, align 8
  call void @gala_546687._.._onin_gala_core_core_windows.builder_push_string(ptr %b, ptr noundef %slot338)
  %26 = getelementptr inbounds [4 x i8], ptr @string26, i64 0, i64 0
  %27 = insertvalue { ptr, i64 } undef, ptr %26, 0
  %28 = insertvalue { ptr, i64 } %27, i64 3, 1
  store { ptr, i64 } %28, ptr %slot342, align 8
  call void @gala_546687._.._onin_gala_core_core_windows.builder_push_string(ptr %b, ptr noundef %slot342)
  %29 = getelementptr inbounds %gala_162268._.._onin_gala_core_cfunctions_windows.TypeField, ptr %f.372, i32 0, i32 2
  %30 = load i64, ptr %29, align 8
  %31 = call ptr @gala_546687._.._onin_gala_core_core_windows.ptr_add(ptr %data, i64 %30)
  %32 = getelementptr inbounds %gala_162268._.._onin_gala_core_cfunctions_windows.TypeField, ptr %f.372, i32 0, i32 1
  %33 = load i64, ptr %32, align 8
  call void @gala_546687._.._onin_gala_core_core_windows.fmt_value(ptr %b, ptr %31, i64 %33, i1 zeroext true)
  %34 = add i64 %i.371.0, 1
  br label %while_cond_label317

while_end_label317:                               ; preds = %while_cond_label317
  %35 = getelementptr inbounds [3 x i8], ptr @string27, i64 0, i64 0
  %36 = insertvalue { ptr, i64 } undef, ptr %35, 0
  %37 = insertvalue { ptr, i64 } %36, i64 2, 1
  store { ptr, i64 } %37, ptr %slot353, align 8
  call void @gala_546687._.._onin_gala_core_core_windows.builder_push_string(ptr %b, ptr noundef %slot353)
  ret void
}

define void @gala_546687._.._onin_gala_core_core_windows.fmt_list_at(ptr %b, ptr %data, ptr %info) {
entry:
  %slot382 = alloca { ptr, i64 }, align 8
  %0 = getelementptr inbounds %gala_162268._.._onin_gala_core_cfunctions_windows.TypeInfo, ptr %info, i32 0, i32 4
  %1 = load i64, ptr %0, align 8
  %2 = getelementptr inbounds %gala_162268._.._onin_gala_core_cfunctions_windows.TypeInfo, ptr %info, i32 0, i32 1
  %3 = load i64, ptr %2, align 8
  %4 = icmp eq i64 %3, 9
  br i1 %4, label %base_block_label356, label %end_label356

base_block_label356:                              ; preds = %entry
  %5 = bitcast ptr %data to ptr
  %6 = call ptr @gala_546687._.._onin_gala_core_core_windows.ptr_add(ptr %data, i64 8)
  %7 = bitcast ptr %6 to ptr
  %8 = load ptr, ptr %5, align 8
  %9 = load i64, ptr %7, align 8
  br label %end_label356

end_label356:                                     ; preds = %base_block_label356, %entry
  %n.377.0 = phi i64 [ %9, %base_block_label356 ], [ %1, %entry ]
  %elems.376.0 = phi ptr [ %8, %base_block_label356 ], [ %data, %entry ]
  %10 = getelementptr inbounds %gala_162268._.._onin_gala_core_cfunctions_windows.TypeInfo, ptr %info, i32 0, i32 3
  %11 = load i64, ptr %10, align 8
  %12 = getelementptr inbounds %gala_162268._.._onin_gala_core_cfunctions_windows.TypeInfo, ptr @__gala_types, i64 %11
  %13 = getelementptr inbounds %gala_162268._.._onin_gala_core_cfunctions_windows.TypeInfo, ptr %12, i32 0, i32 2
  %14 = load i64, ptr %13, align 8
  call void @gala_546687._.._onin_gala_core_core_windows.builder_push_byte(ptr %b, i8 91)
  br label %while_cond_label372

while_cond_label372:                              ; preds = %end_label376, %end_label356
  %i.381.0 = phi i64 [ 0, %end_label356 ], [ %24, %end_label376 ]
  %15 = icmp slt i64 %i.381.0, %n.377.0
  br i1 %15, label %while_body_label372, label %while_end_label372

while_body_label372:                              ; preds = %while_cond_label372
  %16 = icmp sgt i64 %i.381.0, 0
  br i1 %16, label %base_block_label376, label %end_label376

base_block_label376:                              ; preds = %while_body_label372
  %17 = getelementptr inbounds [3 x i8], ptr @string25, i64 0, i64 0
  %18 = insertvalue { ptr, i64 } undef, ptr %17, 0
  %19 = insertvalue { ptr, i64 } %18, i64 2, 1
  store { ptr, i64 } %19, ptr %slot382, align 8
  call void @gala_546687._.._onin_gala_core_core_windows.builder_push_string(ptr %b, ptr noundef %slot382)
  br label %end_label376

end_label376:                                     ; preds = %base_block_label376, %while_body_label372
  %20 = mul i64 %i.381.0, %14
  %21 = call ptr @gala_546687._.._onin_gala_core_core_windows.ptr_add(ptr %elems.376.0, i64 %20)
  %22 = getelementptr inbounds %gala_162268._.._onin_gala_core_cfunctions_windows.TypeInfo, ptr %info, i32 0, i32 3
  %23 = load i64, ptr %22, align 8
  call void @gala_546687._.._onin_gala_core_core_windows.fmt_value(ptr %b, ptr %21, i64 %23, i1 zeroext true)
  %24 = add i64 %i.381.0, 1
  br label %while_cond_label372

while_end_label372:                               ; preds = %while_cond_label372
  call void @gala_546687._.._onin_gala_core_core_windows.builder_push_byte(ptr %b, i8 93)
  ret void
}

define void @gala_546687._.._onin_gala_core_core_windows.fmt_value(ptr %b, ptr %data, i64 %id, i1 zeroext %nested) {
entry:
  %slot431 = alloca { ptr, i64 }, align 8
  %slot435 = alloca { ptr, i64 }, align 8
  %slot442 = alloca { ptr, i64 }, align 8
  %slot454 = alloca { ptr, i64 }, align 8
  %slot480 = alloca { ptr, i64 }, align 8
  %0 = getelementptr inbounds %gala_162268._.._onin_gala_core_cfunctions_windows.TypeInfo, ptr @__gala_types, i64 %id
  %1 = getelementptr inbounds %gala_162268._.._onin_gala_core_cfunctions_windows.TypeInfo, ptr %0, i32 0, i32 1
  %2 = load i64, ptr %1, align 8
  %3 = icmp eq i64 %2, 1
  br i1 %3, label %base_block_label396, label %alt_cond_label396_0

base_block_label396:                              ; preds = %entry
  %4 = getelementptr inbounds %gala_162268._.._onin_gala_core_cfunctions_windows.TypeInfo, ptr %0, i32 0, i32 2
  %5 = load i64, ptr %4, align 8
  call void @gala_546687._.._onin_gala_core_core_windows.fmt_int_at(ptr %b, ptr %data, i64 %5)
  br label %end_label396

alt_cond_label396_0:                              ; preds = %entry
  %6 = icmp eq i64 %2, 2
  br i1 %6, label %logic.end.405, label %logic.rhs.405

logic.rhs.405:                                    ; preds = %alt_cond_label396_0
  %7 = icmp eq i64 %2, 5
  br label %logic.end.405

logic.end.405:                                    ; preds = %logic.rhs.405, %alt_cond_label396_0
  %slot404.0 = phi i1 [ %6, %alt_cond_label396_0 ], [ %7, %logic.rhs.405 ]
  br i1 %slot404.0, label %logic.end.403, label %logic.rhs.403

logic.rhs.403:                                    ; preds = %logic.end.405
  %8 = icmp eq i64 %2, 6
  br label %logic.end.403

logic.end.403:                                    ; preds = %logic.rhs.403, %logic.end.405
  %slot402.0 = phi i1 [ %slot404.0, %logic.end.405 ], [ %8, %logic.rhs.403 ]
  br i1 %slot402.0, label %alt_block_label396_0, label %alt_cond_label396_1

alt_block_label396_0:                             ; preds = %logic.end.403
  %9 = getelementptr inbounds %gala_162268._.._onin_gala_core_cfunctions_windows.TypeInfo, ptr %0, i32 0, i32 2
  %10 = load i64, ptr %9, align 8
  call void @gala_546687._.._onin_gala_core_core_windows.fmt_uint_at(ptr %b, ptr %data, i64 %10)
  br label %end_label396

alt_cond_label396_1:                              ; preds = %logic.end.403
  %11 = icmp eq i64 %2, 3
  br i1 %11, label %alt_block_label396_1, label %alt_cond_label396_2

alt_block_label396_1:                             ; preds = %alt_cond_label396_1
  %12 = getelementptr inbounds %gala_162268._.._onin_gala_core_cfunctions_windows.TypeInfo, ptr %0, i32 0, i32 2
  %13 = load i64, ptr %12, align 8
  call void @gala_546687._.._onin_gala_core_core_windows.fmt_float_at(ptr %b, ptr %data, i64 %13)
  br label %end_label396

alt_cond_label396_2:                              ; preds = %alt_cond_label396_1
  %14 = icmp eq i64 %2, 4
  br i1 %14, label %alt_block_label396_2, label %alt_cond_label396_3

alt_block_label396_2:                             ; preds = %alt_cond_label396_2
  %15 = bitcast ptr %data to ptr
  %16 = load i1, ptr %15, align 1
  br i1 %16, label %base_block_label425, label %else_block_label425

base_block_label425:                              ; preds = %alt_block_label396_2
  %17 = getelementptr inbounds [5 x i8], ptr @string28, i64 0, i64 0
  %18 = insertvalue { ptr, i64 } undef, ptr %17, 0
  %19 = insertvalue { ptr, i64 } %18, i64 4, 1
  store { ptr, i64 } %19, ptr %slot431, align 8
  call void @gala_546687._.._onin_gala_core_core_windows.builder_push_string(ptr %b, ptr noundef %slot431)
  br label %end_label425

else_block_label425:                              ; preds = %alt_block_label396_2
  %20 = getelementptr inbounds [6 x i8], ptr @string29, i64 0, i64 0
  %21 = insertvalue { ptr, i64 } undef, ptr %20, 0
  %22 = insertvalue { ptr, i64 } %21, i64 5, 1
  store { ptr, i64 } %22, ptr %slot435, align 8
  call void @gala_546687._.._onin_gala_core_core_windows.builder_push_string(ptr %b, ptr noundef %slot435)
  br label %end_label425

end_label425:                                     ; preds = %else_block_label425, %base_block_label425
  br label %end_label396

alt_cond_label396_3:                              ; preds = %alt_cond_label396_2
  %23 = icmp eq i64 %2, 7
  br i1 %23, label %alt_block_label396_3, label %alt_cond_label396_4

alt_block_label396_3:                             ; preds = %alt_cond_label396_3
  %24 = bitcast ptr %data to ptr
  br i1 %nested, label %base_block_label439, label %end_label439

base_block_label439:                              ; preds = %alt_block_label396_3
  call void @gala_546687._.._onin_gala_core_core_windows.builder_push_byte(ptr %b, i8 34)
  br label %end_label439

end_label439:                                     ; preds = %base_block_label439, %alt_block_label396_3
  %25 = load { ptr, i64 }, ptr %24, align 8
  store { ptr, i64 } %25, ptr %slot442, align 8
  call void @gala_546687._.._onin_gala_core_core_windows.builder_push_string(ptr %b, ptr noundef %slot442)
  br i1 %nested, label %base_block_label443, label %end_label443

base_block_label443:                              ; preds = %end_label439
  call void @gala_546687._.._onin_gala_core_core_windows.builder_push_byte(ptr %b, i8 34)
  br label %end_label443

end_label443:                                     ; preds = %base_block_label443, %end_label439
  br label %end_label396

alt_cond_label396_4:                              ; preds = %alt_cond_label396_3
  %26 = icmp eq i64 %2, 8
  br i1 %26, label %alt_block_label396_4, label %alt_cond_label396_5

alt_block_label396_4:                             ; preds = %alt_cond_label396_4
  %27 = bitcast ptr %data to ptr
  %28 = load i64, ptr %27, align 8
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %base_block_label447, label %else_block_label447

base_block_label447:                              ; preds = %alt_block_label396_4
  %30 = getelementptr inbounds [4 x i8], ptr @string30, i64 0, i64 0
  %31 = insertvalue { ptr, i64 } undef, ptr %30, 0
  %32 = insertvalue { ptr, i64 } %31, i64 3, 1
  store { ptr, i64 } %32, ptr %slot454, align 8
  call void @gala_546687._.._onin_gala_core_core_windows.builder_push_string(ptr %b, ptr noundef %slot454)
  br label %end_label447

else_block_label447:                              ; preds = %alt_block_label396_4
  %33 = load i64, ptr %27, align 8
  call void @gala_546687._.._onin_gala_core_core_windows.fmt_hex(ptr %b, i64 %33)
  br label %end_label447

end_label447:                                     ; preds = %else_block_label447, %base_block_label447
  br label %end_label396

alt_cond_label396_5:                              ; preds = %alt_cond_label396_4
  %34 = icmp eq i64 %2, 14
  br i1 %34, label %alt_block_label396_5, label %alt_cond_label396_6

alt_block_label396_5:                             ; preds = %alt_cond_label396_5
  %35 = bitcast ptr %data to ptr
  %36 = getelementptr inbounds { ptr, i64 }, ptr %35, i32 0, i32 0
  %37 = load ptr, ptr %36, align 8
  %38 = getelementptr inbounds { ptr, i64 }, ptr %35, i32 0, i32 1
  %39 = load i64, ptr %38, align 8
  call void @gala_546687._.._onin_gala_core_core_windows.fmt_value(ptr %b, ptr %37, i64 %39, i1 zeroext %nested)
  br label %end_label396

alt_cond_label396_6:                              ; preds = %alt_cond_label396_5
  %40 = icmp eq i64 %2, 11
  br i1 %40, label %alt_block_label396_6, label %alt_cond_label396_7

alt_block_label396_6:                             ; preds = %alt_cond_label396_6
  call void @gala_546687._.._onin_gala_core_core_windows.fmt_struct_at(ptr %b, ptr %data, ptr %0)
  br label %end_label396

alt_cond_label396_7:                              ; preds = %alt_cond_label396_6
  %41 = icmp eq i64 %2, 10
  br i1 %41, label %logic.end.470, label %logic.rhs.470

logic.rhs.470:                                    ; preds = %alt_cond_label396_7
  %42 = icmp eq i64 %2, 9
  br label %logic.end.470

logic.end.470:                                    ; preds = %logic.rhs.470, %alt_cond_label396_7
  %slot469.0 = phi i1 [ %41, %alt_cond_label396_7 ], [ %42, %logic.rhs.470 ]
  br i1 %slot469.0, label %alt_block_label396_7, label %else_block_label396

alt_block_label396_7:                             ; preds = %logic.end.470
  call void @gala_546687._.._onin_gala_core_core_windows.fmt_list_at(ptr %b, ptr %data, ptr %0)
  br label %end_label396

else_block_label396:                              ; preds = %logic.end.470
  %43 = getelementptr inbounds %gala_162268._.._onin_gala_core_cfunctions_windows.TypeInfo, ptr %0, i32 0, i32 0
  %44 = load { ptr, i64 }, ptr %43, align 8
  store { ptr, i64 } %44, ptr %slot480, align 8
  call void @gala_546687._.._onin_gala_core_core_windows.builder_push_string(ptr %b, ptr noundef %slot480)
  br label %end_label396

end_label396:                                     ; preds = %else_block_label396, %alt_block_label396_7, %alt_block_label396_6, %alt_block_label396_5, %end_label447, %end_label443, %end_label425, %alt_block_label396_1, %alt_block_label396_0, %base_block_label396
  ret void
}

define void @gala_546687._.._onin_gala_core_core_windows.fmt_any(ptr %b, ptr noundef %v) {
entry:
  %0 = getelementptr inbounds { ptr, i64 }, ptr %v, i32 0, i32 0
  %1 = load ptr, ptr %0, align 8
  %2 = getelementptr inbounds { ptr, i64 }, ptr %v, i32 0, i32 1
  %3 = load i64, ptr %2, align 8
  call void @gala_546687._.._onin_gala_core_core_windows.fmt_value(ptr %b, ptr %1, i64 %3, i1 zeroext false)
  ret void
}

define zeroext i1 @gala_546687._.._onin_gala_core_core_windows.next_is(ptr noundef %s, i64 %i, i8 %c) {
entry:
  %0 = add i64 %i, 1
  %1 = load { ptr, i64 }, ptr %s, align 8
  %2 = extractvalue { ptr, i64 } %1, 1
  %3 = icmp slt i64 %0, %2
  br i1 %3, label %logic.rhs.486, label %logic.end.486

logic.rhs.486:                                    ; preds = %entry
  %4 = load { ptr, i64 }, ptr %s, align 8
  %5 = extractvalue { ptr, i64 } %4, 0
  %6 = add i64 %i, 1
  %7 = getelementptr inbounds i8, ptr %5, i64 %6
  %8 = load i8, ptr %7, align 1
  %9 = icmp eq i8 %8, %c
  br label %logic.end.486

logic.end.486:                                    ; preds = %logic.rhs.486, %entry
  %slot485.0 = phi i1 [ %9, %logic.rhs.486 ], [ %3, %entry ]
  ret i1 %slot485.0
}

define zeroext i1 @gala_546687._.._onin_gala_core_core_windows.has_placeholder(ptr noundef %s) {
entry:
  %slot515 = alloca { ptr, i64 }, align 8
  %slot530 = alloca { ptr, i64 }, align 8
  %0 = load { ptr, i64 }, ptr %s, align 8
  %1 = extractvalue { ptr, i64 } %0, 1
  br label %while_cond_label500

while_cond_label500:                              ; preds = %end_label519, %entry
  %i.399.0 = phi i64 [ 0, %entry ], [ %i.399.1, %end_label519 ]
  %2 = icmp slt i64 %i.399.0, %1
  br i1 %2, label %while_body_label500, label %while_end_label500

while_body_label500:                              ; preds = %while_cond_label500
  %3 = load { ptr, i64 }, ptr %s, align 8
  %4 = extractvalue { ptr, i64 } %3, 0
  %5 = getelementptr inbounds i8, ptr %4, i64 %i.399.0
  %6 = load i8, ptr %5, align 1
  %7 = icmp eq i8 %6, 123
  br i1 %7, label %logic.rhs.511, label %logic.end.511

logic.rhs.511:                                    ; preds = %while_body_label500
  %8 = load { ptr, i64 }, ptr %s, align 8
  store { ptr, i64 } %8, ptr %slot515, align 8
  %9 = call zeroext i1 @gala_546687._.._onin_gala_core_core_windows.next_is(ptr noundef %slot515, i64 %i.399.0, i8 125)
  br label %logic.end.511

logic.end.511:                                    ; preds = %logic.rhs.511, %while_body_label500
  %slot510.0 = phi i1 [ %9, %logic.rhs.511 ], [ %7, %while_body_label500 ]
  br i1 %slot510.0, label %base_block_label509, label %end_label509

base_block_label509:                              ; preds = %logic.end.511
  ret i1 true

end_label509:                                     ; preds = %logic.end.511
  %10 = icmp eq i8 %6, 123
  br i1 %10, label %logic.end.523, label %logic.rhs.523

logic.rhs.523:                                    ; preds = %end_label509
  %11 = icmp eq i8 %6, 125
  br label %logic.end.523

logic.end.523:                                    ; preds = %logic.rhs.523, %end_label509
  %slot522.0 = phi i1 [ %10, %end_label509 ], [ %11, %logic.rhs.523 ]
  br i1 %slot522.0, label %logic.rhs.521, label %logic.end.521

logic.rhs.521:                                    ; preds = %logic.end.523
  %12 = load { ptr, i64 }, ptr %s, align 8
  store { ptr, i64 } %12, ptr %slot530, align 8
  %13 = call zeroext i1 @gala_546687._.._onin_gala_core_core_windows.next_is(ptr noundef %slot530, i64 %i.399.0, i8 %6)
  br label %logic.end.521

logic.end.521:                                    ; preds = %logic.rhs.521, %logic.end.523
  %slot520.0 = phi i1 [ %13, %logic.rhs.521 ], [ %slot522.0, %logic.end.523 ]
  br i1 %slot520.0, label %base_block_label519, label %else_block_label519

base_block_label519:                              ; preds = %logic.end.521
  %14 = add i64 %i.399.0, 2
  br label %end_label519

else_block_label519:                              ; preds = %logic.end.521
  %15 = add i64 %i.399.0, 1
  br label %end_label519

end_label519:                                     ; preds = %else_block_label519, %base_block_label519
  %i.399.1 = phi i64 [ %14, %base_block_label519 ], [ %15, %else_block_label519 ]
  br label %while_cond_label500

while_end_label500:                               ; preds = %while_cond_label500
  ret i1 false
}

define void @gala_546687._.._onin_gala_core_core_windows.format_into(ptr %b, ptr noundef %fmt_str, ptr noundef %args) {
entry:
  %slot556 = alloca { ptr, i64 }, align 8
  %slot570 = alloca { ptr, i64 }, align 8
  %slot574 = alloca { ptr, i64 }, align 8
  %slot589 = alloca { ptr, i64 }, align 8
  %0 = load { ptr, i64 }, ptr %fmt_str, align 8
  %1 = extractvalue { ptr, i64 } %0, 1
  br label %while_cond_label541

while_cond_label541:                              ; preds = %end_label550, %entry
  %arg_index.406.0 = phi i64 [ 0, %entry ], [ %arg_index.406.1, %end_label550 ]
  %i.405.0 = phi i64 [ 0, %entry ], [ %i.405.1, %end_label550 ]
  %2 = icmp slt i64 %i.405.0, %1
  br i1 %2, label %while_body_label541, label %while_end_label541

while_body_label541:                              ; preds = %while_cond_label541
  %3 = load { ptr, i64 }, ptr %fmt_str, align 8
  %4 = extractvalue { ptr, i64 } %3, 0
  %5 = getelementptr inbounds i8, ptr %4, i64 %i.405.0
  %6 = load i8, ptr %5, align 1
  %7 = icmp eq i8 %6, 123
  br i1 %7, label %logic.rhs.552, label %logic.end.552

logic.rhs.552:                                    ; preds = %while_body_label541
  %8 = load { ptr, i64 }, ptr %fmt_str, align 8
  store { ptr, i64 } %8, ptr %slot556, align 8
  %9 = call zeroext i1 @gala_546687._.._onin_gala_core_core_windows.next_is(ptr noundef %slot556, i64 %i.405.0, i8 125)
  br label %logic.end.552

logic.end.552:                                    ; preds = %logic.rhs.552, %while_body_label541
  %slot551.0 = phi i1 [ %9, %logic.rhs.552 ], [ %7, %while_body_label541 ]
  br i1 %slot551.0, label %base_block_label550, label %alt_cond_label550_0

base_block_label550:                              ; preds = %logic.end.552
  %10 = load { ptr, i64 }, ptr %args, align 8
  %11 = extractvalue { ptr, i64 } %10, 1
  %12 = icmp slt i64 %arg_index.406.0, %11
  br i1 %12, label %base_block_label560, label %else_block_label560

base_block_label560:                              ; preds = %base_block_label550
  %13 = load { ptr, i64 }, ptr %args, align 8
  %14 = extractvalue { ptr, i64 } %13, 0
  %15 = getelementptr inbounds { ptr, i64 }, ptr %14, i64 %arg_index.406.0
  %16 = load { ptr, i64 }, ptr %15, align 8
  store { ptr, i64 } %16, ptr %slot570, align 8
  call void @gala_546687._.._onin_gala_core_core_windows.fmt_any(ptr %b, ptr noundef %slot570)
  br label %end_label560

else_block_label560:                              ; preds = %base_block_label550
  %17 = getelementptr inbounds [10 x i8], ptr @string31, i64 0, i64 0
  %18 = insertvalue { ptr, i64 } undef, ptr %17, 0
  %19 = insertvalue { ptr, i64 } %18, i64 9, 1
  store { ptr, i64 } %19, ptr %slot574, align 8
  call void @gala_546687._.._onin_gala_core_core_windows.builder_push_string(ptr %b, ptr noundef %slot574)
  br label %end_label560

end_label560:                                     ; preds = %else_block_label560, %base_block_label560
  %20 = add i64 %arg_index.406.0, 1
  %21 = add i64 %i.405.0, 2
  br label %end_label550

alt_cond_label550_0:                              ; preds = %logic.end.552
  %22 = icmp eq i8 %6, 123
  br i1 %22, label %logic.end.582, label %logic.rhs.582

logic.rhs.582:                                    ; preds = %alt_cond_label550_0
  %23 = icmp eq i8 %6, 125
  br label %logic.end.582

logic.end.582:                                    ; preds = %logic.rhs.582, %alt_cond_label550_0
  %slot581.0 = phi i1 [ %22, %alt_cond_label550_0 ], [ %23, %logic.rhs.582 ]
  br i1 %slot581.0, label %logic.rhs.580, label %logic.end.580

logic.rhs.580:                                    ; preds = %logic.end.582
  %24 = load { ptr, i64 }, ptr %fmt_str, align 8
  store { ptr, i64 } %24, ptr %slot589, align 8
  %25 = call zeroext i1 @gala_546687._.._onin_gala_core_core_windows.next_is(ptr noundef %slot589, i64 %i.405.0, i8 %6)
  br label %logic.end.580

logic.end.580:                                    ; preds = %logic.rhs.580, %logic.end.582
  %slot579.0 = phi i1 [ %25, %logic.rhs.580 ], [ %slot581.0, %logic.end.582 ]
  br i1 %slot579.0, label %alt_block_label550_0, label %else_block_label550

alt_block_label550_0:                             ; preds = %logic.end.580
  call void @gala_546687._.._onin_gala_core_core_windows.builder_push_byte(ptr %b, i8 %6)
  %26 = add i64 %i.405.0, 2
  br label %end_label550

else_block_label550:                              ; preds = %logic.end.580
  call void @gala_546687._.._onin_gala_core_core_windows.builder_push_byte(ptr %b, i8 %6)
  %27 = add i64 %i.405.0, 1
  br label %end_label550

end_label550:                                     ; preds = %else_block_label550, %alt_block_label550_0, %end_label560
  %arg_index.406.1 = phi i64 [ %20, %end_label560 ], [ %arg_index.406.0, %alt_block_label550_0 ], [ %arg_index.406.0, %else_block_label550 ]
  %i.405.1 = phi i64 [ %21, %end_label560 ], [ %26, %alt_block_label550_0 ], [ %27, %else_block_label550 ]
  br label %while_cond_label541

while_end_label541:                               ; preds = %while_cond_label541
  ret void
}

define ptr @gala_546687._.._onin_gala_core_core_windows.leading_format(ptr noundef %data) {
entry:
  %slot609 = alloca { ptr, i64 }, align 8
  %slot621 = alloca { ptr, i64 }, align 8
  %0 = load { ptr, i64 }, ptr %data, align 8
  %1 = extractvalue { ptr, i64 } %0, 1
  %2 = icmp eq i64 %1, 0
  br i1 %2, label %base_block_label600, label %end_label600

base_block_label600:                              ; preds = %entry
  %3 = inttoptr i64 0 to ptr
  ret ptr %3

end_label600:                                     ; preds = %entry
  %4 = load { ptr, i64 }, ptr %data, align 8
  %5 = extractvalue { ptr, i64 } %4, 0
  %6 = getelementptr inbounds { ptr, i64 }, ptr %5, i64 0
  %7 = load { ptr, i64 }, ptr %6, align 8
  store { ptr, i64 } %7, ptr %slot609, align 8
  %8 = call ptr @gala_546687._.._onin_gala_core_core_windows.any_as.any.string.v0(ptr noundef %slot609)
  %9 = ptrtoint ptr %8 to i64
  %10 = inttoptr i64 0 to ptr
  %11 = ptrtoint ptr %10 to i64
  %12 = icmp ne i64 %9, %11
  br i1 %12, label %logic.rhs.613, label %logic.end.613

logic.rhs.613:                                    ; preds = %end_label600
  %13 = load { ptr, i64 }, ptr %8, align 8
  store { ptr, i64 } %13, ptr %slot621, align 8
  %14 = call zeroext i1 @gala_546687._.._onin_gala_core_core_windows.has_placeholder(ptr noundef %slot621)
  br label %logic.end.613

logic.end.613:                                    ; preds = %logic.rhs.613, %end_label600
  %slot612.0 = phi i1 [ %14, %logic.rhs.613 ], [ %12, %end_label600 ]
  br i1 %slot612.0, label %base_block_label611, label %end_label611

base_block_label611:                              ; preds = %logic.end.613
  ret ptr %8

end_label611:                                     ; preds = %logic.end.613
  %15 = inttoptr i64 0 to ptr
  ret ptr %15
}

define void @gala_546687._.._onin_gala_core_core_windows.print_into(ptr %b, ptr noundef %data, i1 zeroext %newline) {
entry:
  %slot627 = alloca { ptr, i64 }, align 8
  %slot637 = alloca { ptr, i64 }, align 8
  %slot646 = alloca { ptr, i64 }, align 8
  %slot664 = alloca { ptr, i64 }, align 8
  %0 = load { ptr, i64 }, ptr %data, align 8
  store { ptr, i64 } %0, ptr %slot627, align 8
  %1 = call ptr @gala_546687._.._onin_gala_core_core_windows.leading_format(ptr noundef %slot627)
  %2 = ptrtoint ptr %1 to i64
  %3 = inttoptr i64 0 to ptr
  %4 = ptrtoint ptr %3 to i64
  %5 = icmp ne i64 %2, %4
  br i1 %5, label %base_block_label629, label %else_block_label629

base_block_label629:                              ; preds = %entry
  %6 = load { ptr, i64 }, ptr %1, align 8
  store { ptr, i64 } %6, ptr %slot637, align 8
  %7 = load { ptr, i64 }, ptr %data, align 8
  %8 = extractvalue { ptr, i64 } %7, 1
  %9 = sub nuw nsw i64 %8, 1
  %10 = load { ptr, i64 }, ptr %data, align 8
  %11 = extractvalue { ptr, i64 } %10, 0
  %12 = getelementptr inbounds { ptr, i64 }, ptr %11, i64 1
  %13 = insertvalue { ptr, i64 } undef, ptr %12, 0
  %14 = insertvalue { ptr, i64 } %13, i64 %9, 1
  store { ptr, i64 } %14, ptr %slot646, align 8
  call void @gala_546687._.._onin_gala_core_core_windows.format_into(ptr %b, ptr noundef %slot637, ptr noundef %slot646)
  br label %end_label629

else_block_label629:                              ; preds = %entry
  %15 = load { ptr, i64 }, ptr %data, align 8
  br label %while_cond_label648

while_cond_label648:                              ; preds = %end_label660, %else_block_label629
  %i.414.0 = phi i64 [ 0, %else_block_label629 ], [ %23, %end_label660 ]
  %__for_idx1.997.0 = phi i64 [ 0, %else_block_label629 ], [ %21, %end_label660 ]
  %16 = extractvalue { ptr, i64 } %15, 1
  %17 = icmp slt i64 %__for_idx1.997.0, %16
  br i1 %17, label %while_body_label648, label %while_end_label648

while_body_label648:                              ; preds = %while_cond_label648
  %18 = extractvalue { ptr, i64 } %15, 0
  %19 = getelementptr inbounds { ptr, i64 }, ptr %18, i64 %__for_idx1.997.0
  %20 = load { ptr, i64 }, ptr %19, align 8
  %21 = add i64 %__for_idx1.997.0, 1
  %22 = icmp sgt i64 %i.414.0, 0
  br i1 %22, label %base_block_label660, label %end_label660

base_block_label660:                              ; preds = %while_body_label648
  call void @gala_546687._.._onin_gala_core_core_windows.builder_push_byte(ptr %b, i8 32)
  br label %end_label660

end_label660:                                     ; preds = %base_block_label660, %while_body_label648
  store { ptr, i64 } %20, ptr %slot664, align 8
  call void @gala_546687._.._onin_gala_core_core_windows.fmt_any(ptr %b, ptr noundef %slot664)
  %23 = add i64 %i.414.0, 1
  br label %while_cond_label648

while_end_label648:                               ; preds = %while_cond_label648
  br label %end_label629

end_label629:                                     ; preds = %while_end_label648, %base_block_label629
  br i1 %newline, label %base_block_label667, label %end_label667

base_block_label667:                              ; preds = %end_label629
  call void @gala_546687._.._onin_gala_core_core_windows.builder_push_byte(ptr %b, i8 10)
  br label %end_label667

end_label667:                                     ; preds = %base_block_label667, %end_label629
  ret void
}

define zeroext i1 @gala_546687._.._onin_gala_core_core_windows.__default_0() {
entry:
  ret i1 false
}

define void @gala_546687._.._onin_gala_core_core_windows.print_to_fd(i32 %fd, ptr noundef %data, i1 zeroext %newline) {
entry:
  %b.419 = alloca %gala_546687._.._onin_gala_core_core_windows.Builder, align 8
  %slot669 = alloca { ptr, i64 }, align 8
  call void @gala_546687._.._onin_gala_core_core_windows.builder_make(ptr sret(%gala_546687._.._onin_gala_core_core_windows.Builder) align 8 %b.419)
  %0 = load { ptr, i64 }, ptr %data, align 8
  store { ptr, i64 } %0, ptr %slot669, align 8
  call void @gala_546687._.._onin_gala_core_core_windows.print_into(ptr %b.419, ptr noundef %slot669, i1 zeroext %newline)
  %1 = call i64 @gala_546687._.._onin_gala_core_core_windows.builder_flush(ptr %b.419, i32 %fd)
  ret void
}

define void @gala_546687._.._onin_gala_core_core_windows.format_to_fd(i32 %fd, ptr noundef %fmt_str, ptr noundef %args) {
entry:
  %b.423 = alloca %gala_546687._.._onin_gala_core_core_windows.Builder, align 8
  %slot672 = alloca { ptr, i64 }, align 8
  %slot674 = alloca { ptr, i64 }, align 8
  call void @gala_546687._.._onin_gala_core_core_windows.builder_make(ptr sret(%gala_546687._.._onin_gala_core_core_windows.Builder) align 8 %b.423)
  %0 = load { ptr, i64 }, ptr %fmt_str, align 8
  store { ptr, i64 } %0, ptr %slot672, align 8
  %1 = load { ptr, i64 }, ptr %args, align 8
  store { ptr, i64 } %1, ptr %slot674, align 8
  call void @gala_546687._.._onin_gala_core_core_windows.format_into(ptr %b.423, ptr noundef %slot672, ptr noundef %slot674)
  %2 = call i64 @gala_546687._.._onin_gala_core_core_windows.builder_flush(ptr %b.423, i32 %fd)
  ret void
}

define void @gala_546687._.._onin_gala_core_core_windows.print(ptr noundef %data.gala_variadic) {
entry:
  %slot677 = alloca { ptr, i64 }, align 8
  %0 = load { ptr, i64 }, ptr %data.gala_variadic, align 8
  store { ptr, i64 } %0, ptr %slot677, align 8
  call void @gala_546687._.._onin_gala_core_core_windows.print_to_fd(i32 1, ptr noundef %slot677, i1 zeroext false)
  ret void
}

define void @gala_546687._.._onin_gala_core_core_windows.println(ptr noundef %data.gala_variadic) {
entry:
  %slot679 = alloca { ptr, i64 }, align 8
  %0 = load { ptr, i64 }, ptr %data.gala_variadic, align 8
  store { ptr, i64 } %0, ptr %slot679, align 8
  call void @gala_546687._.._onin_gala_core_core_windows.print_to_fd(i32 1, ptr noundef %slot679, i1 zeroext true)
  ret void
}

define void @gala_546687._.._onin_gala_core_core_windows.printfmt(ptr noundef %fmt_str, ptr noundef %args.gala_variadic) {
entry:
  %slot681 = alloca { ptr, i64 }, align 8
  %slot683 = alloca { ptr, i64 }, align 8
  %0 = load { ptr, i64 }, ptr %fmt_str, align 8
  store { ptr, i64 } %0, ptr %slot681, align 8
  %1 = load { ptr, i64 }, ptr %args.gala_variadic, align 8
  store { ptr, i64 } %1, ptr %slot683, align 8
  call void @gala_546687._.._onin_gala_core_core_windows.format_to_fd(i32 1, ptr noundef %slot681, ptr noundef %slot683)
  ret void
}

define void @gala_546687._.._onin_gala_core_core_windows.eprintln(ptr noundef %data.gala_variadic) {
entry:
  %slot685 = alloca { ptr, i64 }, align 8
  %0 = load { ptr, i64 }, ptr %data.gala_variadic, align 8
  store { ptr, i64 } %0, ptr %slot685, align 8
  call void @gala_546687._.._onin_gala_core_core_windows.print_to_fd(i32 2, ptr noundef %slot685, i1 zeroext true)
  ret void
}

define void @gala_546687._.._onin_gala_core_core_windows.eprintfmt(ptr noundef %fmt_str, ptr noundef %args.gala_variadic) {
entry:
  %slot687 = alloca { ptr, i64 }, align 8
  %slot689 = alloca { ptr, i64 }, align 8
  %0 = load { ptr, i64 }, ptr %fmt_str, align 8
  store { ptr, i64 } %0, ptr %slot687, align 8
  %1 = load { ptr, i64 }, ptr %args.gala_variadic, align 8
  store { ptr, i64 } %1, ptr %slot689, align 8
  call void @gala_546687._.._onin_gala_core_core_windows.format_to_fd(i32 2, ptr noundef %slot687, ptr noundef %slot689)
  ret void
}

define void @gala_546687._.._onin_gala_core_core_windows.fprintln(i32 %fd, ptr noundef %data.gala_variadic) {
entry:
  %slot691 = alloca { ptr, i64 }, align 8
  %0 = load { ptr, i64 }, ptr %data.gala_variadic, align 8
  store { ptr, i64 } %0, ptr %slot691, align 8
  call void @gala_546687._.._onin_gala_core_core_windows.print_to_fd(i32 %fd, ptr noundef %slot691, i1 zeroext true)
  ret void
}

define void @gala_546687._.._onin_gala_core_core_windows.fprintfmt(i32 %fd, ptr noundef %fmt_str, ptr noundef %args.gala_variadic) {
entry:
  %slot693 = alloca { ptr, i64 }, align 8
  %slot695 = alloca { ptr, i64 }, align 8
  %0 = load { ptr, i64 }, ptr %fmt_str, align 8
  store { ptr, i64 } %0, ptr %slot693, align 8
  %1 = load { ptr, i64 }, ptr %args.gala_variadic, align 8
  store { ptr, i64 } %1, ptr %slot695, align 8
  call void @gala_546687._.._onin_gala_core_core_windows.format_to_fd(i32 %fd, ptr noundef %slot693, ptr noundef %slot695)
  ret void
}

define void @gala_546687._.._onin_gala_core_core_windows.bprintln(ptr %b, ptr noundef %data.gala_variadic) {
entry:
  %slot697 = alloca { ptr, i64 }, align 8
  %0 = load { ptr, i64 }, ptr %data.gala_variadic, align 8
  store { ptr, i64 } %0, ptr %slot697, align 8
  call void @gala_546687._.._onin_gala_core_core_windows.print_into(ptr %b, ptr noundef %slot697, i1 zeroext true)
  ret void
}

define void @gala_546687._.._onin_gala_core_core_windows.bprintfmt(ptr %b, ptr noundef %fmt_str, ptr noundef %args.gala_variadic) {
entry:
  %slot699 = alloca { ptr, i64 }, align 8
  %slot701 = alloca { ptr, i64 }, align 8
  %0 = load { ptr, i64 }, ptr %fmt_str, align 8
  store { ptr, i64 } %0, ptr %slot699, align 8
  %1 = load { ptr, i64 }, ptr %args.gala_variadic, align 8
  store { ptr, i64 } %1, ptr %slot701, align 8
  call void @gala_546687._.._onin_gala_core_core_windows.format_into(ptr %b, ptr noundef %slot699, ptr noundef %slot701)
  ret void
}

declare void @Sleep(i32)

define void @gala_546687._.._onin_gala_core_core_windows.sleep_ms(i64 %ms) {
entry:
  %0 = icmp sle i64 %ms, 0
  br i1 %0, label %base_block_label702, label %end_label702

base_block_label702:                              ; preds = %entry
  ret void

end_label702:                                     ; preds = %entry
  %1 = trunc i64 %ms to i32
  call void @Sleep(i32 %1)
  ret void
}

define ptr @gala_546687._.._onin_gala_core_core_windows.any_as.any.string.v0(ptr noundef %v) {
entry:
  %0 = getelementptr inbounds { ptr, i64 }, ptr %v, i32 0, i32 1
  %1 = load i64, ptr %0, align 8
  %2 = icmp eq i64 %1, 17
  br i1 %2, label %base_block_label705, label %end_label705

base_block_label705:                              ; preds = %entry
  %3 = getelementptr inbounds { ptr, i64 }, ptr %v, i32 0, i32 0
  %4 = load ptr, ptr %3, align 8
  %5 = bitcast ptr %4 to ptr
  ret ptr %5

end_label705:                                     ; preds = %entry
  %6 = inttoptr i64 0 to ptr
  ret ptr %6
}

define ptr @gala_546687._.._onin_gala_core_core_windows.raw_data.a_byte.v0(ptr noundef %v) {
entry:
  %0 = load { ptr, i64 }, ptr %v, align 8
  %1 = extractvalue { ptr, i64 } %0, 1
  %2 = icmp eq i64 %1, 0
  br i1 %2, label %base_block_label713, label %end_label713

base_block_label713:                              ; preds = %entry
  %3 = inttoptr i64 0 to ptr
  ret ptr %3

end_label713:                                     ; preds = %entry
  %4 = load { ptr, i64 }, ptr %v, align 8
  %5 = extractvalue { ptr, i64 } %4, 0
  %6 = getelementptr inbounds i8, ptr %5, i64 0
  ret ptr %6
}

attributes #0 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
