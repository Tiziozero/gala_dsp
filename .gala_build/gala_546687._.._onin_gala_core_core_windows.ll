; file "..\onin_gala\core\core_windows.gala"
; target info
target datalayout = "e-m:w-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-windows-msvc"
%gala_546687._.._onin_gala_core_core_windows.Builder = type {[4096 x i8],i64}
%gala_162268._.._onin_gala_core_cfunctions_windows.TypeInfo = type {{ ptr, i64 },i64,i64,i64,i64,{ ptr, i64 }}
%gala_162268._.._onin_gala_core_cfunctions_windows.TypeField = type {{ ptr, i64 },i64,i64}
declare void @llvm.memcpy.p0.p0.i64(ptr, ptr, i64, i1)
declare void @llvm.memmove.p0.p0.i64(ptr, ptr, i64, i1)
declare void @llvm.memset.p0.i64(ptr, i8, i64, i1)
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

define ptr @gala_546687._.._onin_gala_core_core_windows.ptr_add (ptr %p, i64 %bytes) {
entry:
	%47 = ptrtoint ptr %p to i64
	%48 = add i64 %47, %bytes
	%49 = inttoptr i64 %48 to ptr
	ret ptr %49

}
define ptr @gala_546687._.._onin_gala_core_core_windows.str_data (ptr noundef %s) {
entry:
	%51 = load { ptr, i64 }, ptr %s
	%52 = extractvalue { ptr, i64 } %51, 1
	%53 = icmp eq i64 %52, 0
	br i1 %53, label %base_block_label50, label %end_label50
base_block_label50:
	%54 = inttoptr i64 0 to ptr
	ret ptr %54

end_label50:

	%55 = load { ptr, i64 }, ptr %s
	%56 = extractvalue { ptr, i64 } %55, 0
	%57 = getelementptr inbounds i8, ptr %56, i64 0
	ret ptr %57

}
define zeroext i1 @gala_546687._.._onin_gala_core_core_windows.str_eq (ptr noundef %a, ptr noundef %b) {
entry:
	%i.312 = alloca i64
	%59 = load { ptr, i64 }, ptr %a
	%60 = extractvalue { ptr, i64 } %59, 1
	%61 = load { ptr, i64 }, ptr %b
	%62 = extractvalue { ptr, i64 } %61, 1
	%63 = icmp ne i64 %60, %62
	br i1 %63, label %base_block_label58, label %end_label58
base_block_label58:
	ret i1 0

end_label58:

	store i64 0, ptr %i.312

	br label %while_cond_label64
while_cond_label64:
	%65 = load i64, ptr %i.312
	%66 = load { ptr, i64 }, ptr %a
	%67 = extractvalue { ptr, i64 } %66, 1
	%68 = icmp slt i64 %65, %67
	br i1 %68, label %while_body_label64, label %while_end_label64
while_body_label64:
	%70 = load { ptr, i64 }, ptr %a
	%71 = extractvalue { ptr, i64 } %70, 0
	%72 = load i64, ptr %i.312
	%73 = getelementptr inbounds i8, ptr %71, i64 %72
	%74 = load i8, ptr %73
	%75 = load { ptr, i64 }, ptr %b
	%76 = extractvalue { ptr, i64 } %75, 0
	%77 = load i64, ptr %i.312
	%78 = getelementptr inbounds i8, ptr %76, i64 %77
	%79 = load i8, ptr %78
	%80 = icmp ne i8 %74, %79
	br i1 %80, label %base_block_label69, label %end_label69
base_block_label69:
	ret i1 0

end_label69:

	%81 = load i64, ptr %i.312
	%82 = add i64 %81, 1
	store i64 %82, ptr %i.312

	br label %while_cond_label64
while_end_label64:

	ret i1 1

}
define void @gala_546687._.._onin_gala_core_core_windows.builder_make (ptr sret(%gala_546687._.._onin_gala_core_core_windows.Builder) align 8 %.sret) {
entry:
	%83 = getelementptr inbounds %gala_546687._.._onin_gala_core_core_windows.Builder, ptr %.sret, i32 0, i32 0
	call void @llvm.memset.p0.i64(ptr %83, i8 0, i64 4096, i1 false)
	%84 = getelementptr inbounds %gala_546687._.._onin_gala_core_core_windows.Builder, ptr %.sret, i32 0, i32 1
	store i64 0, ptr %84
	ret void

}
define void @gala_546687._.._onin_gala_core_core_windows.builder_push_byte (ptr %b, i8 %c) {
entry:
	%86 = getelementptr inbounds %gala_546687._.._onin_gala_core_core_windows.Builder, ptr %b, i32 0, i32 1
	%87 = load i64, ptr %86
	%88 = icmp slt i64 %87, 4096
	br i1 %88, label %base_block_label85, label %end_label85
base_block_label85:
	%89 = getelementptr inbounds %gala_546687._.._onin_gala_core_core_windows.Builder, ptr %b, i32 0, i32 0
	%90 = getelementptr inbounds %gala_546687._.._onin_gala_core_core_windows.Builder, ptr %b, i32 0, i32 1
	%91 = load i64, ptr %90
	%92 = getelementptr inbounds i8, ptr %89, i64 %91
	store i8 %c, ptr %92

	%93 = getelementptr inbounds %gala_546687._.._onin_gala_core_core_windows.Builder, ptr %b, i32 0, i32 1
	%94 = load i64, ptr %93
	%95 = add i64 %94, 1
	store i64 %95, ptr %93

	br label %end_label85
end_label85:

	ret void
}
define void @gala_546687._.._onin_gala_core_core_windows.builder_push_string (ptr %b, ptr noundef %s) {
entry:
	%i.317 = alloca i64
	store i64 0, ptr %i.317

	br label %while_cond_label96
while_cond_label96:
	%97 = load i64, ptr %i.317
	%98 = load { ptr, i64 }, ptr %s
	%99 = extractvalue { ptr, i64 } %98, 1
	%100 = icmp slt i64 %97, %99
	br i1 %100, label %while_body_label96, label %while_end_label96
while_body_label96:
	%101 = load { ptr, i64 }, ptr %s
	%102 = extractvalue { ptr, i64 } %101, 0
	%103 = load i64, ptr %i.317
	%104 = getelementptr inbounds i8, ptr %102, i64 %103
	%105 = load i8, ptr %104
	call void @gala_546687._.._onin_gala_core_core_windows.builder_push_byte(ptr %b, i8 %105)

	%106 = load i64, ptr %i.317
	%107 = add i64 %106, 1
	store i64 %107, ptr %i.317

	br label %while_cond_label96
while_end_label96:

	ret void
}
define void @gala_546687._.._onin_gala_core_core_windows.builder_push_digit (ptr %b, i64 %d) {
entry:
	%109 = icmp ult i64 %d, 10
	br i1 %109, label %base_block_label108, label %else_block_label108
base_block_label108:
	%110 = add i64 48, %d
	%111 = trunc i64 %110 to i8
	call void @gala_546687._.._onin_gala_core_core_windows.builder_push_byte(ptr %b, i8 %111)

	br label %end_label108
else_block_label108:
	%112 = add i64 97, %d
	%113 = sub i64 %112, 10
	%114 = trunc i64 %113 to i8
	call void @gala_546687._.._onin_gala_core_core_windows.builder_push_byte(ptr %b, i8 %114)

	br label %end_label108
end_label108:

	ret void
}
define void @gala_546687._.._onin_gala_core_core_windows.builder_bytes (ptr sret({ ptr, i64 }) align 8 %.sret, ptr %b) {
entry:
	%115 = getelementptr inbounds %gala_546687._.._onin_gala_core_core_windows.Builder, ptr %b, i32 0, i32 1
	%116 = load i64, ptr %115
	%117 = sub nsw nuw i64 %116, 0
	%118 = getelementptr inbounds %gala_546687._.._onin_gala_core_core_windows.Builder, ptr %b, i32 0, i32 0
	%119 = getelementptr inbounds i8, ptr %118, i64 0
	%120 = insertvalue { ptr, i64 } undef, ptr %119, 0
	%121 = insertvalue { ptr, i64 } %120, i64 %117, 1
	store { ptr, i64 } %121, ptr %.sret
	ret void

}
define i64 @gala_546687._.._onin_gala_core_core_windows.write_fd (i32 %fd, ptr noundef %data) {
entry:
	%total.323 = alloca i64
	%size.324 = alloca i64
	%rest.325 = alloca { ptr, i64 }
	%slot138 = alloca { ptr, i64 }
	%written.326 = alloca i64
	store i64 0, ptr %total.323

	%122 = load { ptr, i64 }, ptr %data
	%123 = extractvalue { ptr, i64 } %122, 1
	store i64 %123, ptr %size.324

	br label %while_cond_label124
while_cond_label124:
	%125 = load i64, ptr %total.323
	%126 = load i64, ptr %size.324
	%127 = icmp slt i64 %125, %126
	br i1 %127, label %while_body_label124, label %while_end_label124
while_body_label124:
	%128 = load i64, ptr %total.323
	%129 = load { ptr, i64 }, ptr %data
	%130 = extractvalue { ptr, i64 } %129, 1
	%131 = sub nsw nuw i64 %130, %128
	%132 = load { ptr, i64 }, ptr %data
	%133 = extractvalue { ptr, i64 } %132, 0
	%134 = getelementptr inbounds i8, ptr %133, i64 %128
	%135 = insertvalue { ptr, i64 } undef, ptr %134, 0
	%136 = insertvalue { ptr, i64 } %135, i64 %131, 1
	store { ptr, i64 } %136, ptr %rest.325

	%137 = load { ptr, i64 }, ptr %rest.325
	store { ptr, i64 } %137, ptr %slot138, align 8
	%139 = call ptr @gala_546687._.._onin_gala_core_core_windows.raw_data.a_byte.v0(ptr noundef %slot138)
	%140 = load { ptr, i64 }, ptr %rest.325
	%141 = extractvalue { ptr, i64 } %140, 1
	%142 = trunc i64 %141 to i32
	%143 = call i32 @_write(i32 %fd, ptr %139, i32 %142)
	%144 = sext i32 %143 to i64
	store i64 %144, ptr %written.326

	%146 = load i64, ptr %written.326
	%147 = icmp sle i64 %146, 0
	br i1 %147, label %base_block_label145, label %end_label145
base_block_label145:
	%148 = sub i64 0, 1
	ret i64 %148

end_label145:

	%149 = load i64, ptr %total.323
	%150 = load i64, ptr %written.326
	%151 = add i64 %149, %150
	store i64 %151, ptr %total.323

	br label %while_cond_label124
while_end_label124:

	%152 = load i64, ptr %total.323
	ret i64 %152

}
define i64 @gala_546687._.._onin_gala_core_core_windows.write_stdout (ptr noundef %data) {
entry:
	%slot154 = alloca { ptr, i64 }
	%153 = load { ptr, i64 }, ptr %data
	store { ptr, i64 } %153, ptr %slot154, align 8
	%155 = call i64 @gala_546687._.._onin_gala_core_core_windows.write_fd(i32 1, ptr noundef %slot154)
	ret i64 %155

}
define i64 @gala_546687._.._onin_gala_core_core_windows.builder_flush (ptr %b, i32 %fd) {
entry:
	%slot156 = alloca { ptr, i64 }
	%slot158 = alloca { ptr, i64 }
	%written.330 = alloca i64
	call void @gala_546687._.._onin_gala_core_core_windows.builder_bytes(ptr sret({ ptr, i64 }) align 8 %slot156, ptr %b)
	%157 = load { ptr, i64 }, ptr %slot156
	store { ptr, i64 } %157, ptr %slot158, align 8
	%159 = call i64 @gala_546687._.._onin_gala_core_core_windows.write_fd(i32 %fd, ptr noundef %slot158)
	store i64 %159, ptr %written.330

	%160 = getelementptr inbounds %gala_546687._.._onin_gala_core_core_windows.Builder, ptr %b, i32 0, i32 1
	store i64 0, ptr %160

	%161 = load i64, ptr %written.330
	ret i64 %161

}
define void @gala_546687._.._onin_gala_core_core_windows.fmt_u64_padded (ptr %b, i64 %v, i64 %base, i64 %width) {
entry:
	%div.335 = alloca i64
	%digits.336 = alloca i64
	store i64 1, ptr %div.335

	store i64 1, ptr %digits.336

	br label %while_cond_label162
while_cond_label162:
	%163 = load i64, ptr %div.335
	%164 = udiv i64 %v, %163
	%165 = icmp uge i64 %164, %base
	br i1 %165, label %while_body_label162, label %while_end_label162
while_body_label162:
	%166 = load i64, ptr %div.335
	%167 = mul i64 %166, %base
	store i64 %167, ptr %div.335

	%168 = load i64, ptr %digits.336
	%169 = add i64 %168, 1
	store i64 %169, ptr %digits.336

	br label %while_cond_label162
while_end_label162:

	br label %while_cond_label170
while_cond_label170:
	%171 = load i64, ptr %digits.336
	%172 = icmp slt i64 %171, %width
	br i1 %172, label %while_body_label170, label %while_end_label170
while_body_label170:
	call void @gala_546687._.._onin_gala_core_core_windows.builder_push_byte(ptr %b, i8 48)

	%173 = load i64, ptr %digits.336
	%174 = add i64 %173, 1
	store i64 %174, ptr %digits.336

	br label %while_cond_label170
while_end_label170:

	br label %while_cond_label175
while_cond_label175:
	%176 = load i64, ptr %div.335
	%177 = icmp ugt i64 %176, 0
	br i1 %177, label %while_body_label175, label %while_end_label175
while_body_label175:
	%178 = load i64, ptr %div.335
	%179 = udiv i64 %v, %178
	%180 = urem i64 %179, %base
	call void @gala_546687._.._onin_gala_core_core_windows.builder_push_digit(ptr %b, i64 %180)

	%181 = load i64, ptr %div.335
	%182 = udiv i64 %181, %base
	store i64 %182, ptr %div.335

	br label %while_cond_label175
while_end_label175:

	ret void
}
define void @gala_546687._.._onin_gala_core_core_windows.fmt_u64 (ptr %b, i64 %v) {
entry:
	call void @gala_546687._.._onin_gala_core_core_windows.fmt_u64_padded(ptr %b, i64 %v, i64 10, i64 1)

	ret void
}
define void @gala_546687._.._onin_gala_core_core_windows.fmt_i64 (ptr %b, i64 %v) {
entry:
	%184 = icmp slt i64 %v, 0
	br i1 %184, label %base_block_label183, label %else_block_label183
base_block_label183:
	call void @gala_546687._.._onin_gala_core_core_windows.builder_push_byte(ptr %b, i8 45)

	%185 = sub i64 0, %v
	call void @gala_546687._.._onin_gala_core_core_windows.fmt_u64(ptr %b, i64 %185)

	br label %end_label183
else_block_label183:
	call void @gala_546687._.._onin_gala_core_core_windows.fmt_u64(ptr %b, i64 %v)

	br label %end_label183
end_label183:

	ret void
}
define void @gala_546687._.._onin_gala_core_core_windows.fmt_hex (ptr %b, i64 %v) {
entry:
	%slot189 = alloca { ptr, i64 }
	%186 = getelementptr inbounds [3 x i8], ptr @string19, i64 0, i64 0
	%187 = insertvalue { ptr, i64 } undef, ptr %186, 0
	%188 = insertvalue { ptr, i64 } %187, i64 2, 1
	store { ptr, i64 } %188, ptr %slot189, align 8
	call void @gala_546687._.._onin_gala_core_core_windows.builder_push_string(ptr %b, ptr noundef %slot189)

	call void @gala_546687._.._onin_gala_core_core_windows.fmt_u64_padded(ptr %b, i64 %v, i64 16, i64 1)

	ret void
}
define void @gala_546687._.._onin_gala_core_core_windows.fmt_f64 (ptr %b, double %x) {
entry:
	%slot195 = alloca { ptr, i64 }
	%v.345 = alloca double
	%slot209 = alloca { ptr, i64 }
	%slot216 = alloca { ptr, i64 }
	%int_part.346 = alloca i64
	%frac.347 = alloca i64
	%frac_digits.348 = alloca i64
	%slot235 = alloca i1
	%191 = fcmp une double %x, %x
	br i1 %191, label %base_block_label190, label %end_label190
base_block_label190:
	%192 = getelementptr inbounds [4 x i8], ptr @string20, i64 0, i64 0
	%193 = insertvalue { ptr, i64 } undef, ptr %192, 0
	%194 = insertvalue { ptr, i64 } %193, i64 3, 1
	store { ptr, i64 } %194, ptr %slot195, align 8
	call void @gala_546687._.._onin_gala_core_core_windows.builder_push_string(ptr %b, ptr noundef %slot195)

	ret void

end_label190:

	store double %x, ptr %v.345

	%197 = load double, ptr %v.345
	%198 = fcmp olt double %197, 0x0000000000000000
	br i1 %198, label %base_block_label196, label %end_label196
base_block_label196:
	call void @gala_546687._.._onin_gala_core_core_windows.builder_push_byte(ptr %b, i8 45)

	%199 = load double, ptr %v.345
	%200 = fsub double 0x0000000000000000, %199
	store double %200, ptr %v.345

	br label %end_label196
end_label196:

	%202 = load double, ptr %v.345
	%203 = load double, ptr %v.345
	%204 = fsub double %202, %203
	%205 = fcmp une double %204, 0x0000000000000000
	br i1 %205, label %base_block_label201, label %end_label201
base_block_label201:
	%206 = getelementptr inbounds [4 x i8], ptr @string21, i64 0, i64 0
	%207 = insertvalue { ptr, i64 } undef, ptr %206, 0
	%208 = insertvalue { ptr, i64 } %207, i64 3, 1
	store { ptr, i64 } %208, ptr %slot209, align 8
	call void @gala_546687._.._onin_gala_core_core_windows.builder_push_string(ptr %b, ptr noundef %slot209)

	ret void

end_label201:

	%211 = load double, ptr %v.345
	%212 = fcmp oge double %211, 0x43F0000000000000
	br i1 %212, label %base_block_label210, label %end_label210
base_block_label210:
	%213 = getelementptr inbounds [10 x i8], ptr @string22, i64 0, i64 0
	%214 = insertvalue { ptr, i64 } undef, ptr %213, 0
	%215 = insertvalue { ptr, i64 } %214, i64 9, 1
	store { ptr, i64 } %215, ptr %slot216, align 8
	call void @gala_546687._.._onin_gala_core_core_windows.builder_push_string(ptr %b, ptr noundef %slot216)

	ret void

end_label210:

	%217 = load double, ptr %v.345
	%218 = fptoui double %217 to i64
	store i64 %218, ptr %int_part.346

	%219 = load double, ptr %v.345
	%220 = load i64, ptr %int_part.346
	%221 = uitofp i64 %220 to double
	%222 = fsub double %219, %221
	%223 = fmul double %222, 0x412E848000000000
	%224 = fadd double %223, 0x3FE0000000000000
	%225 = fptoui double %224 to i64
	store i64 %225, ptr %frac.347

	%227 = load i64, ptr %frac.347
	%228 = icmp uge i64 %227, 1000000
	br i1 %228, label %base_block_label226, label %end_label226
base_block_label226:
	%229 = load i64, ptr %int_part.346
	%230 = add i64 %229, 1
	store i64 %230, ptr %int_part.346

	%231 = load i64, ptr %frac.347
	%232 = sub i64 %231, 1000000
	store i64 %232, ptr %frac.347

	br label %end_label226
end_label226:

	%233 = load i64, ptr %int_part.346
	call void @gala_546687._.._onin_gala_core_core_windows.fmt_u64(ptr %b, i64 %233)

	store i64 6, ptr %frac_digits.348

	br label %while_cond_label234
while_cond_label234:
	%237 = load i64, ptr %frac_digits.348
	%238 = icmp sgt i64 %237, 0
	store i1 %238, ptr %slot235
	br i1 %238, label %logic.rhs.236, label %logic.end.236
logic.rhs.236:
	%239 = load i64, ptr %frac.347
	%240 = urem i64 %239, 10
	%241 = icmp eq i64 %240, 0
	store i1 %241, ptr %slot235
	br label %logic.end.236
logic.end.236:
	%242 = load i1, ptr %slot235
	br i1 %242, label %while_body_label234, label %while_end_label234
while_body_label234:
	%243 = load i64, ptr %frac.347
	%244 = udiv i64 %243, 10
	store i64 %244, ptr %frac.347

	%245 = load i64, ptr %frac_digits.348
	%246 = sub i64 %245, 1
	store i64 %246, ptr %frac_digits.348

	br label %while_cond_label234
while_end_label234:

	%248 = load i64, ptr %frac_digits.348
	%249 = icmp sgt i64 %248, 0
	br i1 %249, label %base_block_label247, label %end_label247
base_block_label247:
	call void @gala_546687._.._onin_gala_core_core_windows.builder_push_byte(ptr %b, i8 46)

	%250 = load i64, ptr %frac.347
	%251 = load i64, ptr %frac_digits.348
	call void @gala_546687._.._onin_gala_core_core_windows.fmt_u64_padded(ptr %b, i64 %250, i64 10, i64 %251)

	br label %end_label247
end_label247:

	ret void
}
define void @gala_546687._.._onin_gala_core_core_windows.fmt_int_at (ptr %b, ptr %data, i64 %size) {
entry:
	%p.352 = alloca ptr
	%p.353 = alloca ptr
	%p.354 = alloca ptr
	%p.355 = alloca ptr
	%253 = icmp eq i64 %size, 8
	br i1 %253, label %base_block_label252, label %alt_cond_label252_0
base_block_label252:
	%254 = bitcast ptr %data to ptr
	store ptr %254, ptr %p.352

	%255 = load ptr, ptr %p.352
	%256 = load i64, ptr %255
	call void @gala_546687._.._onin_gala_core_core_windows.fmt_i64(ptr %b, i64 %256)

	br label %end_label252
alt_cond_label252_0:
	%257 = icmp eq i64 %size, 4
	br i1 %257, label %alt_block_label252_0, label %alt_cond_label252_1
alt_block_label252_0:
	%258 = bitcast ptr %data to ptr
	store ptr %258, ptr %p.353

	%259 = load ptr, ptr %p.353
	%260 = load i32, ptr %259
	%261 = sext i32 %260 to i64
	call void @gala_546687._.._onin_gala_core_core_windows.fmt_i64(ptr %b, i64 %261)

	br label %end_label252
alt_cond_label252_1:
	%262 = icmp eq i64 %size, 2
	br i1 %262, label %alt_block_label252_1, label %else_block_label252
alt_block_label252_1:
	%263 = bitcast ptr %data to ptr
	store ptr %263, ptr %p.354

	%264 = load ptr, ptr %p.354
	%265 = load i16, ptr %264
	%266 = sext i16 %265 to i64
	call void @gala_546687._.._onin_gala_core_core_windows.fmt_i64(ptr %b, i64 %266)

	br label %end_label252
else_block_label252:
	%267 = bitcast ptr %data to ptr
	store ptr %267, ptr %p.355

	%268 = load ptr, ptr %p.355
	%269 = load i8, ptr %268
	%270 = sext i8 %269 to i64
	call void @gala_546687._.._onin_gala_core_core_windows.fmt_i64(ptr %b, i64 %270)

	br label %end_label252
end_label252:

	ret void
}
define void @gala_546687._.._onin_gala_core_core_windows.fmt_uint_at (ptr %b, ptr %data, i64 %size) {
entry:
	%p.359 = alloca ptr
	%p.360 = alloca ptr
	%p.361 = alloca ptr
	%p.362 = alloca ptr
	%272 = icmp eq i64 %size, 8
	br i1 %272, label %base_block_label271, label %alt_cond_label271_0
base_block_label271:
	%273 = bitcast ptr %data to ptr
	store ptr %273, ptr %p.359

	%274 = load ptr, ptr %p.359
	%275 = load i64, ptr %274
	call void @gala_546687._.._onin_gala_core_core_windows.fmt_u64(ptr %b, i64 %275)

	br label %end_label271
alt_cond_label271_0:
	%276 = icmp eq i64 %size, 4
	br i1 %276, label %alt_block_label271_0, label %alt_cond_label271_1
alt_block_label271_0:
	%277 = bitcast ptr %data to ptr
	store ptr %277, ptr %p.360

	%278 = load ptr, ptr %p.360
	%279 = load i32, ptr %278
	%280 = zext i32 %279 to i64
	call void @gala_546687._.._onin_gala_core_core_windows.fmt_u64(ptr %b, i64 %280)

	br label %end_label271
alt_cond_label271_1:
	%281 = icmp eq i64 %size, 2
	br i1 %281, label %alt_block_label271_1, label %else_block_label271
alt_block_label271_1:
	%282 = bitcast ptr %data to ptr
	store ptr %282, ptr %p.361

	%283 = load ptr, ptr %p.361
	%284 = load i16, ptr %283
	%285 = zext i16 %284 to i64
	call void @gala_546687._.._onin_gala_core_core_windows.fmt_u64(ptr %b, i64 %285)

	br label %end_label271
else_block_label271:
	%286 = bitcast ptr %data to ptr
	store ptr %286, ptr %p.362

	%287 = load ptr, ptr %p.362
	%288 = load i8, ptr %287
	%289 = zext i8 %288 to i64
	call void @gala_546687._.._onin_gala_core_core_windows.fmt_u64(ptr %b, i64 %289)

	br label %end_label271
end_label271:

	ret void
}
define void @gala_546687._.._onin_gala_core_core_windows.fmt_float_at (ptr %b, ptr %data, i64 %size) {
entry:
	%p.366 = alloca ptr
	%p.367 = alloca ptr
	%291 = icmp eq i64 %size, 8
	br i1 %291, label %base_block_label290, label %else_block_label290
base_block_label290:
	%292 = bitcast ptr %data to ptr
	store ptr %292, ptr %p.366

	%293 = load ptr, ptr %p.366
	%294 = load double, ptr %293
	call void @gala_546687._.._onin_gala_core_core_windows.fmt_f64(ptr %b, double %294)

	br label %end_label290
else_block_label290:
	%295 = bitcast ptr %data to ptr
	store ptr %295, ptr %p.367

	%296 = load ptr, ptr %p.367
	%297 = load float, ptr %296
	%298 = fpext float %297 to double
	call void @gala_546687._.._onin_gala_core_core_windows.fmt_f64(ptr %b, double %298)

	br label %end_label290
end_label290:

	ret void
}
define void @gala_546687._.._onin_gala_core_core_windows.fmt_struct_at (ptr %b, ptr %data, ptr %info) {
entry:
	%slot301 = alloca { ptr, i64 }
	%slot310 = alloca { ptr, i64 }
	%slot314 = alloca { ptr, i64 }
	%i.371 = alloca i64
	%__for_iter0.994 = alloca { ptr, i64 }
	%__for_idx0.995 = alloca i64
	%f.372 = alloca %gala_162268._.._onin_gala_core_cfunctions_windows.TypeField
	%slot335 = alloca { ptr, i64 }
	%slot338 = alloca { ptr, i64 }
	%slot342 = alloca { ptr, i64 }
	%slot353 = alloca { ptr, i64 }
	%299 = getelementptr inbounds %gala_162268._.._onin_gala_core_cfunctions_windows.TypeInfo, ptr %info, i32 0, i32 0
	%300 = load { ptr, i64 }, ptr %299
	store { ptr, i64 } %300, ptr %slot301, align 8
	call void @gala_546687._.._onin_gala_core_core_windows.builder_push_string(ptr %b, ptr noundef %slot301)

	%303 = getelementptr inbounds %gala_162268._.._onin_gala_core_cfunctions_windows.TypeInfo, ptr %info, i32 0, i32 5
	%304 = load { ptr, i64 }, ptr %303
	%305 = extractvalue { ptr, i64 } %304, 1
	%306 = icmp eq i64 %305, 0
	br i1 %306, label %base_block_label302, label %end_label302
base_block_label302:
	%307 = getelementptr inbounds [4 x i8], ptr @string23, i64 0, i64 0
	%308 = insertvalue { ptr, i64 } undef, ptr %307, 0
	%309 = insertvalue { ptr, i64 } %308, i64 3, 1
	store { ptr, i64 } %309, ptr %slot310, align 8
	call void @gala_546687._.._onin_gala_core_core_windows.builder_push_string(ptr %b, ptr noundef %slot310)

	ret void

end_label302:

	%311 = getelementptr inbounds [4 x i8], ptr @string24, i64 0, i64 0
	%312 = insertvalue { ptr, i64 } undef, ptr %311, 0
	%313 = insertvalue { ptr, i64 } %312, i64 3, 1
	store { ptr, i64 } %313, ptr %slot314, align 8
	call void @gala_546687._.._onin_gala_core_core_windows.builder_push_string(ptr %b, ptr noundef %slot314)

	store i64 0, ptr %i.371

	%315 = getelementptr inbounds %gala_162268._.._onin_gala_core_cfunctions_windows.TypeInfo, ptr %info, i32 0, i32 5
	%316 = load { ptr, i64 }, ptr %315
	store { ptr, i64 } %316, ptr %__for_iter0.994

	store i64 0, ptr %__for_idx0.995

	br label %while_cond_label317
while_cond_label317:
	%318 = load i64, ptr %__for_idx0.995
	%319 = load { ptr, i64 }, ptr %__for_iter0.994
	%320 = extractvalue { ptr, i64 } %319, 1
	%321 = icmp slt i64 %318, %320
	br i1 %321, label %while_body_label317, label %while_end_label317
while_body_label317:
	%322 = load { ptr, i64 }, ptr %__for_iter0.994
	%323 = extractvalue { ptr, i64 } %322, 0
	%324 = load i64, ptr %__for_idx0.995
	%325 = getelementptr inbounds %gala_162268._.._onin_gala_core_cfunctions_windows.TypeField, ptr %323, i64 %324
	%326 = load %gala_162268._.._onin_gala_core_cfunctions_windows.TypeField, ptr %325
	store %gala_162268._.._onin_gala_core_cfunctions_windows.TypeField %326, ptr %f.372

	%327 = load i64, ptr %__for_idx0.995
	%328 = add i64 %327, 1
	store i64 %328, ptr %__for_idx0.995

	%330 = load i64, ptr %i.371
	%331 = icmp sgt i64 %330, 0
	br i1 %331, label %base_block_label329, label %end_label329
base_block_label329:
	%332 = getelementptr inbounds [3 x i8], ptr @string25, i64 0, i64 0
	%333 = insertvalue { ptr, i64 } undef, ptr %332, 0
	%334 = insertvalue { ptr, i64 } %333, i64 2, 1
	store { ptr, i64 } %334, ptr %slot335, align 8
	call void @gala_546687._.._onin_gala_core_core_windows.builder_push_string(ptr %b, ptr noundef %slot335)

	br label %end_label329
end_label329:

	%336 = getelementptr inbounds %gala_162268._.._onin_gala_core_cfunctions_windows.TypeField, ptr %f.372, i32 0, i32 0
	%337 = load { ptr, i64 }, ptr %336
	store { ptr, i64 } %337, ptr %slot338, align 8
	call void @gala_546687._.._onin_gala_core_core_windows.builder_push_string(ptr %b, ptr noundef %slot338)

	%339 = getelementptr inbounds [4 x i8], ptr @string26, i64 0, i64 0
	%340 = insertvalue { ptr, i64 } undef, ptr %339, 0
	%341 = insertvalue { ptr, i64 } %340, i64 3, 1
	store { ptr, i64 } %341, ptr %slot342, align 8
	call void @gala_546687._.._onin_gala_core_core_windows.builder_push_string(ptr %b, ptr noundef %slot342)

	%343 = getelementptr inbounds %gala_162268._.._onin_gala_core_cfunctions_windows.TypeField, ptr %f.372, i32 0, i32 2
	%344 = load i64, ptr %343
	%345 = call ptr @gala_546687._.._onin_gala_core_core_windows.ptr_add(ptr %data, i64 %344)
	%346 = getelementptr inbounds %gala_162268._.._onin_gala_core_cfunctions_windows.TypeField, ptr %f.372, i32 0, i32 1
	%347 = load i64, ptr %346
	call void @gala_546687._.._onin_gala_core_core_windows.fmt_value(ptr %b, ptr %345, i64 %347, i1 zeroext 1)

	%348 = load i64, ptr %i.371
	%349 = add i64 %348, 1
	store i64 %349, ptr %i.371

	br label %while_cond_label317
while_end_label317:

	%350 = getelementptr inbounds [3 x i8], ptr @string27, i64 0, i64 0
	%351 = insertvalue { ptr, i64 } undef, ptr %350, 0
	%352 = insertvalue { ptr, i64 } %351, i64 2, 1
	store { ptr, i64 } %352, ptr %slot353, align 8
	call void @gala_546687._.._onin_gala_core_core_windows.builder_push_string(ptr %b, ptr noundef %slot353)

	ret void
}
define void @gala_546687._.._onin_gala_core_core_windows.fmt_list_at (ptr %b, ptr %data, ptr %info) {
entry:
	%elems.376 = alloca ptr
	%n.377 = alloca i64
	%slice_ptr.378 = alloca ptr
	%slice_count.379 = alloca ptr
	%elem_size.380 = alloca i64
	%i.381 = alloca i64
	%slot382 = alloca { ptr, i64 }
	store ptr %data, ptr %elems.376

	%354 = getelementptr inbounds %gala_162268._.._onin_gala_core_cfunctions_windows.TypeInfo, ptr %info, i32 0, i32 4
	%355 = load i64, ptr %354
	store i64 %355, ptr %n.377

	%357 = getelementptr inbounds %gala_162268._.._onin_gala_core_cfunctions_windows.TypeInfo, ptr %info, i32 0, i32 1
	%358 = load i64, ptr %357
	%359 = icmp eq i64 %358, 9
	br i1 %359, label %base_block_label356, label %end_label356
base_block_label356:
	%360 = bitcast ptr %data to ptr
	store ptr %360, ptr %slice_ptr.378

	%361 = call ptr @gala_546687._.._onin_gala_core_core_windows.ptr_add(ptr %data, i64 8)
	%362 = bitcast ptr %361 to ptr
	store ptr %362, ptr %slice_count.379

	%363 = load ptr, ptr %slice_ptr.378
	%364 = load ptr, ptr %363
	store ptr %364, ptr %elems.376

	%365 = load ptr, ptr %slice_count.379
	%366 = load i64, ptr %365
	store i64 %366, ptr %n.377

	br label %end_label356
end_label356:

	%367 = getelementptr inbounds %gala_162268._.._onin_gala_core_cfunctions_windows.TypeInfo, ptr %info, i32 0, i32 3
	%368 = load i64, ptr %367
	%369 = getelementptr inbounds %gala_162268._.._onin_gala_core_cfunctions_windows.TypeInfo, ptr @__gala_types, i64 %368
	%370 = getelementptr inbounds %gala_162268._.._onin_gala_core_cfunctions_windows.TypeInfo, ptr %369, i32 0, i32 2
	%371 = load i64, ptr %370
	store i64 %371, ptr %elem_size.380

	call void @gala_546687._.._onin_gala_core_core_windows.builder_push_byte(ptr %b, i8 91)

	store i64 0, ptr %i.381

	br label %while_cond_label372
while_cond_label372:
	%373 = load i64, ptr %i.381
	%374 = load i64, ptr %n.377
	%375 = icmp slt i64 %373, %374
	br i1 %375, label %while_body_label372, label %while_end_label372
while_body_label372:
	%377 = load i64, ptr %i.381
	%378 = icmp sgt i64 %377, 0
	br i1 %378, label %base_block_label376, label %end_label376
base_block_label376:
	%379 = getelementptr inbounds [3 x i8], ptr @string25, i64 0, i64 0
	%380 = insertvalue { ptr, i64 } undef, ptr %379, 0
	%381 = insertvalue { ptr, i64 } %380, i64 2, 1
	store { ptr, i64 } %381, ptr %slot382, align 8
	call void @gala_546687._.._onin_gala_core_core_windows.builder_push_string(ptr %b, ptr noundef %slot382)

	br label %end_label376
end_label376:

	%383 = load ptr, ptr %elems.376
	%384 = load i64, ptr %i.381
	%385 = load i64, ptr %elem_size.380
	%386 = mul i64 %384, %385
	%387 = call ptr @gala_546687._.._onin_gala_core_core_windows.ptr_add(ptr %383, i64 %386)
	%388 = getelementptr inbounds %gala_162268._.._onin_gala_core_cfunctions_windows.TypeInfo, ptr %info, i32 0, i32 3
	%389 = load i64, ptr %388
	call void @gala_546687._.._onin_gala_core_core_windows.fmt_value(ptr %b, ptr %387, i64 %389, i1 zeroext 1)

	%390 = load i64, ptr %i.381
	%391 = add i64 %390, 1
	store i64 %391, ptr %i.381

	br label %while_cond_label372
while_end_label372:

	call void @gala_546687._.._onin_gala_core_core_windows.builder_push_byte(ptr %b, i8 93)

	ret void
}
define void @gala_546687._.._onin_gala_core_core_windows.fmt_value (ptr %b, ptr %data, i64 %id, i1 zeroext %nested) {
entry:
	%info.386 = alloca ptr
	%k.387 = alloca i64
	%slot402 = alloca i1
	%slot404 = alloca i1
	%bool_p.388 = alloca ptr
	%slot431 = alloca { ptr, i64 }
	%slot435 = alloca { ptr, i64 }
	%str_p.389 = alloca ptr
	%slot442 = alloca { ptr, i64 }
	%addr_p.390 = alloca ptr
	%slot454 = alloca { ptr, i64 }
	%any_p.391 = alloca ptr
	%slot469 = alloca i1
	%slot480 = alloca { ptr, i64 }
	%392 = getelementptr inbounds %gala_162268._.._onin_gala_core_cfunctions_windows.TypeInfo, ptr @__gala_types, i64 %id
	store ptr %392, ptr %info.386

	%393 = load ptr, ptr %info.386
	%394 = getelementptr inbounds %gala_162268._.._onin_gala_core_cfunctions_windows.TypeInfo, ptr %393, i32 0, i32 1
	%395 = load i64, ptr %394
	store i64 %395, ptr %k.387

	%397 = load i64, ptr %k.387
	%398 = icmp eq i64 %397, 1
	br i1 %398, label %base_block_label396, label %alt_cond_label396_0
base_block_label396:
	%399 = load ptr, ptr %info.386
	%400 = getelementptr inbounds %gala_162268._.._onin_gala_core_cfunctions_windows.TypeInfo, ptr %399, i32 0, i32 2
	%401 = load i64, ptr %400
	call void @gala_546687._.._onin_gala_core_core_windows.fmt_int_at(ptr %b, ptr %data, i64 %401)

	br label %end_label396
alt_cond_label396_0:
	%406 = load i64, ptr %k.387
	%407 = icmp eq i64 %406, 2
	store i1 %407, ptr %slot404
	br i1 %407, label %logic.end.405, label %logic.rhs.405
logic.rhs.405:
	%408 = load i64, ptr %k.387
	%409 = icmp eq i64 %408, 5
	store i1 %409, ptr %slot404
	br label %logic.end.405
logic.end.405:
	%410 = load i1, ptr %slot404
	store i1 %410, ptr %slot402
	br i1 %410, label %logic.end.403, label %logic.rhs.403
logic.rhs.403:
	%411 = load i64, ptr %k.387
	%412 = icmp eq i64 %411, 6
	store i1 %412, ptr %slot402
	br label %logic.end.403
logic.end.403:
	%413 = load i1, ptr %slot402
	br i1 %413, label %alt_block_label396_0, label %alt_cond_label396_1
alt_block_label396_0:
	%414 = load ptr, ptr %info.386
	%415 = getelementptr inbounds %gala_162268._.._onin_gala_core_cfunctions_windows.TypeInfo, ptr %414, i32 0, i32 2
	%416 = load i64, ptr %415
	call void @gala_546687._.._onin_gala_core_core_windows.fmt_uint_at(ptr %b, ptr %data, i64 %416)

	br label %end_label396
alt_cond_label396_1:
	%417 = load i64, ptr %k.387
	%418 = icmp eq i64 %417, 3
	br i1 %418, label %alt_block_label396_1, label %alt_cond_label396_2
alt_block_label396_1:
	%419 = load ptr, ptr %info.386
	%420 = getelementptr inbounds %gala_162268._.._onin_gala_core_cfunctions_windows.TypeInfo, ptr %419, i32 0, i32 2
	%421 = load i64, ptr %420
	call void @gala_546687._.._onin_gala_core_core_windows.fmt_float_at(ptr %b, ptr %data, i64 %421)

	br label %end_label396
alt_cond_label396_2:
	%422 = load i64, ptr %k.387
	%423 = icmp eq i64 %422, 4
	br i1 %423, label %alt_block_label396_2, label %alt_cond_label396_3
alt_block_label396_2:
	%424 = bitcast ptr %data to ptr
	store ptr %424, ptr %bool_p.388

	%426 = load ptr, ptr %bool_p.388
	%427 = load i1, ptr %426
	br i1 %427, label %base_block_label425, label %else_block_label425
base_block_label425:
	%428 = getelementptr inbounds [5 x i8], ptr @string28, i64 0, i64 0
	%429 = insertvalue { ptr, i64 } undef, ptr %428, 0
	%430 = insertvalue { ptr, i64 } %429, i64 4, 1
	store { ptr, i64 } %430, ptr %slot431, align 8
	call void @gala_546687._.._onin_gala_core_core_windows.builder_push_string(ptr %b, ptr noundef %slot431)

	br label %end_label425
else_block_label425:
	%432 = getelementptr inbounds [6 x i8], ptr @string29, i64 0, i64 0
	%433 = insertvalue { ptr, i64 } undef, ptr %432, 0
	%434 = insertvalue { ptr, i64 } %433, i64 5, 1
	store { ptr, i64 } %434, ptr %slot435, align 8
	call void @gala_546687._.._onin_gala_core_core_windows.builder_push_string(ptr %b, ptr noundef %slot435)

	br label %end_label425
end_label425:

	br label %end_label396
alt_cond_label396_3:
	%436 = load i64, ptr %k.387
	%437 = icmp eq i64 %436, 7
	br i1 %437, label %alt_block_label396_3, label %alt_cond_label396_4
alt_block_label396_3:
	%438 = bitcast ptr %data to ptr
	store ptr %438, ptr %str_p.389

	br i1 %nested, label %base_block_label439, label %end_label439
base_block_label439:
	call void @gala_546687._.._onin_gala_core_core_windows.builder_push_byte(ptr %b, i8 34)

	br label %end_label439
end_label439:

	%440 = load ptr, ptr %str_p.389
	%441 = load { ptr, i64 }, ptr %440
	store { ptr, i64 } %441, ptr %slot442, align 8
	call void @gala_546687._.._onin_gala_core_core_windows.builder_push_string(ptr %b, ptr noundef %slot442)

	br i1 %nested, label %base_block_label443, label %end_label443
base_block_label443:
	call void @gala_546687._.._onin_gala_core_core_windows.builder_push_byte(ptr %b, i8 34)

	br label %end_label443
end_label443:

	br label %end_label396
alt_cond_label396_4:
	%444 = load i64, ptr %k.387
	%445 = icmp eq i64 %444, 8
	br i1 %445, label %alt_block_label396_4, label %alt_cond_label396_5
alt_block_label396_4:
	%446 = bitcast ptr %data to ptr
	store ptr %446, ptr %addr_p.390

	%448 = load ptr, ptr %addr_p.390
	%449 = load i64, ptr %448
	%450 = icmp eq i64 %449, 0
	br i1 %450, label %base_block_label447, label %else_block_label447
base_block_label447:
	%451 = getelementptr inbounds [4 x i8], ptr @string30, i64 0, i64 0
	%452 = insertvalue { ptr, i64 } undef, ptr %451, 0
	%453 = insertvalue { ptr, i64 } %452, i64 3, 1
	store { ptr, i64 } %453, ptr %slot454, align 8
	call void @gala_546687._.._onin_gala_core_core_windows.builder_push_string(ptr %b, ptr noundef %slot454)

	br label %end_label447
else_block_label447:
	%455 = load ptr, ptr %addr_p.390
	%456 = load i64, ptr %455
	call void @gala_546687._.._onin_gala_core_core_windows.fmt_hex(ptr %b, i64 %456)

	br label %end_label447
end_label447:

	br label %end_label396
alt_cond_label396_5:
	%457 = load i64, ptr %k.387
	%458 = icmp eq i64 %457, 14
	br i1 %458, label %alt_block_label396_5, label %alt_cond_label396_6
alt_block_label396_5:
	%459 = bitcast ptr %data to ptr
	store ptr %459, ptr %any_p.391

	%460 = load ptr, ptr %any_p.391
	%461 = getelementptr inbounds { ptr, i64 }, ptr %460, i32 0, i32 0
	%462 = load ptr, ptr %461
	%463 = load ptr, ptr %any_p.391
	%464 = getelementptr inbounds { ptr, i64 }, ptr %463, i32 0, i32 1
	%465 = load i64, ptr %464
	call void @gala_546687._.._onin_gala_core_core_windows.fmt_value(ptr %b, ptr %462, i64 %465, i1 zeroext %nested)

	br label %end_label396
alt_cond_label396_6:
	%466 = load i64, ptr %k.387
	%467 = icmp eq i64 %466, 11
	br i1 %467, label %alt_block_label396_6, label %alt_cond_label396_7
alt_block_label396_6:
	%468 = load ptr, ptr %info.386
	call void @gala_546687._.._onin_gala_core_core_windows.fmt_struct_at(ptr %b, ptr %data, ptr %468)

	br label %end_label396
alt_cond_label396_7:
	%471 = load i64, ptr %k.387
	%472 = icmp eq i64 %471, 10
	store i1 %472, ptr %slot469
	br i1 %472, label %logic.end.470, label %logic.rhs.470
logic.rhs.470:
	%473 = load i64, ptr %k.387
	%474 = icmp eq i64 %473, 9
	store i1 %474, ptr %slot469
	br label %logic.end.470
logic.end.470:
	%475 = load i1, ptr %slot469
	br i1 %475, label %alt_block_label396_7, label %else_block_label396
alt_block_label396_7:
	%476 = load ptr, ptr %info.386
	call void @gala_546687._.._onin_gala_core_core_windows.fmt_list_at(ptr %b, ptr %data, ptr %476)

	br label %end_label396
else_block_label396:
	%477 = load ptr, ptr %info.386
	%478 = getelementptr inbounds %gala_162268._.._onin_gala_core_cfunctions_windows.TypeInfo, ptr %477, i32 0, i32 0
	%479 = load { ptr, i64 }, ptr %478
	store { ptr, i64 } %479, ptr %slot480, align 8
	call void @gala_546687._.._onin_gala_core_core_windows.builder_push_string(ptr %b, ptr noundef %slot480)

	br label %end_label396
end_label396:

	ret void
}
define void @gala_546687._.._onin_gala_core_core_windows.fmt_any (ptr %b, ptr noundef %v) {
entry:
	%481 = getelementptr inbounds { ptr, i64 }, ptr %v, i32 0, i32 0
	%482 = load ptr, ptr %481
	%483 = getelementptr inbounds { ptr, i64 }, ptr %v, i32 0, i32 1
	%484 = load i64, ptr %483
	call void @gala_546687._.._onin_gala_core_core_windows.fmt_value(ptr %b, ptr %482, i64 %484, i1 zeroext 0)

	ret void
}
define zeroext i1 @gala_546687._.._onin_gala_core_core_windows.next_is (ptr noundef %s, i64 %i, i8 %c) {
entry:
	%slot485 = alloca i1
	%487 = add i64 %i, 1
	%488 = load { ptr, i64 }, ptr %s
	%489 = extractvalue { ptr, i64 } %488, 1
	%490 = icmp slt i64 %487, %489
	store i1 %490, ptr %slot485
	br i1 %490, label %logic.rhs.486, label %logic.end.486
logic.rhs.486:
	%491 = load { ptr, i64 }, ptr %s
	%492 = extractvalue { ptr, i64 } %491, 0
	%493 = add i64 %i, 1
	%494 = getelementptr inbounds i8, ptr %492, i64 %493
	%495 = load i8, ptr %494
	%496 = icmp eq i8 %495, %c
	store i1 %496, ptr %slot485
	br label %logic.end.486
logic.end.486:
	%497 = load i1, ptr %slot485
	ret i1 %497

}
define zeroext i1 @gala_546687._.._onin_gala_core_core_windows.has_placeholder (ptr noundef %s) {
entry:
	%size.398 = alloca i64
	%i.399 = alloca i64
	%c.400 = alloca i8
	%slot510 = alloca i1
	%slot515 = alloca { ptr, i64 }
	%slot520 = alloca i1
	%slot522 = alloca i1
	%slot530 = alloca { ptr, i64 }
	%498 = load { ptr, i64 }, ptr %s
	%499 = extractvalue { ptr, i64 } %498, 1
	store i64 %499, ptr %size.398

	store i64 0, ptr %i.399

	br label %while_cond_label500
while_cond_label500:
	%501 = load i64, ptr %i.399
	%502 = load i64, ptr %size.398
	%503 = icmp slt i64 %501, %502
	br i1 %503, label %while_body_label500, label %while_end_label500
while_body_label500:
	%504 = load { ptr, i64 }, ptr %s
	%505 = extractvalue { ptr, i64 } %504, 0
	%506 = load i64, ptr %i.399
	%507 = getelementptr inbounds i8, ptr %505, i64 %506
	%508 = load i8, ptr %507
	store i8 %508, ptr %c.400

	%512 = load i8, ptr %c.400
	%513 = icmp eq i8 %512, 123
	store i1 %513, ptr %slot510
	br i1 %513, label %logic.rhs.511, label %logic.end.511
logic.rhs.511:
	%514 = load { ptr, i64 }, ptr %s
	store { ptr, i64 } %514, ptr %slot515, align 8
	%516 = load i64, ptr %i.399
	%517 = call zeroext i1 @gala_546687._.._onin_gala_core_core_windows.next_is(ptr noundef %slot515, i64 %516, i8 125)
	store i1 %517, ptr %slot510
	br label %logic.end.511
logic.end.511:
	%518 = load i1, ptr %slot510
	br i1 %518, label %base_block_label509, label %end_label509
base_block_label509:
	ret i1 1

end_label509:

	%524 = load i8, ptr %c.400
	%525 = icmp eq i8 %524, 123
	store i1 %525, ptr %slot522
	br i1 %525, label %logic.end.523, label %logic.rhs.523
logic.rhs.523:
	%526 = load i8, ptr %c.400
	%527 = icmp eq i8 %526, 125
	store i1 %527, ptr %slot522
	br label %logic.end.523
logic.end.523:
	%528 = load i1, ptr %slot522
	store i1 %528, ptr %slot520
	br i1 %528, label %logic.rhs.521, label %logic.end.521
logic.rhs.521:
	%529 = load { ptr, i64 }, ptr %s
	store { ptr, i64 } %529, ptr %slot530, align 8
	%531 = load i64, ptr %i.399
	%532 = load i8, ptr %c.400
	%533 = call zeroext i1 @gala_546687._.._onin_gala_core_core_windows.next_is(ptr noundef %slot530, i64 %531, i8 %532)
	store i1 %533, ptr %slot520
	br label %logic.end.521
logic.end.521:
	%534 = load i1, ptr %slot520
	br i1 %534, label %base_block_label519, label %else_block_label519
base_block_label519:
	%535 = load i64, ptr %i.399
	%536 = add i64 %535, 2
	store i64 %536, ptr %i.399

	br label %end_label519
else_block_label519:
	%537 = load i64, ptr %i.399
	%538 = add i64 %537, 1
	store i64 %538, ptr %i.399

	br label %end_label519
end_label519:

	br label %while_cond_label500
while_end_label500:

	ret i1 0

}
define void @gala_546687._.._onin_gala_core_core_windows.format_into (ptr %b, ptr noundef %fmt_str, ptr noundef %args) {
entry:
	%size.404 = alloca i64
	%i.405 = alloca i64
	%arg_index.406 = alloca i64
	%c.407 = alloca i8
	%slot551 = alloca i1
	%slot556 = alloca { ptr, i64 }
	%slot570 = alloca { ptr, i64 }
	%slot574 = alloca { ptr, i64 }
	%slot579 = alloca i1
	%slot581 = alloca i1
	%slot589 = alloca { ptr, i64 }
	%539 = load { ptr, i64 }, ptr %fmt_str
	%540 = extractvalue { ptr, i64 } %539, 1
	store i64 %540, ptr %size.404

	store i64 0, ptr %i.405

	store i64 0, ptr %arg_index.406

	br label %while_cond_label541
while_cond_label541:
	%542 = load i64, ptr %i.405
	%543 = load i64, ptr %size.404
	%544 = icmp slt i64 %542, %543
	br i1 %544, label %while_body_label541, label %while_end_label541
while_body_label541:
	%545 = load { ptr, i64 }, ptr %fmt_str
	%546 = extractvalue { ptr, i64 } %545, 0
	%547 = load i64, ptr %i.405
	%548 = getelementptr inbounds i8, ptr %546, i64 %547
	%549 = load i8, ptr %548
	store i8 %549, ptr %c.407

	%553 = load i8, ptr %c.407
	%554 = icmp eq i8 %553, 123
	store i1 %554, ptr %slot551
	br i1 %554, label %logic.rhs.552, label %logic.end.552
logic.rhs.552:
	%555 = load { ptr, i64 }, ptr %fmt_str
	store { ptr, i64 } %555, ptr %slot556, align 8
	%557 = load i64, ptr %i.405
	%558 = call zeroext i1 @gala_546687._.._onin_gala_core_core_windows.next_is(ptr noundef %slot556, i64 %557, i8 125)
	store i1 %558, ptr %slot551
	br label %logic.end.552
logic.end.552:
	%559 = load i1, ptr %slot551
	br i1 %559, label %base_block_label550, label %alt_cond_label550_0
base_block_label550:
	%561 = load i64, ptr %arg_index.406
	%562 = load { ptr, i64 }, ptr %args
	%563 = extractvalue { ptr, i64 } %562, 1
	%564 = icmp slt i64 %561, %563
	br i1 %564, label %base_block_label560, label %else_block_label560
base_block_label560:
	%565 = load { ptr, i64 }, ptr %args
	%566 = extractvalue { ptr, i64 } %565, 0
	%567 = load i64, ptr %arg_index.406
	%568 = getelementptr inbounds { ptr, i64 }, ptr %566, i64 %567
	%569 = load { ptr, i64 }, ptr %568
	store { ptr, i64 } %569, ptr %slot570, align 8
	call void @gala_546687._.._onin_gala_core_core_windows.fmt_any(ptr %b, ptr noundef %slot570)

	br label %end_label560
else_block_label560:
	%571 = getelementptr inbounds [10 x i8], ptr @string31, i64 0, i64 0
	%572 = insertvalue { ptr, i64 } undef, ptr %571, 0
	%573 = insertvalue { ptr, i64 } %572, i64 9, 1
	store { ptr, i64 } %573, ptr %slot574, align 8
	call void @gala_546687._.._onin_gala_core_core_windows.builder_push_string(ptr %b, ptr noundef %slot574)

	br label %end_label560
end_label560:

	%575 = load i64, ptr %arg_index.406
	%576 = add i64 %575, 1
	store i64 %576, ptr %arg_index.406

	%577 = load i64, ptr %i.405
	%578 = add i64 %577, 2
	store i64 %578, ptr %i.405

	br label %end_label550
alt_cond_label550_0:
	%583 = load i8, ptr %c.407
	%584 = icmp eq i8 %583, 123
	store i1 %584, ptr %slot581
	br i1 %584, label %logic.end.582, label %logic.rhs.582
logic.rhs.582:
	%585 = load i8, ptr %c.407
	%586 = icmp eq i8 %585, 125
	store i1 %586, ptr %slot581
	br label %logic.end.582
logic.end.582:
	%587 = load i1, ptr %slot581
	store i1 %587, ptr %slot579
	br i1 %587, label %logic.rhs.580, label %logic.end.580
logic.rhs.580:
	%588 = load { ptr, i64 }, ptr %fmt_str
	store { ptr, i64 } %588, ptr %slot589, align 8
	%590 = load i64, ptr %i.405
	%591 = load i8, ptr %c.407
	%592 = call zeroext i1 @gala_546687._.._onin_gala_core_core_windows.next_is(ptr noundef %slot589, i64 %590, i8 %591)
	store i1 %592, ptr %slot579
	br label %logic.end.580
logic.end.580:
	%593 = load i1, ptr %slot579
	br i1 %593, label %alt_block_label550_0, label %else_block_label550
alt_block_label550_0:
	%594 = load i8, ptr %c.407
	call void @gala_546687._.._onin_gala_core_core_windows.builder_push_byte(ptr %b, i8 %594)

	%595 = load i64, ptr %i.405
	%596 = add i64 %595, 2
	store i64 %596, ptr %i.405

	br label %end_label550
else_block_label550:
	%597 = load i8, ptr %c.407
	call void @gala_546687._.._onin_gala_core_core_windows.builder_push_byte(ptr %b, i8 %597)

	%598 = load i64, ptr %i.405
	%599 = add i64 %598, 1
	store i64 %599, ptr %i.405

	br label %end_label550
end_label550:

	br label %while_cond_label541
while_end_label541:

	ret void
}
define ptr @gala_546687._.._onin_gala_core_core_windows.leading_format (ptr noundef %data) {
entry:
	%slot609 = alloca { ptr, i64 }
	%first.409 = alloca ptr
	%slot612 = alloca i1
	%slot621 = alloca { ptr, i64 }
	%601 = load { ptr, i64 }, ptr %data
	%602 = extractvalue { ptr, i64 } %601, 1
	%603 = icmp eq i64 %602, 0
	br i1 %603, label %base_block_label600, label %end_label600
base_block_label600:
	%604 = inttoptr i64 0 to ptr
	ret ptr %604

end_label600:

	%605 = load { ptr, i64 }, ptr %data
	%606 = extractvalue { ptr, i64 } %605, 0
	%607 = getelementptr inbounds { ptr, i64 }, ptr %606, i64 0
	%608 = load { ptr, i64 }, ptr %607
	store { ptr, i64 } %608, ptr %slot609, align 8
	%610 = call ptr @gala_546687._.._onin_gala_core_core_windows.any_as.any.string.v0(ptr noundef %slot609)
	store ptr %610, ptr %first.409

	%614 = load ptr, ptr %first.409
	%615 = ptrtoint ptr %614 to i64
	%616 = inttoptr i64 0 to ptr
	%617 = ptrtoint ptr %616 to i64
	%618 = icmp ne i64 %615, %617
	store i1 %618, ptr %slot612
	br i1 %618, label %logic.rhs.613, label %logic.end.613
logic.rhs.613:
	%619 = load ptr, ptr %first.409
	%620 = load { ptr, i64 }, ptr %619
	store { ptr, i64 } %620, ptr %slot621, align 8
	%622 = call zeroext i1 @gala_546687._.._onin_gala_core_core_windows.has_placeholder(ptr noundef %slot621)
	store i1 %622, ptr %slot612
	br label %logic.end.613
logic.end.613:
	%623 = load i1, ptr %slot612
	br i1 %623, label %base_block_label611, label %end_label611
base_block_label611:
	%624 = load ptr, ptr %first.409
	ret ptr %624

end_label611:

	%625 = inttoptr i64 0 to ptr
	ret ptr %625

}
define void @gala_546687._.._onin_gala_core_core_windows.print_into (ptr %b, ptr noundef %data, i1 zeroext %newline) {
entry:
	%slot627 = alloca { ptr, i64 }
	%fmt_str.413 = alloca ptr
	%slot637 = alloca { ptr, i64 }
	%slot646 = alloca { ptr, i64 }
	%i.414 = alloca i64
	%__for_iter1.996 = alloca { ptr, i64 }
	%__for_idx1.997 = alloca i64
	%v.415 = alloca { ptr, i64 }
	%slot664 = alloca { ptr, i64 }
	%626 = load { ptr, i64 }, ptr %data
	store { ptr, i64 } %626, ptr %slot627, align 8
	%628 = call ptr @gala_546687._.._onin_gala_core_core_windows.leading_format(ptr noundef %slot627)
	store ptr %628, ptr %fmt_str.413

	%630 = load ptr, ptr %fmt_str.413
	%631 = ptrtoint ptr %630 to i64
	%632 = inttoptr i64 0 to ptr
	%633 = ptrtoint ptr %632 to i64
	%634 = icmp ne i64 %631, %633
	br i1 %634, label %base_block_label629, label %else_block_label629
base_block_label629:
	%635 = load ptr, ptr %fmt_str.413
	%636 = load { ptr, i64 }, ptr %635
	store { ptr, i64 } %636, ptr %slot637, align 8
	%638 = load { ptr, i64 }, ptr %data
	%639 = extractvalue { ptr, i64 } %638, 1
	%640 = sub nsw nuw i64 %639, 1
	%641 = load { ptr, i64 }, ptr %data
	%642 = extractvalue { ptr, i64 } %641, 0
	%643 = getelementptr inbounds { ptr, i64 }, ptr %642, i64 1
	%644 = insertvalue { ptr, i64 } undef, ptr %643, 0
	%645 = insertvalue { ptr, i64 } %644, i64 %640, 1
	store { ptr, i64 } %645, ptr %slot646, align 8
	call void @gala_546687._.._onin_gala_core_core_windows.format_into(ptr %b, ptr noundef %slot637, ptr noundef %slot646)

	br label %end_label629
else_block_label629:
	store i64 0, ptr %i.414

	%647 = load { ptr, i64 }, ptr %data
	store { ptr, i64 } %647, ptr %__for_iter1.996

	store i64 0, ptr %__for_idx1.997

	br label %while_cond_label648
while_cond_label648:
	%649 = load i64, ptr %__for_idx1.997
	%650 = load { ptr, i64 }, ptr %__for_iter1.996
	%651 = extractvalue { ptr, i64 } %650, 1
	%652 = icmp slt i64 %649, %651
	br i1 %652, label %while_body_label648, label %while_end_label648
while_body_label648:
	%653 = load { ptr, i64 }, ptr %__for_iter1.996
	%654 = extractvalue { ptr, i64 } %653, 0
	%655 = load i64, ptr %__for_idx1.997
	%656 = getelementptr inbounds { ptr, i64 }, ptr %654, i64 %655
	%657 = load { ptr, i64 }, ptr %656
	store { ptr, i64 } %657, ptr %v.415

	%658 = load i64, ptr %__for_idx1.997
	%659 = add i64 %658, 1
	store i64 %659, ptr %__for_idx1.997

	%661 = load i64, ptr %i.414
	%662 = icmp sgt i64 %661, 0
	br i1 %662, label %base_block_label660, label %end_label660
base_block_label660:
	call void @gala_546687._.._onin_gala_core_core_windows.builder_push_byte(ptr %b, i8 32)

	br label %end_label660
end_label660:

	%663 = load { ptr, i64 }, ptr %v.415
	store { ptr, i64 } %663, ptr %slot664, align 8
	call void @gala_546687._.._onin_gala_core_core_windows.fmt_any(ptr %b, ptr noundef %slot664)

	%665 = load i64, ptr %i.414
	%666 = add i64 %665, 1
	store i64 %666, ptr %i.414

	br label %while_cond_label648
while_end_label648:

	br label %end_label629
end_label629:

	br i1 %newline, label %base_block_label667, label %end_label667
base_block_label667:
	call void @gala_546687._.._onin_gala_core_core_windows.builder_push_byte(ptr %b, i8 10)

	br label %end_label667
end_label667:

	ret void
}
define zeroext i1 @gala_546687._.._onin_gala_core_core_windows.__default_0 () {
entry:
	ret i1 0

}
define void @gala_546687._.._onin_gala_core_core_windows.print_to_fd (i32 %fd, ptr noundef %data, i1 zeroext %newline) {
entry:
	%b.419 = alloca %gala_546687._.._onin_gala_core_core_windows.Builder
	%slot669 = alloca { ptr, i64 }
	call void @gala_546687._.._onin_gala_core_core_windows.builder_make(ptr sret(%gala_546687._.._onin_gala_core_core_windows.Builder) align 8 %b.419)

	%668 = load { ptr, i64 }, ptr %data
	store { ptr, i64 } %668, ptr %slot669, align 8
	call void @gala_546687._.._onin_gala_core_core_windows.print_into(ptr %b.419, ptr noundef %slot669, i1 zeroext %newline)

	%670 = call i64 @gala_546687._.._onin_gala_core_core_windows.builder_flush(ptr %b.419, i32 %fd)

	ret void
}
define void @gala_546687._.._onin_gala_core_core_windows.format_to_fd (i32 %fd, ptr noundef %fmt_str, ptr noundef %args) {
entry:
	%b.423 = alloca %gala_546687._.._onin_gala_core_core_windows.Builder
	%slot672 = alloca { ptr, i64 }
	%slot674 = alloca { ptr, i64 }
	call void @gala_546687._.._onin_gala_core_core_windows.builder_make(ptr sret(%gala_546687._.._onin_gala_core_core_windows.Builder) align 8 %b.423)

	%671 = load { ptr, i64 }, ptr %fmt_str
	store { ptr, i64 } %671, ptr %slot672, align 8
	%673 = load { ptr, i64 }, ptr %args
	store { ptr, i64 } %673, ptr %slot674, align 8
	call void @gala_546687._.._onin_gala_core_core_windows.format_into(ptr %b.423, ptr noundef %slot672, ptr noundef %slot674)

	%675 = call i64 @gala_546687._.._onin_gala_core_core_windows.builder_flush(ptr %b.423, i32 %fd)

	ret void
}
define void @gala_546687._.._onin_gala_core_core_windows.print (ptr noundef %data.gala_variadic) {
entry:
	%slot677 = alloca { ptr, i64 }
	%676 = load { ptr, i64 }, ptr %data.gala_variadic
	store { ptr, i64 } %676, ptr %slot677, align 8
	call void @gala_546687._.._onin_gala_core_core_windows.print_to_fd(i32 1, ptr noundef %slot677, i1 zeroext 0)

	ret void
}
define void @gala_546687._.._onin_gala_core_core_windows.println (ptr noundef %data.gala_variadic) {
entry:
	%slot679 = alloca { ptr, i64 }
	%678 = load { ptr, i64 }, ptr %data.gala_variadic
	store { ptr, i64 } %678, ptr %slot679, align 8
	call void @gala_546687._.._onin_gala_core_core_windows.print_to_fd(i32 1, ptr noundef %slot679, i1 zeroext 1)

	ret void
}
define void @gala_546687._.._onin_gala_core_core_windows.printfmt (ptr noundef %fmt_str, ptr noundef %args.gala_variadic) {
entry:
	%slot681 = alloca { ptr, i64 }
	%slot683 = alloca { ptr, i64 }
	%680 = load { ptr, i64 }, ptr %fmt_str
	store { ptr, i64 } %680, ptr %slot681, align 8
	%682 = load { ptr, i64 }, ptr %args.gala_variadic
	store { ptr, i64 } %682, ptr %slot683, align 8
	call void @gala_546687._.._onin_gala_core_core_windows.format_to_fd(i32 1, ptr noundef %slot681, ptr noundef %slot683)

	ret void
}
define void @gala_546687._.._onin_gala_core_core_windows.eprintln (ptr noundef %data.gala_variadic) {
entry:
	%slot685 = alloca { ptr, i64 }
	%684 = load { ptr, i64 }, ptr %data.gala_variadic
	store { ptr, i64 } %684, ptr %slot685, align 8
	call void @gala_546687._.._onin_gala_core_core_windows.print_to_fd(i32 2, ptr noundef %slot685, i1 zeroext 1)

	ret void
}
define void @gala_546687._.._onin_gala_core_core_windows.eprintfmt (ptr noundef %fmt_str, ptr noundef %args.gala_variadic) {
entry:
	%slot687 = alloca { ptr, i64 }
	%slot689 = alloca { ptr, i64 }
	%686 = load { ptr, i64 }, ptr %fmt_str
	store { ptr, i64 } %686, ptr %slot687, align 8
	%688 = load { ptr, i64 }, ptr %args.gala_variadic
	store { ptr, i64 } %688, ptr %slot689, align 8
	call void @gala_546687._.._onin_gala_core_core_windows.format_to_fd(i32 2, ptr noundef %slot687, ptr noundef %slot689)

	ret void
}
define void @gala_546687._.._onin_gala_core_core_windows.fprintln (i32 %fd, ptr noundef %data.gala_variadic) {
entry:
	%slot691 = alloca { ptr, i64 }
	%690 = load { ptr, i64 }, ptr %data.gala_variadic
	store { ptr, i64 } %690, ptr %slot691, align 8
	call void @gala_546687._.._onin_gala_core_core_windows.print_to_fd(i32 %fd, ptr noundef %slot691, i1 zeroext 1)

	ret void
}
define void @gala_546687._.._onin_gala_core_core_windows.fprintfmt (i32 %fd, ptr noundef %fmt_str, ptr noundef %args.gala_variadic) {
entry:
	%slot693 = alloca { ptr, i64 }
	%slot695 = alloca { ptr, i64 }
	%692 = load { ptr, i64 }, ptr %fmt_str
	store { ptr, i64 } %692, ptr %slot693, align 8
	%694 = load { ptr, i64 }, ptr %args.gala_variadic
	store { ptr, i64 } %694, ptr %slot695, align 8
	call void @gala_546687._.._onin_gala_core_core_windows.format_to_fd(i32 %fd, ptr noundef %slot693, ptr noundef %slot695)

	ret void
}
define void @gala_546687._.._onin_gala_core_core_windows.bprintln (ptr %b, ptr noundef %data.gala_variadic) {
entry:
	%slot697 = alloca { ptr, i64 }
	%696 = load { ptr, i64 }, ptr %data.gala_variadic
	store { ptr, i64 } %696, ptr %slot697, align 8
	call void @gala_546687._.._onin_gala_core_core_windows.print_into(ptr %b, ptr noundef %slot697, i1 zeroext 1)

	ret void
}
define void @gala_546687._.._onin_gala_core_core_windows.bprintfmt (ptr %b, ptr noundef %fmt_str, ptr noundef %args.gala_variadic) {
entry:
	%slot699 = alloca { ptr, i64 }
	%slot701 = alloca { ptr, i64 }
	%698 = load { ptr, i64 }, ptr %fmt_str
	store { ptr, i64 } %698, ptr %slot699, align 8
	%700 = load { ptr, i64 }, ptr %args.gala_variadic
	store { ptr, i64 } %700, ptr %slot701, align 8
	call void @gala_546687._.._onin_gala_core_core_windows.format_into(ptr %b, ptr noundef %slot699, ptr noundef %slot701)

	ret void
}
declare void @Sleep (i32)
define void @gala_546687._.._onin_gala_core_core_windows.sleep_ms (i64 %ms) {
entry:
	%703 = icmp sle i64 %ms, 0
	br i1 %703, label %base_block_label702, label %end_label702
base_block_label702:
	ret void

end_label702:

	%704 = trunc i64 %ms to i32
	call void @Sleep(i32 %704)

	ret void
}
define ptr @gala_546687._.._onin_gala_core_core_windows.any_as.any.string.v0 (ptr noundef %v) {
entry:
	%706 = getelementptr inbounds { ptr, i64 }, ptr %v, i32 0, i32 1
	%707 = load i64, ptr %706
	%708 = icmp eq i64 %707, 17
	br i1 %708, label %base_block_label705, label %end_label705
base_block_label705:
	%709 = getelementptr inbounds { ptr, i64 }, ptr %v, i32 0, i32 0
	%710 = load ptr, ptr %709
	%711 = bitcast ptr %710 to ptr
	ret ptr %711

end_label705:

	%712 = inttoptr i64 0 to ptr
	ret ptr %712

}
define ptr @gala_546687._.._onin_gala_core_core_windows.raw_data.a_byte.v0 (ptr noundef %v) {
entry:
	%714 = load { ptr, i64 }, ptr %v
	%715 = extractvalue { ptr, i64 } %714, 1
	%716 = icmp eq i64 %715, 0
	br i1 %716, label %base_block_label713, label %end_label713
base_block_label713:
	%717 = inttoptr i64 0 to ptr
	ret ptr %717

end_label713:

	%718 = load { ptr, i64 }, ptr %v
	%719 = extractvalue { ptr, i64 } %718, 0
	%720 = getelementptr inbounds i8, ptr %719, i64 0
	ret ptr %720

}
@__gala_types = external constant [0 x %gala_162268._.._onin_gala_core_cfunctions_windows.TypeInfo]
