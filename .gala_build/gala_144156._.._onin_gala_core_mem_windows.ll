; file "..\onin_gala\core\mem_windows.gala"
; target info
target datalayout = "e-m:w-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-windows-msvc"
%gala_546687._.._onin_gala_core_core_windows.Builder = type {[4096 x i8],i64}
%gala_144156._.._onin_gala_core_mem_windows.RawSlice = type {ptr,i64}
%gala_144156._.._onin_gala_core_mem_windows.Allocator = type {ptr,ptr}
%gala_144156._.._onin_gala_core_mem_windows.Arena = type {ptr,i64,i64,i64,i1}
%gala_144156._.._onin_gala_core_mem_windows.Pool = type {ptr,i64,i64,ptr,i64}
%gala_144156._.._onin_gala_core_mem_windows.Tracking = type {%gala_144156._.._onin_gala_core_mem_windows.Allocator,i64,i64,i64,i64,i64,i64}
%gala_162268._.._onin_gala_core_cfunctions_windows.TypeInfo = type {{ ptr, i64 },i64,i64,i64,i64,{ ptr, i64 }}
declare void @llvm.memcpy.p0.p0.i64(ptr, ptr, i64, i1)
declare void @llvm.memmove.p0.p0.i64(ptr, ptr, i64, i1)
declare void @llvm.memset.p0.i64(ptr, i8, i64, i1)
; decs from mod ./core_windows.gala 1
; decs from mod ./cfunctions_windows.gala 0
declare i32 @_write (i32, ptr, i32)
declare i32 @_read (i32, ptr, i32)
declare i32 @_close (i32)
declare i32 @_open (ptr, i32, ...)
declare i32 @printf (ptr, ...)
declare i32 @fprintf (ptr, ptr, ...)
declare i32 @snprintf (ptr, i64, ptr, ...)
declare ptr @fopen (ptr, ptr)
declare i32 @fclose (ptr)
declare i32 @fputs (ptr, ptr)
declare i64 @fwrite (ptr, i64, i64, ptr)
declare i64 @fread (ptr, i64, i64, ptr)
declare void @fflush (ptr)
declare i32 @fseek (ptr, i64, i32)
declare i64 @ftell (ptr)
declare ptr @malloc (i64)
declare ptr @calloc (i64, i64)
declare ptr @realloc (ptr, i64)
declare void @free (ptr)
declare ptr @memcpy (ptr, ptr, i64)
declare ptr @memmove (ptr, ptr, i64)
declare ptr @memset (ptr, i32, i64)
declare i32 @memcmp (ptr, ptr, i64)
declare i64 @strlen (ptr)
declare i32 @strcmp (ptr, ptr)
declare i32 @strncmp (ptr, ptr, i64)
declare ptr @strcpy (ptr, ptr)
declare ptr @strncpy (ptr, ptr, i64)
declare ptr @strcat (ptr, ptr)
declare ptr @strncat (ptr, ptr, i64)
declare ptr @strchr (ptr, i32)
declare ptr @strrchr (ptr, i32)
declare i32 @atoi (ptr)
declare i64 @atol (ptr)
declare i64 @atoll (ptr)
declare i64 @strtol (ptr, ptr, i32)
declare i64 @strtoll (ptr, ptr, i32)
declare i64 @strtoul (ptr, ptr, i32)
declare i64 @strtoull (ptr, ptr, i32)
declare float @strtof (ptr, ptr)
declare double @strtod (ptr, ptr)
declare i32 @rand ()
declare void @srand (i32)
declare i64 @time (ptr)
declare void @exit (i32)
declare void @abort ()
declare i32 @atexit (ptr)
declare ptr @getenv (ptr)
declare double @sqrt (double)
declare double @pow (double, double)
declare double @sin (double)
declare double @cos (double)
declare double @tan (double)
declare double @asin (double)
declare double @acos (double)
declare double @atan (double)
declare double @atan2 (double, double)
declare double @sinh (double)
declare double @cosh (double)
declare double @tanh (double)
declare double @log (double)
declare double @log10 (double)
declare double @exp (double)
declare double @floor (double)
declare double @ceil (double)
declare double @round (double)
declare double @fabs (double)
declare float @sqrtf (float)
declare float @powf (float, float)
declare float @sinf (float)
declare float @cosf (float)
declare float @tanf (float)
declare float @asinf (float)
declare float @acosf (float)
declare float @atanf (float)
declare float @atan2f (float, float)
declare float @sinhf (float)
declare float @coshf (float)
declare float @tanhf (float)
declare float @logf (float)
declare float @log10f (float)
declare float @expf (float)
declare float @floorf (float)
declare float @ceilf (float)
declare float @roundf (float)
declare float @fabsf (float)
declare void @gala_162268._.._onin_gala_core_cfunctions_windows.__init_globals()
; end
declare ptr @gala_546687._.._onin_gala_core_core_windows.ptr_add (ptr, i64)
declare ptr @gala_546687._.._onin_gala_core_core_windows.str_data (ptr noundef)
declare zeroext i1 @gala_546687._.._onin_gala_core_core_windows.str_eq (ptr noundef, ptr noundef)
declare void @gala_546687._.._onin_gala_core_core_windows.builder_make (ptr sret(%gala_546687._.._onin_gala_core_core_windows.Builder) align 8)
declare void @gala_546687._.._onin_gala_core_core_windows.builder_push_byte (ptr, i8)
declare void @gala_546687._.._onin_gala_core_core_windows.builder_push_string (ptr, ptr noundef)
declare void @gala_546687._.._onin_gala_core_core_windows.builder_push_digit (ptr, i64)
declare void @gala_546687._.._onin_gala_core_core_windows.builder_bytes (ptr sret({ ptr, i64 }) align 8, ptr)
declare i64 @gala_546687._.._onin_gala_core_core_windows.write_fd (i32, ptr noundef)
declare i64 @gala_546687._.._onin_gala_core_core_windows.write_stdout (ptr noundef)
declare i64 @gala_546687._.._onin_gala_core_core_windows.builder_flush (ptr, i32)
declare void @gala_546687._.._onin_gala_core_core_windows.fmt_u64_padded (ptr, i64, i64, i64)
declare void @gala_546687._.._onin_gala_core_core_windows.fmt_u64 (ptr, i64)
declare void @gala_546687._.._onin_gala_core_core_windows.fmt_i64 (ptr, i64)
declare void @gala_546687._.._onin_gala_core_core_windows.fmt_hex (ptr, i64)
declare void @gala_546687._.._onin_gala_core_core_windows.fmt_f64 (ptr, double)
declare void @gala_546687._.._onin_gala_core_core_windows.fmt_int_at (ptr, ptr, i64)
declare void @gala_546687._.._onin_gala_core_core_windows.fmt_uint_at (ptr, ptr, i64)
declare void @gala_546687._.._onin_gala_core_core_windows.fmt_float_at (ptr, ptr, i64)
declare void @gala_546687._.._onin_gala_core_core_windows.fmt_struct_at (ptr, ptr, ptr)
declare void @gala_546687._.._onin_gala_core_core_windows.fmt_list_at (ptr, ptr, ptr)
declare void @gala_546687._.._onin_gala_core_core_windows.fmt_value (ptr, ptr, i64, i1 zeroext)
declare void @gala_546687._.._onin_gala_core_core_windows.fmt_any (ptr, ptr noundef)
declare zeroext i1 @gala_546687._.._onin_gala_core_core_windows.next_is (ptr noundef, i64, i8)
declare zeroext i1 @gala_546687._.._onin_gala_core_core_windows.has_placeholder (ptr noundef)
declare void @gala_546687._.._onin_gala_core_core_windows.format_into (ptr, ptr noundef, ptr noundef)
declare ptr @gala_546687._.._onin_gala_core_core_windows.leading_format (ptr noundef)
declare void @gala_546687._.._onin_gala_core_core_windows.print_into (ptr, ptr noundef, i1 zeroext)
declare zeroext i1 @gala_546687._.._onin_gala_core_core_windows.__default_0 ()
declare void @gala_546687._.._onin_gala_core_core_windows.print_to_fd (i32, ptr noundef, i1 zeroext)
declare void @gala_546687._.._onin_gala_core_core_windows.format_to_fd (i32, ptr noundef, ptr noundef)
declare void @gala_546687._.._onin_gala_core_core_windows.print (ptr noundef)
declare void @gala_546687._.._onin_gala_core_core_windows.println (ptr noundef)
declare void @gala_546687._.._onin_gala_core_core_windows.printfmt (ptr noundef, ptr noundef)
declare void @gala_546687._.._onin_gala_core_core_windows.eprintln (ptr noundef)
declare void @gala_546687._.._onin_gala_core_core_windows.eprintfmt (ptr noundef, ptr noundef)
declare void @gala_546687._.._onin_gala_core_core_windows.fprintln (i32, ptr noundef)
declare void @gala_546687._.._onin_gala_core_core_windows.fprintfmt (i32, ptr noundef, ptr noundef)
declare void @gala_546687._.._onin_gala_core_core_windows.bprintln (ptr, ptr noundef)
declare void @gala_546687._.._onin_gala_core_core_windows.bprintfmt (ptr, ptr noundef, ptr noundef)
declare void @Sleep (i32)
declare void @gala_546687._.._onin_gala_core_core_windows.sleep_ms (i64)
declare ptr @gala_546687._.._onin_gala_core_core_windows.any_as.any.string.v0 (ptr noundef)
declare ptr @gala_546687._.._onin_gala_core_core_windows.raw_data.a_byte.v0 (ptr noundef)
; end
; decs from mod ./cfunctions_windows.gala 0
; exst already
@gala_162268._.._onin_gala_core_cfunctions_windows.SEEK_SET = external global i32
@gala_162268._.._onin_gala_core_cfunctions_windows.SEEK_CUR = external global i32
@gala_162268._.._onin_gala_core_cfunctions_windows.SEEK_END = external global i32
@gala_144156._.._onin_gala_core_mem_windows.KB = global i64 zeroinitializer
@gala_144156._.._onin_gala_core_mem_windows.MB = global i64 zeroinitializer
@gala_144156._.._onin_gala_core_mem_windows.GB = global i64 zeroinitializer
@gala_144156._.._onin_gala_core_mem_windows.MODE_ALLOC = global i32 zeroinitializer
@gala_144156._.._onin_gala_core_mem_windows.MODE_FREE = global i32 zeroinitializer
@gala_144156._.._onin_gala_core_mem_windows.MODE_FREE_ALL = global i32 zeroinitializer
@gala_144156._.._onin_gala_core_mem_windows.MODE_RESIZE = global i32 zeroinitializer
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

@string11 = private unnamed_addr constant [1 x i8] c"\00", align 1

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

define i64 @gala_144156._.._onin_gala_core_mem_windows.addr (ptr %p) {
entry:
	%47 = ptrtoint ptr %p to i64
	ret i64 %47

}
define ptr @gala_144156._.._onin_gala_core_mem_windows.from_addr (i64 %a) {
entry:
	%48 = inttoptr i64 %a to ptr
	ret ptr %48

}
define zeroext i1 @gala_144156._.._onin_gala_core_mem_windows.is_power_of_two (i64 %x) {
entry:
	%50 = icmp eq i64 %x, 0
	br i1 %50, label %base_block_label49, label %end_label49
base_block_label49:
	ret i1 0

end_label49:

	%51 = sub i64 %x, 1
	%52 = and i64 %x, %51
	%53 = icmp eq i64 %52, 0
	ret i1 %53

}
define i64 @gala_144156._.._onin_gala_core_mem_windows.align_forward (i64 %a, i64 %align) {
entry:
	%rem.539 = alloca i64
	%55 = icmp ule i64 %align, 1
	br i1 %55, label %base_block_label54, label %end_label54
base_block_label54:
	ret i64 %a

end_label54:

	%56 = urem i64 %a, %align
	store i64 %56, ptr %rem.539

	%58 = load i64, ptr %rem.539
	%59 = icmp eq i64 %58, 0
	br i1 %59, label %base_block_label57, label %end_label57
base_block_label57:
	ret i64 %a

end_label57:

	%60 = add i64 %a, %align
	%61 = load i64, ptr %rem.539
	%62 = sub i64 %60, %61
	ret i64 %62

}
define i64 @gala_144156._.._onin_gala_core_mem_windows.align_for_size (i64 %n) {
entry:
	%64 = icmp uge i64 %n, 16
	br i1 %64, label %base_block_label63, label %end_label63
base_block_label63:
	ret i64 16

end_label63:

	%66 = icmp uge i64 %n, 8
	br i1 %66, label %base_block_label65, label %end_label65
base_block_label65:
	ret i64 8

end_label65:

	%68 = icmp uge i64 %n, 4
	br i1 %68, label %base_block_label67, label %end_label67
base_block_label67:
	ret i64 4

end_label67:

	%70 = icmp uge i64 %n, 2
	br i1 %70, label %base_block_label69, label %end_label69
base_block_label69:
	ret i64 2

end_label69:

	ret i64 1

}
define i64 @gala_144156._.._onin_gala_core_mem_windows.min_u64 (i64 %a, i64 %b) {
entry:
	%72 = icmp ult i64 %a, %b
	br i1 %72, label %base_block_label71, label %end_label71
base_block_label71:
	ret i64 %a

end_label71:

	ret i64 %b

}
define i64 @gala_144156._.._onin_gala_core_mem_windows.max_u64 (i64 %a, i64 %b) {
entry:
	%74 = icmp ugt i64 %a, %b
	br i1 %74, label %base_block_label73, label %end_label73
base_block_label73:
	ret i64 %a

end_label73:

	ret i64 %b

}
define void @gala_144156._.._onin_gala_core_mem_windows.mem_copy (ptr %dst, ptr %src, i64 %n) {
entry:
	%75 = call ptr @memmove(ptr %dst, ptr %src, i64 %n)

	ret void
}
define void @gala_144156._.._onin_gala_core_mem_windows.mem_zero (ptr %p, i64 %n) {
entry:
	%76 = call ptr @memset(ptr %p, i32 0, i64 %n)

	ret void
}
define void @gala_144156._.._onin_gala_core_mem_windows.mem_set (ptr %p, i32 %value, i64 %n) {
entry:
	%77 = call ptr @memset(ptr %p, i32 %value, i64 %n)

	ret void
}
define zeroext i1 @gala_144156._.._onin_gala_core_mem_windows.mem_equal (ptr %a, ptr %b, i64 %n) {
entry:
	%78 = call i32 @memcmp(ptr %a, ptr %b, i64 %n)
	%79 = icmp eq i32 %78, 0
	ret i1 %79

}
define void @gala_144156._.._onin_gala_core_mem_windows.bytes_from (ptr sret({ ptr, i64 }) align 8 %.sret, ptr %p, i64 %n) {
entry:
	%r.560 = alloca %gala_144156._.._onin_gala_core_mem_windows.RawSlice
	%slot83 = alloca %gala_144156._.._onin_gala_core_mem_windows.RawSlice
	%80 = insertvalue %gala_144156._.._onin_gala_core_mem_windows.RawSlice undef, ptr %p, 0
	%81 = insertvalue %gala_144156._.._onin_gala_core_mem_windows.RawSlice %80, i64 %n, 1
	store %gala_144156._.._onin_gala_core_mem_windows.RawSlice %81, ptr %r.560

	%82 = load %gala_144156._.._onin_gala_core_mem_windows.RawSlice, ptr %r.560
	store %gala_144156._.._onin_gala_core_mem_windows.RawSlice %82, ptr %slot83
	%84 = load { ptr, i64 }, ptr %slot83
	store { ptr, i64 } %84, ptr %.sret
	ret void

}
define void @gala_144156._.._onin_gala_core_mem_windows.set_allocator (ptr noundef %a) {
entry:
	%85 = load %gala_144156._.._onin_gala_core_mem_windows.Allocator, ptr %a
	store %gala_144156._.._onin_gala_core_mem_windows.Allocator %85, ptr @gala_144156._.._onin_gala_core_mem_windows.base_allocator

	ret void
}
define i64 @gala_144156._.._onin_gala_core_mem_windows.__default_1 () {
entry:
	ret i64 16

}
define void @gala_144156._.._onin_gala_core_mem_windows.__default_2 (ptr sret(%gala_144156._.._onin_gala_core_mem_windows.Allocator) align 8 %.sret) {
entry:
	%86 = load %gala_144156._.._onin_gala_core_mem_windows.Allocator, ptr @gala_144156._.._onin_gala_core_mem_windows.base_allocator
	store %gala_144156._.._onin_gala_core_mem_windows.Allocator %86, ptr %.sret
	ret void

}
define ptr @gala_144156._.._onin_gala_core_mem_windows.alloc (i64 %size, i64 %align, ptr noundef %a) {
entry:
	%cb.565 = alloca ptr
	%87 = getelementptr inbounds %gala_144156._.._onin_gala_core_mem_windows.Allocator, ptr %a, i32 0, i32 0
	%88 = load ptr, ptr %87
	store ptr %88, ptr %cb.565

	%89 = load ptr, ptr %cb.565
	%90 = getelementptr inbounds %gala_144156._.._onin_gala_core_mem_windows.Allocator, ptr %a, i32 0, i32 1
	%91 = load ptr, ptr %90
	%92 = load i32, ptr @gala_144156._.._onin_gala_core_mem_windows.MODE_ALLOC
	%93 = inttoptr i64 0 to ptr
	%94 = call ptr %89(ptr %91, i32 %92, i64 %size, i64 %align, ptr %93, i64 0)
	ret ptr %94

}
define i64 @gala_144156._.._onin_gala_core_mem_windows.__default_3 () {
entry:
	ret i64 0

}
define void @gala_144156._.._onin_gala_core_mem_windows.__default_4 (ptr sret(%gala_144156._.._onin_gala_core_mem_windows.Allocator) align 8 %.sret) {
entry:
	%95 = load %gala_144156._.._onin_gala_core_mem_windows.Allocator, ptr @gala_144156._.._onin_gala_core_mem_windows.base_allocator
	store %gala_144156._.._onin_gala_core_mem_windows.Allocator %95, ptr %.sret
	ret void

}
define void @gala_144156._.._onin_gala_core_mem_windows.dealloc (ptr %p, i64 %size, ptr noundef %a) {
entry:
	%cb.569 = alloca ptr
	%97 = ptrtoint ptr %p to i64
	%98 = inttoptr i64 0 to ptr
	%99 = ptrtoint ptr %98 to i64
	%100 = icmp eq i64 %97, %99
	br i1 %100, label %base_block_label96, label %end_label96
base_block_label96:
	ret void

end_label96:

	%101 = getelementptr inbounds %gala_144156._.._onin_gala_core_mem_windows.Allocator, ptr %a, i32 0, i32 0
	%102 = load ptr, ptr %101
	store ptr %102, ptr %cb.569

	%103 = load ptr, ptr %cb.569
	%104 = getelementptr inbounds %gala_144156._.._onin_gala_core_mem_windows.Allocator, ptr %a, i32 0, i32 1
	%105 = load ptr, ptr %104
	%106 = load i32, ptr @gala_144156._.._onin_gala_core_mem_windows.MODE_FREE
	%107 = call ptr %103(ptr %105, i32 %106, i64 0, i64 0, ptr %p, i64 %size)

	ret void
}
define void @gala_144156._.._onin_gala_core_mem_windows.__default_5 (ptr sret(%gala_144156._.._onin_gala_core_mem_windows.Allocator) align 8 %.sret) {
entry:
	%108 = load %gala_144156._.._onin_gala_core_mem_windows.Allocator, ptr @gala_144156._.._onin_gala_core_mem_windows.base_allocator
	store %gala_144156._.._onin_gala_core_mem_windows.Allocator %108, ptr %.sret
	ret void

}
define void @gala_144156._.._onin_gala_core_mem_windows.dealloc_all (ptr noundef %a) {
entry:
	%cb.571 = alloca ptr
	%109 = getelementptr inbounds %gala_144156._.._onin_gala_core_mem_windows.Allocator, ptr %a, i32 0, i32 0
	%110 = load ptr, ptr %109
	store ptr %110, ptr %cb.571

	%111 = load ptr, ptr %cb.571
	%112 = getelementptr inbounds %gala_144156._.._onin_gala_core_mem_windows.Allocator, ptr %a, i32 0, i32 1
	%113 = load ptr, ptr %112
	%114 = load i32, ptr @gala_144156._.._onin_gala_core_mem_windows.MODE_FREE_ALL
	%115 = inttoptr i64 0 to ptr
	%116 = call ptr %111(ptr %113, i32 %114, i64 0, i64 0, ptr %115, i64 0)

	ret void
}
define i64 @gala_144156._.._onin_gala_core_mem_windows.__default_6 () {
entry:
	ret i64 16

}
define void @gala_144156._.._onin_gala_core_mem_windows.__default_7 (ptr sret(%gala_144156._.._onin_gala_core_mem_windows.Allocator) align 8 %.sret) {
entry:
	%117 = load %gala_144156._.._onin_gala_core_mem_windows.Allocator, ptr @gala_144156._.._onin_gala_core_mem_windows.base_allocator
	store %gala_144156._.._onin_gala_core_mem_windows.Allocator %117, ptr %.sret
	ret void

}
define ptr @gala_144156._.._onin_gala_core_mem_windows.resize (ptr %p, i64 %old_size, i64 %new_size, i64 %align, ptr noundef %a) {
entry:
	%cb.577 = alloca ptr
	%118 = getelementptr inbounds %gala_144156._.._onin_gala_core_mem_windows.Allocator, ptr %a, i32 0, i32 0
	%119 = load ptr, ptr %118
	store ptr %119, ptr %cb.577

	%120 = load ptr, ptr %cb.577
	%121 = getelementptr inbounds %gala_144156._.._onin_gala_core_mem_windows.Allocator, ptr %a, i32 0, i32 1
	%122 = load ptr, ptr %121
	%123 = load i32, ptr @gala_144156._.._onin_gala_core_mem_windows.MODE_RESIZE
	%124 = call ptr %120(ptr %122, i32 %123, i64 %new_size, i64 %align, ptr %p, i64 %old_size)
	ret ptr %124

}
define void @gala_144156._.._onin_gala_core_mem_windows.__default_8 (ptr sret(%gala_144156._.._onin_gala_core_mem_windows.Allocator) align 8 %.sret) {
entry:
	%125 = load %gala_144156._.._onin_gala_core_mem_windows.Allocator, ptr @gala_144156._.._onin_gala_core_mem_windows.base_allocator
	store %gala_144156._.._onin_gala_core_mem_windows.Allocator %125, ptr %.sret
	ret void

}
define void @gala_144156._.._onin_gala_core_mem_windows.alloc_bytes (ptr sret({ ptr, i64 }) align 8 %.sret, i64 %n, ptr noundef %a) {
entry:
	%slot128 = alloca { ptr, i64 }
	%slot133 = alloca %gala_144156._.._onin_gala_core_mem_windows.Allocator
	%p.580 = alloca ptr
	%slot141 = alloca { ptr, i64 }
	%slot144 = alloca { ptr, i64 }
	%127 = icmp sle i64 %n, 0
	br i1 %127, label %base_block_label126, label %end_label126
base_block_label126:
	%129 = inttoptr i64 0 to ptr
	call void @gala_144156._.._onin_gala_core_mem_windows.bytes_from(ptr sret({ ptr, i64 }) align 8 %slot128, ptr %129, i64 0)
	%130 = load { ptr, i64 }, ptr %slot128
	store { ptr, i64 } %130, ptr %.sret
	ret void

end_label126:

	%131 = call i64 @gala_144156._.._onin_gala_core_mem_windows.__default_1()
	%132 = load %gala_144156._.._onin_gala_core_mem_windows.Allocator, ptr %a
	store %gala_144156._.._onin_gala_core_mem_windows.Allocator %132, ptr %slot133, align 8
	%134 = call ptr @gala_144156._.._onin_gala_core_mem_windows.alloc(i64 %n, i64 %131, ptr noundef %slot133)
	store ptr %134, ptr %p.580

	%136 = load ptr, ptr %p.580
	%137 = ptrtoint ptr %136 to i64
	%138 = inttoptr i64 0 to ptr
	%139 = ptrtoint ptr %138 to i64
	%140 = icmp eq i64 %137, %139
	br i1 %140, label %base_block_label135, label %end_label135
base_block_label135:
	%142 = inttoptr i64 0 to ptr
	call void @gala_144156._.._onin_gala_core_mem_windows.bytes_from(ptr sret({ ptr, i64 }) align 8 %slot141, ptr %142, i64 0)
	%143 = load { ptr, i64 }, ptr %slot141
	store { ptr, i64 } %143, ptr %.sret
	ret void

end_label135:

	%145 = load ptr, ptr %p.580
	call void @gala_144156._.._onin_gala_core_mem_windows.bytes_from(ptr sret({ ptr, i64 }) align 8 %slot144, ptr %145, i64 %n)
	%146 = load { ptr, i64 }, ptr %slot144
	store { ptr, i64 } %146, ptr %.sret
	ret void

}
define void @gala_144156._.._onin_gala_core_mem_windows.__default_9 (ptr sret(%gala_144156._.._onin_gala_core_mem_windows.Allocator) align 8 %.sret) {
entry:
	%147 = load %gala_144156._.._onin_gala_core_mem_windows.Allocator, ptr @gala_144156._.._onin_gala_core_mem_windows.base_allocator
	store %gala_144156._.._onin_gala_core_mem_windows.Allocator %147, ptr %.sret
	ret void

}
define void @gala_144156._.._onin_gala_core_mem_windows.free_bytes (ptr noundef %b, ptr noundef %a) {
entry:
	%n.583 = alloca i64
	%slot154 = alloca { ptr, i64 }
	%slot159 = alloca %gala_144156._.._onin_gala_core_mem_windows.Allocator
	%148 = load { ptr, i64 }, ptr %b
	%149 = extractvalue { ptr, i64 } %148, 1
	store i64 %149, ptr %n.583

	%151 = load i64, ptr %n.583
	%152 = icmp eq i64 %151, 0
	br i1 %152, label %base_block_label150, label %end_label150
base_block_label150:
	ret void

end_label150:

	%153 = load { ptr, i64 }, ptr %b
	store { ptr, i64 } %153, ptr %slot154, align 8
	%155 = call ptr @gala_546687._.._onin_gala_core_core_windows.raw_data.a_byte.v0(ptr noundef %slot154)
	%156 = bitcast ptr %155 to ptr
	%157 = load i64, ptr %n.583
	%158 = load %gala_144156._.._onin_gala_core_mem_windows.Allocator, ptr %a
	store %gala_144156._.._onin_gala_core_mem_windows.Allocator %158, ptr %slot159, align 8
	call void @gala_144156._.._onin_gala_core_mem_windows.dealloc(ptr %156, i64 %157, ptr noundef %slot159)

	ret void
}
define void @gala_144156._.._onin_gala_core_mem_windows.__default_10 (ptr sret(%gala_144156._.._onin_gala_core_mem_windows.Allocator) align 8 %.sret) {
entry:
	%160 = load %gala_144156._.._onin_gala_core_mem_windows.Allocator, ptr @gala_144156._.._onin_gala_core_mem_windows.base_allocator
	store %gala_144156._.._onin_gala_core_mem_windows.Allocator %160, ptr %.sret
	ret void

}
define void @gala_144156._.._onin_gala_core_mem_windows.clone_string (ptr sret({ ptr, i64 }) align 8 %.sret, ptr noundef %s, ptr noundef %a) {
entry:
	%n.586 = alloca i64
	%slot169 = alloca { ptr, i64 }
	%slot172 = alloca %gala_144156._.._onin_gala_core_mem_windows.Allocator
	%buf.587 = alloca { ptr, i64 }
	%slot182 = alloca { ptr, i64 }
	%slot186 = alloca { ptr, i64 }
	%slot191 = alloca { ptr, i64 }
	%161 = load { ptr, i64 }, ptr %s
	%162 = extractvalue { ptr, i64 } %161, 1
	store i64 %162, ptr %n.586

	%164 = load i64, ptr %n.586
	%165 = icmp eq i64 %164, 0
	br i1 %165, label %base_block_label163, label %end_label163
base_block_label163:
	%166 = getelementptr inbounds [1 x i8], ptr @string11, i64 0, i64 0
	%167 = insertvalue { ptr, i64 } undef, ptr %166, 0
	%168 = insertvalue { ptr, i64 } %167, i64 0, 1
	store { ptr, i64 } %168, ptr %.sret
	ret void

end_label163:

	%170 = load i64, ptr %n.586
	%171 = load %gala_144156._.._onin_gala_core_mem_windows.Allocator, ptr %a
	store %gala_144156._.._onin_gala_core_mem_windows.Allocator %171, ptr %slot172, align 8
	call void @gala_144156._.._onin_gala_core_mem_windows.alloc_bytes(ptr sret({ ptr, i64 }) align 8 %slot169, i64 %170, ptr noundef %slot172)
	%173 = load { ptr, i64 }, ptr %slot169
	store { ptr, i64 } %173, ptr %buf.587

	%175 = load { ptr, i64 }, ptr %buf.587
	%176 = extractvalue { ptr, i64 } %175, 1
	%177 = icmp eq i64 %176, 0
	br i1 %177, label %base_block_label174, label %end_label174
base_block_label174:
	%178 = getelementptr inbounds [1 x i8], ptr @string11, i64 0, i64 0
	%179 = insertvalue { ptr, i64 } undef, ptr %178, 0
	%180 = insertvalue { ptr, i64 } %179, i64 0, 1
	store { ptr, i64 } %180, ptr %.sret
	ret void

end_label174:

	%181 = load { ptr, i64 }, ptr %buf.587
	store { ptr, i64 } %181, ptr %slot182, align 8
	%183 = call ptr @gala_546687._.._onin_gala_core_core_windows.raw_data.a_byte.v0(ptr noundef %slot182)
	%184 = bitcast ptr %183 to ptr
	%185 = load { ptr, i64 }, ptr %s
	store { ptr, i64 } %185, ptr %slot186, align 8
	%187 = call ptr @gala_546687._.._onin_gala_core_core_windows.str_data(ptr noundef %slot186)
	%188 = bitcast ptr %187 to ptr
	%189 = load i64, ptr %n.586
	call void @gala_144156._.._onin_gala_core_mem_windows.mem_copy(ptr %184, ptr %188, i64 %189)

	%190 = load { ptr, i64 }, ptr %buf.587
	store { ptr, i64 } %190, ptr %slot191
	%192 = load { ptr, i64 }, ptr %slot191
	store { ptr, i64 } %192, ptr %.sret
	ret void

}
define void @gala_144156._.._onin_gala_core_mem_windows.__default_11 (ptr sret(%gala_144156._.._onin_gala_core_mem_windows.Allocator) align 8 %.sret) {
entry:
	%193 = load %gala_144156._.._onin_gala_core_mem_windows.Allocator, ptr @gala_144156._.._onin_gala_core_mem_windows.base_allocator
	store %gala_144156._.._onin_gala_core_mem_windows.Allocator %193, ptr %.sret
	ret void

}
define ptr @gala_144156._.._onin_gala_core_mem_windows.clone_cstring (ptr noundef %s, ptr noundef %a) {
entry:
	%n.590 = alloca i64
	%slot200 = alloca %gala_144156._.._onin_gala_core_mem_windows.Allocator
	%p.591 = alloca ptr
	%slot214 = alloca { ptr, i64 }
	%194 = load { ptr, i64 }, ptr %s
	%195 = extractvalue { ptr, i64 } %194, 1
	store i64 %195, ptr %n.590

	%196 = load i64, ptr %n.590
	%197 = add i64 %196, 1
	%198 = call i64 @gala_144156._.._onin_gala_core_mem_windows.__default_1()
	%199 = load %gala_144156._.._onin_gala_core_mem_windows.Allocator, ptr %a
	store %gala_144156._.._onin_gala_core_mem_windows.Allocator %199, ptr %slot200, align 8
	%201 = call ptr @gala_144156._.._onin_gala_core_mem_windows.alloc(i64 %197, i64 %198, ptr noundef %slot200)
	store ptr %201, ptr %p.591

	%203 = load ptr, ptr %p.591
	%204 = ptrtoint ptr %203 to i64
	%205 = inttoptr i64 0 to ptr
	%206 = ptrtoint ptr %205 to i64
	%207 = icmp eq i64 %204, %206
	br i1 %207, label %base_block_label202, label %end_label202
base_block_label202:
	%208 = inttoptr i64 0 to ptr
	ret ptr %208

end_label202:

	%210 = load i64, ptr %n.590
	%211 = icmp sgt i64 %210, 0
	br i1 %211, label %base_block_label209, label %end_label209
base_block_label209:
	%212 = load ptr, ptr %p.591
	%213 = load { ptr, i64 }, ptr %s
	store { ptr, i64 } %213, ptr %slot214, align 8
	%215 = call ptr @gala_546687._.._onin_gala_core_core_windows.str_data(ptr noundef %slot214)
	%216 = bitcast ptr %215 to ptr
	%217 = load i64, ptr %n.590
	call void @gala_144156._.._onin_gala_core_mem_windows.mem_copy(ptr %212, ptr %216, i64 %217)

	br label %end_label209
end_label209:

	%218 = load ptr, ptr %p.591
	ret ptr %218

}
define void @gala_144156._.._onin_gala_core_mem_windows.__default_12 (ptr sret(%gala_144156._.._onin_gala_core_mem_windows.Allocator) align 8 %.sret) {
entry:
	%219 = load %gala_144156._.._onin_gala_core_mem_windows.Allocator, ptr @gala_144156._.._onin_gala_core_mem_windows.base_allocator
	store %gala_144156._.._onin_gala_core_mem_windows.Allocator %219, ptr %.sret
	ret void

}
define void @gala_144156._.._onin_gala_core_mem_windows.free_string (ptr noundef %s, ptr noundef %a) {
entry:
	%n.594 = alloca i64
	%slot226 = alloca { ptr, i64 }
	%slot231 = alloca %gala_144156._.._onin_gala_core_mem_windows.Allocator
	%220 = load { ptr, i64 }, ptr %s
	%221 = extractvalue { ptr, i64 } %220, 1
	store i64 %221, ptr %n.594

	%223 = load i64, ptr %n.594
	%224 = icmp eq i64 %223, 0
	br i1 %224, label %base_block_label222, label %end_label222
base_block_label222:
	ret void

end_label222:

	%225 = load { ptr, i64 }, ptr %s
	store { ptr, i64 } %225, ptr %slot226, align 8
	%227 = call ptr @gala_546687._.._onin_gala_core_core_windows.str_data(ptr noundef %slot226)
	%228 = bitcast ptr %227 to ptr
	%229 = load i64, ptr %n.594
	%230 = load %gala_144156._.._onin_gala_core_mem_windows.Allocator, ptr %a
	store %gala_144156._.._onin_gala_core_mem_windows.Allocator %230, ptr %slot231, align 8
	call void @gala_144156._.._onin_gala_core_mem_windows.dealloc(ptr %228, i64 %229, ptr noundef %slot231)

	ret void
}
define void @gala_144156._.._onin_gala_core_mem_windows.__default_13 (ptr sret(%gala_144156._.._onin_gala_core_mem_windows.Allocator) align 8 %.sret) {
entry:
	%232 = load %gala_144156._.._onin_gala_core_mem_windows.Allocator, ptr @gala_144156._.._onin_gala_core_mem_windows.base_allocator
	store %gala_144156._.._onin_gala_core_mem_windows.Allocator %232, ptr %.sret
	ret void

}
define void @gala_144156._.._onin_gala_core_mem_windows.__default_14 (ptr sret(%gala_144156._.._onin_gala_core_mem_windows.Allocator) align 8 %.sret) {
entry:
	%233 = load %gala_144156._.._onin_gala_core_mem_windows.Allocator, ptr @gala_144156._.._onin_gala_core_mem_windows.base_allocator
	store %gala_144156._.._onin_gala_core_mem_windows.Allocator %233, ptr %.sret
	ret void

}
define i64 @gala_144156._.._onin_gala_core_mem_windows.__default_15 () {
entry:
	ret i64 0

}
define void @gala_144156._.._onin_gala_core_mem_windows.__default_16 (ptr sret(%gala_144156._.._onin_gala_core_mem_windows.Allocator) align 8 %.sret) {
entry:
	%234 = load %gala_144156._.._onin_gala_core_mem_windows.Allocator, ptr @gala_144156._.._onin_gala_core_mem_windows.base_allocator
	store %gala_144156._.._onin_gala_core_mem_windows.Allocator %234, ptr %.sret
	ret void

}
define void @gala_144156._.._onin_gala_core_mem_windows.__default_17 (ptr sret(%gala_144156._.._onin_gala_core_mem_windows.Allocator) align 8 %.sret) {
entry:
	%235 = load %gala_144156._.._onin_gala_core_mem_windows.Allocator, ptr @gala_144156._.._onin_gala_core_mem_windows.base_allocator
	store %gala_144156._.._onin_gala_core_mem_windows.Allocator %235, ptr %.sret
	ret void

}
define ptr @gala_144156._.._onin_gala_core_mem_windows.heap_proc (ptr %data, i32 %mode, i64 %size, i64 %align, ptr %old, i64 %old_size) {
entry:
	%slot237 = alloca i1
	%slot239 = alloca i1
	%p.608 = alloca ptr
	%slot273 = alloca i1
	%241 = load i32, ptr @gala_144156._.._onin_gala_core_mem_windows.MODE_ALLOC
	%242 = icmp eq i32 %mode, %241
	store i1 %242, ptr %slot239
	br i1 %242, label %logic.end.240, label %logic.rhs.240
logic.rhs.240:
	%243 = load i32, ptr @gala_144156._.._onin_gala_core_mem_windows.MODE_RESIZE
	%244 = icmp eq i32 %mode, %243
	store i1 %244, ptr %slot239
	br label %logic.end.240
logic.end.240:
	%245 = load i1, ptr %slot239
	store i1 %245, ptr %slot237
	br i1 %245, label %logic.rhs.238, label %logic.end.238
logic.rhs.238:
	%246 = icmp ugt i64 %align, 16
	store i1 %246, ptr %slot237
	br label %logic.end.238
logic.end.238:
	%247 = load i1, ptr %slot237
	br i1 %247, label %base_block_label236, label %end_label236
base_block_label236:
	%248 = inttoptr i64 0 to ptr
	ret ptr %248

end_label236:

	%250 = load i32, ptr @gala_144156._.._onin_gala_core_mem_windows.MODE_ALLOC
	%251 = icmp eq i32 %mode, %250
	br i1 %251, label %base_block_label249, label %end_label249
base_block_label249:
	%252 = call ptr @calloc(i64 1, i64 %size)
	ret ptr %252

end_label249:

	%254 = load i32, ptr @gala_144156._.._onin_gala_core_mem_windows.MODE_FREE
	%255 = icmp eq i32 %mode, %254
	br i1 %255, label %base_block_label253, label %end_label253
base_block_label253:
	%257 = ptrtoint ptr %old to i64
	%258 = inttoptr i64 0 to ptr
	%259 = ptrtoint ptr %258 to i64
	%260 = icmp ne i64 %257, %259
	br i1 %260, label %base_block_label256, label %end_label256
base_block_label256:
	call void @free(ptr %old)

	br label %end_label256
end_label256:

	%261 = inttoptr i64 0 to ptr
	ret ptr %261

end_label253:

	%263 = load i32, ptr @gala_144156._.._onin_gala_core_mem_windows.MODE_RESIZE
	%264 = icmp eq i32 %mode, %263
	br i1 %264, label %base_block_label262, label %end_label262
base_block_label262:
	%266 = ptrtoint ptr %old to i64
	%267 = inttoptr i64 0 to ptr
	%268 = ptrtoint ptr %267 to i64
	%269 = icmp eq i64 %266, %268
	br i1 %269, label %base_block_label265, label %end_label265
base_block_label265:
	%270 = call ptr @calloc(i64 1, i64 %size)
	ret ptr %270

end_label265:

	%271 = call ptr @realloc(ptr %old, i64 %size)
	store ptr %271, ptr %p.608

	%275 = load ptr, ptr %p.608
	%276 = ptrtoint ptr %275 to i64
	%277 = inttoptr i64 0 to ptr
	%278 = ptrtoint ptr %277 to i64
	%279 = icmp ne i64 %276, %278
	store i1 %279, ptr %slot273
	br i1 %279, label %logic.rhs.274, label %logic.end.274
logic.rhs.274:
	%280 = icmp ugt i64 %size, %old_size
	store i1 %280, ptr %slot273
	br label %logic.end.274
logic.end.274:
	%281 = load i1, ptr %slot273
	br i1 %281, label %base_block_label272, label %end_label272
base_block_label272:
	%282 = load ptr, ptr %p.608
	%283 = call ptr @gala_546687._.._onin_gala_core_core_windows.ptr_add(ptr %282, i64 %old_size)
	%284 = sub i64 %size, %old_size
	call void @gala_144156._.._onin_gala_core_mem_windows.mem_zero(ptr %283, i64 %284)

	br label %end_label272
end_label272:

	%285 = load ptr, ptr %p.608
	ret ptr %285

end_label262:

	%286 = inttoptr i64 0 to ptr
	ret ptr %286

}
define void @gala_144156._.._onin_gala_core_mem_windows.heap_allocator (ptr sret(%gala_144156._.._onin_gala_core_mem_windows.Allocator) align 8 %.sret) {
entry:
	%287 = inttoptr i64 0 to ptr
	%288 = insertvalue %gala_144156._.._onin_gala_core_mem_windows.Allocator undef, ptr @gala_144156._.._onin_gala_core_mem_windows.heap_proc, 0
	%289 = insertvalue %gala_144156._.._onin_gala_core_mem_windows.Allocator %288, ptr %287, 1
	store %gala_144156._.._onin_gala_core_mem_windows.Allocator %289, ptr %.sret
	ret void

}
define void @gala_144156._.._onin_gala_core_mem_windows.arena_empty (ptr sret(%gala_144156._.._onin_gala_core_mem_windows.Arena) align 8 %.sret) {
entry:
	%290 = inttoptr i64 0 to ptr
	%291 = insertvalue %gala_144156._.._onin_gala_core_mem_windows.Arena undef, ptr %290, 0
	%292 = insertvalue %gala_144156._.._onin_gala_core_mem_windows.Arena %291, i64 0, 1
	%293 = insertvalue %gala_144156._.._onin_gala_core_mem_windows.Arena %292, i64 0, 2
	%294 = insertvalue %gala_144156._.._onin_gala_core_mem_windows.Arena %293, i64 0, 3
	%295 = insertvalue %gala_144156._.._onin_gala_core_mem_windows.Arena %294, i1 0, 4
	store %gala_144156._.._onin_gala_core_mem_windows.Arena %295, ptr %.sret
	ret void

}
define void @gala_144156._.._onin_gala_core_mem_windows.arena_init (ptr %a, ptr %buf, i64 %size) {
entry:
	%296 = insertvalue %gala_144156._.._onin_gala_core_mem_windows.Arena undef, ptr %buf, 0
	%297 = insertvalue %gala_144156._.._onin_gala_core_mem_windows.Arena %296, i64 %size, 1
	%298 = insertvalue %gala_144156._.._onin_gala_core_mem_windows.Arena %297, i64 0, 2
	%299 = insertvalue %gala_144156._.._onin_gala_core_mem_windows.Arena %298, i64 0, 3
	%300 = insertvalue %gala_144156._.._onin_gala_core_mem_windows.Arena %299, i1 0, 4
	store %gala_144156._.._onin_gala_core_mem_windows.Arena %300, ptr %a

	ret void
}
define void @gala_144156._.._onin_gala_core_mem_windows.arena_make (ptr sret(%gala_144156._.._onin_gala_core_mem_windows.Arena) align 8 %.sret, i64 %size) {
entry:
	%buf.613 = alloca ptr
	%slot308 = alloca %gala_144156._.._onin_gala_core_mem_windows.Arena
	%301 = call ptr @malloc(i64 %size)
	store ptr %301, ptr %buf.613

	%303 = load ptr, ptr %buf.613
	%304 = ptrtoint ptr %303 to i64
	%305 = inttoptr i64 0 to ptr
	%306 = ptrtoint ptr %305 to i64
	%307 = icmp eq i64 %304, %306
	br i1 %307, label %base_block_label302, label %end_label302
base_block_label302:
	call void @gala_144156._.._onin_gala_core_mem_windows.arena_empty(ptr sret(%gala_144156._.._onin_gala_core_mem_windows.Arena) align 8 %slot308)
	%309 = load %gala_144156._.._onin_gala_core_mem_windows.Arena, ptr %slot308
	store %gala_144156._.._onin_gala_core_mem_windows.Arena %309, ptr %.sret
	ret void

end_label302:

	%310 = load ptr, ptr %buf.613
	%311 = insertvalue %gala_144156._.._onin_gala_core_mem_windows.Arena undef, ptr %310, 0
	%312 = insertvalue %gala_144156._.._onin_gala_core_mem_windows.Arena %311, i64 %size, 1
	%313 = insertvalue %gala_144156._.._onin_gala_core_mem_windows.Arena %312, i64 0, 2
	%314 = insertvalue %gala_144156._.._onin_gala_core_mem_windows.Arena %313, i64 0, 3
	%315 = insertvalue %gala_144156._.._onin_gala_core_mem_windows.Arena %314, i1 1, 4
	store %gala_144156._.._onin_gala_core_mem_windows.Arena %315, ptr %.sret
	ret void

}
define void @gala_144156._.._onin_gala_core_mem_windows.arena_destroy (ptr %a) {
entry:
	%slot321 = alloca %gala_144156._.._onin_gala_core_mem_windows.Arena
	%317 = getelementptr inbounds %gala_144156._.._onin_gala_core_mem_windows.Arena, ptr %a, i32 0, i32 4
	%318 = load i1, ptr %317
	br i1 %318, label %base_block_label316, label %end_label316
base_block_label316:
	%319 = getelementptr inbounds %gala_144156._.._onin_gala_core_mem_windows.Arena, ptr %a, i32 0, i32 0
	%320 = load ptr, ptr %319
	call void @free(ptr %320)

	br label %end_label316
end_label316:

	call void @gala_144156._.._onin_gala_core_mem_windows.arena_empty(ptr sret(%gala_144156._.._onin_gala_core_mem_windows.Arena) align 8 %slot321)
	%322 = load %gala_144156._.._onin_gala_core_mem_windows.Arena, ptr %slot321
	store %gala_144156._.._onin_gala_core_mem_windows.Arena %322, ptr %a

	ret void
}
define void @gala_144156._.._onin_gala_core_mem_windows.arena_reset (ptr %a) {
entry:
	%323 = getelementptr inbounds %gala_144156._.._onin_gala_core_mem_windows.Arena, ptr %a, i32 0, i32 2
	store i64 0, ptr %323

	%324 = getelementptr inbounds %gala_144156._.._onin_gala_core_mem_windows.Arena, ptr %a, i32 0, i32 3
	store i64 0, ptr %324

	ret void
}
define i64 @gala_144156._.._onin_gala_core_mem_windows.arena_used (ptr %a) {
entry:
	%325 = getelementptr inbounds %gala_144156._.._onin_gala_core_mem_windows.Arena, ptr %a, i32 0, i32 2
	%326 = load i64, ptr %325
	ret i64 %326

}
define i64 @gala_144156._.._onin_gala_core_mem_windows.arena_remaining (ptr %a) {
entry:
	%327 = getelementptr inbounds %gala_144156._.._onin_gala_core_mem_windows.Arena, ptr %a, i32 0, i32 1
	%328 = load i64, ptr %327
	%329 = getelementptr inbounds %gala_144156._.._onin_gala_core_mem_windows.Arena, ptr %a, i32 0, i32 2
	%330 = load i64, ptr %329
	%331 = sub i64 %328, %330
	ret i64 %331

}
define i64 @gala_144156._.._onin_gala_core_mem_windows.arena_mark (ptr %a) {
entry:
	%332 = getelementptr inbounds %gala_144156._.._onin_gala_core_mem_windows.Arena, ptr %a, i32 0, i32 2
	%333 = load i64, ptr %332
	ret i64 %333

}
define void @gala_144156._.._onin_gala_core_mem_windows.arena_restore (ptr %a, i64 %mark) {
entry:
	%334 = getelementptr inbounds %gala_144156._.._onin_gala_core_mem_windows.Arena, ptr %a, i32 0, i32 2
	store i64 %mark, ptr %334

	%335 = getelementptr inbounds %gala_144156._.._onin_gala_core_mem_windows.Arena, ptr %a, i32 0, i32 3
	store i64 %mark, ptr %335

	ret void
}
define ptr @gala_144156._.._onin_gala_core_mem_windows.arena_push (ptr %a, i64 %size, i64 %align) {
entry:
	%base.624 = alloca i64
	%limit.625 = alloca i64
	%start.626 = alloca i64
	%slot349 = alloca i1
	%p.627 = alloca ptr
	%336 = getelementptr inbounds %gala_144156._.._onin_gala_core_mem_windows.Arena, ptr %a, i32 0, i32 0
	%337 = load ptr, ptr %336
	%338 = call i64 @gala_144156._.._onin_gala_core_mem_windows.addr(ptr %337)
	store i64 %338, ptr %base.624

	%339 = load i64, ptr %base.624
	%340 = getelementptr inbounds %gala_144156._.._onin_gala_core_mem_windows.Arena, ptr %a, i32 0, i32 1
	%341 = load i64, ptr %340
	%342 = add i64 %339, %341
	store i64 %342, ptr %limit.625

	%343 = load i64, ptr %base.624
	%344 = getelementptr inbounds %gala_144156._.._onin_gala_core_mem_windows.Arena, ptr %a, i32 0, i32 2
	%345 = load i64, ptr %344
	%346 = add i64 %343, %345
	%347 = call i64 @gala_144156._.._onin_gala_core_mem_windows.align_forward(i64 %346, i64 %align)
	store i64 %347, ptr %start.626

	%351 = load i64, ptr %start.626
	%352 = load i64, ptr %limit.625
	%353 = icmp ugt i64 %351, %352
	store i1 %353, ptr %slot349
	br i1 %353, label %logic.end.350, label %logic.rhs.350
logic.rhs.350:
	%354 = load i64, ptr %limit.625
	%355 = load i64, ptr %start.626
	%356 = sub i64 %354, %355
	%357 = icmp ugt i64 %size, %356
	store i1 %357, ptr %slot349
	br label %logic.end.350
logic.end.350:
	%358 = load i1, ptr %slot349
	br i1 %358, label %base_block_label348, label %end_label348
base_block_label348:
	%359 = inttoptr i64 0 to ptr
	ret ptr %359

end_label348:

	%360 = load i64, ptr %start.626
	%361 = add i64 %360, %size
	%362 = load i64, ptr %base.624
	%363 = sub i64 %361, %362
	%364 = getelementptr inbounds %gala_144156._.._onin_gala_core_mem_windows.Arena, ptr %a, i32 0, i32 2
	store i64 %363, ptr %364

	%365 = load i64, ptr %start.626
	%366 = load i64, ptr %base.624
	%367 = sub i64 %365, %366
	%368 = getelementptr inbounds %gala_144156._.._onin_gala_core_mem_windows.Arena, ptr %a, i32 0, i32 3
	store i64 %367, ptr %368

	%369 = load i64, ptr %start.626
	%370 = call ptr @gala_144156._.._onin_gala_core_mem_windows.from_addr(i64 %369)
	store ptr %370, ptr %p.627

	%371 = load ptr, ptr %p.627
	call void @gala_144156._.._onin_gala_core_mem_windows.mem_zero(ptr %371, i64 %size)

	%372 = load ptr, ptr %p.627
	ret ptr %372

}
define ptr @gala_144156._.._onin_gala_core_mem_windows.arena_proc (ptr %data, i32 %mode, i64 %size, i64 %align, ptr %old, i64 %old_size) {
entry:
	%a.634 = alloca ptr
	%slot387 = alloca i1
	%slot421 = alloca i1
	%p.635 = alloca ptr
	store ptr %data, ptr %a.634

	%374 = load i32, ptr @gala_144156._.._onin_gala_core_mem_windows.MODE_ALLOC
	%375 = icmp eq i32 %mode, %374
	br i1 %375, label %base_block_label373, label %end_label373
base_block_label373:
	%376 = load ptr, ptr %a.634
	%377 = call ptr @gala_144156._.._onin_gala_core_mem_windows.arena_push(ptr %376, i64 %size, i64 %align)
	ret ptr %377

end_label373:

	%379 = load i32, ptr @gala_144156._.._onin_gala_core_mem_windows.MODE_FREE_ALL
	%380 = icmp eq i32 %mode, %379
	br i1 %380, label %base_block_label378, label %end_label378
base_block_label378:
	%381 = load ptr, ptr %a.634
	call void @gala_144156._.._onin_gala_core_mem_windows.arena_reset(ptr %381)

	%382 = inttoptr i64 0 to ptr
	ret ptr %382

end_label378:

	%384 = load i32, ptr @gala_144156._.._onin_gala_core_mem_windows.MODE_FREE
	%385 = icmp eq i32 %mode, %384
	br i1 %385, label %base_block_label383, label %end_label383
base_block_label383:
	%389 = ptrtoint ptr %old to i64
	%390 = inttoptr i64 0 to ptr
	%391 = ptrtoint ptr %390 to i64
	%392 = icmp ne i64 %389, %391
	store i1 %392, ptr %slot387
	br i1 %392, label %logic.rhs.388, label %logic.end.388
logic.rhs.388:
	%393 = call i64 @gala_144156._.._onin_gala_core_mem_windows.addr(ptr %old)
	%394 = load ptr, ptr %a.634
	%395 = getelementptr inbounds %gala_144156._.._onin_gala_core_mem_windows.Arena, ptr %394, i32 0, i32 0
	%396 = load ptr, ptr %395
	%397 = call i64 @gala_144156._.._onin_gala_core_mem_windows.addr(ptr %396)
	%398 = load ptr, ptr %a.634
	%399 = getelementptr inbounds %gala_144156._.._onin_gala_core_mem_windows.Arena, ptr %398, i32 0, i32 3
	%400 = load i64, ptr %399
	%401 = add i64 %397, %400
	%402 = icmp eq i64 %393, %401
	store i1 %402, ptr %slot387
	br label %logic.end.388
logic.end.388:
	%403 = load i1, ptr %slot387
	br i1 %403, label %base_block_label386, label %end_label386
base_block_label386:
	%404 = load ptr, ptr %a.634
	%405 = getelementptr inbounds %gala_144156._.._onin_gala_core_mem_windows.Arena, ptr %404, i32 0, i32 3
	%406 = load i64, ptr %405
	%407 = load ptr, ptr %a.634
	%408 = getelementptr inbounds %gala_144156._.._onin_gala_core_mem_windows.Arena, ptr %407, i32 0, i32 2
	store i64 %406, ptr %408

	br label %end_label386
end_label386:

	%409 = inttoptr i64 0 to ptr
	ret ptr %409

end_label383:

	%411 = load i32, ptr @gala_144156._.._onin_gala_core_mem_windows.MODE_RESIZE
	%412 = icmp eq i32 %mode, %411
	br i1 %412, label %base_block_label410, label %end_label410
base_block_label410:
	%414 = ptrtoint ptr %old to i64
	%415 = inttoptr i64 0 to ptr
	%416 = ptrtoint ptr %415 to i64
	%417 = icmp eq i64 %414, %416
	br i1 %417, label %base_block_label413, label %end_label413
base_block_label413:
	%418 = load ptr, ptr %a.634
	%419 = call ptr @gala_144156._.._onin_gala_core_mem_windows.arena_push(ptr %418, i64 %size, i64 %align)
	ret ptr %419

end_label413:

	%423 = call i64 @gala_144156._.._onin_gala_core_mem_windows.addr(ptr %old)
	%424 = load ptr, ptr %a.634
	%425 = getelementptr inbounds %gala_144156._.._onin_gala_core_mem_windows.Arena, ptr %424, i32 0, i32 0
	%426 = load ptr, ptr %425
	%427 = call i64 @gala_144156._.._onin_gala_core_mem_windows.addr(ptr %426)
	%428 = load ptr, ptr %a.634
	%429 = getelementptr inbounds %gala_144156._.._onin_gala_core_mem_windows.Arena, ptr %428, i32 0, i32 3
	%430 = load i64, ptr %429
	%431 = add i64 %427, %430
	%432 = icmp eq i64 %423, %431
	store i1 %432, ptr %slot421
	br i1 %432, label %logic.rhs.422, label %logic.end.422
logic.rhs.422:
	%433 = load ptr, ptr %a.634
	%434 = getelementptr inbounds %gala_144156._.._onin_gala_core_mem_windows.Arena, ptr %433, i32 0, i32 1
	%435 = load i64, ptr %434
	%436 = load ptr, ptr %a.634
	%437 = getelementptr inbounds %gala_144156._.._onin_gala_core_mem_windows.Arena, ptr %436, i32 0, i32 3
	%438 = load i64, ptr %437
	%439 = sub i64 %435, %438
	%440 = icmp ule i64 %size, %439
	store i1 %440, ptr %slot421
	br label %logic.end.422
logic.end.422:
	%441 = load i1, ptr %slot421
	br i1 %441, label %base_block_label420, label %end_label420
base_block_label420:
	%443 = icmp ugt i64 %size, %old_size
	br i1 %443, label %base_block_label442, label %end_label442
base_block_label442:
	%444 = call ptr @gala_546687._.._onin_gala_core_core_windows.ptr_add(ptr %old, i64 %old_size)
	%445 = sub i64 %size, %old_size
	call void @gala_144156._.._onin_gala_core_mem_windows.mem_zero(ptr %444, i64 %445)

	br label %end_label442
end_label442:

	%446 = load ptr, ptr %a.634
	%447 = getelementptr inbounds %gala_144156._.._onin_gala_core_mem_windows.Arena, ptr %446, i32 0, i32 3
	%448 = load i64, ptr %447
	%449 = add i64 %448, %size
	%450 = load ptr, ptr %a.634
	%451 = getelementptr inbounds %gala_144156._.._onin_gala_core_mem_windows.Arena, ptr %450, i32 0, i32 2
	store i64 %449, ptr %451

	ret ptr %old

end_label420:

	%452 = load ptr, ptr %a.634
	%453 = call ptr @gala_144156._.._onin_gala_core_mem_windows.arena_push(ptr %452, i64 %size, i64 %align)
	store ptr %453, ptr %p.635

	%455 = load ptr, ptr %p.635
	%456 = ptrtoint ptr %455 to i64
	%457 = inttoptr i64 0 to ptr
	%458 = ptrtoint ptr %457 to i64
	%459 = icmp eq i64 %456, %458
	br i1 %459, label %base_block_label454, label %end_label454
base_block_label454:
	%460 = inttoptr i64 0 to ptr
	ret ptr %460

end_label454:

	%461 = load ptr, ptr %p.635
	%462 = call i64 @gala_144156._.._onin_gala_core_mem_windows.min_u64(i64 %old_size, i64 %size)
	call void @gala_144156._.._onin_gala_core_mem_windows.mem_copy(ptr %461, ptr %old, i64 %462)

	%463 = load ptr, ptr %p.635
	ret ptr %463

end_label410:

	%464 = inttoptr i64 0 to ptr
	ret ptr %464

}
define void @gala_144156._.._onin_gala_core_mem_windows.arena_allocator (ptr sret(%gala_144156._.._onin_gala_core_mem_windows.Allocator) align 8 %.sret, ptr %a) {
entry:
	%465 = insertvalue %gala_144156._.._onin_gala_core_mem_windows.Allocator undef, ptr @gala_144156._.._onin_gala_core_mem_windows.arena_proc, 0
	%466 = insertvalue %gala_144156._.._onin_gala_core_mem_windows.Allocator %465, ptr %a, 1
	store %gala_144156._.._onin_gala_core_mem_windows.Allocator %466, ptr %.sret
	ret void

}
define void @gala_144156._.._onin_gala_core_mem_windows.temp_init (i64 %size) {
entry:
	%slot474 = alloca %gala_144156._.._onin_gala_core_mem_windows.Arena
	%468 = getelementptr inbounds %gala_144156._.._onin_gala_core_mem_windows.Arena, ptr @gala_144156._.._onin_gala_core_mem_windows.temp_arena, i32 0, i32 0
	%469 = load ptr, ptr %468
	%470 = ptrtoint ptr %469 to i64
	%471 = inttoptr i64 0 to ptr
	%472 = ptrtoint ptr %471 to i64
	%473 = icmp ne i64 %470, %472
	br i1 %473, label %base_block_label467, label %end_label467
base_block_label467:
	call void @gala_144156._.._onin_gala_core_mem_windows.arena_destroy(ptr @gala_144156._.._onin_gala_core_mem_windows.temp_arena)

	br label %end_label467
end_label467:

	call void @gala_144156._.._onin_gala_core_mem_windows.arena_make(ptr sret(%gala_144156._.._onin_gala_core_mem_windows.Arena) align 8 %slot474, i64 %size)
	%475 = load %gala_144156._.._onin_gala_core_mem_windows.Arena, ptr %slot474
	store %gala_144156._.._onin_gala_core_mem_windows.Arena %475, ptr @gala_144156._.._onin_gala_core_mem_windows.temp_arena

	ret void
}
define void @gala_144156._.._onin_gala_core_mem_windows.temp_allocator (ptr sret(%gala_144156._.._onin_gala_core_mem_windows.Allocator) align 8 %.sret) {
entry:
	%slot485 = alloca %gala_144156._.._onin_gala_core_mem_windows.Allocator
	%477 = getelementptr inbounds %gala_144156._.._onin_gala_core_mem_windows.Arena, ptr @gala_144156._.._onin_gala_core_mem_windows.temp_arena, i32 0, i32 0
	%478 = load ptr, ptr %477
	%479 = ptrtoint ptr %478 to i64
	%480 = inttoptr i64 0 to ptr
	%481 = ptrtoint ptr %480 to i64
	%482 = icmp eq i64 %479, %481
	br i1 %482, label %base_block_label476, label %end_label476
base_block_label476:
	%483 = load i64, ptr @gala_144156._.._onin_gala_core_mem_windows.MB
	%484 = mul i64 4, %483
	call void @gala_144156._.._onin_gala_core_mem_windows.temp_init(i64 %484)

	br label %end_label476
end_label476:

	call void @gala_144156._.._onin_gala_core_mem_windows.arena_allocator(ptr sret(%gala_144156._.._onin_gala_core_mem_windows.Allocator) align 8 %slot485, ptr @gala_144156._.._onin_gala_core_mem_windows.temp_arena)
	%486 = load %gala_144156._.._onin_gala_core_mem_windows.Allocator, ptr %slot485
	store %gala_144156._.._onin_gala_core_mem_windows.Allocator %486, ptr %.sret
	ret void

}
define void @gala_144156._.._onin_gala_core_mem_windows.temp_reset () {
entry:
	call void @gala_144156._.._onin_gala_core_mem_windows.arena_reset(ptr @gala_144156._.._onin_gala_core_mem_windows.temp_arena)

	ret void
}
define ptr @gala_144156._.._onin_gala_core_mem_windows.link_get (ptr %chunk) {
entry:
	%pp.639 = alloca ptr
	store ptr %chunk, ptr %pp.639

	%487 = load ptr, ptr %pp.639
	%488 = load ptr, ptr %487
	ret ptr %488

}
define void @gala_144156._.._onin_gala_core_mem_windows.link_set (ptr %chunk, ptr %next) {
entry:
	%pp.642 = alloca ptr
	store ptr %chunk, ptr %pp.642

	%489 = load ptr, ptr %pp.642
	store ptr %next, ptr %489

	ret void
}
define void @gala_144156._.._onin_gala_core_mem_windows.pool_reset (ptr %p) {
entry:
	%base.644 = alloca i64
	%i.645 = alloca i64
	%chunk.646 = alloca ptr
	%490 = inttoptr i64 0 to ptr
	%491 = getelementptr inbounds %gala_144156._.._onin_gala_core_mem_windows.Pool, ptr %p, i32 0, i32 3
	store ptr %490, ptr %491

	%492 = getelementptr inbounds %gala_144156._.._onin_gala_core_mem_windows.Pool, ptr %p, i32 0, i32 4
	store i64 0, ptr %492

	%494 = getelementptr inbounds %gala_144156._.._onin_gala_core_mem_windows.Pool, ptr %p, i32 0, i32 0
	%495 = load ptr, ptr %494
	%496 = ptrtoint ptr %495 to i64
	%497 = inttoptr i64 0 to ptr
	%498 = ptrtoint ptr %497 to i64
	%499 = icmp eq i64 %496, %498
	br i1 %499, label %base_block_label493, label %end_label493
base_block_label493:
	ret void

end_label493:

	%500 = getelementptr inbounds %gala_144156._.._onin_gala_core_mem_windows.Pool, ptr %p, i32 0, i32 0
	%501 = load ptr, ptr %500
	%502 = call i64 @gala_144156._.._onin_gala_core_mem_windows.addr(ptr %501)
	store i64 %502, ptr %base.644

	%503 = getelementptr inbounds %gala_144156._.._onin_gala_core_mem_windows.Pool, ptr %p, i32 0, i32 2
	%504 = load i64, ptr %503
	store i64 %504, ptr %i.645

	br label %while_cond_label505
while_cond_label505:
	%506 = load i64, ptr %i.645
	%507 = icmp ugt i64 %506, 0
	br i1 %507, label %while_body_label505, label %while_end_label505
while_body_label505:
	%508 = load i64, ptr %i.645
	%509 = sub i64 %508, 1
	store i64 %509, ptr %i.645

	%510 = load i64, ptr %base.644
	%511 = load i64, ptr %i.645
	%512 = getelementptr inbounds %gala_144156._.._onin_gala_core_mem_windows.Pool, ptr %p, i32 0, i32 1
	%513 = load i64, ptr %512
	%514 = mul i64 %511, %513
	%515 = add i64 %510, %514
	%516 = call ptr @gala_144156._.._onin_gala_core_mem_windows.from_addr(i64 %515)
	store ptr %516, ptr %chunk.646

	%517 = load ptr, ptr %chunk.646
	%518 = getelementptr inbounds %gala_144156._.._onin_gala_core_mem_windows.Pool, ptr %p, i32 0, i32 3
	%519 = load ptr, ptr %518
	call void @gala_144156._.._onin_gala_core_mem_windows.link_set(ptr %517, ptr %519)

	%520 = load ptr, ptr %chunk.646
	%521 = getelementptr inbounds %gala_144156._.._onin_gala_core_mem_windows.Pool, ptr %p, i32 0, i32 3
	store ptr %520, ptr %521

	br label %while_cond_label505
while_end_label505:

	ret void
}
define void @gala_144156._.._onin_gala_core_mem_windows.pool_make (ptr sret(%gala_144156._.._onin_gala_core_mem_windows.Pool) align 8 %.sret, i64 %chunk_size, i64 %count) {
entry:
	%cs.649 = alloca i64
	%max_value.650 = alloca i64
	%slot526 = alloca i1
	%buf.651 = alloca ptr
	%pl.652 = alloca %gala_144156._.._onin_gala_core_mem_windows.Pool
	%522 = call i64 @gala_144156._.._onin_gala_core_mem_windows.align_forward(i64 %chunk_size, i64 16)
	%523 = call i64 @gala_144156._.._onin_gala_core_mem_windows.max_u64(i64 %522, i64 16)
	store i64 %523, ptr %cs.649

	%524 = sub i64 0, 1
	store i64 %524, ptr %max_value.650

	%528 = icmp eq i64 %count, 0
	store i1 %528, ptr %slot526
	br i1 %528, label %logic.end.527, label %logic.rhs.527
logic.rhs.527:
	%529 = load i64, ptr %max_value.650
	%530 = load i64, ptr %cs.649
	%531 = udiv i64 %529, %530
	%532 = icmp ugt i64 %count, %531
	store i1 %532, ptr %slot526
	br label %logic.end.527
logic.end.527:
	%533 = load i1, ptr %slot526
	br i1 %533, label %base_block_label525, label %end_label525
base_block_label525:
	%534 = inttoptr i64 0 to ptr
	%535 = load i64, ptr %cs.649
	%536 = inttoptr i64 0 to ptr
	%537 = insertvalue %gala_144156._.._onin_gala_core_mem_windows.Pool undef, ptr %534, 0
	%538 = insertvalue %gala_144156._.._onin_gala_core_mem_windows.Pool %537, i64 %535, 1
	%539 = insertvalue %gala_144156._.._onin_gala_core_mem_windows.Pool %538, i64 0, 2
	%540 = insertvalue %gala_144156._.._onin_gala_core_mem_windows.Pool %539, ptr %536, 3
	%541 = insertvalue %gala_144156._.._onin_gala_core_mem_windows.Pool %540, i64 0, 4
	store %gala_144156._.._onin_gala_core_mem_windows.Pool %541, ptr %.sret
	ret void

end_label525:

	%542 = load i64, ptr %cs.649
	%543 = mul i64 %542, %count
	%544 = call ptr @malloc(i64 %543)
	store ptr %544, ptr %buf.651

	%546 = load ptr, ptr %buf.651
	%547 = ptrtoint ptr %546 to i64
	%548 = inttoptr i64 0 to ptr
	%549 = ptrtoint ptr %548 to i64
	%550 = icmp eq i64 %547, %549
	br i1 %550, label %base_block_label545, label %end_label545
base_block_label545:
	%551 = inttoptr i64 0 to ptr
	%552 = load i64, ptr %cs.649
	%553 = inttoptr i64 0 to ptr
	%554 = insertvalue %gala_144156._.._onin_gala_core_mem_windows.Pool undef, ptr %551, 0
	%555 = insertvalue %gala_144156._.._onin_gala_core_mem_windows.Pool %554, i64 %552, 1
	%556 = insertvalue %gala_144156._.._onin_gala_core_mem_windows.Pool %555, i64 0, 2
	%557 = insertvalue %gala_144156._.._onin_gala_core_mem_windows.Pool %556, ptr %553, 3
	%558 = insertvalue %gala_144156._.._onin_gala_core_mem_windows.Pool %557, i64 0, 4
	store %gala_144156._.._onin_gala_core_mem_windows.Pool %558, ptr %.sret
	ret void

end_label545:

	%559 = load ptr, ptr %buf.651
	%560 = load i64, ptr %cs.649
	%561 = inttoptr i64 0 to ptr
	%562 = insertvalue %gala_144156._.._onin_gala_core_mem_windows.Pool undef, ptr %559, 0
	%563 = insertvalue %gala_144156._.._onin_gala_core_mem_windows.Pool %562, i64 %560, 1
	%564 = insertvalue %gala_144156._.._onin_gala_core_mem_windows.Pool %563, i64 %count, 2
	%565 = insertvalue %gala_144156._.._onin_gala_core_mem_windows.Pool %564, ptr %561, 3
	%566 = insertvalue %gala_144156._.._onin_gala_core_mem_windows.Pool %565, i64 0, 4
	store %gala_144156._.._onin_gala_core_mem_windows.Pool %566, ptr %pl.652

	call void @gala_144156._.._onin_gala_core_mem_windows.pool_reset(ptr %pl.652)

	%567 = load %gala_144156._.._onin_gala_core_mem_windows.Pool, ptr %pl.652
	store %gala_144156._.._onin_gala_core_mem_windows.Pool %567, ptr %.sret
	ret void

}
define void @gala_144156._.._onin_gala_core_mem_windows.pool_destroy (ptr %p) {
entry:
	%568 = getelementptr inbounds %gala_144156._.._onin_gala_core_mem_windows.Pool, ptr %p, i32 0, i32 0
	%569 = load ptr, ptr %568
	call void @free(ptr %569)

	%570 = inttoptr i64 0 to ptr
	%571 = inttoptr i64 0 to ptr
	%572 = insertvalue %gala_144156._.._onin_gala_core_mem_windows.Pool undef, ptr %570, 0
	%573 = insertvalue %gala_144156._.._onin_gala_core_mem_windows.Pool %572, i64 0, 1
	%574 = insertvalue %gala_144156._.._onin_gala_core_mem_windows.Pool %573, i64 0, 2
	%575 = insertvalue %gala_144156._.._onin_gala_core_mem_windows.Pool %574, ptr %571, 3
	%576 = insertvalue %gala_144156._.._onin_gala_core_mem_windows.Pool %575, i64 0, 4
	store %gala_144156._.._onin_gala_core_mem_windows.Pool %576, ptr %p

	ret void
}
define zeroext i1 @gala_144156._.._onin_gala_core_mem_windows.pool_owns (ptr %p, ptr %ptr) {
entry:
	%start.656 = alloca i64
	%x.657 = alloca i64
	%off.658 = alloca i64
	%578 = getelementptr inbounds %gala_144156._.._onin_gala_core_mem_windows.Pool, ptr %p, i32 0, i32 0
	%579 = load ptr, ptr %578
	%580 = ptrtoint ptr %579 to i64
	%581 = inttoptr i64 0 to ptr
	%582 = ptrtoint ptr %581 to i64
	%583 = icmp eq i64 %580, %582
	br i1 %583, label %base_block_label577, label %end_label577
base_block_label577:
	ret i1 0

end_label577:

	%584 = getelementptr inbounds %gala_144156._.._onin_gala_core_mem_windows.Pool, ptr %p, i32 0, i32 0
	%585 = load ptr, ptr %584
	%586 = call i64 @gala_144156._.._onin_gala_core_mem_windows.addr(ptr %585)
	store i64 %586, ptr %start.656

	%587 = call i64 @gala_144156._.._onin_gala_core_mem_windows.addr(ptr %ptr)
	store i64 %587, ptr %x.657

	%589 = load i64, ptr %x.657
	%590 = load i64, ptr %start.656
	%591 = icmp ult i64 %589, %590
	br i1 %591, label %base_block_label588, label %end_label588
base_block_label588:
	ret i1 0

end_label588:

	%592 = load i64, ptr %x.657
	%593 = load i64, ptr %start.656
	%594 = sub i64 %592, %593
	store i64 %594, ptr %off.658

	%596 = load i64, ptr %off.658
	%597 = getelementptr inbounds %gala_144156._.._onin_gala_core_mem_windows.Pool, ptr %p, i32 0, i32 1
	%598 = load i64, ptr %597
	%599 = getelementptr inbounds %gala_144156._.._onin_gala_core_mem_windows.Pool, ptr %p, i32 0, i32 2
	%600 = load i64, ptr %599
	%601 = mul i64 %598, %600
	%602 = icmp uge i64 %596, %601
	br i1 %602, label %base_block_label595, label %end_label595
base_block_label595:
	ret i1 0

end_label595:

	%603 = load i64, ptr %off.658
	%604 = getelementptr inbounds %gala_144156._.._onin_gala_core_mem_windows.Pool, ptr %p, i32 0, i32 1
	%605 = load i64, ptr %604
	%606 = urem i64 %603, %605
	%607 = icmp eq i64 %606, 0
	ret i1 %607

}
define ptr @gala_144156._.._onin_gala_core_mem_windows.pool_proc (ptr %data, i32 %mode, i64 %size, i64 %align, ptr %old, i64 %old_size) {
entry:
	%p.665 = alloca ptr
	%slot612 = alloca i1
	%slot614 = alloca i1
	%chunk.666 = alloca ptr
	%slot651 = alloca i1
	%slot686 = alloca i1
	store ptr %data, ptr %p.665

	%609 = load i32, ptr @gala_144156._.._onin_gala_core_mem_windows.MODE_ALLOC
	%610 = icmp eq i32 %mode, %609
	br i1 %610, label %base_block_label608, label %end_label608
base_block_label608:
	%616 = load ptr, ptr %p.665
	%617 = getelementptr inbounds %gala_144156._.._onin_gala_core_mem_windows.Pool, ptr %616, i32 0, i32 1
	%618 = load i64, ptr %617
	%619 = icmp ugt i64 %size, %618
	store i1 %619, ptr %slot614
	br i1 %619, label %logic.end.615, label %logic.rhs.615
logic.rhs.615:
	%620 = icmp ugt i64 %align, 16
	store i1 %620, ptr %slot614
	br label %logic.end.615
logic.end.615:
	%621 = load i1, ptr %slot614
	store i1 %621, ptr %slot612
	br i1 %621, label %logic.end.613, label %logic.rhs.613
logic.rhs.613:
	%622 = load ptr, ptr %p.665
	%623 = getelementptr inbounds %gala_144156._.._onin_gala_core_mem_windows.Pool, ptr %622, i32 0, i32 3
	%624 = load ptr, ptr %623
	%625 = ptrtoint ptr %624 to i64
	%626 = inttoptr i64 0 to ptr
	%627 = ptrtoint ptr %626 to i64
	%628 = icmp eq i64 %625, %627
	store i1 %628, ptr %slot612
	br label %logic.end.613
logic.end.613:
	%629 = load i1, ptr %slot612
	br i1 %629, label %base_block_label611, label %end_label611
base_block_label611:
	%630 = inttoptr i64 0 to ptr
	ret ptr %630

end_label611:

	%631 = load ptr, ptr %p.665
	%632 = getelementptr inbounds %gala_144156._.._onin_gala_core_mem_windows.Pool, ptr %631, i32 0, i32 3
	%633 = load ptr, ptr %632
	store ptr %633, ptr %chunk.666

	%634 = load ptr, ptr %chunk.666
	%635 = call ptr @gala_144156._.._onin_gala_core_mem_windows.link_get(ptr %634)
	%636 = load ptr, ptr %p.665
	%637 = getelementptr inbounds %gala_144156._.._onin_gala_core_mem_windows.Pool, ptr %636, i32 0, i32 3
	store ptr %635, ptr %637

	%638 = load ptr, ptr %p.665
	%639 = getelementptr inbounds %gala_144156._.._onin_gala_core_mem_windows.Pool, ptr %638, i32 0, i32 4
	%640 = load i64, ptr %639
	%641 = add i64 %640, 1
	store i64 %641, ptr %639

	%642 = load ptr, ptr %chunk.666
	%643 = load ptr, ptr %p.665
	%644 = getelementptr inbounds %gala_144156._.._onin_gala_core_mem_windows.Pool, ptr %643, i32 0, i32 1
	%645 = load i64, ptr %644
	call void @gala_144156._.._onin_gala_core_mem_windows.mem_zero(ptr %642, i64 %645)

	%646 = load ptr, ptr %chunk.666
	ret ptr %646

end_label608:

	%648 = load i32, ptr @gala_144156._.._onin_gala_core_mem_windows.MODE_FREE
	%649 = icmp eq i32 %mode, %648
	br i1 %649, label %base_block_label647, label %end_label647
base_block_label647:
	%653 = ptrtoint ptr %old to i64
	%654 = inttoptr i64 0 to ptr
	%655 = ptrtoint ptr %654 to i64
	%656 = icmp eq i64 %653, %655
	store i1 %656, ptr %slot651
	br i1 %656, label %logic.end.652, label %logic.rhs.652
logic.rhs.652:
	%657 = load ptr, ptr %p.665
	%658 = call zeroext i1 @gala_144156._.._onin_gala_core_mem_windows.pool_owns(ptr %657, ptr %old)
	%659 = xor i1 %658, true
	store i1 %659, ptr %slot651
	br label %logic.end.652
logic.end.652:
	%660 = load i1, ptr %slot651
	br i1 %660, label %base_block_label650, label %end_label650
base_block_label650:
	%661 = inttoptr i64 0 to ptr
	ret ptr %661

end_label650:

	%662 = load ptr, ptr %p.665
	%663 = getelementptr inbounds %gala_144156._.._onin_gala_core_mem_windows.Pool, ptr %662, i32 0, i32 3
	%664 = load ptr, ptr %663
	call void @gala_144156._.._onin_gala_core_mem_windows.link_set(ptr %old, ptr %664)

	%665 = load ptr, ptr %p.665
	%666 = getelementptr inbounds %gala_144156._.._onin_gala_core_mem_windows.Pool, ptr %665, i32 0, i32 3
	store ptr %old, ptr %666

	%668 = load ptr, ptr %p.665
	%669 = getelementptr inbounds %gala_144156._.._onin_gala_core_mem_windows.Pool, ptr %668, i32 0, i32 4
	%670 = load i64, ptr %669
	%671 = icmp ugt i64 %670, 0
	br i1 %671, label %base_block_label667, label %end_label667
base_block_label667:
	%672 = load ptr, ptr %p.665
	%673 = getelementptr inbounds %gala_144156._.._onin_gala_core_mem_windows.Pool, ptr %672, i32 0, i32 4
	%674 = load i64, ptr %673
	%675 = sub i64 %674, 1
	store i64 %675, ptr %673

	br label %end_label667
end_label667:

	%676 = inttoptr i64 0 to ptr
	ret ptr %676

end_label647:

	%678 = load i32, ptr @gala_144156._.._onin_gala_core_mem_windows.MODE_FREE_ALL
	%679 = icmp eq i32 %mode, %678
	br i1 %679, label %base_block_label677, label %end_label677
base_block_label677:
	%680 = load ptr, ptr %p.665
	call void @gala_144156._.._onin_gala_core_mem_windows.pool_reset(ptr %680)

	%681 = inttoptr i64 0 to ptr
	ret ptr %681

end_label677:

	%683 = load i32, ptr @gala_144156._.._onin_gala_core_mem_windows.MODE_RESIZE
	%684 = icmp eq i32 %mode, %683
	br i1 %684, label %base_block_label682, label %end_label682
base_block_label682:
	%688 = ptrtoint ptr %old to i64
	%689 = inttoptr i64 0 to ptr
	%690 = ptrtoint ptr %689 to i64
	%691 = icmp ne i64 %688, %690
	store i1 %691, ptr %slot686
	br i1 %691, label %logic.rhs.687, label %logic.end.687
logic.rhs.687:
	%692 = load ptr, ptr %p.665
	%693 = getelementptr inbounds %gala_144156._.._onin_gala_core_mem_windows.Pool, ptr %692, i32 0, i32 1
	%694 = load i64, ptr %693
	%695 = icmp ule i64 %size, %694
	store i1 %695, ptr %slot686
	br label %logic.end.687
logic.end.687:
	%696 = load i1, ptr %slot686
	br i1 %696, label %base_block_label685, label %end_label685
base_block_label685:
	%698 = icmp ugt i64 %size, %old_size
	br i1 %698, label %base_block_label697, label %end_label697
base_block_label697:
	%699 = call ptr @gala_546687._.._onin_gala_core_core_windows.ptr_add(ptr %old, i64 %old_size)
	%700 = sub i64 %size, %old_size
	call void @gala_144156._.._onin_gala_core_mem_windows.mem_zero(ptr %699, i64 %700)

	br label %end_label697
end_label697:

	ret ptr %old

end_label685:

	%701 = inttoptr i64 0 to ptr
	ret ptr %701

end_label682:

	%702 = inttoptr i64 0 to ptr
	ret ptr %702

}
define void @gala_144156._.._onin_gala_core_mem_windows.pool_allocator (ptr sret(%gala_144156._.._onin_gala_core_mem_windows.Allocator) align 8 %.sret, ptr %p) {
entry:
	%703 = insertvalue %gala_144156._.._onin_gala_core_mem_windows.Allocator undef, ptr @gala_144156._.._onin_gala_core_mem_windows.pool_proc, 0
	%704 = insertvalue %gala_144156._.._onin_gala_core_mem_windows.Allocator %703, ptr %p, 1
	store %gala_144156._.._onin_gala_core_mem_windows.Allocator %704, ptr %.sret
	ret void

}
define void @gala_144156._.._onin_gala_core_mem_windows.tracking_init (ptr %t, ptr noundef %backing) {
entry:
	%705 = load %gala_144156._.._onin_gala_core_mem_windows.Allocator, ptr %backing
	%706 = insertvalue %gala_144156._.._onin_gala_core_mem_windows.Tracking undef, %gala_144156._.._onin_gala_core_mem_windows.Allocator %705, 0
	%707 = insertvalue %gala_144156._.._onin_gala_core_mem_windows.Tracking %706, i64 0, 1
	%708 = insertvalue %gala_144156._.._onin_gala_core_mem_windows.Tracking %707, i64 0, 2
	%709 = insertvalue %gala_144156._.._onin_gala_core_mem_windows.Tracking %708, i64 0, 3
	%710 = insertvalue %gala_144156._.._onin_gala_core_mem_windows.Tracking %709, i64 0, 4
	%711 = insertvalue %gala_144156._.._onin_gala_core_mem_windows.Tracking %710, i64 0, 5
	%712 = insertvalue %gala_144156._.._onin_gala_core_mem_windows.Tracking %711, i64 0, 6
	store %gala_144156._.._onin_gala_core_mem_windows.Tracking %712, ptr %t

	ret void
}
define void @gala_144156._.._onin_gala_core_mem_windows.tracking_reset (ptr %t) {
entry:
	%slot715 = alloca %gala_144156._.._onin_gala_core_mem_windows.Allocator
	%713 = getelementptr inbounds %gala_144156._.._onin_gala_core_mem_windows.Tracking, ptr %t, i32 0, i32 0
	%714 = load %gala_144156._.._onin_gala_core_mem_windows.Allocator, ptr %713
	store %gala_144156._.._onin_gala_core_mem_windows.Allocator %714, ptr %slot715, align 8
	call void @gala_144156._.._onin_gala_core_mem_windows.tracking_init(ptr %t, ptr noundef %slot715)

	ret void
}
define ptr @gala_144156._.._onin_gala_core_mem_windows.tracking_proc (ptr %data, i32 %mode, i64 %size, i64 %align, ptr %old, i64 %old_size) {
entry:
	%t.677 = alloca ptr
	%b.678 = alloca %gala_144156._.._onin_gala_core_mem_windows.Allocator
	%cb.679 = alloca ptr
	%p.680 = alloca ptr
	store ptr %data, ptr %t.677

	%716 = load ptr, ptr %t.677
	%717 = getelementptr inbounds %gala_144156._.._onin_gala_core_mem_windows.Tracking, ptr %716, i32 0, i32 0
	%718 = load %gala_144156._.._onin_gala_core_mem_windows.Allocator, ptr %717
	store %gala_144156._.._onin_gala_core_mem_windows.Allocator %718, ptr %b.678

	%719 = getelementptr inbounds %gala_144156._.._onin_gala_core_mem_windows.Allocator, ptr %b.678, i32 0, i32 0
	%720 = load ptr, ptr %719
	store ptr %720, ptr %cb.679

	%721 = load ptr, ptr %cb.679
	%722 = getelementptr inbounds %gala_144156._.._onin_gala_core_mem_windows.Allocator, ptr %b.678, i32 0, i32 1
	%723 = load ptr, ptr %722
	%724 = call ptr %721(ptr %723, i32 %mode, i64 %size, i64 %align, ptr %old, i64 %old_size)
	store ptr %724, ptr %p.680

	%726 = load i32, ptr @gala_144156._.._onin_gala_core_mem_windows.MODE_ALLOC
	%727 = icmp eq i32 %mode, %726
	br i1 %727, label %base_block_label725, label %alt_cond_label725_0
base_block_label725:
	%729 = load ptr, ptr %p.680
	%730 = ptrtoint ptr %729 to i64
	%731 = inttoptr i64 0 to ptr
	%732 = ptrtoint ptr %731 to i64
	%733 = icmp ne i64 %730, %732
	br i1 %733, label %base_block_label728, label %else_block_label728
base_block_label728:
	%734 = load ptr, ptr %t.677
	%735 = getelementptr inbounds %gala_144156._.._onin_gala_core_mem_windows.Tracking, ptr %734, i32 0, i32 1
	%736 = load i64, ptr %735
	%737 = add i64 %736, 1
	store i64 %737, ptr %735

	%738 = load ptr, ptr %t.677
	%739 = getelementptr inbounds %gala_144156._.._onin_gala_core_mem_windows.Tracking, ptr %738, i32 0, i32 4
	%740 = load i64, ptr %739
	%741 = add i64 %740, %size
	store i64 %741, ptr %739

	%742 = load ptr, ptr %t.677
	%743 = getelementptr inbounds %gala_144156._.._onin_gala_core_mem_windows.Tracking, ptr %742, i32 0, i32 6
	%744 = load i64, ptr %743
	%745 = add i64 %744, %size
	store i64 %745, ptr %743

	br label %end_label728
else_block_label728:
	%746 = load ptr, ptr %t.677
	%747 = getelementptr inbounds %gala_144156._.._onin_gala_core_mem_windows.Tracking, ptr %746, i32 0, i32 3
	%748 = load i64, ptr %747
	%749 = add i64 %748, 1
	store i64 %749, ptr %747

	br label %end_label728
end_label728:

	br label %end_label725
alt_cond_label725_0:
	%750 = load i32, ptr @gala_144156._.._onin_gala_core_mem_windows.MODE_FREE
	%751 = icmp eq i32 %mode, %750
	br i1 %751, label %alt_block_label725_0, label %alt_cond_label725_1
alt_block_label725_0:
	%753 = ptrtoint ptr %old to i64
	%754 = inttoptr i64 0 to ptr
	%755 = ptrtoint ptr %754 to i64
	%756 = icmp ne i64 %753, %755
	br i1 %756, label %base_block_label752, label %end_label752
base_block_label752:
	%757 = load ptr, ptr %t.677
	%758 = getelementptr inbounds %gala_144156._.._onin_gala_core_mem_windows.Tracking, ptr %757, i32 0, i32 2
	%759 = load i64, ptr %758
	%760 = add i64 %759, 1
	store i64 %760, ptr %758

	%761 = load ptr, ptr %t.677
	%762 = getelementptr inbounds %gala_144156._.._onin_gala_core_mem_windows.Tracking, ptr %761, i32 0, i32 4
	%763 = load i64, ptr %762
	%764 = sub i64 %763, %old_size
	store i64 %764, ptr %762

	br label %end_label752
end_label752:

	br label %end_label725
alt_cond_label725_1:
	%765 = load i32, ptr @gala_144156._.._onin_gala_core_mem_windows.MODE_FREE_ALL
	%766 = icmp eq i32 %mode, %765
	br i1 %766, label %alt_block_label725_1, label %alt_cond_label725_2
alt_block_label725_1:
	%767 = load ptr, ptr %t.677
	%768 = getelementptr inbounds %gala_144156._.._onin_gala_core_mem_windows.Tracking, ptr %767, i32 0, i32 4
	store i64 0, ptr %768

	br label %end_label725
alt_cond_label725_2:
	%769 = load i32, ptr @gala_144156._.._onin_gala_core_mem_windows.MODE_RESIZE
	%770 = icmp eq i32 %mode, %769
	br i1 %770, label %alt_block_label725_2, label %end_label725
alt_block_label725_2:
	%772 = load ptr, ptr %p.680
	%773 = ptrtoint ptr %772 to i64
	%774 = inttoptr i64 0 to ptr
	%775 = ptrtoint ptr %774 to i64
	%776 = icmp ne i64 %773, %775
	br i1 %776, label %base_block_label771, label %else_block_label771
base_block_label771:
	%777 = load ptr, ptr %t.677
	%778 = getelementptr inbounds %gala_144156._.._onin_gala_core_mem_windows.Tracking, ptr %777, i32 0, i32 4
	%779 = load i64, ptr %778
	%780 = sub i64 %size, %old_size
	%781 = add i64 %779, %780
	store i64 %781, ptr %778

	%782 = load ptr, ptr %t.677
	%783 = getelementptr inbounds %gala_144156._.._onin_gala_core_mem_windows.Tracking, ptr %782, i32 0, i32 6
	%784 = load i64, ptr %783
	%785 = add i64 %784, %size
	store i64 %785, ptr %783

	br label %end_label771
else_block_label771:
	%786 = load ptr, ptr %t.677
	%787 = getelementptr inbounds %gala_144156._.._onin_gala_core_mem_windows.Tracking, ptr %786, i32 0, i32 3
	%788 = load i64, ptr %787
	%789 = add i64 %788, 1
	store i64 %789, ptr %787

	br label %end_label771
end_label771:

	br label %end_label725
end_label725:

	%791 = load ptr, ptr %t.677
	%792 = getelementptr inbounds %gala_144156._.._onin_gala_core_mem_windows.Tracking, ptr %791, i32 0, i32 4
	%793 = load i64, ptr %792
	%794 = load ptr, ptr %t.677
	%795 = getelementptr inbounds %gala_144156._.._onin_gala_core_mem_windows.Tracking, ptr %794, i32 0, i32 5
	%796 = load i64, ptr %795
	%797 = icmp sgt i64 %793, %796
	br i1 %797, label %base_block_label790, label %end_label790
base_block_label790:
	%798 = load ptr, ptr %t.677
	%799 = getelementptr inbounds %gala_144156._.._onin_gala_core_mem_windows.Tracking, ptr %798, i32 0, i32 4
	%800 = load i64, ptr %799
	%801 = load ptr, ptr %t.677
	%802 = getelementptr inbounds %gala_144156._.._onin_gala_core_mem_windows.Tracking, ptr %801, i32 0, i32 5
	store i64 %800, ptr %802

	br label %end_label790
end_label790:

	%803 = load ptr, ptr %p.680
	ret ptr %803

}
define void @gala_144156._.._onin_gala_core_mem_windows.tracking_allocator (ptr sret(%gala_144156._.._onin_gala_core_mem_windows.Allocator) align 8 %.sret, ptr %t) {
entry:
	%804 = insertvalue %gala_144156._.._onin_gala_core_mem_windows.Allocator undef, ptr @gala_144156._.._onin_gala_core_mem_windows.tracking_proc, 0
	%805 = insertvalue %gala_144156._.._onin_gala_core_mem_windows.Allocator %804, ptr %t, 1
	store %gala_144156._.._onin_gala_core_mem_windows.Allocator %805, ptr %.sret
	ret void

}
define void @gala_144156._.._onin_gala_core_mem_windows.tracking_report (ptr %t) {
entry:
	%slot806 = alloca [6 x { ptr, i64 }]
	%slot810 = alloca { ptr, i64 }
	%slot816 = alloca i64
	%slot823 = alloca { ptr, i64 }
	%slot829 = alloca i64
	%slot836 = alloca { ptr, i64 }
	%slot842 = alloca i64
	%slot848 = alloca { ptr, i64 }
	%slot849 = alloca [6 x { ptr, i64 }]
	%slot853 = alloca { ptr, i64 }
	%slot859 = alloca i64
	%slot866 = alloca { ptr, i64 }
	%slot872 = alloca i64
	%slot879 = alloca { ptr, i64 }
	%slot885 = alloca i64
	%slot891 = alloca { ptr, i64 }
	%807 = getelementptr inbounds [8 x i8], ptr @string33, i64 0, i64 0
	%808 = insertvalue { ptr, i64 } undef, ptr %807, 0
	%809 = insertvalue { ptr, i64 } %808, i64 7, 1
	store { ptr, i64 } %809, ptr %slot810
	%811 = insertvalue { ptr, i64 } undef, ptr %slot810, 0
	%812 = insertvalue { ptr, i64 } %811, i64 17, 1
	%813 = getelementptr inbounds [6 x { ptr, i64 }], ptr %slot806, i64 0, i64 0
	store { ptr, i64 } %812, ptr %813
	%814 = getelementptr inbounds %gala_144156._.._onin_gala_core_mem_windows.Tracking, ptr %t, i32 0, i32 1
	%815 = load i64, ptr %814
	store i64 %815, ptr %slot816
	%817 = insertvalue { ptr, i64 } undef, ptr %slot816, 0
	%818 = insertvalue { ptr, i64 } %817, i64 3, 1
	%819 = getelementptr inbounds [6 x { ptr, i64 }], ptr %slot806, i64 0, i64 1
	store { ptr, i64 } %818, ptr %819
	%820 = getelementptr inbounds [7 x i8], ptr @string34, i64 0, i64 0
	%821 = insertvalue { ptr, i64 } undef, ptr %820, 0
	%822 = insertvalue { ptr, i64 } %821, i64 6, 1
	store { ptr, i64 } %822, ptr %slot823
	%824 = insertvalue { ptr, i64 } undef, ptr %slot823, 0
	%825 = insertvalue { ptr, i64 } %824, i64 17, 1
	%826 = getelementptr inbounds [6 x { ptr, i64 }], ptr %slot806, i64 0, i64 2
	store { ptr, i64 } %825, ptr %826
	%827 = getelementptr inbounds %gala_144156._.._onin_gala_core_mem_windows.Tracking, ptr %t, i32 0, i32 2
	%828 = load i64, ptr %827
	store i64 %828, ptr %slot829
	%830 = insertvalue { ptr, i64 } undef, ptr %slot829, 0
	%831 = insertvalue { ptr, i64 } %830, i64 3, 1
	%832 = getelementptr inbounds [6 x { ptr, i64 }], ptr %slot806, i64 0, i64 3
	store { ptr, i64 } %831, ptr %832
	%833 = getelementptr inbounds [8 x i8], ptr @string35, i64 0, i64 0
	%834 = insertvalue { ptr, i64 } undef, ptr %833, 0
	%835 = insertvalue { ptr, i64 } %834, i64 7, 1
	store { ptr, i64 } %835, ptr %slot836
	%837 = insertvalue { ptr, i64 } undef, ptr %slot836, 0
	%838 = insertvalue { ptr, i64 } %837, i64 17, 1
	%839 = getelementptr inbounds [6 x { ptr, i64 }], ptr %slot806, i64 0, i64 4
	store { ptr, i64 } %838, ptr %839
	%840 = getelementptr inbounds %gala_144156._.._onin_gala_core_mem_windows.Tracking, ptr %t, i32 0, i32 3
	%841 = load i64, ptr %840
	store i64 %841, ptr %slot842
	%843 = insertvalue { ptr, i64 } undef, ptr %slot842, 0
	%844 = insertvalue { ptr, i64 } %843, i64 3, 1
	%845 = getelementptr inbounds [6 x { ptr, i64 }], ptr %slot806, i64 0, i64 5
	store { ptr, i64 } %844, ptr %845
	%846 = insertvalue { ptr, i64 } undef, ptr %slot806, 0
	%847 = insertvalue { ptr, i64 } %846, i64 6, 1
	store { ptr, i64 } %847, ptr %slot848, align 8
	call void @gala_546687._.._onin_gala_core_core_windows.println(ptr noundef %slot848)

	%850 = getelementptr inbounds [12 x i8], ptr @string36, i64 0, i64 0
	%851 = insertvalue { ptr, i64 } undef, ptr %850, 0
	%852 = insertvalue { ptr, i64 } %851, i64 11, 1
	store { ptr, i64 } %852, ptr %slot853
	%854 = insertvalue { ptr, i64 } undef, ptr %slot853, 0
	%855 = insertvalue { ptr, i64 } %854, i64 17, 1
	%856 = getelementptr inbounds [6 x { ptr, i64 }], ptr %slot849, i64 0, i64 0
	store { ptr, i64 } %855, ptr %856
	%857 = getelementptr inbounds %gala_144156._.._onin_gala_core_mem_windows.Tracking, ptr %t, i32 0, i32 4
	%858 = load i64, ptr %857
	store i64 %858, ptr %slot859
	%860 = insertvalue { ptr, i64 } undef, ptr %slot859, 0
	%861 = insertvalue { ptr, i64 } %860, i64 3, 1
	%862 = getelementptr inbounds [6 x { ptr, i64 }], ptr %slot849, i64 0, i64 1
	store { ptr, i64 } %861, ptr %862
	%863 = getelementptr inbounds [6 x i8], ptr @string37, i64 0, i64 0
	%864 = insertvalue { ptr, i64 } undef, ptr %863, 0
	%865 = insertvalue { ptr, i64 } %864, i64 5, 1
	store { ptr, i64 } %865, ptr %slot866
	%867 = insertvalue { ptr, i64 } undef, ptr %slot866, 0
	%868 = insertvalue { ptr, i64 } %867, i64 17, 1
	%869 = getelementptr inbounds [6 x { ptr, i64 }], ptr %slot849, i64 0, i64 2
	store { ptr, i64 } %868, ptr %869
	%870 = getelementptr inbounds %gala_144156._.._onin_gala_core_mem_windows.Tracking, ptr %t, i32 0, i32 5
	%871 = load i64, ptr %870
	store i64 %871, ptr %slot872
	%873 = insertvalue { ptr, i64 } undef, ptr %slot872, 0
	%874 = insertvalue { ptr, i64 } %873, i64 3, 1
	%875 = getelementptr inbounds [6 x { ptr, i64 }], ptr %slot849, i64 0, i64 3
	store { ptr, i64 } %874, ptr %875
	%876 = getelementptr inbounds [7 x i8], ptr @string38, i64 0, i64 0
	%877 = insertvalue { ptr, i64 } undef, ptr %876, 0
	%878 = insertvalue { ptr, i64 } %877, i64 6, 1
	store { ptr, i64 } %878, ptr %slot879
	%880 = insertvalue { ptr, i64 } undef, ptr %slot879, 0
	%881 = insertvalue { ptr, i64 } %880, i64 17, 1
	%882 = getelementptr inbounds [6 x { ptr, i64 }], ptr %slot849, i64 0, i64 4
	store { ptr, i64 } %881, ptr %882
	%883 = getelementptr inbounds %gala_144156._.._onin_gala_core_mem_windows.Tracking, ptr %t, i32 0, i32 6
	%884 = load i64, ptr %883
	store i64 %884, ptr %slot885
	%886 = insertvalue { ptr, i64 } undef, ptr %slot885, 0
	%887 = insertvalue { ptr, i64 } %886, i64 3, 1
	%888 = getelementptr inbounds [6 x { ptr, i64 }], ptr %slot849, i64 0, i64 5
	store { ptr, i64 } %887, ptr %888
	%889 = insertvalue { ptr, i64 } undef, ptr %slot849, 0
	%890 = insertvalue { ptr, i64 } %889, i64 6, 1
	store { ptr, i64 } %890, ptr %slot891, align 8
	call void @gala_546687._.._onin_gala_core_core_windows.println(ptr noundef %slot891)

	ret void
}
define ptr @gala_144156._.._onin_gala_core_mem_windows.panic_proc (ptr %data, i32 %mode, i64 %size, i64 %align, ptr %old, i64 %old_size) {
entry:
	%slot892 = alloca [1 x { ptr, i64 }]
	%slot896 = alloca { ptr, i64 }
	%slot902 = alloca { ptr, i64 }
	%893 = getelementptr inbounds [58 x i8], ptr @string39, i64 0, i64 0
	%894 = insertvalue { ptr, i64 } undef, ptr %893, 0
	%895 = insertvalue { ptr, i64 } %894, i64 57, 1
	store { ptr, i64 } %895, ptr %slot896
	%897 = insertvalue { ptr, i64 } undef, ptr %slot896, 0
	%898 = insertvalue { ptr, i64 } %897, i64 17, 1
	%899 = getelementptr inbounds [1 x { ptr, i64 }], ptr %slot892, i64 0, i64 0
	store { ptr, i64 } %898, ptr %899
	%900 = insertvalue { ptr, i64 } undef, ptr %slot892, 0
	%901 = insertvalue { ptr, i64 } %900, i64 1, 1
	store { ptr, i64 } %901, ptr %slot902, align 8
	call void @gala_546687._.._onin_gala_core_core_windows.eprintln(ptr noundef %slot902)

	call void @exit(i32 1)

	%903 = inttoptr i64 0 to ptr
	ret ptr %903

}
define ptr @gala_144156._.._onin_gala_core_mem_windows.new.Allocator.Gain.v0 (ptr noundef %a) {
entry:
	%size.989 = alloca i64
	%slot908 = alloca %gala_144156._.._onin_gala_core_mem_windows.Allocator
	store i64 16, ptr %size.989

	%904 = load i64, ptr %size.989
	%905 = load i64, ptr %size.989
	%906 = call i64 @gala_144156._.._onin_gala_core_mem_windows.align_for_size(i64 %905)
	%907 = load %gala_144156._.._onin_gala_core_mem_windows.Allocator, ptr %a
	store %gala_144156._.._onin_gala_core_mem_windows.Allocator %907, ptr %slot908, align 8
	%909 = call ptr @gala_144156._.._onin_gala_core_mem_windows.alloc(i64 %904, i64 %906, ptr noundef %slot908)
	ret ptr %909

}
define ptr @gala_144156._.._onin_gala_core_mem_windows.new.Allocator.ClapPlugin.v1 (ptr noundef %a) {
entry:
	%size.992 = alloca i64
	%slot914 = alloca %gala_144156._.._onin_gala_core_mem_windows.Allocator
	store i64 96, ptr %size.992

	%910 = load i64, ptr %size.992
	%911 = load i64, ptr %size.992
	%912 = call i64 @gala_144156._.._onin_gala_core_mem_windows.align_for_size(i64 %911)
	%913 = load %gala_144156._.._onin_gala_core_mem_windows.Allocator, ptr %a
	store %gala_144156._.._onin_gala_core_mem_windows.Allocator %913, ptr %slot914, align 8
	%915 = call ptr @gala_144156._.._onin_gala_core_mem_windows.alloc(i64 %910, i64 %912, ptr noundef %slot914)
	ret ptr %915

}
define void @gala_144156._.._onin_gala_core_mem_windows.__init_globals() {
entry:
	store i64 1024, ptr @gala_144156._.._onin_gala_core_mem_windows.KB
	store i64 1048576, ptr @gala_144156._.._onin_gala_core_mem_windows.MB
	store i64 1073741824, ptr @gala_144156._.._onin_gala_core_mem_windows.GB
	store i32 0, ptr @gala_144156._.._onin_gala_core_mem_windows.MODE_ALLOC
	store i32 1, ptr @gala_144156._.._onin_gala_core_mem_windows.MODE_FREE
	store i32 2, ptr @gala_144156._.._onin_gala_core_mem_windows.MODE_FREE_ALL
	store i32 3, ptr @gala_144156._.._onin_gala_core_mem_windows.MODE_RESIZE
	%slot916 = alloca %gala_144156._.._onin_gala_core_mem_windows.Allocator
	call void @gala_144156._.._onin_gala_core_mem_windows.heap_allocator(ptr sret(%gala_144156._.._onin_gala_core_mem_windows.Allocator) align 8 %slot916)
	%917 = load %gala_144156._.._onin_gala_core_mem_windows.Allocator, ptr %slot916
	store %gala_144156._.._onin_gala_core_mem_windows.Allocator %917, ptr @gala_144156._.._onin_gala_core_mem_windows.base_allocator
	%918 = inttoptr i64 0 to ptr
	%919 = insertvalue %gala_144156._.._onin_gala_core_mem_windows.Arena undef, ptr %918, 0
	%920 = insertvalue %gala_144156._.._onin_gala_core_mem_windows.Arena %919, i64 0, 1
	%921 = insertvalue %gala_144156._.._onin_gala_core_mem_windows.Arena %920, i64 0, 2
	%922 = insertvalue %gala_144156._.._onin_gala_core_mem_windows.Arena %921, i64 0, 3
	%923 = insertvalue %gala_144156._.._onin_gala_core_mem_windows.Arena %922, i1 0, 4
	store %gala_144156._.._onin_gala_core_mem_windows.Arena %923, ptr @gala_144156._.._onin_gala_core_mem_windows.temp_arena
	%924 = inttoptr i64 0 to ptr
	%925 = insertvalue %gala_144156._.._onin_gala_core_mem_windows.Allocator undef, ptr @gala_144156._.._onin_gala_core_mem_windows.panic_proc, 0
	%926 = insertvalue %gala_144156._.._onin_gala_core_mem_windows.Allocator %925, ptr %924, 1
	store %gala_144156._.._onin_gala_core_mem_windows.Allocator %926, ptr @gala_144156._.._onin_gala_core_mem_windows.PANIC_ALLOCATOR
	ret void
}

@__gala_types = external constant [0 x %gala_162268._.._onin_gala_core_cfunctions_windows.TypeInfo]
