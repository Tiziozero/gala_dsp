; file "gain_plugin.gala"
; target info
target datalayout = "e-m:w-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-windows-msvc"
%gala_546687._.._onin_gala_core_core_windows.Builder = type {[4096 x i8],i64}
%gala_144156._.._onin_gala_core_mem_windows.RawSlice = type {ptr,i64}
%gala_144156._.._onin_gala_core_mem_windows.Allocator = type {ptr,ptr}
%gala_144156._.._onin_gala_core_mem_windows.Arena = type {ptr,i64,i64,i64,i1}
%gala_144156._.._onin_gala_core_mem_windows.Pool = type {ptr,i64,i64,ptr,i64}
%gala_144156._.._onin_gala_core_mem_windows.Tracking = type {%gala_144156._.._onin_gala_core_mem_windows.Allocator,i64,i64,i64,i64,i64,i64}
%gala_744116._clap.ClapVersion = type {i32,i32,i32}
%gala_744116._clap.ClapEventHeader = type {i32,i32,i16,i16,i32}
%gala_744116._clap.ClapEventNote = type {%gala_744116._clap.ClapEventHeader,i32,i16,i16,i16,double}
%gala_744116._clap.ClapEventNoteExpression = type {%gala_744116._clap.ClapEventHeader,i32,i32,i16,i16,i16,double}
%gala_744116._clap.ClapEventParamValue = type {%gala_744116._clap.ClapEventHeader,i32,ptr,i32,i16,i16,i16,double}
%gala_744116._clap.ClapEventParamMod = type {%gala_744116._clap.ClapEventHeader,i32,ptr,i32,i16,i16,i16,double}
%gala_744116._clap.ClapEventMidi = type {%gala_744116._clap.ClapEventHeader,i16,[3 x i8]}
%gala_744116._clap.ClapEventTransport = type {%gala_744116._clap.ClapEventHeader,i32,i64,i64,double,double,i64,i64,i64,i64,i64,i32,i16,i16}
%gala_744116._clap.ClapInputEvents = type {ptr,ptr,ptr}
%gala_744116._clap.ClapOutputEvents = type {ptr,ptr}
%gala_744116._clap.ClapAudioBuffer = type {ptr,ptr,i32,i32,i64}
%gala_744116._clap.ClapProcess = type {i64,i32,ptr,ptr,ptr,i32,i32,ptr,ptr}
%gala_744116._clap.ClapHost = type {%gala_744116._clap.ClapVersion,ptr,ptr,ptr,ptr,ptr,ptr,ptr,ptr,ptr}
%gala_744116._clap.ClapPluginDescriptor = type {%gala_744116._clap.ClapVersion,ptr,ptr,ptr,ptr,ptr,ptr,ptr,ptr,ptr}
%gala_744116._clap.ClapPlugin = type {ptr,ptr,ptr,ptr,ptr,ptr,ptr,ptr,ptr,ptr,ptr,ptr}
%gala_744116._clap.ClapPluginFactory = type {ptr,ptr,ptr}
%gala_744116._clap.ClapPluginEntry = type {%gala_744116._clap.ClapVersion,ptr,ptr,ptr}
%gala_744116._clap.ClapAudioPortInfo = type {i32,[256 x i8],i32,i32,ptr,i32}
%gala_744116._clap.ClapPluginAudioPorts = type {ptr,ptr}
%gala_744116._clap.ClapNotePortInfo = type {i32,i32,i32,[256 x i8]}
%gala_744116._clap.ClapPluginNotePorts = type {ptr,ptr}
%gala_744116._clap.ClapParamInfo = type {i32,i32,ptr,[256 x i8],[1024 x i8],double,double,double}
%gala_744116._clap.ClapPluginParams = type {ptr,ptr,ptr,ptr,ptr,ptr}
%gala_744116._clap.ClapHostParams = type {ptr,ptr,ptr}
%gala_744116._clap.ClapIStream = type {ptr,ptr}
%gala_744116._clap.ClapOStream = type {ptr,ptr}
%gala_744116._clap.ClapPluginState = type {ptr,ptr}
%gala_976878._gain_plugin.Gain = type {double,double}
%gala_162268._.._onin_gala_core_cfunctions_windows.TypeInfo = type {{ ptr, i64 },i64,i64,i64,i64,{ ptr, i64 }}
%gala_162268._.._onin_gala_core_cfunctions_windows.TypeField = type {{ ptr, i64 },i64,i64}
declare void @llvm.memcpy.p0.p0.i64(ptr, ptr, i64, i1)
declare void @llvm.memmove.p0.p0.i64(ptr, ptr, i64, i1)
declare void @llvm.memset.p0.i64(ptr, i8, i64, i1)
; decs from mod core/core_windows.gala 1
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
; decs from mod core/mem_windows.gala 2
; decs from mod ./core_windows.gala 1
; exst already
; decs from mod ./cfunctions_windows.gala 0
; exst already
declare i64 @gala_144156._.._onin_gala_core_mem_windows.addr (ptr)
declare ptr @gala_144156._.._onin_gala_core_mem_windows.from_addr (i64)
declare zeroext i1 @gala_144156._.._onin_gala_core_mem_windows.is_power_of_two (i64)
declare i64 @gala_144156._.._onin_gala_core_mem_windows.align_forward (i64, i64)
declare i64 @gala_144156._.._onin_gala_core_mem_windows.align_for_size (i64)
declare i64 @gala_144156._.._onin_gala_core_mem_windows.min_u64 (i64, i64)
declare i64 @gala_144156._.._onin_gala_core_mem_windows.max_u64 (i64, i64)
declare void @gala_144156._.._onin_gala_core_mem_windows.mem_copy (ptr, ptr, i64)
declare void @gala_144156._.._onin_gala_core_mem_windows.mem_zero (ptr, i64)
declare void @gala_144156._.._onin_gala_core_mem_windows.mem_set (ptr, i32, i64)
declare zeroext i1 @gala_144156._.._onin_gala_core_mem_windows.mem_equal (ptr, ptr, i64)
declare void @gala_144156._.._onin_gala_core_mem_windows.bytes_from (ptr sret({ ptr, i64 }) align 8, ptr, i64)
declare void @gala_144156._.._onin_gala_core_mem_windows.set_allocator (ptr noundef)
declare i64 @gala_144156._.._onin_gala_core_mem_windows.__default_1 ()
declare void @gala_144156._.._onin_gala_core_mem_windows.__default_2 (ptr sret(%gala_144156._.._onin_gala_core_mem_windows.Allocator) align 8)
declare ptr @gala_144156._.._onin_gala_core_mem_windows.alloc (i64, i64, ptr noundef)
declare i64 @gala_144156._.._onin_gala_core_mem_windows.__default_3 ()
declare void @gala_144156._.._onin_gala_core_mem_windows.__default_4 (ptr sret(%gala_144156._.._onin_gala_core_mem_windows.Allocator) align 8)
declare void @gala_144156._.._onin_gala_core_mem_windows.dealloc (ptr, i64, ptr noundef)
declare void @gala_144156._.._onin_gala_core_mem_windows.__default_5 (ptr sret(%gala_144156._.._onin_gala_core_mem_windows.Allocator) align 8)
declare void @gala_144156._.._onin_gala_core_mem_windows.dealloc_all (ptr noundef)
declare i64 @gala_144156._.._onin_gala_core_mem_windows.__default_6 ()
declare void @gala_144156._.._onin_gala_core_mem_windows.__default_7 (ptr sret(%gala_144156._.._onin_gala_core_mem_windows.Allocator) align 8)
declare ptr @gala_144156._.._onin_gala_core_mem_windows.resize (ptr, i64, i64, i64, ptr noundef)
declare void @gala_144156._.._onin_gala_core_mem_windows.__default_8 (ptr sret(%gala_144156._.._onin_gala_core_mem_windows.Allocator) align 8)
declare void @gala_144156._.._onin_gala_core_mem_windows.alloc_bytes (ptr sret({ ptr, i64 }) align 8, i64, ptr noundef)
declare void @gala_144156._.._onin_gala_core_mem_windows.__default_9 (ptr sret(%gala_144156._.._onin_gala_core_mem_windows.Allocator) align 8)
declare void @gala_144156._.._onin_gala_core_mem_windows.free_bytes (ptr noundef, ptr noundef)
declare void @gala_144156._.._onin_gala_core_mem_windows.__default_10 (ptr sret(%gala_144156._.._onin_gala_core_mem_windows.Allocator) align 8)
declare void @gala_144156._.._onin_gala_core_mem_windows.clone_string (ptr sret({ ptr, i64 }) align 8, ptr noundef, ptr noundef)
declare void @gala_144156._.._onin_gala_core_mem_windows.__default_11 (ptr sret(%gala_144156._.._onin_gala_core_mem_windows.Allocator) align 8)
declare ptr @gala_144156._.._onin_gala_core_mem_windows.clone_cstring (ptr noundef, ptr noundef)
declare void @gala_144156._.._onin_gala_core_mem_windows.__default_12 (ptr sret(%gala_144156._.._onin_gala_core_mem_windows.Allocator) align 8)
declare void @gala_144156._.._onin_gala_core_mem_windows.free_string (ptr noundef, ptr noundef)
declare void @gala_144156._.._onin_gala_core_mem_windows.__default_13 (ptr sret(%gala_144156._.._onin_gala_core_mem_windows.Allocator) align 8)
declare void @gala_144156._.._onin_gala_core_mem_windows.__default_14 (ptr sret(%gala_144156._.._onin_gala_core_mem_windows.Allocator) align 8)
declare i64 @gala_144156._.._onin_gala_core_mem_windows.__default_15 ()
declare void @gala_144156._.._onin_gala_core_mem_windows.__default_16 (ptr sret(%gala_144156._.._onin_gala_core_mem_windows.Allocator) align 8)
declare void @gala_144156._.._onin_gala_core_mem_windows.__default_17 (ptr sret(%gala_144156._.._onin_gala_core_mem_windows.Allocator) align 8)
declare ptr @gala_144156._.._onin_gala_core_mem_windows.heap_proc (ptr, i32, i64, i64, ptr, i64)
declare void @gala_144156._.._onin_gala_core_mem_windows.heap_allocator (ptr sret(%gala_144156._.._onin_gala_core_mem_windows.Allocator) align 8)
declare void @gala_144156._.._onin_gala_core_mem_windows.arena_empty (ptr sret(%gala_144156._.._onin_gala_core_mem_windows.Arena) align 8)
declare void @gala_144156._.._onin_gala_core_mem_windows.arena_init (ptr, ptr, i64)
declare void @gala_144156._.._onin_gala_core_mem_windows.arena_make (ptr sret(%gala_144156._.._onin_gala_core_mem_windows.Arena) align 8, i64)
declare void @gala_144156._.._onin_gala_core_mem_windows.arena_destroy (ptr)
declare void @gala_144156._.._onin_gala_core_mem_windows.arena_reset (ptr)
declare i64 @gala_144156._.._onin_gala_core_mem_windows.arena_used (ptr)
declare i64 @gala_144156._.._onin_gala_core_mem_windows.arena_remaining (ptr)
declare i64 @gala_144156._.._onin_gala_core_mem_windows.arena_mark (ptr)
declare void @gala_144156._.._onin_gala_core_mem_windows.arena_restore (ptr, i64)
declare ptr @gala_144156._.._onin_gala_core_mem_windows.arena_push (ptr, i64, i64)
declare ptr @gala_144156._.._onin_gala_core_mem_windows.arena_proc (ptr, i32, i64, i64, ptr, i64)
declare void @gala_144156._.._onin_gala_core_mem_windows.arena_allocator (ptr sret(%gala_144156._.._onin_gala_core_mem_windows.Allocator) align 8, ptr)
declare void @gala_144156._.._onin_gala_core_mem_windows.temp_init (i64)
declare void @gala_144156._.._onin_gala_core_mem_windows.temp_allocator (ptr sret(%gala_144156._.._onin_gala_core_mem_windows.Allocator) align 8)
declare void @gala_144156._.._onin_gala_core_mem_windows.temp_reset ()
declare ptr @gala_144156._.._onin_gala_core_mem_windows.link_get (ptr)
declare void @gala_144156._.._onin_gala_core_mem_windows.link_set (ptr, ptr)
declare void @gala_144156._.._onin_gala_core_mem_windows.pool_reset (ptr)
declare void @gala_144156._.._onin_gala_core_mem_windows.pool_make (ptr sret(%gala_144156._.._onin_gala_core_mem_windows.Pool) align 8, i64, i64)
declare void @gala_144156._.._onin_gala_core_mem_windows.pool_destroy (ptr)
declare zeroext i1 @gala_144156._.._onin_gala_core_mem_windows.pool_owns (ptr, ptr)
declare ptr @gala_144156._.._onin_gala_core_mem_windows.pool_proc (ptr, i32, i64, i64, ptr, i64)
declare void @gala_144156._.._onin_gala_core_mem_windows.pool_allocator (ptr sret(%gala_144156._.._onin_gala_core_mem_windows.Allocator) align 8, ptr)
declare void @gala_144156._.._onin_gala_core_mem_windows.tracking_init (ptr, ptr noundef)
declare void @gala_144156._.._onin_gala_core_mem_windows.tracking_reset (ptr)
declare ptr @gala_144156._.._onin_gala_core_mem_windows.tracking_proc (ptr, i32, i64, i64, ptr, i64)
declare void @gala_144156._.._onin_gala_core_mem_windows.tracking_allocator (ptr sret(%gala_144156._.._onin_gala_core_mem_windows.Allocator) align 8, ptr)
declare void @gala_144156._.._onin_gala_core_mem_windows.tracking_report (ptr)
declare ptr @gala_144156._.._onin_gala_core_mem_windows.panic_proc (ptr, i32, i64, i64, ptr, i64)
declare ptr @gala_144156._.._onin_gala_core_mem_windows.new.Allocator.Gain.v0 (ptr noundef)
declare ptr @gala_144156._.._onin_gala_core_mem_windows.new.Allocator.ClapPlugin.v1 (ptr noundef)
declare void @gala_144156._.._onin_gala_core_mem_windows.__init_globals()
; end
; decs from mod core/cfunctions_windows.gala 0
; exst already
; decs from mod ./clap.gala 3
; decs from mod core/core_windows.gala 1
; exst already
; decs from mod core/mem_windows.gala 2
; exst already
declare void @gala_744116._clap.clap_bindings_init ()
declare zeroext i1 @gala_744116._clap.clap_version_is_compatible (ptr noundef)
declare zeroext i1 @gala_744116._clap.clap_cstr_eq (ptr, ptr)
declare void @gala_744116._clap.clap_copy_cstr (ptr, i64, ptr)
declare i64 @gala_744116._clap.clap_events_size (ptr)
declare ptr @gala_744116._clap.clap_events_get (ptr, i64)
declare zeroext i1 @gala_744116._clap.clap_events_push (ptr, ptr)
declare void @gala_744116._clap.clap_host_request_callback (ptr)
declare void @gala_744116._clap.clap_host_request_process (ptr)
declare void @gala_744116._clap.clap_host_request_restart (ptr)
declare ptr @gala_744116._clap.clap_host_ext (ptr, ptr)
declare void @gala_744116._clap.__init_globals()
; end
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
@gala_744116._clap.CLAP_PLUGIN_FACTORY_ID = external global ptr
@gala_744116._clap.CLAP_EXT_AUDIO_PORTS = external global ptr
@gala_744116._clap.CLAP_EXT_NOTE_PORTS = external global ptr
@gala_744116._clap.CLAP_EXT_PARAMS = external global ptr
@gala_744116._clap.CLAP_EXT_STATE = external global ptr
@gala_744116._clap.CLAP_PORT_MONO = external global ptr
@gala_744116._clap.CLAP_PORT_STEREO = external global ptr
@gala_976878._gain_plugin.gain_desc = global %gala_744116._clap.ClapPluginDescriptor zeroinitializer
@gala_976878._gain_plugin.gain_features = global [3 x ptr] zeroinitializer
@gala_976878._gain_plugin.gain_port_name = global ptr zeroinitializer
@gala_976878._gain_plugin.gain_param_name = global ptr zeroinitializer
@gala_976878._gain_plugin.gain_audio_ports = global %gala_744116._clap.ClapPluginAudioPorts zeroinitializer
@gala_976878._gain_plugin.gain_params = global %gala_744116._clap.ClapPluginParams zeroinitializer
@gala_976878._gain_plugin.gain_state = global %gala_744116._clap.ClapPluginState zeroinitializer
@gala_976878._gain_plugin.gain_factory = global %gala_744116._clap.ClapPluginFactory zeroinitializer
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

define void @gala_976878._gain_plugin.gain_setup_strings () {
entry:
	%a.904 = alloca %gala_144156._.._onin_gala_core_mem_windows.Allocator
	%slot55 = alloca { ptr, i64 }
	%slot57 = alloca %gala_144156._.._onin_gala_core_mem_windows.Allocator
	%slot63 = alloca { ptr, i64 }
	%slot65 = alloca %gala_144156._.._onin_gala_core_mem_windows.Allocator
	%slot71 = alloca { ptr, i64 }
	%slot73 = alloca %gala_144156._.._onin_gala_core_mem_windows.Allocator
	%slot79 = alloca { ptr, i64 }
	%slot81 = alloca %gala_144156._.._onin_gala_core_mem_windows.Allocator
	%slot87 = alloca { ptr, i64 }
	%slot89 = alloca %gala_144156._.._onin_gala_core_mem_windows.Allocator
	%slot95 = alloca { ptr, i64 }
	%slot97 = alloca %gala_144156._.._onin_gala_core_mem_windows.Allocator
	%slot103 = alloca { ptr, i64 }
	%slot105 = alloca %gala_144156._.._onin_gala_core_mem_windows.Allocator
	%slot111 = alloca { ptr, i64 }
	%slot113 = alloca %gala_144156._.._onin_gala_core_mem_windows.Allocator
	%slot119 = alloca { ptr, i64 }
	%slot121 = alloca %gala_144156._.._onin_gala_core_mem_windows.Allocator
	%slot127 = alloca { ptr, i64 }
	%slot129 = alloca %gala_144156._.._onin_gala_core_mem_windows.Allocator
	%slot139 = alloca { ptr, i64 }
	%slot141 = alloca %gala_144156._.._onin_gala_core_mem_windows.Allocator
	%slot146 = alloca { ptr, i64 }
	%slot148 = alloca %gala_144156._.._onin_gala_core_mem_windows.Allocator
	%47 = load %gala_144156._.._onin_gala_core_mem_windows.Allocator, ptr @gala_144156._.._onin_gala_core_mem_windows.base_allocator
	store %gala_144156._.._onin_gala_core_mem_windows.Allocator %47, ptr %a.904

	%48 = insertvalue %gala_744116._clap.ClapVersion undef, i32 1, 0
	%49 = insertvalue %gala_744116._clap.ClapVersion %48, i32 2, 1
	%50 = insertvalue %gala_744116._clap.ClapVersion %49, i32 2, 2
	%51 = getelementptr inbounds %gala_744116._clap.ClapPluginDescriptor, ptr @gala_976878._gain_plugin.gain_desc, i32 0, i32 0
	store %gala_744116._clap.ClapVersion %50, ptr %51

	%52 = getelementptr inbounds [28 x i8], ptr @string8, i64 0, i64 0
	%53 = insertvalue { ptr, i64 } undef, ptr %52, 0
	%54 = insertvalue { ptr, i64 } %53, i64 27, 1
	store { ptr, i64 } %54, ptr %slot55, align 8
	%56 = load %gala_144156._.._onin_gala_core_mem_windows.Allocator, ptr %a.904
	store %gala_144156._.._onin_gala_core_mem_windows.Allocator %56, ptr %slot57, align 8
	%58 = call ptr @gala_144156._.._onin_gala_core_mem_windows.clone_cstring(ptr noundef %slot55, ptr noundef %slot57)
	%59 = getelementptr inbounds %gala_744116._clap.ClapPluginDescriptor, ptr @gala_976878._gain_plugin.gain_desc, i32 0, i32 1
	store ptr %58, ptr %59

	%60 = getelementptr inbounds [12 x i8], ptr @string9, i64 0, i64 0
	%61 = insertvalue { ptr, i64 } undef, ptr %60, 0
	%62 = insertvalue { ptr, i64 } %61, i64 11, 1
	store { ptr, i64 } %62, ptr %slot63, align 8
	%64 = load %gala_144156._.._onin_gala_core_mem_windows.Allocator, ptr %a.904
	store %gala_144156._.._onin_gala_core_mem_windows.Allocator %64, ptr %slot65, align 8
	%66 = call ptr @gala_144156._.._onin_gala_core_mem_windows.clone_cstring(ptr noundef %slot63, ptr noundef %slot65)
	%67 = getelementptr inbounds %gala_744116._clap.ClapPluginDescriptor, ptr @gala_976878._gain_plugin.gain_desc, i32 0, i32 2
	store ptr %66, ptr %67

	%68 = getelementptr inbounds [8 x i8], ptr @string10, i64 0, i64 0
	%69 = insertvalue { ptr, i64 } undef, ptr %68, 0
	%70 = insertvalue { ptr, i64 } %69, i64 7, 1
	store { ptr, i64 } %70, ptr %slot71, align 8
	%72 = load %gala_144156._.._onin_gala_core_mem_windows.Allocator, ptr %a.904
	store %gala_144156._.._onin_gala_core_mem_windows.Allocator %72, ptr %slot73, align 8
	%74 = call ptr @gala_144156._.._onin_gala_core_mem_windows.clone_cstring(ptr noundef %slot71, ptr noundef %slot73)
	%75 = getelementptr inbounds %gala_744116._clap.ClapPluginDescriptor, ptr @gala_976878._gain_plugin.gain_desc, i32 0, i32 3
	store ptr %74, ptr %75

	%76 = getelementptr inbounds [1 x i8], ptr @string11, i64 0, i64 0
	%77 = insertvalue { ptr, i64 } undef, ptr %76, 0
	%78 = insertvalue { ptr, i64 } %77, i64 0, 1
	store { ptr, i64 } %78, ptr %slot79, align 8
	%80 = load %gala_144156._.._onin_gala_core_mem_windows.Allocator, ptr %a.904
	store %gala_144156._.._onin_gala_core_mem_windows.Allocator %80, ptr %slot81, align 8
	%82 = call ptr @gala_144156._.._onin_gala_core_mem_windows.clone_cstring(ptr noundef %slot79, ptr noundef %slot81)
	%83 = getelementptr inbounds %gala_744116._clap.ClapPluginDescriptor, ptr @gala_976878._gain_plugin.gain_desc, i32 0, i32 4
	store ptr %82, ptr %83

	%84 = getelementptr inbounds [1 x i8], ptr @string11, i64 0, i64 0
	%85 = insertvalue { ptr, i64 } undef, ptr %84, 0
	%86 = insertvalue { ptr, i64 } %85, i64 0, 1
	store { ptr, i64 } %86, ptr %slot87, align 8
	%88 = load %gala_144156._.._onin_gala_core_mem_windows.Allocator, ptr %a.904
	store %gala_144156._.._onin_gala_core_mem_windows.Allocator %88, ptr %slot89, align 8
	%90 = call ptr @gala_144156._.._onin_gala_core_mem_windows.clone_cstring(ptr noundef %slot87, ptr noundef %slot89)
	%91 = getelementptr inbounds %gala_744116._clap.ClapPluginDescriptor, ptr @gala_976878._gain_plugin.gain_desc, i32 0, i32 5
	store ptr %90, ptr %91

	%92 = getelementptr inbounds [1 x i8], ptr @string11, i64 0, i64 0
	%93 = insertvalue { ptr, i64 } undef, ptr %92, 0
	%94 = insertvalue { ptr, i64 } %93, i64 0, 1
	store { ptr, i64 } %94, ptr %slot95, align 8
	%96 = load %gala_144156._.._onin_gala_core_mem_windows.Allocator, ptr %a.904
	store %gala_144156._.._onin_gala_core_mem_windows.Allocator %96, ptr %slot97, align 8
	%98 = call ptr @gala_144156._.._onin_gala_core_mem_windows.clone_cstring(ptr noundef %slot95, ptr noundef %slot97)
	%99 = getelementptr inbounds %gala_744116._clap.ClapPluginDescriptor, ptr @gala_976878._gain_plugin.gain_desc, i32 0, i32 6
	store ptr %98, ptr %99

	%100 = getelementptr inbounds [6 x i8], ptr @string12, i64 0, i64 0
	%101 = insertvalue { ptr, i64 } undef, ptr %100, 0
	%102 = insertvalue { ptr, i64 } %101, i64 5, 1
	store { ptr, i64 } %102, ptr %slot103, align 8
	%104 = load %gala_144156._.._onin_gala_core_mem_windows.Allocator, ptr %a.904
	store %gala_144156._.._onin_gala_core_mem_windows.Allocator %104, ptr %slot105, align 8
	%106 = call ptr @gala_144156._.._onin_gala_core_mem_windows.clone_cstring(ptr noundef %slot103, ptr noundef %slot105)
	%107 = getelementptr inbounds %gala_744116._clap.ClapPluginDescriptor, ptr @gala_976878._gain_plugin.gain_desc, i32 0, i32 7
	store ptr %106, ptr %107

	%108 = getelementptr inbounds [34 x i8], ptr @string13, i64 0, i64 0
	%109 = insertvalue { ptr, i64 } undef, ptr %108, 0
	%110 = insertvalue { ptr, i64 } %109, i64 33, 1
	store { ptr, i64 } %110, ptr %slot111, align 8
	%112 = load %gala_144156._.._onin_gala_core_mem_windows.Allocator, ptr %a.904
	store %gala_144156._.._onin_gala_core_mem_windows.Allocator %112, ptr %slot113, align 8
	%114 = call ptr @gala_144156._.._onin_gala_core_mem_windows.clone_cstring(ptr noundef %slot111, ptr noundef %slot113)
	%115 = getelementptr inbounds %gala_744116._clap.ClapPluginDescriptor, ptr @gala_976878._gain_plugin.gain_desc, i32 0, i32 8
	store ptr %114, ptr %115

	%116 = getelementptr inbounds [13 x i8], ptr @string14, i64 0, i64 0
	%117 = insertvalue { ptr, i64 } undef, ptr %116, 0
	%118 = insertvalue { ptr, i64 } %117, i64 12, 1
	store { ptr, i64 } %118, ptr %slot119, align 8
	%120 = load %gala_144156._.._onin_gala_core_mem_windows.Allocator, ptr %a.904
	store %gala_144156._.._onin_gala_core_mem_windows.Allocator %120, ptr %slot121, align 8
	%122 = call ptr @gala_144156._.._onin_gala_core_mem_windows.clone_cstring(ptr noundef %slot119, ptr noundef %slot121)
	%123 = getelementptr inbounds ptr, ptr @gala_976878._gain_plugin.gain_features, i64 0
	store ptr %122, ptr %123

	%124 = getelementptr inbounds [8 x i8], ptr @string15, i64 0, i64 0
	%125 = insertvalue { ptr, i64 } undef, ptr %124, 0
	%126 = insertvalue { ptr, i64 } %125, i64 7, 1
	store { ptr, i64 } %126, ptr %slot127, align 8
	%128 = load %gala_144156._.._onin_gala_core_mem_windows.Allocator, ptr %a.904
	store %gala_144156._.._onin_gala_core_mem_windows.Allocator %128, ptr %slot129, align 8
	%130 = call ptr @gala_144156._.._onin_gala_core_mem_windows.clone_cstring(ptr noundef %slot127, ptr noundef %slot129)
	%131 = getelementptr inbounds ptr, ptr @gala_976878._gain_plugin.gain_features, i64 1
	store ptr %130, ptr %131

	%132 = inttoptr i64 0 to ptr
	%133 = getelementptr inbounds ptr, ptr @gala_976878._gain_plugin.gain_features, i64 2
	store ptr %132, ptr %133

	%134 = getelementptr inbounds ptr, ptr @gala_976878._gain_plugin.gain_features, i64 0
	%135 = getelementptr inbounds %gala_744116._clap.ClapPluginDescriptor, ptr @gala_976878._gain_plugin.gain_desc, i32 0, i32 9
	store ptr %134, ptr %135

	%136 = getelementptr inbounds [5 x i8], ptr @string16, i64 0, i64 0
	%137 = insertvalue { ptr, i64 } undef, ptr %136, 0
	%138 = insertvalue { ptr, i64 } %137, i64 4, 1
	store { ptr, i64 } %138, ptr %slot139, align 8
	%140 = load %gala_144156._.._onin_gala_core_mem_windows.Allocator, ptr %a.904
	store %gala_144156._.._onin_gala_core_mem_windows.Allocator %140, ptr %slot141, align 8
	%142 = call ptr @gala_144156._.._onin_gala_core_mem_windows.clone_cstring(ptr noundef %slot139, ptr noundef %slot141)
	store ptr %142, ptr @gala_976878._gain_plugin.gain_port_name

	%143 = getelementptr inbounds [5 x i8], ptr @string17, i64 0, i64 0
	%144 = insertvalue { ptr, i64 } undef, ptr %143, 0
	%145 = insertvalue { ptr, i64 } %144, i64 4, 1
	store { ptr, i64 } %145, ptr %slot146, align 8
	%147 = load %gala_144156._.._onin_gala_core_mem_windows.Allocator, ptr %a.904
	store %gala_144156._.._onin_gala_core_mem_windows.Allocator %147, ptr %slot148, align 8
	%149 = call ptr @gala_144156._.._onin_gala_core_mem_windows.clone_cstring(ptr noundef %slot146, ptr noundef %slot148)
	store ptr %149, ptr @gala_976878._gain_plugin.gain_param_name

	ret void
}
define i32 @gala_976878._gain_plugin.ap_count (ptr %p, i1 zeroext %is_input) {
entry:
	ret i32 1

}
define zeroext i1 @gala_976878._gain_plugin.ap_get (ptr %p, i32 %index, i1 zeroext %is_input, ptr %info) {
entry:
	%151 = icmp ne i32 %index, 0
	br i1 %151, label %base_block_label150, label %end_label150
base_block_label150:
	ret i1 0

end_label150:

	%152 = getelementptr inbounds %gala_744116._clap.ClapAudioPortInfo, ptr %info, i32 0, i32 0
	store i32 0, ptr %152

	%153 = getelementptr inbounds %gala_744116._clap.ClapAudioPortInfo, ptr %info, i32 0, i32 1
	%154 = getelementptr inbounds i8, ptr %153, i64 0
	%155 = load ptr, ptr @gala_976878._gain_plugin.gain_port_name
	call void @gala_744116._clap.clap_copy_cstr(ptr %154, i64 256, ptr %155)

	%156 = trunc i64 1 to i32
	%157 = getelementptr inbounds %gala_744116._clap.ClapAudioPortInfo, ptr %info, i32 0, i32 2
	store i32 %156, ptr %157

	%158 = getelementptr inbounds %gala_744116._clap.ClapAudioPortInfo, ptr %info, i32 0, i32 3
	store i32 2, ptr %158

	%159 = load ptr, ptr @gala_744116._clap.CLAP_PORT_STEREO
	%160 = getelementptr inbounds %gala_744116._clap.ClapAudioPortInfo, ptr %info, i32 0, i32 4
	store ptr %159, ptr %160

	%161 = trunc i64 4294967295 to i32
	%162 = getelementptr inbounds %gala_744116._clap.ClapAudioPortInfo, ptr %info, i32 0, i32 5
	store i32 %161, ptr %162

	ret i1 1

}
define i32 @gala_976878._gain_plugin.pr_count (ptr %p) {
entry:
	ret i32 1

}
define zeroext i1 @gala_976878._gain_plugin.pr_get_info (ptr %p, i32 %index, ptr %info) {
entry:
	%164 = icmp ne i32 %index, 0
	br i1 %164, label %base_block_label163, label %end_label163
base_block_label163:
	ret i1 0

end_label163:

	%165 = trunc i64 0 to i32
	%166 = getelementptr inbounds %gala_744116._clap.ClapParamInfo, ptr %info, i32 0, i32 0
	store i32 %165, ptr %166

	%167 = trunc i64 32 to i32
	%168 = getelementptr inbounds %gala_744116._clap.ClapParamInfo, ptr %info, i32 0, i32 1
	store i32 %167, ptr %168

	%169 = inttoptr i64 0 to ptr
	%170 = getelementptr inbounds %gala_744116._clap.ClapParamInfo, ptr %info, i32 0, i32 2
	store ptr %169, ptr %170

	%171 = getelementptr inbounds %gala_744116._clap.ClapParamInfo, ptr %info, i32 0, i32 3
	%172 = getelementptr inbounds i8, ptr %171, i64 0
	%173 = load ptr, ptr @gala_976878._gain_plugin.gain_param_name
	call void @gala_744116._clap.clap_copy_cstr(ptr %172, i64 256, ptr %173)

	%174 = getelementptr inbounds %gala_744116._clap.ClapParamInfo, ptr %info, i32 0, i32 4
	%175 = getelementptr inbounds i8, ptr %174, i64 0
	store i8 0, ptr %175

	%176 = getelementptr inbounds %gala_744116._clap.ClapParamInfo, ptr %info, i32 0, i32 5
	store double 0x0000000000000000, ptr %176

	%177 = getelementptr inbounds %gala_744116._clap.ClapParamInfo, ptr %info, i32 0, i32 6
	store double 0x4000000000000000, ptr %177

	%178 = getelementptr inbounds %gala_744116._clap.ClapParamInfo, ptr %info, i32 0, i32 7
	store double 0x3FF0000000000000, ptr %178

	ret i1 1

}
define zeroext i1 @gala_976878._gain_plugin.pr_get_value (ptr %p, i32 %id, ptr %out_value) {
entry:
	%g.918 = alloca ptr
	%180 = icmp ne i32 %id, 0
	br i1 %180, label %base_block_label179, label %end_label179
base_block_label179:
	ret i1 0

end_label179:

	%181 = getelementptr inbounds %gala_744116._clap.ClapPlugin, ptr %p, i32 0, i32 1
	%182 = load ptr, ptr %181
	%183 = bitcast ptr %182 to ptr
	store ptr %183, ptr %g.918

	%184 = load ptr, ptr %g.918
	%185 = getelementptr inbounds %gala_976878._gain_plugin.Gain, ptr %184, i32 0, i32 0
	%186 = load double, ptr %185
	store double %186, ptr %out_value

	ret i1 1

}
define zeroext i1 @gala_976878._gain_plugin.pr_value_to_text (ptr %p, i32 %id, double %value, ptr %out_buffer, i32 %capacity) {
entry:
	ret i1 0

}
define zeroext i1 @gala_976878._gain_plugin.pr_text_to_value (ptr %p, i32 %id, ptr %text, ptr %out_value) {
entry:
	ret i1 0

}
define void @gala_976878._gain_plugin.gain_handle_event (ptr %g, ptr %h) {
entry:
	%e.930 = alloca ptr
	%188 = getelementptr inbounds %gala_744116._clap.ClapEventHeader, ptr %h, i32 0, i32 2
	%189 = load i16, ptr %188
	%190 = icmp ne i16 %189, 0
	br i1 %190, label %base_block_label187, label %end_label187
base_block_label187:
	ret void

end_label187:

	%192 = getelementptr inbounds %gala_744116._clap.ClapEventHeader, ptr %h, i32 0, i32 3
	%193 = load i16, ptr %192
	%194 = icmp eq i16 %193, 5
	br i1 %194, label %base_block_label191, label %end_label191
base_block_label191:
	%195 = bitcast ptr %h to ptr
	store ptr %195, ptr %e.930

	%197 = load ptr, ptr %e.930
	%198 = getelementptr inbounds %gala_744116._clap.ClapEventParamValue, ptr %197, i32 0, i32 1
	%199 = load i32, ptr %198
	%200 = icmp eq i32 %199, 0
	br i1 %200, label %base_block_label196, label %end_label196
base_block_label196:
	%201 = load ptr, ptr %e.930
	%202 = getelementptr inbounds %gala_744116._clap.ClapEventParamValue, ptr %201, i32 0, i32 7
	%203 = load double, ptr %202
	%204 = getelementptr inbounds %gala_976878._gain_plugin.Gain, ptr %g, i32 0, i32 0
	store double %203, ptr %204

	br label %end_label196
end_label196:

	br label %end_label191
end_label191:

	ret void
}
define void @gala_976878._gain_plugin.pr_flush (ptr %p, ptr %in_events, ptr %out_events) {
entry:
	%g.934 = alloca ptr
	%n.935 = alloca i64
	%i.936 = alloca i64
	%205 = getelementptr inbounds %gala_744116._clap.ClapPlugin, ptr %p, i32 0, i32 1
	%206 = load ptr, ptr %205
	%207 = bitcast ptr %206 to ptr
	store ptr %207, ptr %g.934

	%208 = call i64 @gala_744116._clap.clap_events_size(ptr %in_events)
	store i64 %208, ptr %n.935

	store i64 0, ptr %i.936

	br label %while_cond_label209
while_cond_label209:
	%210 = load i64, ptr %i.936
	%211 = load i64, ptr %n.935
	%212 = icmp slt i64 %210, %211
	br i1 %212, label %while_body_label209, label %while_end_label209
while_body_label209:
	%213 = load ptr, ptr %g.934
	%214 = load i64, ptr %i.936
	%215 = call ptr @gala_744116._clap.clap_events_get(ptr %in_events, i64 %214)
	call void @gala_976878._gain_plugin.gain_handle_event(ptr %213, ptr %215)

	%216 = load i64, ptr %i.936
	%217 = add i64 %216, 1
	store i64 %217, ptr %i.936

	br label %while_cond_label209
while_end_label209:

	ret void
}
define zeroext i1 @gala_976878._gain_plugin.st_save (ptr %p, ptr %stream) {
entry:
	%g.939 = alloca ptr
	%v.940 = alloca double
	%n.941 = alloca i64
	%218 = getelementptr inbounds %gala_744116._clap.ClapPlugin, ptr %p, i32 0, i32 1
	%219 = load ptr, ptr %218
	%220 = bitcast ptr %219 to ptr
	store ptr %220, ptr %g.939

	%221 = load ptr, ptr %g.939
	%222 = getelementptr inbounds %gala_976878._gain_plugin.Gain, ptr %221, i32 0, i32 0
	%223 = load double, ptr %222
	store double %223, ptr %v.940

	%224 = getelementptr inbounds %gala_744116._clap.ClapOStream, ptr %stream, i32 0, i32 1
	%225 = load ptr, ptr %224
	%226 = bitcast ptr %v.940 to ptr
	%227 = call i64 %225(ptr %stream, ptr %226, i64 8)
	store i64 %227, ptr %n.941

	%228 = load i64, ptr %n.941
	%229 = icmp eq i64 %228, 8
	ret i1 %229

}
define zeroext i1 @gala_976878._gain_plugin.st_load (ptr %p, ptr %stream) {
entry:
	%g.944 = alloca ptr
	%v.945 = alloca double
	%n.946 = alloca i64
	%230 = getelementptr inbounds %gala_744116._clap.ClapPlugin, ptr %p, i32 0, i32 1
	%231 = load ptr, ptr %230
	%232 = bitcast ptr %231 to ptr
	store ptr %232, ptr %g.944

	store double 0x0000000000000000, ptr %v.945

	%233 = getelementptr inbounds %gala_744116._clap.ClapIStream, ptr %stream, i32 0, i32 1
	%234 = load ptr, ptr %233
	%235 = bitcast ptr %v.945 to ptr
	%236 = call i64 %234(ptr %stream, ptr %235, i64 8)
	store i64 %236, ptr %n.946

	%238 = load i64, ptr %n.946
	%239 = icmp ne i64 %238, 8
	br i1 %239, label %base_block_label237, label %end_label237
base_block_label237:
	ret i1 0

end_label237:

	%240 = load double, ptr %v.945
	%241 = load ptr, ptr %g.944
	%242 = getelementptr inbounds %gala_976878._gain_plugin.Gain, ptr %241, i32 0, i32 0
	store double %240, ptr %242

	ret i1 1

}
define zeroext i1 @gala_976878._gain_plugin.gp_init (ptr %p) {
entry:
	ret i1 1

}
define void @gala_976878._gain_plugin.gp_destroy (ptr %p) {
entry:
	%243 = getelementptr inbounds %gala_744116._clap.ClapPlugin, ptr %p, i32 0, i32 1
	%244 = load ptr, ptr %243
	call void @free(ptr %244)

	%245 = bitcast ptr %p to ptr
	call void @free(ptr %245)

	ret void
}
define zeroext i1 @gala_976878._gain_plugin.gp_activate (ptr %p, double %sample_rate, i32 %min_frames, i32 %max_frames) {
entry:
	%g.953 = alloca ptr
	%246 = getelementptr inbounds %gala_744116._clap.ClapPlugin, ptr %p, i32 0, i32 1
	%247 = load ptr, ptr %246
	%248 = bitcast ptr %247 to ptr
	store ptr %248, ptr %g.953

	%249 = load ptr, ptr %g.953
	%250 = getelementptr inbounds %gala_976878._gain_plugin.Gain, ptr %249, i32 0, i32 1
	store double %sample_rate, ptr %250

	ret i1 1

}
define void @gala_976878._gain_plugin.gp_deactivate (ptr %p) {
entry:
	ret void
}
define zeroext i1 @gala_976878._gain_plugin.gp_start_processing (ptr %p) {
entry:
	ret i1 1

}
define void @gala_976878._gain_plugin.gp_stop_processing (ptr %p) {
entry:
	ret void
}
define void @gala_976878._gain_plugin.gp_reset (ptr %p) {
entry:
	ret void
}
define void @gala_976878._gain_plugin.gp_on_main_thread (ptr %p) {
entry:
	ret void
}
define i32 @gala_976878._gain_plugin.gp_process (ptr %p, ptr %proc) {
entry:
	%g.961 = alloca ptr
	%slot255 = alloca i1
	%inp.962 = alloca ptr
	%out.963 = alloca ptr
	%frames.964 = alloca i64
	%chans.965 = alloca i64
	%n.966 = alloca i64
	%ei.967 = alloca i64
	%i.968 = alloca i64
	%h.969 = alloca ptr
	%gv.970 = alloca float
	%c.971 = alloca i64
	%251 = getelementptr inbounds %gala_744116._clap.ClapPlugin, ptr %p, i32 0, i32 1
	%252 = load ptr, ptr %251
	%253 = bitcast ptr %252 to ptr
	store ptr %253, ptr %g.961

	%257 = getelementptr inbounds %gala_744116._clap.ClapProcess, ptr %proc, i32 0, i32 5
	%258 = load i32, ptr %257
	%259 = icmp ult i32 %258, 1
	store i1 %259, ptr %slot255
	br i1 %259, label %logic.end.256, label %logic.rhs.256
logic.rhs.256:
	%260 = getelementptr inbounds %gala_744116._clap.ClapProcess, ptr %proc, i32 0, i32 6
	%261 = load i32, ptr %260
	%262 = icmp ult i32 %261, 1
	store i1 %262, ptr %slot255
	br label %logic.end.256
logic.end.256:
	%263 = load i1, ptr %slot255
	br i1 %263, label %base_block_label254, label %end_label254
base_block_label254:
	ret i32 0

end_label254:

	%264 = getelementptr inbounds %gala_744116._clap.ClapProcess, ptr %proc, i32 0, i32 3
	%265 = load ptr, ptr %264
	store ptr %265, ptr %inp.962

	%266 = getelementptr inbounds %gala_744116._clap.ClapProcess, ptr %proc, i32 0, i32 4
	%267 = load ptr, ptr %266
	store ptr %267, ptr %out.963

	%268 = getelementptr inbounds %gala_744116._clap.ClapProcess, ptr %proc, i32 0, i32 1
	%269 = load i32, ptr %268
	%270 = zext i32 %269 to i64
	store i64 %270, ptr %frames.964

	%271 = load ptr, ptr %out.963
	%272 = getelementptr inbounds %gala_744116._clap.ClapAudioBuffer, ptr %271, i32 0, i32 2
	%273 = load i32, ptr %272
	%274 = zext i32 %273 to i64
	store i64 %274, ptr %chans.965

	%276 = load ptr, ptr %inp.962
	%277 = getelementptr inbounds %gala_744116._clap.ClapAudioBuffer, ptr %276, i32 0, i32 2
	%278 = load i32, ptr %277
	%279 = zext i32 %278 to i64
	%280 = load i64, ptr %chans.965
	%281 = icmp slt i64 %279, %280
	br i1 %281, label %base_block_label275, label %end_label275
base_block_label275:
	%282 = load ptr, ptr %inp.962
	%283 = getelementptr inbounds %gala_744116._clap.ClapAudioBuffer, ptr %282, i32 0, i32 2
	%284 = load i32, ptr %283
	%285 = zext i32 %284 to i64
	store i64 %285, ptr %chans.965

	br label %end_label275
end_label275:

	%286 = getelementptr inbounds %gala_744116._clap.ClapProcess, ptr %proc, i32 0, i32 7
	%287 = load ptr, ptr %286
	%288 = call i64 @gala_744116._clap.clap_events_size(ptr %287)
	store i64 %288, ptr %n.966

	store i64 0, ptr %ei.967

	store i64 0, ptr %i.968

	br label %while_cond_label289
while_cond_label289:
	%290 = load i64, ptr %i.968
	%291 = load i64, ptr %frames.964
	%292 = icmp slt i64 %290, %291
	br i1 %292, label %while_body_label289, label %while_end_label289
while_body_label289:
	br label %while_cond_label293
while_cond_label293:
	%294 = load i64, ptr %ei.967
	%295 = load i64, ptr %n.966
	%296 = icmp slt i64 %294, %295
	br i1 %296, label %while_body_label293, label %while_end_label293
while_body_label293:
	%297 = getelementptr inbounds %gala_744116._clap.ClapProcess, ptr %proc, i32 0, i32 7
	%298 = load ptr, ptr %297
	%299 = load i64, ptr %ei.967
	%300 = call ptr @gala_744116._clap.clap_events_get(ptr %298, i64 %299)
	store ptr %300, ptr %h.969

	%302 = load ptr, ptr %h.969
	%303 = getelementptr inbounds %gala_744116._clap.ClapEventHeader, ptr %302, i32 0, i32 1
	%304 = load i32, ptr %303
	%305 = zext i32 %304 to i64
	%306 = load i64, ptr %i.968
	%307 = icmp sgt i64 %305, %306
	br i1 %307, label %base_block_label301, label %end_label301
base_block_label301:
	br label %while_end_label293

end_label301:

	%308 = load ptr, ptr %g.961
	%309 = load ptr, ptr %h.969
	call void @gala_976878._gain_plugin.gain_handle_event(ptr %308, ptr %309)

	%310 = load i64, ptr %ei.967
	%311 = add i64 %310, 1
	store i64 %311, ptr %ei.967

	br label %while_cond_label293
while_end_label293:

	%312 = load ptr, ptr %g.961
	%313 = getelementptr inbounds %gala_976878._gain_plugin.Gain, ptr %312, i32 0, i32 0
	%314 = load double, ptr %313
	%315 = fptrunc double %314 to float
	%316 = fmul float %315, 0x4024000000000000
	store float %316, ptr %gv.970

	store i64 0, ptr %c.971

	br label %while_cond_label317
while_cond_label317:
	%318 = load i64, ptr %c.971
	%319 = load i64, ptr %chans.965
	%320 = icmp slt i64 %318, %319
	br i1 %320, label %while_body_label317, label %while_end_label317
while_body_label317:
	%321 = fdiv float 0x400921FB60000000, 0x4000000000000000
	%322 = load float, ptr %gv.970
	%323 = load float, ptr %gv.970
	%324 = load float, ptr %gv.970
	%325 = fmul float %323, %324
	%326 = load ptr, ptr %inp.962
	%327 = getelementptr inbounds %gala_744116._clap.ClapAudioBuffer, ptr %326, i32 0, i32 0
	%328 = load ptr, ptr %327
	%329 = load i64, ptr %c.971
	%330 = getelementptr inbounds ptr, ptr %328, i64 %329
	%331 = load ptr, ptr %330
	%332 = load i64, ptr %i.968
	%333 = getelementptr inbounds float, ptr %331, i64 %332
	%334 = load float, ptr %333
	%335 = load float, ptr %gv.970
	%336 = fmul float %334, %335
	%337 = load float, ptr %gv.970
	%338 = fmul float %336, %337
	%339 = call float @atanf(float %338)
	%340 = fmul float %325, %339
	%341 = call float @atanf(float %340)
	%342 = fmul float %322, %341
	%343 = call float @atanf(float %342)
	%344 = fmul float %321, %343
	%345 = fmul float %344, 0x4000000000000000
	%346 = fdiv float %345, 0x400921FB60000000
	%347 = call float @sinf(float %346)
	%348 = load ptr, ptr %out.963
	%349 = getelementptr inbounds %gala_744116._clap.ClapAudioBuffer, ptr %348, i32 0, i32 0
	%350 = load ptr, ptr %349
	%351 = load i64, ptr %c.971
	%352 = getelementptr inbounds ptr, ptr %350, i64 %351
	%353 = load ptr, ptr %352
	%354 = load i64, ptr %i.968
	%355 = getelementptr inbounds float, ptr %353, i64 %354
	store float %347, ptr %355

	%356 = load i64, ptr %c.971
	%357 = add i64 %356, 1
	store i64 %357, ptr %c.971

	br label %while_cond_label317
while_end_label317:

	%358 = load i64, ptr %i.968
	%359 = add i64 %358, 1
	store i64 %359, ptr %i.968

	br label %while_cond_label289
while_end_label289:

	ret i32 1

}
define ptr @gala_976878._gain_plugin.gp_get_extension (ptr %p, ptr %id) {
entry:
	%361 = load ptr, ptr @gala_744116._clap.CLAP_EXT_AUDIO_PORTS
	%362 = call zeroext i1 @gala_744116._clap.clap_cstr_eq(ptr %id, ptr %361)
	br i1 %362, label %base_block_label360, label %end_label360
base_block_label360:
	%363 = bitcast ptr @gala_976878._gain_plugin.gain_audio_ports to ptr
	ret ptr %363

end_label360:

	%365 = load ptr, ptr @gala_744116._clap.CLAP_EXT_PARAMS
	%366 = call zeroext i1 @gala_744116._clap.clap_cstr_eq(ptr %id, ptr %365)
	br i1 %366, label %base_block_label364, label %end_label364
base_block_label364:
	%367 = bitcast ptr @gala_976878._gain_plugin.gain_params to ptr
	ret ptr %367

end_label364:

	%369 = load ptr, ptr @gala_744116._clap.CLAP_EXT_STATE
	%370 = call zeroext i1 @gala_744116._clap.clap_cstr_eq(ptr %id, ptr %369)
	br i1 %370, label %base_block_label368, label %end_label368
base_block_label368:
	%371 = bitcast ptr @gala_976878._gain_plugin.gain_state to ptr
	ret ptr %371

end_label368:

	%372 = inttoptr i64 0 to ptr
	ret ptr %372

}
define i32 @gala_976878._gain_plugin.pf_count (ptr %f) {
entry:
	ret i32 1

}
define ptr @gala_976878._gain_plugin.pf_descriptor (ptr %f, i32 %index) {
entry:
	%374 = icmp ne i32 %index, 0
	br i1 %374, label %base_block_label373, label %end_label373
base_block_label373:
	%375 = inttoptr i64 0 to ptr
	ret ptr %375

end_label373:

	ret ptr @gala_976878._gain_plugin.gain_desc

}
define ptr @gala_976878._gain_plugin.pf_create (ptr %f, ptr %host, ptr %plugin_id) {
entry:
	%slot379 = alloca %gala_744116._clap.ClapVersion
	%slot389 = alloca %gala_144156._.._onin_gala_core_mem_windows.Allocator
	%slot391 = alloca %gala_144156._.._onin_gala_core_mem_windows.Allocator
	%g.980 = alloca ptr
	%slot397 = alloca %gala_144156._.._onin_gala_core_mem_windows.Allocator
	%slot399 = alloca %gala_144156._.._onin_gala_core_mem_windows.Allocator
	%p.981 = alloca ptr
	%377 = getelementptr inbounds %gala_744116._clap.ClapHost, ptr %host, i32 0, i32 0
	%378 = load %gala_744116._clap.ClapVersion, ptr %377
	store %gala_744116._clap.ClapVersion %378, ptr %slot379, align 4
	%380 = call zeroext i1 @gala_744116._clap.clap_version_is_compatible(ptr noundef %slot379)
	%381 = xor i1 %380, true
	br i1 %381, label %base_block_label376, label %end_label376
base_block_label376:
	%382 = inttoptr i64 0 to ptr
	ret ptr %382

end_label376:

	%384 = getelementptr inbounds %gala_744116._clap.ClapPluginDescriptor, ptr @gala_976878._gain_plugin.gain_desc, i32 0, i32 1
	%385 = load ptr, ptr %384
	%386 = call zeroext i1 @gala_744116._clap.clap_cstr_eq(ptr %plugin_id, ptr %385)
	%387 = xor i1 %386, true
	br i1 %387, label %base_block_label383, label %end_label383
base_block_label383:
	%388 = inttoptr i64 0 to ptr
	ret ptr %388

end_label383:

	call void @gala_144156._.._onin_gala_core_mem_windows.__default_13(ptr sret(%gala_144156._.._onin_gala_core_mem_windows.Allocator) align 8 %slot389)
	%390 = load %gala_144156._.._onin_gala_core_mem_windows.Allocator, ptr %slot389
	store %gala_144156._.._onin_gala_core_mem_windows.Allocator %390, ptr %slot391, align 8
	%392 = call ptr @gala_144156._.._onin_gala_core_mem_windows.new.Allocator.Gain.v0(ptr noundef %slot391)
	store ptr %392, ptr %g.980

	%393 = load ptr, ptr %g.980
	%394 = getelementptr inbounds %gala_976878._gain_plugin.Gain, ptr %393, i32 0, i32 0
	store double 0x3FF0000000000000, ptr %394

	%395 = load ptr, ptr %g.980
	%396 = getelementptr inbounds %gala_976878._gain_plugin.Gain, ptr %395, i32 0, i32 1
	store double 0x40E5888000000000, ptr %396

	call void @gala_144156._.._onin_gala_core_mem_windows.__default_13(ptr sret(%gala_144156._.._onin_gala_core_mem_windows.Allocator) align 8 %slot397)
	%398 = load %gala_144156._.._onin_gala_core_mem_windows.Allocator, ptr %slot397
	store %gala_144156._.._onin_gala_core_mem_windows.Allocator %398, ptr %slot399, align 8
	%400 = call ptr @gala_144156._.._onin_gala_core_mem_windows.new.Allocator.ClapPlugin.v1(ptr noundef %slot399)
	store ptr %400, ptr %p.981

	%401 = load ptr, ptr %p.981
	%402 = getelementptr inbounds %gala_744116._clap.ClapPlugin, ptr %401, i32 0, i32 0
	store ptr @gala_976878._gain_plugin.gain_desc, ptr %402

	%403 = load ptr, ptr %g.980
	%404 = bitcast ptr %403 to ptr
	%405 = load ptr, ptr %p.981
	%406 = getelementptr inbounds %gala_744116._clap.ClapPlugin, ptr %405, i32 0, i32 1
	store ptr %404, ptr %406

	%407 = load ptr, ptr %p.981
	%408 = getelementptr inbounds %gala_744116._clap.ClapPlugin, ptr %407, i32 0, i32 2
	store ptr @gala_976878._gain_plugin.gp_init, ptr %408

	%409 = load ptr, ptr %p.981
	%410 = getelementptr inbounds %gala_744116._clap.ClapPlugin, ptr %409, i32 0, i32 3
	store ptr @gala_976878._gain_plugin.gp_destroy, ptr %410

	%411 = load ptr, ptr %p.981
	%412 = getelementptr inbounds %gala_744116._clap.ClapPlugin, ptr %411, i32 0, i32 4
	store ptr @gala_976878._gain_plugin.gp_activate, ptr %412

	%413 = load ptr, ptr %p.981
	%414 = getelementptr inbounds %gala_744116._clap.ClapPlugin, ptr %413, i32 0, i32 5
	store ptr @gala_976878._gain_plugin.gp_deactivate, ptr %414

	%415 = load ptr, ptr %p.981
	%416 = getelementptr inbounds %gala_744116._clap.ClapPlugin, ptr %415, i32 0, i32 6
	store ptr @gala_976878._gain_plugin.gp_start_processing, ptr %416

	%417 = load ptr, ptr %p.981
	%418 = getelementptr inbounds %gala_744116._clap.ClapPlugin, ptr %417, i32 0, i32 7
	store ptr @gala_976878._gain_plugin.gp_stop_processing, ptr %418

	%419 = load ptr, ptr %p.981
	%420 = getelementptr inbounds %gala_744116._clap.ClapPlugin, ptr %419, i32 0, i32 8
	store ptr @gala_976878._gain_plugin.gp_reset, ptr %420

	%421 = load ptr, ptr %p.981
	%422 = getelementptr inbounds %gala_744116._clap.ClapPlugin, ptr %421, i32 0, i32 9
	store ptr @gala_976878._gain_plugin.gp_process, ptr %422

	%423 = load ptr, ptr %p.981
	%424 = getelementptr inbounds %gala_744116._clap.ClapPlugin, ptr %423, i32 0, i32 10
	store ptr @gala_976878._gain_plugin.gp_get_extension, ptr %424

	%425 = load ptr, ptr %p.981
	%426 = getelementptr inbounds %gala_744116._clap.ClapPlugin, ptr %425, i32 0, i32 11
	store ptr @gala_976878._gain_plugin.gp_on_main_thread, ptr %426

	%427 = load ptr, ptr %p.981
	ret ptr %427

}
define zeroext i1 @galaya_clap_init (ptr %plugin_path) {
entry:
	call void @gala_744116._clap.clap_bindings_init()

	call void @gala_976878._gain_plugin.gain_setup_strings()

	ret i1 1

}
define void @galaya_clap_deinit () {
entry:
	ret void
}
define ptr @galaya_clap_get_factory (ptr %factory_id) {
entry:
	%429 = load ptr, ptr @gala_744116._clap.CLAP_PLUGIN_FACTORY_ID
	%430 = call zeroext i1 @gala_744116._clap.clap_cstr_eq(ptr %factory_id, ptr %429)
	br i1 %430, label %base_block_label428, label %end_label428
base_block_label428:
	%431 = bitcast ptr @gala_976878._gain_plugin.gain_factory to ptr
	ret ptr %431

end_label428:

	%432 = inttoptr i64 0 to ptr
	ret ptr %432

}
define void @gala_976878._gain_plugin.__init_globals() {
entry:
	%433 = getelementptr inbounds %gala_744116._clap.ClapPluginDescriptor, ptr @gala_976878._gain_plugin.gain_desc, i32 0, i32 0
	%434 = insertvalue %gala_744116._clap.ClapVersion undef, i32 1, 0
	%435 = insertvalue %gala_744116._clap.ClapVersion %434, i32 2, 1
	%436 = insertvalue %gala_744116._clap.ClapVersion %435, i32 2, 2
	store %gala_744116._clap.ClapVersion %436, ptr %433
	%437 = getelementptr inbounds %gala_744116._clap.ClapPluginDescriptor, ptr @gala_976878._gain_plugin.gain_desc, i32 0, i32 1
	%438 = inttoptr i64 0 to ptr
	store ptr %438, ptr %437
	%439 = getelementptr inbounds %gala_744116._clap.ClapPluginDescriptor, ptr @gala_976878._gain_plugin.gain_desc, i32 0, i32 2
	%440 = inttoptr i64 0 to ptr
	store ptr %440, ptr %439
	%441 = getelementptr inbounds %gala_744116._clap.ClapPluginDescriptor, ptr @gala_976878._gain_plugin.gain_desc, i32 0, i32 3
	%442 = inttoptr i64 0 to ptr
	store ptr %442, ptr %441
	%443 = getelementptr inbounds %gala_744116._clap.ClapPluginDescriptor, ptr @gala_976878._gain_plugin.gain_desc, i32 0, i32 4
	%444 = inttoptr i64 0 to ptr
	store ptr %444, ptr %443
	%445 = getelementptr inbounds %gala_744116._clap.ClapPluginDescriptor, ptr @gala_976878._gain_plugin.gain_desc, i32 0, i32 5
	%446 = inttoptr i64 0 to ptr
	store ptr %446, ptr %445
	%447 = getelementptr inbounds %gala_744116._clap.ClapPluginDescriptor, ptr @gala_976878._gain_plugin.gain_desc, i32 0, i32 6
	%448 = inttoptr i64 0 to ptr
	store ptr %448, ptr %447
	%449 = getelementptr inbounds %gala_744116._clap.ClapPluginDescriptor, ptr @gala_976878._gain_plugin.gain_desc, i32 0, i32 7
	%450 = inttoptr i64 0 to ptr
	store ptr %450, ptr %449
	%451 = getelementptr inbounds %gala_744116._clap.ClapPluginDescriptor, ptr @gala_976878._gain_plugin.gain_desc, i32 0, i32 8
	%452 = inttoptr i64 0 to ptr
	store ptr %452, ptr %451
	%453 = getelementptr inbounds %gala_744116._clap.ClapPluginDescriptor, ptr @gala_976878._gain_plugin.gain_desc, i32 0, i32 9
	%454 = inttoptr i64 0 to ptr
	store ptr %454, ptr %453
	store [3 x ptr] zeroinitializer, ptr @gala_976878._gain_plugin.gain_features
	%455 = inttoptr i64 0 to ptr
	store ptr %455, ptr @gala_976878._gain_plugin.gain_port_name
	%456 = inttoptr i64 0 to ptr
	store ptr %456, ptr @gala_976878._gain_plugin.gain_param_name
	%457 = insertvalue %gala_744116._clap.ClapPluginAudioPorts undef, ptr @gala_976878._gain_plugin.ap_count, 0
	%458 = insertvalue %gala_744116._clap.ClapPluginAudioPorts %457, ptr @gala_976878._gain_plugin.ap_get, 1
	store %gala_744116._clap.ClapPluginAudioPorts %458, ptr @gala_976878._gain_plugin.gain_audio_ports
	%459 = insertvalue %gala_744116._clap.ClapPluginParams undef, ptr @gala_976878._gain_plugin.pr_count, 0
	%460 = insertvalue %gala_744116._clap.ClapPluginParams %459, ptr @gala_976878._gain_plugin.pr_get_info, 1
	%461 = insertvalue %gala_744116._clap.ClapPluginParams %460, ptr @gala_976878._gain_plugin.pr_get_value, 2
	%462 = insertvalue %gala_744116._clap.ClapPluginParams %461, ptr @gala_976878._gain_plugin.pr_value_to_text, 3
	%463 = insertvalue %gala_744116._clap.ClapPluginParams %462, ptr @gala_976878._gain_plugin.pr_text_to_value, 4
	%464 = insertvalue %gala_744116._clap.ClapPluginParams %463, ptr @gala_976878._gain_plugin.pr_flush, 5
	store %gala_744116._clap.ClapPluginParams %464, ptr @gala_976878._gain_plugin.gain_params
	%465 = insertvalue %gala_744116._clap.ClapPluginState undef, ptr @gala_976878._gain_plugin.st_save, 0
	%466 = insertvalue %gala_744116._clap.ClapPluginState %465, ptr @gala_976878._gain_plugin.st_load, 1
	store %gala_744116._clap.ClapPluginState %466, ptr @gala_976878._gain_plugin.gain_state
	%467 = insertvalue %gala_744116._clap.ClapPluginFactory undef, ptr @gala_976878._gain_plugin.pf_count, 0
	%468 = insertvalue %gala_744116._clap.ClapPluginFactory %467, ptr @gala_976878._gain_plugin.pf_descriptor, 1
	%469 = insertvalue %gala_744116._clap.ClapPluginFactory %468, ptr @gala_976878._gain_plugin.pf_create, 2
	store %gala_744116._clap.ClapPluginFactory %469, ptr @gala_976878._gain_plugin.gain_factory
	ret void
}

define void @gala_init_globals() {
	call void @gala_162268._.._onin_gala_core_cfunctions_windows.__init_globals()
	call void @gala_144156._.._onin_gala_core_mem_windows.__init_globals()
	call void @gala_744116._clap.__init_globals()
	call void @gala_976878._gain_plugin.__init_globals()
	ret void
}
@string470 = private unnamed_addr constant [3 x i8] c"i8\00", align 1

@string471 = private unnamed_addr constant [4 x i8] c"i16\00", align 1

@string472 = private unnamed_addr constant [4 x i8] c"i32\00", align 1

@string473 = private unnamed_addr constant [4 x i8] c"i64\00", align 1

@string474 = private unnamed_addr constant [3 x i8] c"u8\00", align 1

@string475 = private unnamed_addr constant [4 x i8] c"u16\00", align 1

@string476 = private unnamed_addr constant [4 x i8] c"u32\00", align 1

@string477 = private unnamed_addr constant [4 x i8] c"u64\00", align 1

@string478 = private unnamed_addr constant [3 x i8] c"f8\00", align 1

@string479 = private unnamed_addr constant [4 x i8] c"f16\00", align 1

@string480 = private unnamed_addr constant [4 x i8] c"f32\00", align 1

@string481 = private unnamed_addr constant [4 x i8] c"f64\00", align 1

@string482 = private unnamed_addr constant [4 x i8] c"any\00", align 1

@string483 = private unnamed_addr constant [5 x i8] c"bool\00", align 1

@string484 = private unnamed_addr constant [5 x i8] c"byte\00", align 1

@string485 = private unnamed_addr constant [7 x i8] c"rawptr\00", align 1

@string486 = private unnamed_addr constant [7 x i8] c"string\00", align 1

@string487 = private unnamed_addr constant [10 x i8] c"TypeField\00", align 1

@string488 = private unnamed_addr constant [5 x i8] c"name\00", align 1

@string489 = private unnamed_addr constant [7 x i8] c"typeid\00", align 1

@string490 = private unnamed_addr constant [7 x i8] c"offset\00", align 1

@tfields491 = private constant [3 x %gala_162268._.._onin_gala_core_cfunctions_windows.TypeField] [
	%gala_162268._.._onin_gala_core_cfunctions_windows.TypeField { { ptr, i64 } { ptr @string488, i64 4 }, i64 17, i64 ptrtoint (ptr getelementptr (%gala_162268._.._onin_gala_core_cfunctions_windows.TypeField, ptr null, i32 0, i32 0) to i64) },
	%gala_162268._.._onin_gala_core_cfunctions_windows.TypeField { { ptr, i64 } { ptr @string489, i64 6 }, i64 3, i64 ptrtoint (ptr getelementptr (%gala_162268._.._onin_gala_core_cfunctions_windows.TypeField, ptr null, i32 0, i32 1) to i64) },
	%gala_162268._.._onin_gala_core_cfunctions_windows.TypeField { { ptr, i64 } { ptr @string490, i64 6 }, i64 3, i64 ptrtoint (ptr getelementptr (%gala_162268._.._onin_gala_core_cfunctions_windows.TypeField, ptr null, i32 0, i32 2) to i64) }
]
@string492 = private unnamed_addr constant [12 x i8] c"[]TypeField\00", align 1

@string493 = private unnamed_addr constant [9 x i8] c"TypeInfo\00", align 1

@string494 = private unnamed_addr constant [5 x i8] c"kind\00", align 1

@string495 = private unnamed_addr constant [5 x i8] c"size\00", align 1

@string496 = private unnamed_addr constant [5 x i8] c"elem\00", align 1

@string497 = private unnamed_addr constant [6 x i8] c"count\00", align 1

@string498 = private unnamed_addr constant [7 x i8] c"fields\00", align 1

@tfields499 = private constant [6 x %gala_162268._.._onin_gala_core_cfunctions_windows.TypeField] [
	%gala_162268._.._onin_gala_core_cfunctions_windows.TypeField { { ptr, i64 } { ptr @string488, i64 4 }, i64 17, i64 ptrtoint (ptr getelementptr (%gala_162268._.._onin_gala_core_cfunctions_windows.TypeInfo, ptr null, i32 0, i32 0) to i64) },
	%gala_162268._.._onin_gala_core_cfunctions_windows.TypeField { { ptr, i64 } { ptr @string494, i64 4 }, i64 3, i64 ptrtoint (ptr getelementptr (%gala_162268._.._onin_gala_core_cfunctions_windows.TypeInfo, ptr null, i32 0, i32 1) to i64) },
	%gala_162268._.._onin_gala_core_cfunctions_windows.TypeField { { ptr, i64 } { ptr @string495, i64 4 }, i64 3, i64 ptrtoint (ptr getelementptr (%gala_162268._.._onin_gala_core_cfunctions_windows.TypeInfo, ptr null, i32 0, i32 2) to i64) },
	%gala_162268._.._onin_gala_core_cfunctions_windows.TypeField { { ptr, i64 } { ptr @string496, i64 4 }, i64 3, i64 ptrtoint (ptr getelementptr (%gala_162268._.._onin_gala_core_cfunctions_windows.TypeInfo, ptr null, i32 0, i32 3) to i64) },
	%gala_162268._.._onin_gala_core_cfunctions_windows.TypeField { { ptr, i64 } { ptr @string497, i64 5 }, i64 3, i64 ptrtoint (ptr getelementptr (%gala_162268._.._onin_gala_core_cfunctions_windows.TypeInfo, ptr null, i32 0, i32 4) to i64) },
	%gala_162268._.._onin_gala_core_cfunctions_windows.TypeField { { ptr, i64 } { ptr @string498, i64 6 }, i64 19, i64 ptrtoint (ptr getelementptr (%gala_162268._.._onin_gala_core_cfunctions_windows.TypeInfo, ptr null, i32 0, i32 5) to i64) }
]
@string500 = private unnamed_addr constant [6 x i8] c"^byte\00", align 1

@string501 = private unnamed_addr constant [25 x i8] c"fn(i32, ^byte, u32): i32\00", align 1

@string502 = private unnamed_addr constant [13 x i8] c"fn(i32): i32\00", align 1

@string503 = private unnamed_addr constant [6 x i8] c"[]any\00", align 1

@string504 = private unnamed_addr constant [20 x i8] c"fn(^byte, i32): i32\00", align 1

@string505 = private unnamed_addr constant [15 x i8] c"fn(^byte): i32\00", align 1

@string506 = private unnamed_addr constant [23 x i8] c"fn(rawptr, ^byte): i32\00", align 1

@string507 = private unnamed_addr constant [27 x i8] c"fn(^byte, u64, ^byte): i32\00", align 1

@string508 = private unnamed_addr constant [25 x i8] c"fn(^byte, ^byte): rawptr\00", align 1

@string509 = private unnamed_addr constant [16 x i8] c"fn(rawptr): i32\00", align 1

@string510 = private unnamed_addr constant [23 x i8] c"fn(^byte, rawptr): i32\00", align 1

@string511 = private unnamed_addr constant [33 x i8] c"fn(^byte, u64, u64, rawptr): u64\00", align 1

@string512 = private unnamed_addr constant [11 x i8] c"fn(rawptr)\00", align 1

@string513 = private unnamed_addr constant [26 x i8] c"fn(rawptr, i64, i32): i32\00", align 1

@string514 = private unnamed_addr constant [16 x i8] c"fn(rawptr): i64\00", align 1

@string515 = private unnamed_addr constant [16 x i8] c"fn(u64): rawptr\00", align 1

@string516 = private unnamed_addr constant [21 x i8] c"fn(u64, u64): rawptr\00", align 1

@string517 = private unnamed_addr constant [24 x i8] c"fn(rawptr, u64): rawptr\00", align 1

@string518 = private unnamed_addr constant [32 x i8] c"fn(rawptr, rawptr, u64): rawptr\00", align 1

@string519 = private unnamed_addr constant [29 x i8] c"fn(rawptr, i32, u64): rawptr\00", align 1

@string520 = private unnamed_addr constant [29 x i8] c"fn(rawptr, rawptr, u64): i32\00", align 1

@string521 = private unnamed_addr constant [15 x i8] c"fn(^byte): u64\00", align 1

@string522 = private unnamed_addr constant [22 x i8] c"fn(^byte, ^byte): i32\00", align 1

@string523 = private unnamed_addr constant [27 x i8] c"fn(^byte, ^byte, u64): i32\00", align 1

@string524 = private unnamed_addr constant [24 x i8] c"fn(^byte, ^byte): ^byte\00", align 1

@string525 = private unnamed_addr constant [29 x i8] c"fn(^byte, ^byte, u64): ^byte\00", align 1

@string526 = private unnamed_addr constant [22 x i8] c"fn(^byte, i32): ^byte\00", align 1

@string527 = private unnamed_addr constant [15 x i8] c"fn(^byte): i64\00", align 1

@string528 = private unnamed_addr constant [7 x i8] c"^^byte\00", align 1

@string529 = private unnamed_addr constant [28 x i8] c"fn(^byte, ^^byte, i32): i64\00", align 1

@string530 = private unnamed_addr constant [28 x i8] c"fn(^byte, ^^byte, i32): u64\00", align 1

@string531 = private unnamed_addr constant [23 x i8] c"fn(^byte, ^^byte): f32\00", align 1

@string532 = private unnamed_addr constant [23 x i8] c"fn(^byte, ^^byte): f64\00", align 1

@string533 = private unnamed_addr constant [10 x i8] c"fn(): i32\00", align 1

@string534 = private unnamed_addr constant [8 x i8] c"fn(u32)\00", align 1

@string535 = private unnamed_addr constant [8 x i8] c"fn(i32)\00", align 1

@string536 = private unnamed_addr constant [5 x i8] c"fn()\00", align 1

@string537 = private unnamed_addr constant [14 x i8] c"fn(fn()): i32\00", align 1

@string538 = private unnamed_addr constant [17 x i8] c"fn(^byte): ^byte\00", align 1

@string539 = private unnamed_addr constant [13 x i8] c"fn(f64): f64\00", align 1

@string540 = private unnamed_addr constant [18 x i8] c"fn(f64, f64): f64\00", align 1

@string541 = private unnamed_addr constant [13 x i8] c"fn(f32): f32\00", align 1

@string542 = private unnamed_addr constant [18 x i8] c"fn(f32, f32): f32\00", align 1

@string543 = private unnamed_addr constant [8 x i8] c"Builder\00", align 1

@string544 = private unnamed_addr constant [5 x i8] c"data\00", align 1

@tfields545 = private constant [2 x %gala_162268._.._onin_gala_core_cfunctions_windows.TypeField] [
	%gala_162268._.._onin_gala_core_cfunctions_windows.TypeField { { ptr, i64 } { ptr @string544, i64 4 }, i64 113, i64 ptrtoint (ptr getelementptr (%gala_546687._.._onin_gala_core_core_windows.Builder, ptr null, i32 0, i32 0) to i64) },
	%gala_162268._.._onin_gala_core_cfunctions_windows.TypeField { { ptr, i64 } { ptr @string497, i64 5 }, i64 3, i64 ptrtoint (ptr getelementptr (%gala_546687._.._onin_gala_core_core_windows.Builder, ptr null, i32 0, i32 1) to i64) }
]
@string546 = private unnamed_addr constant [11 x i8] c"[4096]byte\00", align 1

@string547 = private unnamed_addr constant [18 x i8] c"fn(string): ^byte\00", align 1

@string548 = private unnamed_addr constant [25 x i8] c"fn(string, string): bool\00", align 1

@string549 = private unnamed_addr constant [14 x i8] c"fn(): Builder\00", align 1

@string550 = private unnamed_addr constant [9 x i8] c"^Builder\00", align 1

@string551 = private unnamed_addr constant [19 x i8] c"fn(^Builder, byte)\00", align 1

@string552 = private unnamed_addr constant [21 x i8] c"fn(^Builder, string)\00", align 1

@string553 = private unnamed_addr constant [18 x i8] c"fn(^Builder, u64)\00", align 1

@string554 = private unnamed_addr constant [7 x i8] c"[]byte\00", align 1

@string555 = private unnamed_addr constant [21 x i8] c"fn(^Builder): []byte\00", align 1

@string556 = private unnamed_addr constant [21 x i8] c"fn(i32, []byte): i64\00", align 1

@string557 = private unnamed_addr constant [16 x i8] c"fn([]byte): i64\00", align 1

@string558 = private unnamed_addr constant [23 x i8] c"fn(^Builder, i32): i64\00", align 1

@string559 = private unnamed_addr constant [28 x i8] c"fn(^Builder, u64, u64, i64)\00", align 1

@string560 = private unnamed_addr constant [18 x i8] c"fn(^Builder, i64)\00", align 1

@string561 = private unnamed_addr constant [18 x i8] c"fn(^Builder, f64)\00", align 1

@string562 = private unnamed_addr constant [5 x i8] c"^i64\00", align 1

@string563 = private unnamed_addr constant [5 x i8] c"^i32\00", align 1

@string564 = private unnamed_addr constant [5 x i8] c"^i16\00", align 1

@string565 = private unnamed_addr constant [4 x i8] c"^i8\00", align 1

@string566 = private unnamed_addr constant [26 x i8] c"fn(^Builder, rawptr, i64)\00", align 1

@string567 = private unnamed_addr constant [5 x i8] c"^u64\00", align 1

@string568 = private unnamed_addr constant [5 x i8] c"^u32\00", align 1

@string569 = private unnamed_addr constant [5 x i8] c"^u16\00", align 1

@string570 = private unnamed_addr constant [4 x i8] c"^u8\00", align 1

@string571 = private unnamed_addr constant [5 x i8] c"^f64\00", align 1

@string572 = private unnamed_addr constant [5 x i8] c"^f32\00", align 1

@string573 = private unnamed_addr constant [10 x i8] c"^TypeInfo\00", align 1

@string574 = private unnamed_addr constant [32 x i8] c"fn(^Builder, rawptr, ^TypeInfo)\00", align 1

@string575 = private unnamed_addr constant [8 x i8] c"^rawptr\00", align 1

@string576 = private unnamed_addr constant [6 x i8] c"^bool\00", align 1

@string577 = private unnamed_addr constant [8 x i8] c"^string\00", align 1

@string578 = private unnamed_addr constant [5 x i8] c"^any\00", align 1

@string579 = private unnamed_addr constant [32 x i8] c"fn(^Builder, rawptr, i64, bool)\00", align 1

@string580 = private unnamed_addr constant [18 x i8] c"fn(^Builder, any)\00", align 1

@string581 = private unnamed_addr constant [28 x i8] c"fn(string, i64, byte): bool\00", align 1

@string582 = private unnamed_addr constant [17 x i8] c"fn(string): bool\00", align 1

@string583 = private unnamed_addr constant [28 x i8] c"fn(^Builder, string, []any)\00", align 1

@string584 = private unnamed_addr constant [19 x i8] c"fn([]any): ^string\00", align 1

@string585 = private unnamed_addr constant [26 x i8] c"fn(^Builder, []any, bool)\00", align 1

@string586 = private unnamed_addr constant [11 x i8] c"fn(): bool\00", align 1

@string587 = private unnamed_addr constant [21 x i8] c"fn(i32, []any, bool)\00", align 1

@string588 = private unnamed_addr constant [23 x i8] c"fn(i32, string, []any)\00", align 1

@string589 = private unnamed_addr constant [11 x i8] c"fn(string)\00", align 1

@string590 = private unnamed_addr constant [16 x i8] c"fn(i32, string)\00", align 1

@string591 = private unnamed_addr constant [13 x i8] c"fn(^Builder)\00", align 1

@string592 = private unnamed_addr constant [8 x i8] c"fn(i64)\00", align 1

@string593 = private unnamed_addr constant [9 x i8] c"RawSlice\00", align 1

@string594 = private unnamed_addr constant [7 x i8] c"length\00", align 1

@tfields595 = private constant [2 x %gala_162268._.._onin_gala_core_cfunctions_windows.TypeField] [
	%gala_162268._.._onin_gala_core_cfunctions_windows.TypeField { { ptr, i64 } { ptr @string544, i64 4 }, i64 21, i64 ptrtoint (ptr getelementptr (%gala_144156._.._onin_gala_core_mem_windows.RawSlice, ptr null, i32 0, i32 0) to i64) },
	%gala_162268._.._onin_gala_core_cfunctions_windows.TypeField { { ptr, i64 } { ptr @string594, i64 6 }, i64 3, i64 ptrtoint (ptr getelementptr (%gala_144156._.._onin_gala_core_mem_windows.RawSlice, ptr null, i32 0, i32 1) to i64) }
]
@string596 = private unnamed_addr constant [10 x i8] c"Allocator\00", align 1

@string597 = private unnamed_addr constant [9 x i8] c"callback\00", align 1

@tfields598 = private constant [2 x %gala_162268._.._onin_gala_core_cfunctions_windows.TypeField] [
	%gala_162268._.._onin_gala_core_cfunctions_windows.TypeField { { ptr, i64 } { ptr @string597, i64 8 }, i64 186, i64 ptrtoint (ptr getelementptr (%gala_144156._.._onin_gala_core_mem_windows.Allocator, ptr null, i32 0, i32 0) to i64) },
	%gala_162268._.._onin_gala_core_cfunctions_windows.TypeField { { ptr, i64 } { ptr @string544, i64 4 }, i64 16, i64 ptrtoint (ptr getelementptr (%gala_144156._.._onin_gala_core_mem_windows.Allocator, ptr null, i32 0, i32 1) to i64) }
]
@string599 = private unnamed_addr constant [6 x i8] c"Arena\00", align 1

@string600 = private unnamed_addr constant [4 x i8] c"buf\00", align 1

@string601 = private unnamed_addr constant [5 x i8] c"last\00", align 1

@string602 = private unnamed_addr constant [5 x i8] c"owns\00", align 1

@tfields603 = private constant [5 x %gala_162268._.._onin_gala_core_cfunctions_windows.TypeField] [
	%gala_162268._.._onin_gala_core_cfunctions_windows.TypeField { { ptr, i64 } { ptr @string600, i64 3 }, i64 16, i64 ptrtoint (ptr getelementptr (%gala_144156._.._onin_gala_core_mem_windows.Arena, ptr null, i32 0, i32 0) to i64) },
	%gala_162268._.._onin_gala_core_cfunctions_windows.TypeField { { ptr, i64 } { ptr @string495, i64 4 }, i64 7, i64 ptrtoint (ptr getelementptr (%gala_144156._.._onin_gala_core_mem_windows.Arena, ptr null, i32 0, i32 1) to i64) },
	%gala_162268._.._onin_gala_core_cfunctions_windows.TypeField { { ptr, i64 } { ptr @string490, i64 6 }, i64 7, i64 ptrtoint (ptr getelementptr (%gala_144156._.._onin_gala_core_mem_windows.Arena, ptr null, i32 0, i32 2) to i64) },
	%gala_162268._.._onin_gala_core_cfunctions_windows.TypeField { { ptr, i64 } { ptr @string601, i64 4 }, i64 7, i64 ptrtoint (ptr getelementptr (%gala_144156._.._onin_gala_core_mem_windows.Arena, ptr null, i32 0, i32 3) to i64) },
	%gala_162268._.._onin_gala_core_cfunctions_windows.TypeField { { ptr, i64 } { ptr @string602, i64 4 }, i64 14, i64 ptrtoint (ptr getelementptr (%gala_144156._.._onin_gala_core_mem_windows.Arena, ptr null, i32 0, i32 4) to i64) }
]
@string604 = private unnamed_addr constant [5 x i8] c"Pool\00", align 1

@string605 = private unnamed_addr constant [11 x i8] c"chunk_size\00", align 1

@string606 = private unnamed_addr constant [10 x i8] c"free_head\00", align 1

@string607 = private unnamed_addr constant [5 x i8] c"used\00", align 1

@tfields608 = private constant [5 x %gala_162268._.._onin_gala_core_cfunctions_windows.TypeField] [
	%gala_162268._.._onin_gala_core_cfunctions_windows.TypeField { { ptr, i64 } { ptr @string600, i64 3 }, i64 16, i64 ptrtoint (ptr getelementptr (%gala_144156._.._onin_gala_core_mem_windows.Pool, ptr null, i32 0, i32 0) to i64) },
	%gala_162268._.._onin_gala_core_cfunctions_windows.TypeField { { ptr, i64 } { ptr @string605, i64 10 }, i64 7, i64 ptrtoint (ptr getelementptr (%gala_144156._.._onin_gala_core_mem_windows.Pool, ptr null, i32 0, i32 1) to i64) },
	%gala_162268._.._onin_gala_core_cfunctions_windows.TypeField { { ptr, i64 } { ptr @string497, i64 5 }, i64 7, i64 ptrtoint (ptr getelementptr (%gala_144156._.._onin_gala_core_mem_windows.Pool, ptr null, i32 0, i32 2) to i64) },
	%gala_162268._.._onin_gala_core_cfunctions_windows.TypeField { { ptr, i64 } { ptr @string606, i64 9 }, i64 16, i64 ptrtoint (ptr getelementptr (%gala_144156._.._onin_gala_core_mem_windows.Pool, ptr null, i32 0, i32 3) to i64) },
	%gala_162268._.._onin_gala_core_cfunctions_windows.TypeField { { ptr, i64 } { ptr @string607, i64 4 }, i64 7, i64 ptrtoint (ptr getelementptr (%gala_144156._.._onin_gala_core_mem_windows.Pool, ptr null, i32 0, i32 4) to i64) }
]
@string609 = private unnamed_addr constant [9 x i8] c"Tracking\00", align 1

@string610 = private unnamed_addr constant [8 x i8] c"backing\00", align 1

@string611 = private unnamed_addr constant [7 x i8] c"allocs\00", align 1

@string612 = private unnamed_addr constant [6 x i8] c"frees\00", align 1

@string613 = private unnamed_addr constant [6 x i8] c"fails\00", align 1

@string614 = private unnamed_addr constant [5 x i8] c"live\00", align 1

@string615 = private unnamed_addr constant [5 x i8] c"peak\00", align 1

@string616 = private unnamed_addr constant [6 x i8] c"total\00", align 1

@tfields617 = private constant [7 x %gala_162268._.._onin_gala_core_cfunctions_windows.TypeField] [
	%gala_162268._.._onin_gala_core_cfunctions_windows.TypeField { { ptr, i64 } { ptr @string610, i64 7 }, i64 182, i64 ptrtoint (ptr getelementptr (%gala_144156._.._onin_gala_core_mem_windows.Tracking, ptr null, i32 0, i32 0) to i64) },
	%gala_162268._.._onin_gala_core_cfunctions_windows.TypeField { { ptr, i64 } { ptr @string611, i64 6 }, i64 3, i64 ptrtoint (ptr getelementptr (%gala_144156._.._onin_gala_core_mem_windows.Tracking, ptr null, i32 0, i32 1) to i64) },
	%gala_162268._.._onin_gala_core_cfunctions_windows.TypeField { { ptr, i64 } { ptr @string612, i64 5 }, i64 3, i64 ptrtoint (ptr getelementptr (%gala_144156._.._onin_gala_core_mem_windows.Tracking, ptr null, i32 0, i32 2) to i64) },
	%gala_162268._.._onin_gala_core_cfunctions_windows.TypeField { { ptr, i64 } { ptr @string613, i64 5 }, i64 3, i64 ptrtoint (ptr getelementptr (%gala_144156._.._onin_gala_core_mem_windows.Tracking, ptr null, i32 0, i32 3) to i64) },
	%gala_162268._.._onin_gala_core_cfunctions_windows.TypeField { { ptr, i64 } { ptr @string614, i64 4 }, i64 3, i64 ptrtoint (ptr getelementptr (%gala_144156._.._onin_gala_core_mem_windows.Tracking, ptr null, i32 0, i32 4) to i64) },
	%gala_162268._.._onin_gala_core_cfunctions_windows.TypeField { { ptr, i64 } { ptr @string615, i64 4 }, i64 3, i64 ptrtoint (ptr getelementptr (%gala_144156._.._onin_gala_core_mem_windows.Tracking, ptr null, i32 0, i32 5) to i64) },
	%gala_162268._.._onin_gala_core_cfunctions_windows.TypeField { { ptr, i64 } { ptr @string616, i64 5 }, i64 3, i64 ptrtoint (ptr getelementptr (%gala_144156._.._onin_gala_core_mem_windows.Tracking, ptr null, i32 0, i32 6) to i64) }
]
@string618 = private unnamed_addr constant [47 x i8] c"fn(rawptr, i32, u64, u64, rawptr, u64): rawptr\00", align 1

@string619 = private unnamed_addr constant [16 x i8] c"fn(rawptr): u64\00", align 1

@string620 = private unnamed_addr constant [14 x i8] c"fn(u64): bool\00", align 1

@string621 = private unnamed_addr constant [18 x i8] c"fn(u64, u64): u64\00", align 1

@string622 = private unnamed_addr constant [13 x i8] c"fn(u64): u64\00", align 1

@string623 = private unnamed_addr constant [24 x i8] c"fn(rawptr, rawptr, u64)\00", align 1

@string624 = private unnamed_addr constant [16 x i8] c"fn(rawptr, u64)\00", align 1

@string625 = private unnamed_addr constant [21 x i8] c"fn(rawptr, i32, u64)\00", align 1

@string626 = private unnamed_addr constant [30 x i8] c"fn(rawptr, rawptr, u64): bool\00", align 1

@string627 = private unnamed_addr constant [24 x i8] c"fn(rawptr, i64): []byte\00", align 1

@string628 = private unnamed_addr constant [14 x i8] c"fn(Allocator)\00", align 1

@string629 = private unnamed_addr constant [10 x i8] c"fn(): u64\00", align 1

@string630 = private unnamed_addr constant [16 x i8] c"fn(): Allocator\00", align 1

@string631 = private unnamed_addr constant [32 x i8] c"fn(u64, u64, Allocator): rawptr\00", align 1

@string632 = private unnamed_addr constant [27 x i8] c"fn(rawptr, u64, Allocator)\00", align 1

@string633 = private unnamed_addr constant [45 x i8] c"fn(rawptr, u64, u64, u64, Allocator): rawptr\00", align 1

@string634 = private unnamed_addr constant [27 x i8] c"fn(i64, Allocator): []byte\00", align 1

@string635 = private unnamed_addr constant [22 x i8] c"fn([]byte, Allocator)\00", align 1

@string636 = private unnamed_addr constant [30 x i8] c"fn(string, Allocator): string\00", align 1

@string637 = private unnamed_addr constant [29 x i8] c"fn(string, Allocator): ^byte\00", align 1

@string638 = private unnamed_addr constant [22 x i8] c"fn(string, Allocator)\00", align 1

@string639 = private unnamed_addr constant [10 x i8] c"fn(): i64\00", align 1

@string640 = private unnamed_addr constant [12 x i8] c"fn(): Arena\00", align 1

@string641 = private unnamed_addr constant [7 x i8] c"^Arena\00", align 1

@string642 = private unnamed_addr constant [24 x i8] c"fn(^Arena, rawptr, u64)\00", align 1

@string643 = private unnamed_addr constant [15 x i8] c"fn(u64): Arena\00", align 1

@string644 = private unnamed_addr constant [11 x i8] c"fn(^Arena)\00", align 1

@string645 = private unnamed_addr constant [16 x i8] c"fn(^Arena): u64\00", align 1

@string646 = private unnamed_addr constant [16 x i8] c"fn(^Arena, u64)\00", align 1

@string647 = private unnamed_addr constant [29 x i8] c"fn(^Arena, u64, u64): rawptr\00", align 1

@string648 = private unnamed_addr constant [22 x i8] c"fn(^Arena): Allocator\00", align 1

@string649 = private unnamed_addr constant [8 x i8] c"fn(u64)\00", align 1

@string650 = private unnamed_addr constant [19 x i8] c"fn(rawptr): rawptr\00", align 1

@string651 = private unnamed_addr constant [19 x i8] c"fn(rawptr, rawptr)\00", align 1

@string652 = private unnamed_addr constant [6 x i8] c"^Pool\00", align 1

@string653 = private unnamed_addr constant [10 x i8] c"fn(^Pool)\00", align 1

@string654 = private unnamed_addr constant [19 x i8] c"fn(u64, u64): Pool\00", align 1

@string655 = private unnamed_addr constant [24 x i8] c"fn(^Pool, rawptr): bool\00", align 1

@string656 = private unnamed_addr constant [21 x i8] c"fn(^Pool): Allocator\00", align 1

@string657 = private unnamed_addr constant [10 x i8] c"^Tracking\00", align 1

@string658 = private unnamed_addr constant [25 x i8] c"fn(^Tracking, Allocator)\00", align 1

@string659 = private unnamed_addr constant [14 x i8] c"fn(^Tracking)\00", align 1

@string660 = private unnamed_addr constant [25 x i8] c"fn(^Tracking): Allocator\00", align 1

@string661 = private unnamed_addr constant [12 x i8] c"ClapVersion\00", align 1

@string662 = private unnamed_addr constant [6 x i8] c"major\00", align 1

@string663 = private unnamed_addr constant [6 x i8] c"minor\00", align 1

@string664 = private unnamed_addr constant [9 x i8] c"revision\00", align 1

@tfields665 = private constant [3 x %gala_162268._.._onin_gala_core_cfunctions_windows.TypeField] [
	%gala_162268._.._onin_gala_core_cfunctions_windows.TypeField { { ptr, i64 } { ptr @string662, i64 5 }, i64 6, i64 ptrtoint (ptr getelementptr (%gala_744116._clap.ClapVersion, ptr null, i32 0, i32 0) to i64) },
	%gala_162268._.._onin_gala_core_cfunctions_windows.TypeField { { ptr, i64 } { ptr @string663, i64 5 }, i64 6, i64 ptrtoint (ptr getelementptr (%gala_744116._clap.ClapVersion, ptr null, i32 0, i32 1) to i64) },
	%gala_162268._.._onin_gala_core_cfunctions_windows.TypeField { { ptr, i64 } { ptr @string664, i64 8 }, i64 6, i64 ptrtoint (ptr getelementptr (%gala_744116._clap.ClapVersion, ptr null, i32 0, i32 2) to i64) }
]
@string666 = private unnamed_addr constant [16 x i8] c"ClapEventHeader\00", align 1

@string667 = private unnamed_addr constant [5 x i8] c"time\00", align 1

@string668 = private unnamed_addr constant [9 x i8] c"space_id\00", align 1

@string669 = private unnamed_addr constant [6 x i8] c"flags\00", align 1

@tfields670 = private constant [5 x %gala_162268._.._onin_gala_core_cfunctions_windows.TypeField] [
	%gala_162268._.._onin_gala_core_cfunctions_windows.TypeField { { ptr, i64 } { ptr @string495, i64 4 }, i64 6, i64 ptrtoint (ptr getelementptr (%gala_744116._clap.ClapEventHeader, ptr null, i32 0, i32 0) to i64) },
	%gala_162268._.._onin_gala_core_cfunctions_windows.TypeField { { ptr, i64 } { ptr @string667, i64 4 }, i64 6, i64 ptrtoint (ptr getelementptr (%gala_744116._clap.ClapEventHeader, ptr null, i32 0, i32 1) to i64) },
	%gala_162268._.._onin_gala_core_cfunctions_windows.TypeField { { ptr, i64 } { ptr @string668, i64 8 }, i64 5, i64 ptrtoint (ptr getelementptr (%gala_744116._clap.ClapEventHeader, ptr null, i32 0, i32 2) to i64) },
	%gala_162268._.._onin_gala_core_cfunctions_windows.TypeField { { ptr, i64 } { ptr @string494, i64 4 }, i64 5, i64 ptrtoint (ptr getelementptr (%gala_744116._clap.ClapEventHeader, ptr null, i32 0, i32 3) to i64) },
	%gala_162268._.._onin_gala_core_cfunctions_windows.TypeField { { ptr, i64 } { ptr @string669, i64 5 }, i64 6, i64 ptrtoint (ptr getelementptr (%gala_744116._clap.ClapEventHeader, ptr null, i32 0, i32 4) to i64) }
]
@string671 = private unnamed_addr constant [14 x i8] c"ClapEventNote\00", align 1

@string672 = private unnamed_addr constant [7 x i8] c"header\00", align 1

@string673 = private unnamed_addr constant [8 x i8] c"note_id\00", align 1

@string674 = private unnamed_addr constant [11 x i8] c"port_index\00", align 1

@string675 = private unnamed_addr constant [8 x i8] c"channel\00", align 1

@string676 = private unnamed_addr constant [4 x i8] c"key\00", align 1

@string677 = private unnamed_addr constant [9 x i8] c"velocity\00", align 1

@tfields678 = private constant [6 x %gala_162268._.._onin_gala_core_cfunctions_windows.TypeField] [
	%gala_162268._.._onin_gala_core_cfunctions_windows.TypeField { { ptr, i64 } { ptr @string672, i64 6 }, i64 277, i64 ptrtoint (ptr getelementptr (%gala_744116._clap.ClapEventNote, ptr null, i32 0, i32 0) to i64) },
	%gala_162268._.._onin_gala_core_cfunctions_windows.TypeField { { ptr, i64 } { ptr @string673, i64 7 }, i64 2, i64 ptrtoint (ptr getelementptr (%gala_744116._clap.ClapEventNote, ptr null, i32 0, i32 1) to i64) },
	%gala_162268._.._onin_gala_core_cfunctions_windows.TypeField { { ptr, i64 } { ptr @string674, i64 10 }, i64 1, i64 ptrtoint (ptr getelementptr (%gala_744116._clap.ClapEventNote, ptr null, i32 0, i32 2) to i64) },
	%gala_162268._.._onin_gala_core_cfunctions_windows.TypeField { { ptr, i64 } { ptr @string675, i64 7 }, i64 1, i64 ptrtoint (ptr getelementptr (%gala_744116._clap.ClapEventNote, ptr null, i32 0, i32 3) to i64) },
	%gala_162268._.._onin_gala_core_cfunctions_windows.TypeField { { ptr, i64 } { ptr @string676, i64 3 }, i64 1, i64 ptrtoint (ptr getelementptr (%gala_744116._clap.ClapEventNote, ptr null, i32 0, i32 4) to i64) },
	%gala_162268._.._onin_gala_core_cfunctions_windows.TypeField { { ptr, i64 } { ptr @string677, i64 8 }, i64 11, i64 ptrtoint (ptr getelementptr (%gala_744116._clap.ClapEventNote, ptr null, i32 0, i32 5) to i64) }
]
@string679 = private unnamed_addr constant [24 x i8] c"ClapEventNoteExpression\00", align 1

@string680 = private unnamed_addr constant [14 x i8] c"expression_id\00", align 1

@string681 = private unnamed_addr constant [6 x i8] c"value\00", align 1

@tfields682 = private constant [7 x %gala_162268._.._onin_gala_core_cfunctions_windows.TypeField] [
	%gala_162268._.._onin_gala_core_cfunctions_windows.TypeField { { ptr, i64 } { ptr @string672, i64 6 }, i64 277, i64 ptrtoint (ptr getelementptr (%gala_744116._clap.ClapEventNoteExpression, ptr null, i32 0, i32 0) to i64) },
	%gala_162268._.._onin_gala_core_cfunctions_windows.TypeField { { ptr, i64 } { ptr @string680, i64 13 }, i64 2, i64 ptrtoint (ptr getelementptr (%gala_744116._clap.ClapEventNoteExpression, ptr null, i32 0, i32 1) to i64) },
	%gala_162268._.._onin_gala_core_cfunctions_windows.TypeField { { ptr, i64 } { ptr @string673, i64 7 }, i64 2, i64 ptrtoint (ptr getelementptr (%gala_744116._clap.ClapEventNoteExpression, ptr null, i32 0, i32 2) to i64) },
	%gala_162268._.._onin_gala_core_cfunctions_windows.TypeField { { ptr, i64 } { ptr @string674, i64 10 }, i64 1, i64 ptrtoint (ptr getelementptr (%gala_744116._clap.ClapEventNoteExpression, ptr null, i32 0, i32 3) to i64) },
	%gala_162268._.._onin_gala_core_cfunctions_windows.TypeField { { ptr, i64 } { ptr @string675, i64 7 }, i64 1, i64 ptrtoint (ptr getelementptr (%gala_744116._clap.ClapEventNoteExpression, ptr null, i32 0, i32 4) to i64) },
	%gala_162268._.._onin_gala_core_cfunctions_windows.TypeField { { ptr, i64 } { ptr @string676, i64 3 }, i64 1, i64 ptrtoint (ptr getelementptr (%gala_744116._clap.ClapEventNoteExpression, ptr null, i32 0, i32 5) to i64) },
	%gala_162268._.._onin_gala_core_cfunctions_windows.TypeField { { ptr, i64 } { ptr @string681, i64 5 }, i64 11, i64 ptrtoint (ptr getelementptr (%gala_744116._clap.ClapEventNoteExpression, ptr null, i32 0, i32 6) to i64) }
]
@string683 = private unnamed_addr constant [20 x i8] c"ClapEventParamValue\00", align 1

@string684 = private unnamed_addr constant [9 x i8] c"param_id\00", align 1

@string685 = private unnamed_addr constant [7 x i8] c"cookie\00", align 1

@tfields686 = private constant [8 x %gala_162268._.._onin_gala_core_cfunctions_windows.TypeField] [
	%gala_162268._.._onin_gala_core_cfunctions_windows.TypeField { { ptr, i64 } { ptr @string672, i64 6 }, i64 277, i64 ptrtoint (ptr getelementptr (%gala_744116._clap.ClapEventParamValue, ptr null, i32 0, i32 0) to i64) },
	%gala_162268._.._onin_gala_core_cfunctions_windows.TypeField { { ptr, i64 } { ptr @string684, i64 8 }, i64 6, i64 ptrtoint (ptr getelementptr (%gala_744116._clap.ClapEventParamValue, ptr null, i32 0, i32 1) to i64) },
	%gala_162268._.._onin_gala_core_cfunctions_windows.TypeField { { ptr, i64 } { ptr @string685, i64 6 }, i64 16, i64 ptrtoint (ptr getelementptr (%gala_744116._clap.ClapEventParamValue, ptr null, i32 0, i32 2) to i64) },
	%gala_162268._.._onin_gala_core_cfunctions_windows.TypeField { { ptr, i64 } { ptr @string673, i64 7 }, i64 2, i64 ptrtoint (ptr getelementptr (%gala_744116._clap.ClapEventParamValue, ptr null, i32 0, i32 3) to i64) },
	%gala_162268._.._onin_gala_core_cfunctions_windows.TypeField { { ptr, i64 } { ptr @string674, i64 10 }, i64 1, i64 ptrtoint (ptr getelementptr (%gala_744116._clap.ClapEventParamValue, ptr null, i32 0, i32 4) to i64) },
	%gala_162268._.._onin_gala_core_cfunctions_windows.TypeField { { ptr, i64 } { ptr @string675, i64 7 }, i64 1, i64 ptrtoint (ptr getelementptr (%gala_744116._clap.ClapEventParamValue, ptr null, i32 0, i32 5) to i64) },
	%gala_162268._.._onin_gala_core_cfunctions_windows.TypeField { { ptr, i64 } { ptr @string676, i64 3 }, i64 1, i64 ptrtoint (ptr getelementptr (%gala_744116._clap.ClapEventParamValue, ptr null, i32 0, i32 6) to i64) },
	%gala_162268._.._onin_gala_core_cfunctions_windows.TypeField { { ptr, i64 } { ptr @string681, i64 5 }, i64 11, i64 ptrtoint (ptr getelementptr (%gala_744116._clap.ClapEventParamValue, ptr null, i32 0, i32 7) to i64) }
]
@string687 = private unnamed_addr constant [18 x i8] c"ClapEventParamMod\00", align 1

@string688 = private unnamed_addr constant [7 x i8] c"amount\00", align 1

@tfields689 = private constant [8 x %gala_162268._.._onin_gala_core_cfunctions_windows.TypeField] [
	%gala_162268._.._onin_gala_core_cfunctions_windows.TypeField { { ptr, i64 } { ptr @string672, i64 6 }, i64 277, i64 ptrtoint (ptr getelementptr (%gala_744116._clap.ClapEventParamMod, ptr null, i32 0, i32 0) to i64) },
	%gala_162268._.._onin_gala_core_cfunctions_windows.TypeField { { ptr, i64 } { ptr @string684, i64 8 }, i64 6, i64 ptrtoint (ptr getelementptr (%gala_744116._clap.ClapEventParamMod, ptr null, i32 0, i32 1) to i64) },
	%gala_162268._.._onin_gala_core_cfunctions_windows.TypeField { { ptr, i64 } { ptr @string685, i64 6 }, i64 16, i64 ptrtoint (ptr getelementptr (%gala_744116._clap.ClapEventParamMod, ptr null, i32 0, i32 2) to i64) },
	%gala_162268._.._onin_gala_core_cfunctions_windows.TypeField { { ptr, i64 } { ptr @string673, i64 7 }, i64 2, i64 ptrtoint (ptr getelementptr (%gala_744116._clap.ClapEventParamMod, ptr null, i32 0, i32 3) to i64) },
	%gala_162268._.._onin_gala_core_cfunctions_windows.TypeField { { ptr, i64 } { ptr @string674, i64 10 }, i64 1, i64 ptrtoint (ptr getelementptr (%gala_744116._clap.ClapEventParamMod, ptr null, i32 0, i32 4) to i64) },
	%gala_162268._.._onin_gala_core_cfunctions_windows.TypeField { { ptr, i64 } { ptr @string675, i64 7 }, i64 1, i64 ptrtoint (ptr getelementptr (%gala_744116._clap.ClapEventParamMod, ptr null, i32 0, i32 5) to i64) },
	%gala_162268._.._onin_gala_core_cfunctions_windows.TypeField { { ptr, i64 } { ptr @string676, i64 3 }, i64 1, i64 ptrtoint (ptr getelementptr (%gala_744116._clap.ClapEventParamMod, ptr null, i32 0, i32 6) to i64) },
	%gala_162268._.._onin_gala_core_cfunctions_windows.TypeField { { ptr, i64 } { ptr @string688, i64 6 }, i64 11, i64 ptrtoint (ptr getelementptr (%gala_744116._clap.ClapEventParamMod, ptr null, i32 0, i32 7) to i64) }
]
@string690 = private unnamed_addr constant [14 x i8] c"ClapEventMidi\00", align 1

@tfields691 = private constant [3 x %gala_162268._.._onin_gala_core_cfunctions_windows.TypeField] [
	%gala_162268._.._onin_gala_core_cfunctions_windows.TypeField { { ptr, i64 } { ptr @string672, i64 6 }, i64 277, i64 ptrtoint (ptr getelementptr (%gala_744116._clap.ClapEventMidi, ptr null, i32 0, i32 0) to i64) },
	%gala_162268._.._onin_gala_core_cfunctions_windows.TypeField { { ptr, i64 } { ptr @string674, i64 10 }, i64 5, i64 ptrtoint (ptr getelementptr (%gala_744116._clap.ClapEventMidi, ptr null, i32 0, i32 1) to i64) },
	%gala_162268._.._onin_gala_core_cfunctions_windows.TypeField { { ptr, i64 } { ptr @string544, i64 4 }, i64 303, i64 ptrtoint (ptr getelementptr (%gala_744116._clap.ClapEventMidi, ptr null, i32 0, i32 2) to i64) }
]
@string692 = private unnamed_addr constant [19 x i8] c"ClapEventTransport\00", align 1

@string693 = private unnamed_addr constant [15 x i8] c"song_pos_beats\00", align 1

@string694 = private unnamed_addr constant [17 x i8] c"song_pos_seconds\00", align 1

@string695 = private unnamed_addr constant [6 x i8] c"tempo\00", align 1

@string696 = private unnamed_addr constant [10 x i8] c"tempo_inc\00", align 1

@string697 = private unnamed_addr constant [17 x i8] c"loop_start_beats\00", align 1

@string698 = private unnamed_addr constant [15 x i8] c"loop_end_beats\00", align 1

@string699 = private unnamed_addr constant [19 x i8] c"loop_start_seconds\00", align 1

@string700 = private unnamed_addr constant [17 x i8] c"loop_end_seconds\00", align 1

@string701 = private unnamed_addr constant [10 x i8] c"bar_start\00", align 1

@string702 = private unnamed_addr constant [11 x i8] c"bar_number\00", align 1

@string703 = private unnamed_addr constant [9 x i8] c"tsig_num\00", align 1

@string704 = private unnamed_addr constant [11 x i8] c"tsig_denom\00", align 1

@tfields705 = private constant [14 x %gala_162268._.._onin_gala_core_cfunctions_windows.TypeField] [
	%gala_162268._.._onin_gala_core_cfunctions_windows.TypeField { { ptr, i64 } { ptr @string672, i64 6 }, i64 277, i64 ptrtoint (ptr getelementptr (%gala_744116._clap.ClapEventTransport, ptr null, i32 0, i32 0) to i64) },
	%gala_162268._.._onin_gala_core_cfunctions_windows.TypeField { { ptr, i64 } { ptr @string669, i64 5 }, i64 6, i64 ptrtoint (ptr getelementptr (%gala_744116._clap.ClapEventTransport, ptr null, i32 0, i32 1) to i64) },
	%gala_162268._.._onin_gala_core_cfunctions_windows.TypeField { { ptr, i64 } { ptr @string693, i64 14 }, i64 3, i64 ptrtoint (ptr getelementptr (%gala_744116._clap.ClapEventTransport, ptr null, i32 0, i32 2) to i64) },
	%gala_162268._.._onin_gala_core_cfunctions_windows.TypeField { { ptr, i64 } { ptr @string694, i64 16 }, i64 3, i64 ptrtoint (ptr getelementptr (%gala_744116._clap.ClapEventTransport, ptr null, i32 0, i32 3) to i64) },
	%gala_162268._.._onin_gala_core_cfunctions_windows.TypeField { { ptr, i64 } { ptr @string695, i64 5 }, i64 11, i64 ptrtoint (ptr getelementptr (%gala_744116._clap.ClapEventTransport, ptr null, i32 0, i32 4) to i64) },
	%gala_162268._.._onin_gala_core_cfunctions_windows.TypeField { { ptr, i64 } { ptr @string696, i64 9 }, i64 11, i64 ptrtoint (ptr getelementptr (%gala_744116._clap.ClapEventTransport, ptr null, i32 0, i32 5) to i64) },
	%gala_162268._.._onin_gala_core_cfunctions_windows.TypeField { { ptr, i64 } { ptr @string697, i64 16 }, i64 3, i64 ptrtoint (ptr getelementptr (%gala_744116._clap.ClapEventTransport, ptr null, i32 0, i32 6) to i64) },
	%gala_162268._.._onin_gala_core_cfunctions_windows.TypeField { { ptr, i64 } { ptr @string698, i64 14 }, i64 3, i64 ptrtoint (ptr getelementptr (%gala_744116._clap.ClapEventTransport, ptr null, i32 0, i32 7) to i64) },
	%gala_162268._.._onin_gala_core_cfunctions_windows.TypeField { { ptr, i64 } { ptr @string699, i64 18 }, i64 3, i64 ptrtoint (ptr getelementptr (%gala_744116._clap.ClapEventTransport, ptr null, i32 0, i32 8) to i64) },
	%gala_162268._.._onin_gala_core_cfunctions_windows.TypeField { { ptr, i64 } { ptr @string700, i64 16 }, i64 3, i64 ptrtoint (ptr getelementptr (%gala_744116._clap.ClapEventTransport, ptr null, i32 0, i32 9) to i64) },
	%gala_162268._.._onin_gala_core_cfunctions_windows.TypeField { { ptr, i64 } { ptr @string701, i64 9 }, i64 3, i64 ptrtoint (ptr getelementptr (%gala_744116._clap.ClapEventTransport, ptr null, i32 0, i32 10) to i64) },
	%gala_162268._.._onin_gala_core_cfunctions_windows.TypeField { { ptr, i64 } { ptr @string702, i64 10 }, i64 2, i64 ptrtoint (ptr getelementptr (%gala_744116._clap.ClapEventTransport, ptr null, i32 0, i32 11) to i64) },
	%gala_162268._.._onin_gala_core_cfunctions_windows.TypeField { { ptr, i64 } { ptr @string703, i64 8 }, i64 5, i64 ptrtoint (ptr getelementptr (%gala_744116._clap.ClapEventTransport, ptr null, i32 0, i32 12) to i64) },
	%gala_162268._.._onin_gala_core_cfunctions_windows.TypeField { { ptr, i64 } { ptr @string704, i64 10 }, i64 5, i64 ptrtoint (ptr getelementptr (%gala_744116._clap.ClapEventTransport, ptr null, i32 0, i32 13) to i64) }
]
@string706 = private unnamed_addr constant [16 x i8] c"ClapInputEvents\00", align 1

@string707 = private unnamed_addr constant [4 x i8] c"ctx\00", align 1

@string708 = private unnamed_addr constant [4 x i8] c"get\00", align 1

@tfields709 = private constant [3 x %gala_162268._.._onin_gala_core_cfunctions_windows.TypeField] [
	%gala_162268._.._onin_gala_core_cfunctions_windows.TypeField { { ptr, i64 } { ptr @string707, i64 3 }, i64 16, i64 ptrtoint (ptr getelementptr (%gala_744116._clap.ClapInputEvents, ptr null, i32 0, i32 0) to i64) },
	%gala_162268._.._onin_gala_core_cfunctions_windows.TypeField { { ptr, i64 } { ptr @string495, i64 4 }, i64 305, i64 ptrtoint (ptr getelementptr (%gala_744116._clap.ClapInputEvents, ptr null, i32 0, i32 1) to i64) },
	%gala_162268._.._onin_gala_core_cfunctions_windows.TypeField { { ptr, i64 } { ptr @string708, i64 3 }, i64 307, i64 ptrtoint (ptr getelementptr (%gala_744116._clap.ClapInputEvents, ptr null, i32 0, i32 2) to i64) }
]
@string710 = private unnamed_addr constant [17 x i8] c"ClapOutputEvents\00", align 1

@string711 = private unnamed_addr constant [9 x i8] c"try_push\00", align 1

@tfields712 = private constant [2 x %gala_162268._.._onin_gala_core_cfunctions_windows.TypeField] [
	%gala_162268._.._onin_gala_core_cfunctions_windows.TypeField { { ptr, i64 } { ptr @string707, i64 3 }, i64 16, i64 ptrtoint (ptr getelementptr (%gala_744116._clap.ClapOutputEvents, ptr null, i32 0, i32 0) to i64) },
	%gala_162268._.._onin_gala_core_cfunctions_windows.TypeField { { ptr, i64 } { ptr @string711, i64 8 }, i64 309, i64 ptrtoint (ptr getelementptr (%gala_744116._clap.ClapOutputEvents, ptr null, i32 0, i32 1) to i64) }
]
@string713 = private unnamed_addr constant [16 x i8] c"ClapAudioBuffer\00", align 1

@string714 = private unnamed_addr constant [7 x i8] c"data32\00", align 1

@string715 = private unnamed_addr constant [7 x i8] c"data64\00", align 1

@string716 = private unnamed_addr constant [14 x i8] c"channel_count\00", align 1

@string717 = private unnamed_addr constant [8 x i8] c"latency\00", align 1

@string718 = private unnamed_addr constant [14 x i8] c"constant_mask\00", align 1

@tfields719 = private constant [5 x %gala_162268._.._onin_gala_core_cfunctions_windows.TypeField] [
	%gala_162268._.._onin_gala_core_cfunctions_windows.TypeField { { ptr, i64 } { ptr @string714, i64 6 }, i64 310, i64 ptrtoint (ptr getelementptr (%gala_744116._clap.ClapAudioBuffer, ptr null, i32 0, i32 0) to i64) },
	%gala_162268._.._onin_gala_core_cfunctions_windows.TypeField { { ptr, i64 } { ptr @string715, i64 6 }, i64 311, i64 ptrtoint (ptr getelementptr (%gala_744116._clap.ClapAudioBuffer, ptr null, i32 0, i32 1) to i64) },
	%gala_162268._.._onin_gala_core_cfunctions_windows.TypeField { { ptr, i64 } { ptr @string716, i64 13 }, i64 6, i64 ptrtoint (ptr getelementptr (%gala_744116._clap.ClapAudioBuffer, ptr null, i32 0, i32 2) to i64) },
	%gala_162268._.._onin_gala_core_cfunctions_windows.TypeField { { ptr, i64 } { ptr @string717, i64 7 }, i64 6, i64 ptrtoint (ptr getelementptr (%gala_744116._clap.ClapAudioBuffer, ptr null, i32 0, i32 3) to i64) },
	%gala_162268._.._onin_gala_core_cfunctions_windows.TypeField { { ptr, i64 } { ptr @string718, i64 13 }, i64 7, i64 ptrtoint (ptr getelementptr (%gala_744116._clap.ClapAudioBuffer, ptr null, i32 0, i32 4) to i64) }
]
@string720 = private unnamed_addr constant [12 x i8] c"ClapProcess\00", align 1

@string721 = private unnamed_addr constant [12 x i8] c"steady_time\00", align 1

@string722 = private unnamed_addr constant [13 x i8] c"frames_count\00", align 1

@string723 = private unnamed_addr constant [10 x i8] c"transport\00", align 1

@string724 = private unnamed_addr constant [13 x i8] c"audio_inputs\00", align 1

@string725 = private unnamed_addr constant [14 x i8] c"audio_outputs\00", align 1

@string726 = private unnamed_addr constant [19 x i8] c"audio_inputs_count\00", align 1

@string727 = private unnamed_addr constant [20 x i8] c"audio_outputs_count\00", align 1

@string728 = private unnamed_addr constant [10 x i8] c"in_events\00", align 1

@string729 = private unnamed_addr constant [11 x i8] c"out_events\00", align 1

@tfields730 = private constant [9 x %gala_162268._.._onin_gala_core_cfunctions_windows.TypeField] [
	%gala_162268._.._onin_gala_core_cfunctions_windows.TypeField { { ptr, i64 } { ptr @string721, i64 11 }, i64 3, i64 ptrtoint (ptr getelementptr (%gala_744116._clap.ClapProcess, ptr null, i32 0, i32 0) to i64) },
	%gala_162268._.._onin_gala_core_cfunctions_windows.TypeField { { ptr, i64 } { ptr @string722, i64 12 }, i64 6, i64 ptrtoint (ptr getelementptr (%gala_744116._clap.ClapProcess, ptr null, i32 0, i32 1) to i64) },
	%gala_162268._.._onin_gala_core_cfunctions_windows.TypeField { { ptr, i64 } { ptr @string723, i64 9 }, i64 312, i64 ptrtoint (ptr getelementptr (%gala_744116._clap.ClapProcess, ptr null, i32 0, i32 2) to i64) },
	%gala_162268._.._onin_gala_core_cfunctions_windows.TypeField { { ptr, i64 } { ptr @string724, i64 12 }, i64 313, i64 ptrtoint (ptr getelementptr (%gala_744116._clap.ClapProcess, ptr null, i32 0, i32 3) to i64) },
	%gala_162268._.._onin_gala_core_cfunctions_windows.TypeField { { ptr, i64 } { ptr @string725, i64 13 }, i64 313, i64 ptrtoint (ptr getelementptr (%gala_744116._clap.ClapProcess, ptr null, i32 0, i32 4) to i64) },
	%gala_162268._.._onin_gala_core_cfunctions_windows.TypeField { { ptr, i64 } { ptr @string726, i64 18 }, i64 6, i64 ptrtoint (ptr getelementptr (%gala_744116._clap.ClapProcess, ptr null, i32 0, i32 5) to i64) },
	%gala_162268._.._onin_gala_core_cfunctions_windows.TypeField { { ptr, i64 } { ptr @string727, i64 19 }, i64 6, i64 ptrtoint (ptr getelementptr (%gala_744116._clap.ClapProcess, ptr null, i32 0, i32 6) to i64) },
	%gala_162268._.._onin_gala_core_cfunctions_windows.TypeField { { ptr, i64 } { ptr @string728, i64 9 }, i64 304, i64 ptrtoint (ptr getelementptr (%gala_744116._clap.ClapProcess, ptr null, i32 0, i32 7) to i64) },
	%gala_162268._.._onin_gala_core_cfunctions_windows.TypeField { { ptr, i64 } { ptr @string729, i64 10 }, i64 308, i64 ptrtoint (ptr getelementptr (%gala_744116._clap.ClapProcess, ptr null, i32 0, i32 8) to i64) }
]
@string731 = private unnamed_addr constant [9 x i8] c"ClapHost\00", align 1

@string732 = private unnamed_addr constant [13 x i8] c"clap_version\00", align 1

@string733 = private unnamed_addr constant [10 x i8] c"host_data\00", align 1

@string734 = private unnamed_addr constant [7 x i8] c"vendor\00", align 1

@string735 = private unnamed_addr constant [4 x i8] c"url\00", align 1

@string736 = private unnamed_addr constant [8 x i8] c"version\00", align 1

@string737 = private unnamed_addr constant [14 x i8] c"get_extension\00", align 1

@string738 = private unnamed_addr constant [16 x i8] c"request_restart\00", align 1

@string739 = private unnamed_addr constant [16 x i8] c"request_process\00", align 1

@string740 = private unnamed_addr constant [17 x i8] c"request_callback\00", align 1

@tfields741 = private constant [10 x %gala_162268._.._onin_gala_core_cfunctions_windows.TypeField] [
	%gala_162268._.._onin_gala_core_cfunctions_windows.TypeField { { ptr, i64 } { ptr @string732, i64 12 }, i64 276, i64 ptrtoint (ptr getelementptr (%gala_744116._clap.ClapHost, ptr null, i32 0, i32 0) to i64) },
	%gala_162268._.._onin_gala_core_cfunctions_windows.TypeField { { ptr, i64 } { ptr @string733, i64 9 }, i64 16, i64 ptrtoint (ptr getelementptr (%gala_744116._clap.ClapHost, ptr null, i32 0, i32 1) to i64) },
	%gala_162268._.._onin_gala_core_cfunctions_windows.TypeField { { ptr, i64 } { ptr @string488, i64 4 }, i64 21, i64 ptrtoint (ptr getelementptr (%gala_744116._clap.ClapHost, ptr null, i32 0, i32 2) to i64) },
	%gala_162268._.._onin_gala_core_cfunctions_windows.TypeField { { ptr, i64 } { ptr @string734, i64 6 }, i64 21, i64 ptrtoint (ptr getelementptr (%gala_744116._clap.ClapHost, ptr null, i32 0, i32 3) to i64) },
	%gala_162268._.._onin_gala_core_cfunctions_windows.TypeField { { ptr, i64 } { ptr @string735, i64 3 }, i64 21, i64 ptrtoint (ptr getelementptr (%gala_744116._clap.ClapHost, ptr null, i32 0, i32 4) to i64) },
	%gala_162268._.._onin_gala_core_cfunctions_windows.TypeField { { ptr, i64 } { ptr @string736, i64 7 }, i64 21, i64 ptrtoint (ptr getelementptr (%gala_744116._clap.ClapHost, ptr null, i32 0, i32 5) to i64) },
	%gala_162268._.._onin_gala_core_cfunctions_windows.TypeField { { ptr, i64 } { ptr @string737, i64 13 }, i64 315, i64 ptrtoint (ptr getelementptr (%gala_744116._clap.ClapHost, ptr null, i32 0, i32 6) to i64) },
	%gala_162268._.._onin_gala_core_cfunctions_windows.TypeField { { ptr, i64 } { ptr @string738, i64 15 }, i64 316, i64 ptrtoint (ptr getelementptr (%gala_744116._clap.ClapHost, ptr null, i32 0, i32 7) to i64) },
	%gala_162268._.._onin_gala_core_cfunctions_windows.TypeField { { ptr, i64 } { ptr @string739, i64 15 }, i64 317, i64 ptrtoint (ptr getelementptr (%gala_744116._clap.ClapHost, ptr null, i32 0, i32 8) to i64) },
	%gala_162268._.._onin_gala_core_cfunctions_windows.TypeField { { ptr, i64 } { ptr @string740, i64 16 }, i64 318, i64 ptrtoint (ptr getelementptr (%gala_744116._clap.ClapHost, ptr null, i32 0, i32 9) to i64) }
]
@string742 = private unnamed_addr constant [21 x i8] c"ClapPluginDescriptor\00", align 1

@string743 = private unnamed_addr constant [3 x i8] c"id\00", align 1

@string744 = private unnamed_addr constant [11 x i8] c"manual_url\00", align 1

@string745 = private unnamed_addr constant [12 x i8] c"support_url\00", align 1

@string746 = private unnamed_addr constant [12 x i8] c"description\00", align 1

@string747 = private unnamed_addr constant [9 x i8] c"features\00", align 1

@tfields748 = private constant [10 x %gala_162268._.._onin_gala_core_cfunctions_windows.TypeField] [
	%gala_162268._.._onin_gala_core_cfunctions_windows.TypeField { { ptr, i64 } { ptr @string732, i64 12 }, i64 276, i64 ptrtoint (ptr getelementptr (%gala_744116._clap.ClapPluginDescriptor, ptr null, i32 0, i32 0) to i64) },
	%gala_162268._.._onin_gala_core_cfunctions_windows.TypeField { { ptr, i64 } { ptr @string743, i64 2 }, i64 21, i64 ptrtoint (ptr getelementptr (%gala_744116._clap.ClapPluginDescriptor, ptr null, i32 0, i32 1) to i64) },
	%gala_162268._.._onin_gala_core_cfunctions_windows.TypeField { { ptr, i64 } { ptr @string488, i64 4 }, i64 21, i64 ptrtoint (ptr getelementptr (%gala_744116._clap.ClapPluginDescriptor, ptr null, i32 0, i32 2) to i64) },
	%gala_162268._.._onin_gala_core_cfunctions_windows.TypeField { { ptr, i64 } { ptr @string734, i64 6 }, i64 21, i64 ptrtoint (ptr getelementptr (%gala_744116._clap.ClapPluginDescriptor, ptr null, i32 0, i32 3) to i64) },
	%gala_162268._.._onin_gala_core_cfunctions_windows.TypeField { { ptr, i64 } { ptr @string735, i64 3 }, i64 21, i64 ptrtoint (ptr getelementptr (%gala_744116._clap.ClapPluginDescriptor, ptr null, i32 0, i32 4) to i64) },
	%gala_162268._.._onin_gala_core_cfunctions_windows.TypeField { { ptr, i64 } { ptr @string744, i64 10 }, i64 21, i64 ptrtoint (ptr getelementptr (%gala_744116._clap.ClapPluginDescriptor, ptr null, i32 0, i32 5) to i64) },
	%gala_162268._.._onin_gala_core_cfunctions_windows.TypeField { { ptr, i64 } { ptr @string745, i64 11 }, i64 21, i64 ptrtoint (ptr getelementptr (%gala_744116._clap.ClapPluginDescriptor, ptr null, i32 0, i32 6) to i64) },
	%gala_162268._.._onin_gala_core_cfunctions_windows.TypeField { { ptr, i64 } { ptr @string736, i64 7 }, i64 21, i64 ptrtoint (ptr getelementptr (%gala_744116._clap.ClapPluginDescriptor, ptr null, i32 0, i32 7) to i64) },
	%gala_162268._.._onin_gala_core_cfunctions_windows.TypeField { { ptr, i64 } { ptr @string746, i64 11 }, i64 21, i64 ptrtoint (ptr getelementptr (%gala_744116._clap.ClapPluginDescriptor, ptr null, i32 0, i32 8) to i64) },
	%gala_162268._.._onin_gala_core_cfunctions_windows.TypeField { { ptr, i64 } { ptr @string747, i64 8 }, i64 58, i64 ptrtoint (ptr getelementptr (%gala_744116._clap.ClapPluginDescriptor, ptr null, i32 0, i32 9) to i64) }
]
@string749 = private unnamed_addr constant [11 x i8] c"ClapPlugin\00", align 1

@string750 = private unnamed_addr constant [5 x i8] c"desc\00", align 1

@string751 = private unnamed_addr constant [12 x i8] c"plugin_data\00", align 1

@string752 = private unnamed_addr constant [5 x i8] c"init\00", align 1

@string753 = private unnamed_addr constant [8 x i8] c"destroy\00", align 1

@string754 = private unnamed_addr constant [9 x i8] c"activate\00", align 1

@string755 = private unnamed_addr constant [11 x i8] c"deactivate\00", align 1

@string756 = private unnamed_addr constant [17 x i8] c"start_processing\00", align 1

@string757 = private unnamed_addr constant [16 x i8] c"stop_processing\00", align 1

@string758 = private unnamed_addr constant [6 x i8] c"reset\00", align 1

@string759 = private unnamed_addr constant [8 x i8] c"process\00", align 1

@string760 = private unnamed_addr constant [15 x i8] c"on_main_thread\00", align 1

@tfields761 = private constant [12 x %gala_162268._.._onin_gala_core_cfunctions_windows.TypeField] [
	%gala_162268._.._onin_gala_core_cfunctions_windows.TypeField { { ptr, i64 } { ptr @string750, i64 4 }, i64 319, i64 ptrtoint (ptr getelementptr (%gala_744116._clap.ClapPlugin, ptr null, i32 0, i32 0) to i64) },
	%gala_162268._.._onin_gala_core_cfunctions_windows.TypeField { { ptr, i64 } { ptr @string751, i64 11 }, i64 16, i64 ptrtoint (ptr getelementptr (%gala_744116._clap.ClapPlugin, ptr null, i32 0, i32 1) to i64) },
	%gala_162268._.._onin_gala_core_cfunctions_windows.TypeField { { ptr, i64 } { ptr @string752, i64 4 }, i64 321, i64 ptrtoint (ptr getelementptr (%gala_744116._clap.ClapPlugin, ptr null, i32 0, i32 2) to i64) },
	%gala_162268._.._onin_gala_core_cfunctions_windows.TypeField { { ptr, i64 } { ptr @string753, i64 7 }, i64 322, i64 ptrtoint (ptr getelementptr (%gala_744116._clap.ClapPlugin, ptr null, i32 0, i32 3) to i64) },
	%gala_162268._.._onin_gala_core_cfunctions_windows.TypeField { { ptr, i64 } { ptr @string754, i64 8 }, i64 323, i64 ptrtoint (ptr getelementptr (%gala_744116._clap.ClapPlugin, ptr null, i32 0, i32 4) to i64) },
	%gala_162268._.._onin_gala_core_cfunctions_windows.TypeField { { ptr, i64 } { ptr @string755, i64 10 }, i64 324, i64 ptrtoint (ptr getelementptr (%gala_744116._clap.ClapPlugin, ptr null, i32 0, i32 5) to i64) },
	%gala_162268._.._onin_gala_core_cfunctions_windows.TypeField { { ptr, i64 } { ptr @string756, i64 16 }, i64 325, i64 ptrtoint (ptr getelementptr (%gala_744116._clap.ClapPlugin, ptr null, i32 0, i32 6) to i64) },
	%gala_162268._.._onin_gala_core_cfunctions_windows.TypeField { { ptr, i64 } { ptr @string757, i64 15 }, i64 326, i64 ptrtoint (ptr getelementptr (%gala_744116._clap.ClapPlugin, ptr null, i32 0, i32 7) to i64) },
	%gala_162268._.._onin_gala_core_cfunctions_windows.TypeField { { ptr, i64 } { ptr @string758, i64 5 }, i64 327, i64 ptrtoint (ptr getelementptr (%gala_744116._clap.ClapPlugin, ptr null, i32 0, i32 8) to i64) },
	%gala_162268._.._onin_gala_core_cfunctions_windows.TypeField { { ptr, i64 } { ptr @string759, i64 7 }, i64 329, i64 ptrtoint (ptr getelementptr (%gala_744116._clap.ClapPlugin, ptr null, i32 0, i32 9) to i64) },
	%gala_162268._.._onin_gala_core_cfunctions_windows.TypeField { { ptr, i64 } { ptr @string737, i64 13 }, i64 330, i64 ptrtoint (ptr getelementptr (%gala_744116._clap.ClapPlugin, ptr null, i32 0, i32 10) to i64) },
	%gala_162268._.._onin_gala_core_cfunctions_windows.TypeField { { ptr, i64 } { ptr @string760, i64 14 }, i64 331, i64 ptrtoint (ptr getelementptr (%gala_744116._clap.ClapPlugin, ptr null, i32 0, i32 11) to i64) }
]
@string762 = private unnamed_addr constant [18 x i8] c"ClapPluginFactory\00", align 1

@string763 = private unnamed_addr constant [17 x i8] c"get_plugin_count\00", align 1

@string764 = private unnamed_addr constant [22 x i8] c"get_plugin_descriptor\00", align 1

@string765 = private unnamed_addr constant [14 x i8] c"create_plugin\00", align 1

@tfields766 = private constant [3 x %gala_162268._.._onin_gala_core_cfunctions_windows.TypeField] [
	%gala_162268._.._onin_gala_core_cfunctions_windows.TypeField { { ptr, i64 } { ptr @string763, i64 16 }, i64 333, i64 ptrtoint (ptr getelementptr (%gala_744116._clap.ClapPluginFactory, ptr null, i32 0, i32 0) to i64) },
	%gala_162268._.._onin_gala_core_cfunctions_windows.TypeField { { ptr, i64 } { ptr @string764, i64 21 }, i64 334, i64 ptrtoint (ptr getelementptr (%gala_744116._clap.ClapPluginFactory, ptr null, i32 0, i32 1) to i64) },
	%gala_162268._.._onin_gala_core_cfunctions_windows.TypeField { { ptr, i64 } { ptr @string765, i64 13 }, i64 335, i64 ptrtoint (ptr getelementptr (%gala_744116._clap.ClapPluginFactory, ptr null, i32 0, i32 2) to i64) }
]
@string767 = private unnamed_addr constant [16 x i8] c"ClapPluginEntry\00", align 1

@string768 = private unnamed_addr constant [7 x i8] c"deinit\00", align 1

@string769 = private unnamed_addr constant [12 x i8] c"get_factory\00", align 1

@tfields770 = private constant [4 x %gala_162268._.._onin_gala_core_cfunctions_windows.TypeField] [
	%gala_162268._.._onin_gala_core_cfunctions_windows.TypeField { { ptr, i64 } { ptr @string732, i64 12 }, i64 276, i64 ptrtoint (ptr getelementptr (%gala_744116._clap.ClapPluginEntry, ptr null, i32 0, i32 0) to i64) },
	%gala_162268._.._onin_gala_core_cfunctions_windows.TypeField { { ptr, i64 } { ptr @string752, i64 4 }, i64 336, i64 ptrtoint (ptr getelementptr (%gala_744116._clap.ClapPluginEntry, ptr null, i32 0, i32 1) to i64) },
	%gala_162268._.._onin_gala_core_cfunctions_windows.TypeField { { ptr, i64 } { ptr @string768, i64 6 }, i64 337, i64 ptrtoint (ptr getelementptr (%gala_744116._clap.ClapPluginEntry, ptr null, i32 0, i32 2) to i64) },
	%gala_162268._.._onin_gala_core_cfunctions_windows.TypeField { { ptr, i64 } { ptr @string769, i64 11 }, i64 338, i64 ptrtoint (ptr getelementptr (%gala_744116._clap.ClapPluginEntry, ptr null, i32 0, i32 3) to i64) }
]
@string771 = private unnamed_addr constant [18 x i8] c"ClapAudioPortInfo\00", align 1

@string772 = private unnamed_addr constant [10 x i8] c"port_type\00", align 1

@string773 = private unnamed_addr constant [14 x i8] c"in_place_pair\00", align 1

@tfields774 = private constant [6 x %gala_162268._.._onin_gala_core_cfunctions_windows.TypeField] [
	%gala_162268._.._onin_gala_core_cfunctions_windows.TypeField { { ptr, i64 } { ptr @string743, i64 2 }, i64 6, i64 ptrtoint (ptr getelementptr (%gala_744116._clap.ClapAudioPortInfo, ptr null, i32 0, i32 0) to i64) },
	%gala_162268._.._onin_gala_core_cfunctions_windows.TypeField { { ptr, i64 } { ptr @string488, i64 4 }, i64 339, i64 ptrtoint (ptr getelementptr (%gala_744116._clap.ClapAudioPortInfo, ptr null, i32 0, i32 1) to i64) },
	%gala_162268._.._onin_gala_core_cfunctions_windows.TypeField { { ptr, i64 } { ptr @string669, i64 5 }, i64 6, i64 ptrtoint (ptr getelementptr (%gala_744116._clap.ClapAudioPortInfo, ptr null, i32 0, i32 2) to i64) },
	%gala_162268._.._onin_gala_core_cfunctions_windows.TypeField { { ptr, i64 } { ptr @string716, i64 13 }, i64 6, i64 ptrtoint (ptr getelementptr (%gala_744116._clap.ClapAudioPortInfo, ptr null, i32 0, i32 3) to i64) },
	%gala_162268._.._onin_gala_core_cfunctions_windows.TypeField { { ptr, i64 } { ptr @string772, i64 9 }, i64 21, i64 ptrtoint (ptr getelementptr (%gala_744116._clap.ClapAudioPortInfo, ptr null, i32 0, i32 4) to i64) },
	%gala_162268._.._onin_gala_core_cfunctions_windows.TypeField { { ptr, i64 } { ptr @string773, i64 13 }, i64 6, i64 ptrtoint (ptr getelementptr (%gala_744116._clap.ClapAudioPortInfo, ptr null, i32 0, i32 5) to i64) }
]
@string775 = private unnamed_addr constant [21 x i8] c"ClapPluginAudioPorts\00", align 1

@tfields776 = private constant [2 x %gala_162268._.._onin_gala_core_cfunctions_windows.TypeField] [
	%gala_162268._.._onin_gala_core_cfunctions_windows.TypeField { { ptr, i64 } { ptr @string497, i64 5 }, i64 340, i64 ptrtoint (ptr getelementptr (%gala_744116._clap.ClapPluginAudioPorts, ptr null, i32 0, i32 0) to i64) },
	%gala_162268._.._onin_gala_core_cfunctions_windows.TypeField { { ptr, i64 } { ptr @string708, i64 3 }, i64 342, i64 ptrtoint (ptr getelementptr (%gala_744116._clap.ClapPluginAudioPorts, ptr null, i32 0, i32 1) to i64) }
]
@string777 = private unnamed_addr constant [17 x i8] c"ClapNotePortInfo\00", align 1

@string778 = private unnamed_addr constant [19 x i8] c"supported_dialects\00", align 1

@string779 = private unnamed_addr constant [18 x i8] c"preferred_dialect\00", align 1

@tfields780 = private constant [4 x %gala_162268._.._onin_gala_core_cfunctions_windows.TypeField] [
	%gala_162268._.._onin_gala_core_cfunctions_windows.TypeField { { ptr, i64 } { ptr @string743, i64 2 }, i64 6, i64 ptrtoint (ptr getelementptr (%gala_744116._clap.ClapNotePortInfo, ptr null, i32 0, i32 0) to i64) },
	%gala_162268._.._onin_gala_core_cfunctions_windows.TypeField { { ptr, i64 } { ptr @string778, i64 18 }, i64 6, i64 ptrtoint (ptr getelementptr (%gala_744116._clap.ClapNotePortInfo, ptr null, i32 0, i32 1) to i64) },
	%gala_162268._.._onin_gala_core_cfunctions_windows.TypeField { { ptr, i64 } { ptr @string779, i64 17 }, i64 6, i64 ptrtoint (ptr getelementptr (%gala_744116._clap.ClapNotePortInfo, ptr null, i32 0, i32 2) to i64) },
	%gala_162268._.._onin_gala_core_cfunctions_windows.TypeField { { ptr, i64 } { ptr @string488, i64 4 }, i64 339, i64 ptrtoint (ptr getelementptr (%gala_744116._clap.ClapNotePortInfo, ptr null, i32 0, i32 3) to i64) }
]
@string781 = private unnamed_addr constant [20 x i8] c"ClapPluginNotePorts\00", align 1

@tfields782 = private constant [2 x %gala_162268._.._onin_gala_core_cfunctions_windows.TypeField] [
	%gala_162268._.._onin_gala_core_cfunctions_windows.TypeField { { ptr, i64 } { ptr @string497, i64 5 }, i64 343, i64 ptrtoint (ptr getelementptr (%gala_744116._clap.ClapPluginNotePorts, ptr null, i32 0, i32 0) to i64) },
	%gala_162268._.._onin_gala_core_cfunctions_windows.TypeField { { ptr, i64 } { ptr @string708, i64 3 }, i64 345, i64 ptrtoint (ptr getelementptr (%gala_744116._clap.ClapPluginNotePorts, ptr null, i32 0, i32 1) to i64) }
]
@string783 = private unnamed_addr constant [14 x i8] c"ClapParamInfo\00", align 1

@string784 = private unnamed_addr constant [12 x i8] c"module_path\00", align 1

@string785 = private unnamed_addr constant [10 x i8] c"min_value\00", align 1

@string786 = private unnamed_addr constant [10 x i8] c"max_value\00", align 1

@string787 = private unnamed_addr constant [14 x i8] c"default_value\00", align 1

@tfields788 = private constant [8 x %gala_162268._.._onin_gala_core_cfunctions_windows.TypeField] [
	%gala_162268._.._onin_gala_core_cfunctions_windows.TypeField { { ptr, i64 } { ptr @string743, i64 2 }, i64 6, i64 ptrtoint (ptr getelementptr (%gala_744116._clap.ClapParamInfo, ptr null, i32 0, i32 0) to i64) },
	%gala_162268._.._onin_gala_core_cfunctions_windows.TypeField { { ptr, i64 } { ptr @string669, i64 5 }, i64 6, i64 ptrtoint (ptr getelementptr (%gala_744116._clap.ClapParamInfo, ptr null, i32 0, i32 1) to i64) },
	%gala_162268._.._onin_gala_core_cfunctions_windows.TypeField { { ptr, i64 } { ptr @string685, i64 6 }, i64 16, i64 ptrtoint (ptr getelementptr (%gala_744116._clap.ClapParamInfo, ptr null, i32 0, i32 2) to i64) },
	%gala_162268._.._onin_gala_core_cfunctions_windows.TypeField { { ptr, i64 } { ptr @string488, i64 4 }, i64 339, i64 ptrtoint (ptr getelementptr (%gala_744116._clap.ClapParamInfo, ptr null, i32 0, i32 3) to i64) },
	%gala_162268._.._onin_gala_core_cfunctions_windows.TypeField { { ptr, i64 } { ptr @string784, i64 11 }, i64 346, i64 ptrtoint (ptr getelementptr (%gala_744116._clap.ClapParamInfo, ptr null, i32 0, i32 4) to i64) },
	%gala_162268._.._onin_gala_core_cfunctions_windows.TypeField { { ptr, i64 } { ptr @string785, i64 9 }, i64 11, i64 ptrtoint (ptr getelementptr (%gala_744116._clap.ClapParamInfo, ptr null, i32 0, i32 5) to i64) },
	%gala_162268._.._onin_gala_core_cfunctions_windows.TypeField { { ptr, i64 } { ptr @string786, i64 9 }, i64 11, i64 ptrtoint (ptr getelementptr (%gala_744116._clap.ClapParamInfo, ptr null, i32 0, i32 6) to i64) },
	%gala_162268._.._onin_gala_core_cfunctions_windows.TypeField { { ptr, i64 } { ptr @string787, i64 13 }, i64 11, i64 ptrtoint (ptr getelementptr (%gala_744116._clap.ClapParamInfo, ptr null, i32 0, i32 7) to i64) }
]
@string789 = private unnamed_addr constant [17 x i8] c"ClapPluginParams\00", align 1

@string790 = private unnamed_addr constant [9 x i8] c"get_info\00", align 1

@string791 = private unnamed_addr constant [10 x i8] c"get_value\00", align 1

@string792 = private unnamed_addr constant [14 x i8] c"value_to_text\00", align 1

@string793 = private unnamed_addr constant [14 x i8] c"text_to_value\00", align 1

@string794 = private unnamed_addr constant [6 x i8] c"flush\00", align 1

@tfields795 = private constant [6 x %gala_162268._.._onin_gala_core_cfunctions_windows.TypeField] [
	%gala_162268._.._onin_gala_core_cfunctions_windows.TypeField { { ptr, i64 } { ptr @string497, i64 5 }, i64 347, i64 ptrtoint (ptr getelementptr (%gala_744116._clap.ClapPluginParams, ptr null, i32 0, i32 0) to i64) },
	%gala_162268._.._onin_gala_core_cfunctions_windows.TypeField { { ptr, i64 } { ptr @string790, i64 8 }, i64 349, i64 ptrtoint (ptr getelementptr (%gala_744116._clap.ClapPluginParams, ptr null, i32 0, i32 1) to i64) },
	%gala_162268._.._onin_gala_core_cfunctions_windows.TypeField { { ptr, i64 } { ptr @string791, i64 9 }, i64 350, i64 ptrtoint (ptr getelementptr (%gala_744116._clap.ClapPluginParams, ptr null, i32 0, i32 2) to i64) },
	%gala_162268._.._onin_gala_core_cfunctions_windows.TypeField { { ptr, i64 } { ptr @string792, i64 13 }, i64 351, i64 ptrtoint (ptr getelementptr (%gala_744116._clap.ClapPluginParams, ptr null, i32 0, i32 3) to i64) },
	%gala_162268._.._onin_gala_core_cfunctions_windows.TypeField { { ptr, i64 } { ptr @string793, i64 13 }, i64 352, i64 ptrtoint (ptr getelementptr (%gala_744116._clap.ClapPluginParams, ptr null, i32 0, i32 4) to i64) },
	%gala_162268._.._onin_gala_core_cfunctions_windows.TypeField { { ptr, i64 } { ptr @string794, i64 5 }, i64 353, i64 ptrtoint (ptr getelementptr (%gala_744116._clap.ClapPluginParams, ptr null, i32 0, i32 5) to i64) }
]
@string796 = private unnamed_addr constant [15 x i8] c"ClapHostParams\00", align 1

@string797 = private unnamed_addr constant [7 x i8] c"rescan\00", align 1

@string798 = private unnamed_addr constant [6 x i8] c"clear\00", align 1

@string799 = private unnamed_addr constant [14 x i8] c"request_flush\00", align 1

@tfields800 = private constant [3 x %gala_162268._.._onin_gala_core_cfunctions_windows.TypeField] [
	%gala_162268._.._onin_gala_core_cfunctions_windows.TypeField { { ptr, i64 } { ptr @string797, i64 6 }, i64 354, i64 ptrtoint (ptr getelementptr (%gala_744116._clap.ClapHostParams, ptr null, i32 0, i32 0) to i64) },
	%gala_162268._.._onin_gala_core_cfunctions_windows.TypeField { { ptr, i64 } { ptr @string798, i64 5 }, i64 355, i64 ptrtoint (ptr getelementptr (%gala_744116._clap.ClapHostParams, ptr null, i32 0, i32 1) to i64) },
	%gala_162268._.._onin_gala_core_cfunctions_windows.TypeField { { ptr, i64 } { ptr @string799, i64 13 }, i64 356, i64 ptrtoint (ptr getelementptr (%gala_744116._clap.ClapHostParams, ptr null, i32 0, i32 2) to i64) }
]
@string801 = private unnamed_addr constant [12 x i8] c"ClapIStream\00", align 1

@string802 = private unnamed_addr constant [5 x i8] c"read\00", align 1

@tfields803 = private constant [2 x %gala_162268._.._onin_gala_core_cfunctions_windows.TypeField] [
	%gala_162268._.._onin_gala_core_cfunctions_windows.TypeField { { ptr, i64 } { ptr @string707, i64 3 }, i64 16, i64 ptrtoint (ptr getelementptr (%gala_744116._clap.ClapIStream, ptr null, i32 0, i32 0) to i64) },
	%gala_162268._.._onin_gala_core_cfunctions_windows.TypeField { { ptr, i64 } { ptr @string802, i64 4 }, i64 358, i64 ptrtoint (ptr getelementptr (%gala_744116._clap.ClapIStream, ptr null, i32 0, i32 1) to i64) }
]
@string804 = private unnamed_addr constant [12 x i8] c"ClapOStream\00", align 1

@string805 = private unnamed_addr constant [6 x i8] c"write\00", align 1

@tfields806 = private constant [2 x %gala_162268._.._onin_gala_core_cfunctions_windows.TypeField] [
	%gala_162268._.._onin_gala_core_cfunctions_windows.TypeField { { ptr, i64 } { ptr @string707, i64 3 }, i64 16, i64 ptrtoint (ptr getelementptr (%gala_744116._clap.ClapOStream, ptr null, i32 0, i32 0) to i64) },
	%gala_162268._.._onin_gala_core_cfunctions_windows.TypeField { { ptr, i64 } { ptr @string805, i64 5 }, i64 360, i64 ptrtoint (ptr getelementptr (%gala_744116._clap.ClapOStream, ptr null, i32 0, i32 1) to i64) }
]
@string807 = private unnamed_addr constant [16 x i8] c"ClapPluginState\00", align 1

@string808 = private unnamed_addr constant [5 x i8] c"save\00", align 1

@string809 = private unnamed_addr constant [5 x i8] c"load\00", align 1

@tfields810 = private constant [2 x %gala_162268._.._onin_gala_core_cfunctions_windows.TypeField] [
	%gala_162268._.._onin_gala_core_cfunctions_windows.TypeField { { ptr, i64 } { ptr @string808, i64 4 }, i64 361, i64 ptrtoint (ptr getelementptr (%gala_744116._clap.ClapPluginState, ptr null, i32 0, i32 0) to i64) },
	%gala_162268._.._onin_gala_core_cfunctions_windows.TypeField { { ptr, i64 } { ptr @string809, i64 4 }, i64 362, i64 ptrtoint (ptr getelementptr (%gala_744116._clap.ClapPluginState, ptr null, i32 0, i32 1) to i64) }
]
@string811 = private unnamed_addr constant [8 x i8] c"[3]byte\00", align 1

@string812 = private unnamed_addr constant [17 x i8] c"^ClapInputEvents\00", align 1

@string813 = private unnamed_addr constant [26 x i8] c"fn(^ClapInputEvents): u32\00", align 1

@string814 = private unnamed_addr constant [17 x i8] c"^ClapEventHeader\00", align 1

@string815 = private unnamed_addr constant [44 x i8] c"fn(^ClapInputEvents, u32): ^ClapEventHeader\00", align 1

@string816 = private unnamed_addr constant [18 x i8] c"^ClapOutputEvents\00", align 1

@string817 = private unnamed_addr constant [46 x i8] c"fn(^ClapOutputEvents, ^ClapEventHeader): bool\00", align 1

@string818 = private unnamed_addr constant [6 x i8] c"^^f32\00", align 1

@string819 = private unnamed_addr constant [6 x i8] c"^^f64\00", align 1

@string820 = private unnamed_addr constant [20 x i8] c"^ClapEventTransport\00", align 1

@string821 = private unnamed_addr constant [17 x i8] c"^ClapAudioBuffer\00", align 1

@string822 = private unnamed_addr constant [10 x i8] c"^ClapHost\00", align 1

@string823 = private unnamed_addr constant [29 x i8] c"fn(^ClapHost, ^byte): rawptr\00", align 1

@string824 = private unnamed_addr constant [14 x i8] c"fn(^ClapHost)\00", align 1

@string825 = private unnamed_addr constant [22 x i8] c"^ClapPluginDescriptor\00", align 1

@string826 = private unnamed_addr constant [12 x i8] c"^ClapPlugin\00", align 1

@string827 = private unnamed_addr constant [22 x i8] c"fn(^ClapPlugin): bool\00", align 1

@string828 = private unnamed_addr constant [16 x i8] c"fn(^ClapPlugin)\00", align 1

@string829 = private unnamed_addr constant [37 x i8] c"fn(^ClapPlugin, f64, u32, u32): bool\00", align 1

@string830 = private unnamed_addr constant [13 x i8] c"^ClapProcess\00", align 1

@string831 = private unnamed_addr constant [35 x i8] c"fn(^ClapPlugin, ^ClapProcess): i32\00", align 1

@string832 = private unnamed_addr constant [31 x i8] c"fn(^ClapPlugin, ^byte): rawptr\00", align 1

@string833 = private unnamed_addr constant [19 x i8] c"^ClapPluginFactory\00", align 1

@string834 = private unnamed_addr constant [28 x i8] c"fn(^ClapPluginFactory): u32\00", align 1

@string835 = private unnamed_addr constant [51 x i8] c"fn(^ClapPluginFactory, u32): ^ClapPluginDescriptor\00", align 1

@string836 = private unnamed_addr constant [54 x i8] c"fn(^ClapPluginFactory, ^ClapHost, ^byte): ^ClapPlugin\00", align 1

@string837 = private unnamed_addr constant [16 x i8] c"fn(^byte): bool\00", align 1

@string838 = private unnamed_addr constant [18 x i8] c"fn(^byte): rawptr\00", align 1

@string839 = private unnamed_addr constant [10 x i8] c"[256]byte\00", align 1

@string840 = private unnamed_addr constant [27 x i8] c"fn(^ClapPlugin, bool): u32\00", align 1

@string841 = private unnamed_addr constant [19 x i8] c"^ClapAudioPortInfo\00", align 1

@string842 = private unnamed_addr constant [53 x i8] c"fn(^ClapPlugin, u32, bool, ^ClapAudioPortInfo): bool\00", align 1

@string843 = private unnamed_addr constant [18 x i8] c"^ClapNotePortInfo\00", align 1

@string844 = private unnamed_addr constant [52 x i8] c"fn(^ClapPlugin, u32, bool, ^ClapNotePortInfo): bool\00", align 1

@string845 = private unnamed_addr constant [11 x i8] c"[1024]byte\00", align 1

@string846 = private unnamed_addr constant [21 x i8] c"fn(^ClapPlugin): u32\00", align 1

@string847 = private unnamed_addr constant [15 x i8] c"^ClapParamInfo\00", align 1

@string848 = private unnamed_addr constant [43 x i8] c"fn(^ClapPlugin, u32, ^ClapParamInfo): bool\00", align 1

@string849 = private unnamed_addr constant [33 x i8] c"fn(^ClapPlugin, u32, ^f64): bool\00", align 1

@string850 = private unnamed_addr constant [44 x i8] c"fn(^ClapPlugin, u32, f64, ^byte, u32): bool\00", align 1

@string851 = private unnamed_addr constant [40 x i8] c"fn(^ClapPlugin, u32, ^byte, ^f64): bool\00", align 1

@string852 = private unnamed_addr constant [53 x i8] c"fn(^ClapPlugin, ^ClapInputEvents, ^ClapOutputEvents)\00", align 1

@string853 = private unnamed_addr constant [19 x i8] c"fn(^ClapHost, u32)\00", align 1

@string854 = private unnamed_addr constant [24 x i8] c"fn(^ClapHost, u32, u32)\00", align 1

@string855 = private unnamed_addr constant [13 x i8] c"^ClapIStream\00", align 1

@string856 = private unnamed_addr constant [35 x i8] c"fn(^ClapIStream, rawptr, u64): i64\00", align 1

@string857 = private unnamed_addr constant [13 x i8] c"^ClapOStream\00", align 1

@string858 = private unnamed_addr constant [35 x i8] c"fn(^ClapOStream, rawptr, u64): i64\00", align 1

@string859 = private unnamed_addr constant [36 x i8] c"fn(^ClapPlugin, ^ClapOStream): bool\00", align 1

@string860 = private unnamed_addr constant [36 x i8] c"fn(^ClapPlugin, ^ClapIStream): bool\00", align 1

@string861 = private unnamed_addr constant [22 x i8] c"fn(ClapVersion): bool\00", align 1

@string862 = private unnamed_addr constant [23 x i8] c"fn(^byte, ^byte): bool\00", align 1

@string863 = private unnamed_addr constant [22 x i8] c"fn(^byte, i64, ^byte)\00", align 1

@string864 = private unnamed_addr constant [26 x i8] c"fn(^ClapInputEvents): i64\00", align 1

@string865 = private unnamed_addr constant [44 x i8] c"fn(^ClapInputEvents, i64): ^ClapEventHeader\00", align 1

@string866 = private unnamed_addr constant [5 x i8] c"gain\00", align 1

@string867 = private unnamed_addr constant [12 x i8] c"sample_rate\00", align 1

@tfields868 = private constant [2 x %gala_162268._.._onin_gala_core_cfunctions_windows.TypeField] [
	%gala_162268._.._onin_gala_core_cfunctions_windows.TypeField { { ptr, i64 } { ptr @string866, i64 4 }, i64 11, i64 ptrtoint (ptr getelementptr (%gala_976878._gain_plugin.Gain, ptr null, i32 0, i32 0) to i64) },
	%gala_162268._.._onin_gala_core_cfunctions_windows.TypeField { { ptr, i64 } { ptr @string867, i64 11 }, i64 11, i64 ptrtoint (ptr getelementptr (%gala_976878._gain_plugin.Gain, ptr null, i32 0, i32 1) to i64) }
]
@string869 = private unnamed_addr constant [6 x i8] c"^Gain\00", align 1

@string870 = private unnamed_addr constant [21 x i8] c"^ClapEventParamValue\00", align 1

@string871 = private unnamed_addr constant [28 x i8] c"fn(^Gain, ^ClapEventHeader)\00", align 1

@string872 = private unnamed_addr constant [9 x i8] c"[3]^byte\00", align 1

@string873 = private unnamed_addr constant [22 x i8] c"^ClapPluginAudioPorts\00", align 1

@string874 = private unnamed_addr constant [18 x i8] c"^ClapPluginParams\00", align 1

@string875 = private unnamed_addr constant [17 x i8] c"^ClapPluginState\00", align 1

@string876 = private unnamed_addr constant [17 x i8] c"fn(any): ^string\00", align 1

@string877 = private unnamed_addr constant [18 x i8] c"fn([]byte): ^byte\00", align 1

@string878 = private unnamed_addr constant [21 x i8] c"fn(Allocator): ^Gain\00", align 1

@string879 = private unnamed_addr constant [27 x i8] c"fn(Allocator): ^ClapPlugin\00", align 1

@__gala_types = constant [413 x %gala_162268._.._onin_gala_core_cfunctions_windows.TypeInfo] [
	%gala_162268._.._onin_gala_core_cfunctions_windows.TypeInfo { { ptr, i64 } { ptr @string470, i64 2 }, i64 1, i64 1, i64 0, i64 0, { ptr, i64 } { ptr null, i64 0 } },
	%gala_162268._.._onin_gala_core_cfunctions_windows.TypeInfo { { ptr, i64 } { ptr @string471, i64 3 }, i64 1, i64 2, i64 0, i64 0, { ptr, i64 } { ptr null, i64 0 } },
	%gala_162268._.._onin_gala_core_cfunctions_windows.TypeInfo { { ptr, i64 } { ptr @string472, i64 3 }, i64 1, i64 4, i64 0, i64 0, { ptr, i64 } { ptr null, i64 0 } },
	%gala_162268._.._onin_gala_core_cfunctions_windows.TypeInfo { { ptr, i64 } { ptr @string473, i64 3 }, i64 1, i64 8, i64 0, i64 0, { ptr, i64 } { ptr null, i64 0 } },
	%gala_162268._.._onin_gala_core_cfunctions_windows.TypeInfo { { ptr, i64 } { ptr @string474, i64 2 }, i64 2, i64 1, i64 0, i64 0, { ptr, i64 } { ptr null, i64 0 } },
	%gala_162268._.._onin_gala_core_cfunctions_windows.TypeInfo { { ptr, i64 } { ptr @string475, i64 3 }, i64 2, i64 2, i64 0, i64 0, { ptr, i64 } { ptr null, i64 0 } },
	%gala_162268._.._onin_gala_core_cfunctions_windows.TypeInfo { { ptr, i64 } { ptr @string476, i64 3 }, i64 2, i64 4, i64 0, i64 0, { ptr, i64 } { ptr null, i64 0 } },
	%gala_162268._.._onin_gala_core_cfunctions_windows.TypeInfo { { ptr, i64 } { ptr @string477, i64 3 }, i64 2, i64 8, i64 0, i64 0, { ptr, i64 } { ptr null, i64 0 } },
	%gala_162268._.._onin_gala_core_cfunctions_windows.TypeInfo { { ptr, i64 } { ptr @string478, i64 2 }, i64 3, i64 1, i64 0, i64 0, { ptr, i64 } { ptr null, i64 0 } },
	%gala_162268._.._onin_gala_core_cfunctions_windows.TypeInfo { { ptr, i64 } { ptr @string479, i64 3 }, i64 3, i64 2, i64 0, i64 0, { ptr, i64 } { ptr null, i64 0 } },
	%gala_162268._.._onin_gala_core_cfunctions_windows.TypeInfo { { ptr, i64 } { ptr @string480, i64 3 }, i64 3, i64 4, i64 0, i64 0, { ptr, i64 } { ptr null, i64 0 } },
	%gala_162268._.._onin_gala_core_cfunctions_windows.TypeInfo { { ptr, i64 } { ptr @string481, i64 3 }, i64 3, i64 8, i64 0, i64 0, { ptr, i64 } { ptr null, i64 0 } },
	%gala_162268._.._onin_gala_core_cfunctions_windows.TypeInfo { { ptr, i64 } { ptr null, i64 0 }, i64 0, i64 0, i64 0, i64 0, { ptr, i64 } { ptr null, i64 0 } },
	%gala_162268._.._onin_gala_core_cfunctions_windows.TypeInfo { { ptr, i64 } { ptr @string482, i64 3 }, i64 14, i64 16, i64 0, i64 0, { ptr, i64 } { ptr null, i64 0 } },
	%gala_162268._.._onin_gala_core_cfunctions_windows.TypeInfo { { ptr, i64 } { ptr @string483, i64 4 }, i64 4, i64 1, i64 0, i64 0, { ptr, i64 } { ptr null, i64 0 } },
	%gala_162268._.._onin_gala_core_cfunctions_windows.TypeInfo { { ptr, i64 } { ptr @string484, i64 4 }, i64 5, i64 1, i64 0, i64 0, { ptr, i64 } { ptr null, i64 0 } },
	%gala_162268._.._onin_gala_core_cfunctions_windows.TypeInfo { { ptr, i64 } { ptr @string485, i64 6 }, i64 8, i64 8, i64 12, i64 0, { ptr, i64 } { ptr null, i64 0 } },
	%gala_162268._.._onin_gala_core_cfunctions_windows.TypeInfo { { ptr, i64 } { ptr @string486, i64 6 }, i64 7, i64 16, i64 0, i64 0, { ptr, i64 } { ptr null, i64 0 } },
	%gala_162268._.._onin_gala_core_cfunctions_windows.TypeInfo { { ptr, i64 } { ptr @string487, i64 9 }, i64 11, i64 32, i64 0, i64 0, { ptr, i64 } { ptr @tfields491, i64 3 } },
	%gala_162268._.._onin_gala_core_cfunctions_windows.TypeInfo { { ptr, i64 } { ptr @string492, i64 11 }, i64 9, i64 16, i64 18, i64 0, { ptr, i64 } { ptr null, i64 0 } },
	%gala_162268._.._onin_gala_core_cfunctions_windows.TypeInfo { { ptr, i64 } { ptr @string493, i64 8 }, i64 11, i64 64, i64 0, i64 0, { ptr, i64 } { ptr @tfields499, i64 6 } },
	%gala_162268._.._onin_gala_core_cfunctions_windows.TypeInfo { { ptr, i64 } { ptr @string500, i64 5 }, i64 8, i64 8, i64 15, i64 0, { ptr, i64 } { ptr null, i64 0 } },
	%gala_162268._.._onin_gala_core_cfunctions_windows.TypeInfo { { ptr, i64 } { ptr @string501, i64 24 }, i64 13, i64 8, i64 0, i64 0, { ptr, i64 } { ptr null, i64 0 } },
	%gala_162268._.._onin_gala_core_cfunctions_windows.TypeInfo { { ptr, i64 } { ptr @string501, i64 24 }, i64 13, i64 8, i64 0, i64 0, { ptr, i64 } { ptr null, i64 0 } },
	%gala_162268._.._onin_gala_core_cfunctions_windows.TypeInfo { { ptr, i64 } { ptr @string502, i64 12 }, i64 13, i64 8, i64 0, i64 0, { ptr, i64 } { ptr null, i64 0 } },
	%gala_162268._.._onin_gala_core_cfunctions_windows.TypeInfo { { ptr, i64 } { ptr @string503, i64 5 }, i64 9, i64 16, i64 13, i64 0, { ptr, i64 } { ptr null, i64 0 } },
	%gala_162268._.._onin_gala_core_cfunctions_windows.TypeInfo { { ptr, i64 } { ptr @string504, i64 19 }, i64 13, i64 8, i64 0, i64 0, { ptr, i64 } { ptr null, i64 0 } },
	%gala_162268._.._onin_gala_core_cfunctions_windows.TypeInfo { { ptr, i64 } { ptr @string505, i64 14 }, i64 13, i64 8, i64 0, i64 0, { ptr, i64 } { ptr null, i64 0 } },
	%gala_162268._.._onin_gala_core_cfunctions_windows.TypeInfo { { ptr, i64 } { ptr @string506, i64 22 }, i64 13, i64 8, i64 0, i64 0, { ptr, i64 } { ptr null, i64 0 } },
	%gala_162268._.._onin_gala_core_cfunctions_windows.TypeInfo { { ptr, i64 } { ptr @string507, i64 26 }, i64 13, i64 8, i64 0, i64 0, { ptr, i64 } { ptr null, i64 0 } },
	%gala_162268._.._onin_gala_core_cfunctions_windows.TypeInfo { { ptr, i64 } { ptr @string508, i64 24 }, i64 13, i64 8, i64 0, i64 0, { ptr, i64 } { ptr null, i64 0 } },
	%gala_162268._.._onin_gala_core_cfunctions_windows.TypeInfo { { ptr, i64 } { ptr @string509, i64 15 }, i64 13, i64 8, i64 0, i64 0, { ptr, i64 } { ptr null, i64 0 } },
	%gala_162268._.._onin_gala_core_cfunctions_windows.TypeInfo { { ptr, i64 } { ptr @string510, i64 22 }, i64 13, i64 8, i64 0, i64 0, { ptr, i64 } { ptr null, i64 0 } },
	%gala_162268._.._onin_gala_core_cfunctions_windows.TypeInfo { { ptr, i64 } { ptr @string511, i64 32 }, i64 13, i64 8, i64 0, i64 0, { ptr, i64 } { ptr null, i64 0 } },
	%gala_162268._.._onin_gala_core_cfunctions_windows.TypeInfo { { ptr, i64 } { ptr @string511, i64 32 }, i64 13, i64 8, i64 0, i64 0, { ptr, i64 } { ptr null, i64 0 } },
	%gala_162268._.._onin_gala_core_cfunctions_windows.TypeInfo { { ptr, i64 } { ptr @string512, i64 10 }, i64 13, i64 8, i64 0, i64 0, { ptr, i64 } { ptr null, i64 0 } },
	%gala_162268._.._onin_gala_core_cfunctions_windows.TypeInfo { { ptr, i64 } { ptr @string513, i64 25 }, i64 13, i64 8, i64 0, i64 0, { ptr, i64 } { ptr null, i64 0 } },
	%gala_162268._.._onin_gala_core_cfunctions_windows.TypeInfo { { ptr, i64 } { ptr @string514, i64 15 }, i64 13, i64 8, i64 0, i64 0, { ptr, i64 } { ptr null, i64 0 } },
	%gala_162268._.._onin_gala_core_cfunctions_windows.TypeInfo { { ptr, i64 } { ptr @string515, i64 15 }, i64 13, i64 8, i64 0, i64 0, { ptr, i64 } { ptr null, i64 0 } },
	%gala_162268._.._onin_gala_core_cfunctions_windows.TypeInfo { { ptr, i64 } { ptr @string516, i64 20 }, i64 13, i64 8, i64 0, i64 0, { ptr, i64 } { ptr null, i64 0 } },
	%gala_162268._.._onin_gala_core_cfunctions_windows.TypeInfo { { ptr, i64 } { ptr @string517, i64 23 }, i64 13, i64 8, i64 0, i64 0, { ptr, i64 } { ptr null, i64 0 } },
	%gala_162268._.._onin_gala_core_cfunctions_windows.TypeInfo { { ptr, i64 } { ptr @string512, i64 10 }, i64 13, i64 8, i64 0, i64 0, { ptr, i64 } { ptr null, i64 0 } },
	%gala_162268._.._onin_gala_core_cfunctions_windows.TypeInfo { { ptr, i64 } { ptr @string518, i64 31 }, i64 13, i64 8, i64 0, i64 0, { ptr, i64 } { ptr null, i64 0 } },
	%gala_162268._.._onin_gala_core_cfunctions_windows.TypeInfo { { ptr, i64 } { ptr @string518, i64 31 }, i64 13, i64 8, i64 0, i64 0, { ptr, i64 } { ptr null, i64 0 } },
	%gala_162268._.._onin_gala_core_cfunctions_windows.TypeInfo { { ptr, i64 } { ptr @string519, i64 28 }, i64 13, i64 8, i64 0, i64 0, { ptr, i64 } { ptr null, i64 0 } },
	%gala_162268._.._onin_gala_core_cfunctions_windows.TypeInfo { { ptr, i64 } { ptr @string520, i64 28 }, i64 13, i64 8, i64 0, i64 0, { ptr, i64 } { ptr null, i64 0 } },
	%gala_162268._.._onin_gala_core_cfunctions_windows.TypeInfo { { ptr, i64 } { ptr @string521, i64 14 }, i64 13, i64 8, i64 0, i64 0, { ptr, i64 } { ptr null, i64 0 } },
	%gala_162268._.._onin_gala_core_cfunctions_windows.TypeInfo { { ptr, i64 } { ptr @string522, i64 21 }, i64 13, i64 8, i64 0, i64 0, { ptr, i64 } { ptr null, i64 0 } },
	%gala_162268._.._onin_gala_core_cfunctions_windows.TypeInfo { { ptr, i64 } { ptr @string523, i64 26 }, i64 13, i64 8, i64 0, i64 0, { ptr, i64 } { ptr null, i64 0 } },
	%gala_162268._.._onin_gala_core_cfunctions_windows.TypeInfo { { ptr, i64 } { ptr @string524, i64 23 }, i64 13, i64 8, i64 0, i64 0, { ptr, i64 } { ptr null, i64 0 } },
	%gala_162268._.._onin_gala_core_cfunctions_windows.TypeInfo { { ptr, i64 } { ptr @string525, i64 28 }, i64 13, i64 8, i64 0, i64 0, { ptr, i64 } { ptr null, i64 0 } },
	%gala_162268._.._onin_gala_core_cfunctions_windows.TypeInfo { { ptr, i64 } { ptr @string524, i64 23 }, i64 13, i64 8, i64 0, i64 0, { ptr, i64 } { ptr null, i64 0 } },
	%gala_162268._.._onin_gala_core_cfunctions_windows.TypeInfo { { ptr, i64 } { ptr @string525, i64 28 }, i64 13, i64 8, i64 0, i64 0, { ptr, i64 } { ptr null, i64 0 } },
	%gala_162268._.._onin_gala_core_cfunctions_windows.TypeInfo { { ptr, i64 } { ptr @string526, i64 21 }, i64 13, i64 8, i64 0, i64 0, { ptr, i64 } { ptr null, i64 0 } },
	%gala_162268._.._onin_gala_core_cfunctions_windows.TypeInfo { { ptr, i64 } { ptr @string526, i64 21 }, i64 13, i64 8, i64 0, i64 0, { ptr, i64 } { ptr null, i64 0 } },
	%gala_162268._.._onin_gala_core_cfunctions_windows.TypeInfo { { ptr, i64 } { ptr @string505, i64 14 }, i64 13, i64 8, i64 0, i64 0, { ptr, i64 } { ptr null, i64 0 } },
	%gala_162268._.._onin_gala_core_cfunctions_windows.TypeInfo { { ptr, i64 } { ptr @string527, i64 14 }, i64 13, i64 8, i64 0, i64 0, { ptr, i64 } { ptr null, i64 0 } },
	%gala_162268._.._onin_gala_core_cfunctions_windows.TypeInfo { { ptr, i64 } { ptr @string527, i64 14 }, i64 13, i64 8, i64 0, i64 0, { ptr, i64 } { ptr null, i64 0 } },
	%gala_162268._.._onin_gala_core_cfunctions_windows.TypeInfo { { ptr, i64 } { ptr @string528, i64 6 }, i64 8, i64 8, i64 21, i64 0, { ptr, i64 } { ptr null, i64 0 } },
	%gala_162268._.._onin_gala_core_cfunctions_windows.TypeInfo { { ptr, i64 } { ptr @string529, i64 27 }, i64 13, i64 8, i64 0, i64 0, { ptr, i64 } { ptr null, i64 0 } },
	%gala_162268._.._onin_gala_core_cfunctions_windows.TypeInfo { { ptr, i64 } { ptr @string529, i64 27 }, i64 13, i64 8, i64 0, i64 0, { ptr, i64 } { ptr null, i64 0 } },
	%gala_162268._.._onin_gala_core_cfunctions_windows.TypeInfo { { ptr, i64 } { ptr @string530, i64 27 }, i64 13, i64 8, i64 0, i64 0, { ptr, i64 } { ptr null, i64 0 } },
	%gala_162268._.._onin_gala_core_cfunctions_windows.TypeInfo { { ptr, i64 } { ptr @string530, i64 27 }, i64 13, i64 8, i64 0, i64 0, { ptr, i64 } { ptr null, i64 0 } },
	%gala_162268._.._onin_gala_core_cfunctions_windows.TypeInfo { { ptr, i64 } { ptr @string531, i64 22 }, i64 13, i64 8, i64 0, i64 0, { ptr, i64 } { ptr null, i64 0 } },
	%gala_162268._.._onin_gala_core_cfunctions_windows.TypeInfo { { ptr, i64 } { ptr @string532, i64 22 }, i64 13, i64 8, i64 0, i64 0, { ptr, i64 } { ptr null, i64 0 } },
	%gala_162268._.._onin_gala_core_cfunctions_windows.TypeInfo { { ptr, i64 } { ptr @string533, i64 9 }, i64 13, i64 8, i64 0, i64 0, { ptr, i64 } { ptr null, i64 0 } },
	%gala_162268._.._onin_gala_core_cfunctions_windows.TypeInfo { { ptr, i64 } { ptr @string534, i64 7 }, i64 13, i64 8, i64 0, i64 0, { ptr, i64 } { ptr null, i64 0 } },
	%gala_162268._.._onin_gala_core_cfunctions_windows.TypeInfo { { ptr, i64 } { ptr @string514, i64 15 }, i64 13, i64 8, i64 0, i64 0, { ptr, i64 } { ptr null, i64 0 } },
	%gala_162268._.._onin_gala_core_cfunctions_windows.TypeInfo { { ptr, i64 } { ptr @string535, i64 7 }, i64 13, i64 8, i64 0, i64 0, { ptr, i64 } { ptr null, i64 0 } },
	%gala_162268._.._onin_gala_core_cfunctions_windows.TypeInfo { { ptr, i64 } { ptr @string536, i64 4 }, i64 13, i64 8, i64 0, i64 0, { ptr, i64 } { ptr null, i64 0 } },
	%gala_162268._.._onin_gala_core_cfunctions_windows.TypeInfo { { ptr, i64 } { ptr @string536, i64 4 }, i64 13, i64 8, i64 0, i64 0, { ptr, i64 } { ptr null, i64 0 } },
	%gala_162268._.._onin_gala_core_cfunctions_windows.TypeInfo { { ptr, i64 } { ptr @string537, i64 13 }, i64 13, i64 8, i64 0, i64 0, { ptr, i64 } { ptr null, i64 0 } },
	%gala_162268._.._onin_gala_core_cfunctions_windows.TypeInfo { { ptr, i64 } { ptr @string538, i64 16 }, i64 13, i64 8, i64 0, i64 0, { ptr, i64 } { ptr null, i64 0 } },
	%gala_162268._.._onin_gala_core_cfunctions_windows.TypeInfo { { ptr, i64 } { ptr @string539, i64 12 }, i64 13, i64 8, i64 0, i64 0, { ptr, i64 } { ptr null, i64 0 } },
	%gala_162268._.._onin_gala_core_cfunctions_windows.TypeInfo { { ptr, i64 } { ptr @string540, i64 17 }, i64 13, i64 8, i64 0, i64 0, { ptr, i64 } { ptr null, i64 0 } },
	%gala_162268._.._onin_gala_core_cfunctions_windows.TypeInfo { { ptr, i64 } { ptr @string539, i64 12 }, i64 13, i64 8, i64 0, i64 0, { ptr, i64 } { ptr null, i64 0 } },
	%gala_162268._.._onin_gala_core_cfunctions_windows.TypeInfo { { ptr, i64 } { ptr @string539, i64 12 }, i64 13, i64 8, i64 0, i64 0, { ptr, i64 } { ptr null, i64 0 } },
	%gala_162268._.._onin_gala_core_cfunctions_windows.TypeInfo { { ptr, i64 } { ptr @string539, i64 12 }, i64 13, i64 8, i64 0, i64 0, { ptr, i64 } { ptr null, i64 0 } },
	%gala_162268._.._onin_gala_core_cfunctions_windows.TypeInfo { { ptr, i64 } { ptr @string539, i64 12 }, i64 13, i64 8, i64 0, i64 0, { ptr, i64 } { ptr null, i64 0 } },
	%gala_162268._.._onin_gala_core_cfunctions_windows.TypeInfo { { ptr, i64 } { ptr @string539, i64 12 }, i64 13, i64 8, i64 0, i64 0, { ptr, i64 } { ptr null, i64 0 } },
	%gala_162268._.._onin_gala_core_cfunctions_windows.TypeInfo { { ptr, i64 } { ptr @string539, i64 12 }, i64 13, i64 8, i64 0, i64 0, { ptr, i64 } { ptr null, i64 0 } },
	%gala_162268._.._onin_gala_core_cfunctions_windows.TypeInfo { { ptr, i64 } { ptr @string540, i64 17 }, i64 13, i64 8, i64 0, i64 0, { ptr, i64 } { ptr null, i64 0 } },
	%gala_162268._.._onin_gala_core_cfunctions_windows.TypeInfo { { ptr, i64 } { ptr @string539, i64 12 }, i64 13, i64 8, i64 0, i64 0, { ptr, i64 } { ptr null, i64 0 } },
	%gala_162268._.._onin_gala_core_cfunctions_windows.TypeInfo { { ptr, i64 } { ptr @string539, i64 12 }, i64 13, i64 8, i64 0, i64 0, { ptr, i64 } { ptr null, i64 0 } },
	%gala_162268._.._onin_gala_core_cfunctions_windows.TypeInfo { { ptr, i64 } { ptr @string539, i64 12 }, i64 13, i64 8, i64 0, i64 0, { ptr, i64 } { ptr null, i64 0 } },
	%gala_162268._.._onin_gala_core_cfunctions_windows.TypeInfo { { ptr, i64 } { ptr @string539, i64 12 }, i64 13, i64 8, i64 0, i64 0, { ptr, i64 } { ptr null, i64 0 } },
	%gala_162268._.._onin_gala_core_cfunctions_windows.TypeInfo { { ptr, i64 } { ptr @string539, i64 12 }, i64 13, i64 8, i64 0, i64 0, { ptr, i64 } { ptr null, i64 0 } },
	%gala_162268._.._onin_gala_core_cfunctions_windows.TypeInfo { { ptr, i64 } { ptr @string539, i64 12 }, i64 13, i64 8, i64 0, i64 0, { ptr, i64 } { ptr null, i64 0 } },
	%gala_162268._.._onin_gala_core_cfunctions_windows.TypeInfo { { ptr, i64 } { ptr @string539, i64 12 }, i64 13, i64 8, i64 0, i64 0, { ptr, i64 } { ptr null, i64 0 } },
	%gala_162268._.._onin_gala_core_cfunctions_windows.TypeInfo { { ptr, i64 } { ptr @string539, i64 12 }, i64 13, i64 8, i64 0, i64 0, { ptr, i64 } { ptr null, i64 0 } },
	%gala_162268._.._onin_gala_core_cfunctions_windows.TypeInfo { { ptr, i64 } { ptr @string539, i64 12 }, i64 13, i64 8, i64 0, i64 0, { ptr, i64 } { ptr null, i64 0 } },
	%gala_162268._.._onin_gala_core_cfunctions_windows.TypeInfo { { ptr, i64 } { ptr @string539, i64 12 }, i64 13, i64 8, i64 0, i64 0, { ptr, i64 } { ptr null, i64 0 } },
	%gala_162268._.._onin_gala_core_cfunctions_windows.TypeInfo { { ptr, i64 } { ptr @string541, i64 12 }, i64 13, i64 8, i64 0, i64 0, { ptr, i64 } { ptr null, i64 0 } },
	%gala_162268._.._onin_gala_core_cfunctions_windows.TypeInfo { { ptr, i64 } { ptr @string542, i64 17 }, i64 13, i64 8, i64 0, i64 0, { ptr, i64 } { ptr null, i64 0 } },
	%gala_162268._.._onin_gala_core_cfunctions_windows.TypeInfo { { ptr, i64 } { ptr @string541, i64 12 }, i64 13, i64 8, i64 0, i64 0, { ptr, i64 } { ptr null, i64 0 } },
	%gala_162268._.._onin_gala_core_cfunctions_windows.TypeInfo { { ptr, i64 } { ptr @string541, i64 12 }, i64 13, i64 8, i64 0, i64 0, { ptr, i64 } { ptr null, i64 0 } },
	%gala_162268._.._onin_gala_core_cfunctions_windows.TypeInfo { { ptr, i64 } { ptr @string541, i64 12 }, i64 13, i64 8, i64 0, i64 0, { ptr, i64 } { ptr null, i64 0 } },
	%gala_162268._.._onin_gala_core_cfunctions_windows.TypeInfo { { ptr, i64 } { ptr @string541, i64 12 }, i64 13, i64 8, i64 0, i64 0, { ptr, i64 } { ptr null, i64 0 } },
	%gala_162268._.._onin_gala_core_cfunctions_windows.TypeInfo { { ptr, i64 } { ptr @string541, i64 12 }, i64 13, i64 8, i64 0, i64 0, { ptr, i64 } { ptr null, i64 0 } },
	%gala_162268._.._onin_gala_core_cfunctions_windows.TypeInfo { { ptr, i64 } { ptr @string541, i64 12 }, i64 13, i64 8, i64 0, i64 0, { ptr, i64 } { ptr null, i64 0 } },
	%gala_162268._.._onin_gala_core_cfunctions_windows.TypeInfo { { ptr, i64 } { ptr @string542, i64 17 }, i64 13, i64 8, i64 0, i64 0, { ptr, i64 } { ptr null, i64 0 } },
	%gala_162268._.._onin_gala_core_cfunctions_windows.TypeInfo { { ptr, i64 } { ptr @string541, i64 12 }, i64 13, i64 8, i64 0, i64 0, { ptr, i64 } { ptr null, i64 0 } },
	%gala_162268._.._onin_gala_core_cfunctions_windows.TypeInfo { { ptr, i64 } { ptr @string541, i64 12 }, i64 13, i64 8, i64 0, i64 0, { ptr, i64 } { ptr null, i64 0 } },
	%gala_162268._.._onin_gala_core_cfunctions_windows.TypeInfo { { ptr, i64 } { ptr @string541, i64 12 }, i64 13, i64 8, i64 0, i64 0, { ptr, i64 } { ptr null, i64 0 } },
	%gala_162268._.._onin_gala_core_cfunctions_windows.TypeInfo { { ptr, i64 } { ptr @string541, i64 12 }, i64 13, i64 8, i64 0, i64 0, { ptr, i64 } { ptr null, i64 0 } },
	%gala_162268._.._onin_gala_core_cfunctions_windows.TypeInfo { { ptr, i64 } { ptr @string541, i64 12 }, i64 13, i64 8, i64 0, i64 0, { ptr, i64 } { ptr null, i64 0 } },
	%gala_162268._.._onin_gala_core_cfunctions_windows.TypeInfo { { ptr, i64 } { ptr @string541, i64 12 }, i64 13, i64 8, i64 0, i64 0, { ptr, i64 } { ptr null, i64 0 } },
	%gala_162268._.._onin_gala_core_cfunctions_windows.TypeInfo { { ptr, i64 } { ptr @string541, i64 12 }, i64 13, i64 8, i64 0, i64 0, { ptr, i64 } { ptr null, i64 0 } },
	%gala_162268._.._onin_gala_core_cfunctions_windows.TypeInfo { { ptr, i64 } { ptr @string541, i64 12 }, i64 13, i64 8, i64 0, i64 0, { ptr, i64 } { ptr null, i64 0 } },
	%gala_162268._.._onin_gala_core_cfunctions_windows.TypeInfo { { ptr, i64 } { ptr @string541, i64 12 }, i64 13, i64 8, i64 0, i64 0, { ptr, i64 } { ptr null, i64 0 } },
	%gala_162268._.._onin_gala_core_cfunctions_windows.TypeInfo { { ptr, i64 } { ptr @string541, i64 12 }, i64 13, i64 8, i64 0, i64 0, { ptr, i64 } { ptr null, i64 0 } },
	%gala_162268._.._onin_gala_core_cfunctions_windows.TypeInfo { { ptr, i64 } { ptr null, i64 0 }, i64 0, i64 0, i64 0, i64 0, { ptr, i64 } { ptr null, i64 0 } },
	%gala_162268._.._onin_gala_core_cfunctions_windows.TypeInfo { { ptr, i64 } { ptr @string543, i64 7 }, i64 11, i64 4104, i64 0, i64 0, { ptr, i64 } { ptr @tfields545, i64 2 } },
	%gala_162268._.._onin_gala_core_cfunctions_windows.TypeInfo { { ptr, i64 } { ptr @string546, i64 10 }, i64 10, i64 4096, i64 15, i64 4096, { ptr, i64 } { ptr null, i64 0 } },
	%gala_162268._.._onin_gala_core_cfunctions_windows.TypeInfo { { ptr, i64 } { ptr null, i64 0 }, i64 0, i64 0, i64 0, i64 0, { ptr, i64 } { ptr null, i64 0 } },
	%gala_162268._.._onin_gala_core_cfunctions_windows.TypeInfo { { ptr, i64 } { ptr null, i64 0 }, i64 0, i64 0, i64 0, i64 0, { ptr, i64 } { ptr null, i64 0 } },
	%gala_162268._.._onin_gala_core_cfunctions_windows.TypeInfo { { ptr, i64 } { ptr null, i64 0 }, i64 0, i64 0, i64 0, i64 0, { ptr, i64 } { ptr null, i64 0 } },
	%gala_162268._.._onin_gala_core_cfunctions_windows.TypeInfo { { ptr, i64 } { ptr null, i64 0 }, i64 0, i64 0, i64 0, i64 0, { ptr, i64 } { ptr null, i64 0 } },
	%gala_162268._.._onin_gala_core_cfunctions_windows.TypeInfo { { ptr, i64 } { ptr null, i64 0 }, i64 0, i64 0, i64 0, i64 0, { ptr, i64 } { ptr null, i64 0 } },
	%gala_162268._.._onin_gala_core_cfunctions_windows.TypeInfo { { ptr, i64 } { ptr null, i64 0 }, i64 0, i64 0, i64 0, i64 0, { ptr, i64 } { ptr null, i64 0 } },
	%gala_162268._.._onin_gala_core_cfunctions_windows.TypeInfo { { ptr, i64 } { ptr null, i64 0 }, i64 0, i64 0, i64 0, i64 0, { ptr, i64 } { ptr null, i64 0 } },
	%gala_162268._.._onin_gala_core_cfunctions_windows.TypeInfo { { ptr, i64 } { ptr @string517, i64 23 }, i64 13, i64 8, i64 0, i64 0, { ptr, i64 } { ptr null, i64 0 } },
	%gala_162268._.._onin_gala_core_cfunctions_windows.TypeInfo { { ptr, i64 } { ptr @string547, i64 17 }, i64 13, i64 8, i64 0, i64 0, { ptr, i64 } { ptr null, i64 0 } },
	%gala_162268._.._onin_gala_core_cfunctions_windows.TypeInfo { { ptr, i64 } { ptr @string548, i64 24 }, i64 13, i64 8, i64 0, i64 0, { ptr, i64 } { ptr null, i64 0 } },
	%gala_162268._.._onin_gala_core_cfunctions_windows.TypeInfo { { ptr, i64 } { ptr @string549, i64 13 }, i64 13, i64 8, i64 0, i64 0, { ptr, i64 } { ptr null, i64 0 } },
	%gala_162268._.._onin_gala_core_cfunctions_windows.TypeInfo { { ptr, i64 } { ptr @string550, i64 8 }, i64 8, i64 8, i64 112, i64 0, { ptr, i64 } { ptr null, i64 0 } },
	%gala_162268._.._onin_gala_core_cfunctions_windows.TypeInfo { { ptr, i64 } { ptr @string551, i64 18 }, i64 13, i64 8, i64 0, i64 0, { ptr, i64 } { ptr null, i64 0 } },
	%gala_162268._.._onin_gala_core_cfunctions_windows.TypeInfo { { ptr, i64 } { ptr @string552, i64 20 }, i64 13, i64 8, i64 0, i64 0, { ptr, i64 } { ptr null, i64 0 } },
	%gala_162268._.._onin_gala_core_cfunctions_windows.TypeInfo { { ptr, i64 } { ptr @string553, i64 17 }, i64 13, i64 8, i64 0, i64 0, { ptr, i64 } { ptr null, i64 0 } },
	%gala_162268._.._onin_gala_core_cfunctions_windows.TypeInfo { { ptr, i64 } { ptr @string554, i64 6 }, i64 9, i64 16, i64 15, i64 0, { ptr, i64 } { ptr null, i64 0 } },
	%gala_162268._.._onin_gala_core_cfunctions_windows.TypeInfo { { ptr, i64 } { ptr @string555, i64 20 }, i64 13, i64 8, i64 0, i64 0, { ptr, i64 } { ptr null, i64 0 } },
	%gala_162268._.._onin_gala_core_cfunctions_windows.TypeInfo { { ptr, i64 } { ptr @string556, i64 20 }, i64 13, i64 8, i64 0, i64 0, { ptr, i64 } { ptr null, i64 0 } },
	%gala_162268._.._onin_gala_core_cfunctions_windows.TypeInfo { { ptr, i64 } { ptr @string557, i64 15 }, i64 13, i64 8, i64 0, i64 0, { ptr, i64 } { ptr null, i64 0 } },
	%gala_162268._.._onin_gala_core_cfunctions_windows.TypeInfo { { ptr, i64 } { ptr @string558, i64 22 }, i64 13, i64 8, i64 0, i64 0, { ptr, i64 } { ptr null, i64 0 } },
	%gala_162268._.._onin_gala_core_cfunctions_windows.TypeInfo { { ptr, i64 } { ptr @string559, i64 27 }, i64 13, i64 8, i64 0, i64 0, { ptr, i64 } { ptr null, i64 0 } },
	%gala_162268._.._onin_gala_core_cfunctions_windows.TypeInfo { { ptr, i64 } { ptr @string553, i64 17 }, i64 13, i64 8, i64 0, i64 0, { ptr, i64 } { ptr null, i64 0 } },
	%gala_162268._.._onin_gala_core_cfunctions_windows.TypeInfo { { ptr, i64 } { ptr @string560, i64 17 }, i64 13, i64 8, i64 0, i64 0, { ptr, i64 } { ptr null, i64 0 } },
	%gala_162268._.._onin_gala_core_cfunctions_windows.TypeInfo { { ptr, i64 } { ptr @string553, i64 17 }, i64 13, i64 8, i64 0, i64 0, { ptr, i64 } { ptr null, i64 0 } },
	%gala_162268._.._onin_gala_core_cfunctions_windows.TypeInfo { { ptr, i64 } { ptr @string561, i64 17 }, i64 13, i64 8, i64 0, i64 0, { ptr, i64 } { ptr null, i64 0 } },
	%gala_162268._.._onin_gala_core_cfunctions_windows.TypeInfo { { ptr, i64 } { ptr @string562, i64 4 }, i64 8, i64 8, i64 3, i64 0, { ptr, i64 } { ptr null, i64 0 } },
	%gala_162268._.._onin_gala_core_cfunctions_windows.TypeInfo { { ptr, i64 } { ptr @string563, i64 4 }, i64 8, i64 8, i64 2, i64 0, { ptr, i64 } { ptr null, i64 0 } },
	%gala_162268._.._onin_gala_core_cfunctions_windows.TypeInfo { { ptr, i64 } { ptr @string564, i64 4 }, i64 8, i64 8, i64 1, i64 0, { ptr, i64 } { ptr null, i64 0 } },
	%gala_162268._.._onin_gala_core_cfunctions_windows.TypeInfo { { ptr, i64 } { ptr @string565, i64 3 }, i64 8, i64 8, i64 0, i64 0, { ptr, i64 } { ptr null, i64 0 } },
	%gala_162268._.._onin_gala_core_cfunctions_windows.TypeInfo { { ptr, i64 } { ptr @string566, i64 25 }, i64 13, i64 8, i64 0, i64 0, { ptr, i64 } { ptr null, i64 0 } },
	%gala_162268._.._onin_gala_core_cfunctions_windows.TypeInfo { { ptr, i64 } { ptr @string567, i64 4 }, i64 8, i64 8, i64 7, i64 0, { ptr, i64 } { ptr null, i64 0 } },
	%gala_162268._.._onin_gala_core_cfunctions_windows.TypeInfo { { ptr, i64 } { ptr @string568, i64 4 }, i64 8, i64 8, i64 6, i64 0, { ptr, i64 } { ptr null, i64 0 } },
	%gala_162268._.._onin_gala_core_cfunctions_windows.TypeInfo { { ptr, i64 } { ptr @string569, i64 4 }, i64 8, i64 8, i64 5, i64 0, { ptr, i64 } { ptr null, i64 0 } },
	%gala_162268._.._onin_gala_core_cfunctions_windows.TypeInfo { { ptr, i64 } { ptr @string570, i64 3 }, i64 8, i64 8, i64 4, i64 0, { ptr, i64 } { ptr null, i64 0 } },
	%gala_162268._.._onin_gala_core_cfunctions_windows.TypeInfo { { ptr, i64 } { ptr @string566, i64 25 }, i64 13, i64 8, i64 0, i64 0, { ptr, i64 } { ptr null, i64 0 } },
	%gala_162268._.._onin_gala_core_cfunctions_windows.TypeInfo { { ptr, i64 } { ptr @string571, i64 4 }, i64 8, i64 8, i64 11, i64 0, { ptr, i64 } { ptr null, i64 0 } },
	%gala_162268._.._onin_gala_core_cfunctions_windows.TypeInfo { { ptr, i64 } { ptr @string572, i64 4 }, i64 8, i64 8, i64 10, i64 0, { ptr, i64 } { ptr null, i64 0 } },
	%gala_162268._.._onin_gala_core_cfunctions_windows.TypeInfo { { ptr, i64 } { ptr @string566, i64 25 }, i64 13, i64 8, i64 0, i64 0, { ptr, i64 } { ptr null, i64 0 } },
	%gala_162268._.._onin_gala_core_cfunctions_windows.TypeInfo { { ptr, i64 } { ptr @string573, i64 9 }, i64 8, i64 8, i64 20, i64 0, { ptr, i64 } { ptr null, i64 0 } },
	%gala_162268._.._onin_gala_core_cfunctions_windows.TypeInfo { { ptr, i64 } { ptr @string574, i64 31 }, i64 13, i64 8, i64 0, i64 0, { ptr, i64 } { ptr null, i64 0 } },
	%gala_162268._.._onin_gala_core_cfunctions_windows.TypeInfo { { ptr, i64 } { ptr @string575, i64 7 }, i64 8, i64 8, i64 16, i64 0, { ptr, i64 } { ptr null, i64 0 } },
	%gala_162268._.._onin_gala_core_cfunctions_windows.TypeInfo { { ptr, i64 } { ptr @string574, i64 31 }, i64 13, i64 8, i64 0, i64 0, { ptr, i64 } { ptr null, i64 0 } },
	%gala_162268._.._onin_gala_core_cfunctions_windows.TypeInfo { { ptr, i64 } { ptr @string576, i64 5 }, i64 8, i64 8, i64 14, i64 0, { ptr, i64 } { ptr null, i64 0 } },
	%gala_162268._.._onin_gala_core_cfunctions_windows.TypeInfo { { ptr, i64 } { ptr @string577, i64 7 }, i64 8, i64 8, i64 17, i64 0, { ptr, i64 } { ptr null, i64 0 } },
	%gala_162268._.._onin_gala_core_cfunctions_windows.TypeInfo { { ptr, i64 } { ptr @string578, i64 4 }, i64 8, i64 8, i64 13, i64 0, { ptr, i64 } { ptr null, i64 0 } },
	%gala_162268._.._onin_gala_core_cfunctions_windows.TypeInfo { { ptr, i64 } { ptr @string579, i64 31 }, i64 13, i64 8, i64 0, i64 0, { ptr, i64 } { ptr null, i64 0 } },
	%gala_162268._.._onin_gala_core_cfunctions_windows.TypeInfo { { ptr, i64 } { ptr @string580, i64 17 }, i64 13, i64 8, i64 0, i64 0, { ptr, i64 } { ptr null, i64 0 } },
	%gala_162268._.._onin_gala_core_cfunctions_windows.TypeInfo { { ptr, i64 } { ptr @string581, i64 27 }, i64 13, i64 8, i64 0, i64 0, { ptr, i64 } { ptr null, i64 0 } },
	%gala_162268._.._onin_gala_core_cfunctions_windows.TypeInfo { { ptr, i64 } { ptr @string582, i64 16 }, i64 13, i64 8, i64 0, i64 0, { ptr, i64 } { ptr null, i64 0 } },
	%gala_162268._.._onin_gala_core_cfunctions_windows.TypeInfo { { ptr, i64 } { ptr @string583, i64 27 }, i64 13, i64 8, i64 0, i64 0, { ptr, i64 } { ptr null, i64 0 } },
	%gala_162268._.._onin_gala_core_cfunctions_windows.TypeInfo { { ptr, i64 } { ptr @string584, i64 18 }, i64 13, i64 8, i64 0, i64 0, { ptr, i64 } { ptr null, i64 0 } },
	%gala_162268._.._onin_gala_core_cfunctions_windows.TypeInfo { { ptr, i64 } { ptr @string585, i64 25 }, i64 13, i64 8, i64 0, i64 0, { ptr, i64 } { ptr null, i64 0 } },
	%gala_162268._.._onin_gala_core_cfunctions_windows.TypeInfo { { ptr, i64 } { ptr @string586, i64 10 }, i64 13, i64 8, i64 0, i64 0, { ptr, i64 } { ptr null, i64 0 } },
	%gala_162268._.._onin_gala_core_cfunctions_windows.TypeInfo { { ptr, i64 } { ptr @string587, i64 20 }, i64 13, i64 8, i64 0, i64 0, { ptr, i64 } { ptr null, i64 0 } },
	%gala_162268._.._onin_gala_core_cfunctions_windows.TypeInfo { { ptr, i64 } { ptr @string588, i64 22 }, i64 13, i64 8, i64 0, i64 0, { ptr, i64 } { ptr null, i64 0 } },
	%gala_162268._.._onin_gala_core_cfunctions_windows.TypeInfo { { ptr, i64 } { ptr @string536, i64 4 }, i64 13, i64 8, i64 0, i64 0, { ptr, i64 } { ptr null, i64 0 } },
	%gala_162268._.._onin_gala_core_cfunctions_windows.TypeInfo { { ptr, i64 } { ptr @string536, i64 4 }, i64 13, i64 8, i64 0, i64 0, { ptr, i64 } { ptr null, i64 0 } },
	%gala_162268._.._onin_gala_core_cfunctions_windows.TypeInfo { { ptr, i64 } { ptr @string589, i64 10 }, i64 13, i64 8, i64 0, i64 0, { ptr, i64 } { ptr null, i64 0 } },
	%gala_162268._.._onin_gala_core_cfunctions_windows.TypeInfo { { ptr, i64 } { ptr @string536, i64 4 }, i64 13, i64 8, i64 0, i64 0, { ptr, i64 } { ptr null, i64 0 } },
	%gala_162268._.._onin_gala_core_cfunctions_windows.TypeInfo { { ptr, i64 } { ptr @string589, i64 10 }, i64 13, i64 8, i64 0, i64 0, { ptr, i64 } { ptr null, i64 0 } },
	%gala_162268._.._onin_gala_core_cfunctions_windows.TypeInfo { { ptr, i64 } { ptr @string535, i64 7 }, i64 13, i64 8, i64 0, i64 0, { ptr, i64 } { ptr null, i64 0 } },
	%gala_162268._.._onin_gala_core_cfunctions_windows.TypeInfo { { ptr, i64 } { ptr @string590, i64 15 }, i64 13, i64 8, i64 0, i64 0, { ptr, i64 } { ptr null, i64 0 } },
	%gala_162268._.._onin_gala_core_cfunctions_windows.TypeInfo { { ptr, i64 } { ptr @string591, i64 12 }, i64 13, i64 8, i64 0, i64 0, { ptr, i64 } { ptr null, i64 0 } },
	%gala_162268._.._onin_gala_core_cfunctions_windows.TypeInfo { { ptr, i64 } { ptr @string552, i64 20 }, i64 13, i64 8, i64 0, i64 0, { ptr, i64 } { ptr null, i64 0 } },
	%gala_162268._.._onin_gala_core_cfunctions_windows.TypeInfo { { ptr, i64 } { ptr @string534, i64 7 }, i64 13, i64 8, i64 0, i64 0, { ptr, i64 } { ptr null, i64 0 } },
	%gala_162268._.._onin_gala_core_cfunctions_windows.TypeInfo { { ptr, i64 } { ptr @string592, i64 7 }, i64 13, i64 8, i64 0, i64 0, { ptr, i64 } { ptr null, i64 0 } },
	%gala_162268._.._onin_gala_core_cfunctions_windows.TypeInfo { { ptr, i64 } { ptr null, i64 0 }, i64 0, i64 0, i64 0, i64 0, { ptr, i64 } { ptr null, i64 0 } },
	%gala_162268._.._onin_gala_core_cfunctions_windows.TypeInfo { { ptr, i64 } { ptr @string593, i64 8 }, i64 11, i64 16, i64 0, i64 0, { ptr, i64 } { ptr @tfields595, i64 2 } },
	%gala_162268._.._onin_gala_core_cfunctions_windows.TypeInfo { { ptr, i64 } { ptr @string596, i64 9 }, i64 11, i64 16, i64 0, i64 0, { ptr, i64 } { ptr @tfields598, i64 2 } },
	%gala_162268._.._onin_gala_core_cfunctions_windows.TypeInfo { { ptr, i64 } { ptr @string599, i64 5 }, i64 11, i64 40, i64 0, i64 0, { ptr, i64 } { ptr @tfields603, i64 5 } },
	%gala_162268._.._onin_gala_core_cfunctions_windows.TypeInfo { { ptr, i64 } { ptr @string604, i64 4 }, i64 11, i64 40, i64 0, i64 0, { ptr, i64 } { ptr @tfields608, i64 5 } },
	%gala_162268._.._onin_gala_core_cfunctions_windows.TypeInfo { { ptr, i64 } { ptr @string609, i64 8 }, i64 11, i64 64, i64 0, i64 0, { ptr, i64 } { ptr @tfields617, i64 7 } },
	%gala_162268._.._onin_gala_core_cfunctions_windows.TypeInfo { { ptr, i64 } { ptr @string618, i64 46 }, i64 13, i64 8, i64 0, i64 0, { ptr, i64 } { ptr null, i64 0 } },
	%gala_162268._.._onin_gala_core_cfunctions_windows.TypeInfo { { ptr, i64 } { ptr @string619, i64 15 }, i64 13, i64 8, i64 0, i64 0, { ptr, i64 } { ptr null, i64 0 } },
	%gala_162268._.._onin_gala_core_cfunctions_windows.TypeInfo { { ptr, i64 } { ptr @string515, i64 15 }, i64 13, i64 8, i64 0, i64 0, { ptr, i64 } { ptr null, i64 0 } },
	%gala_162268._.._onin_gala_core_cfunctions_windows.TypeInfo { { ptr, i64 } { ptr @string620, i64 13 }, i64 13, i64 8, i64 0, i64 0, { ptr, i64 } { ptr null, i64 0 } },
	%gala_162268._.._onin_gala_core_cfunctions_windows.TypeInfo { { ptr, i64 } { ptr @string621, i64 17 }, i64 13, i64 8, i64 0, i64 0, { ptr, i64 } { ptr null, i64 0 } },
	%gala_162268._.._onin_gala_core_cfunctions_windows.TypeInfo { { ptr, i64 } { ptr @string622, i64 12 }, i64 13, i64 8, i64 0, i64 0, { ptr, i64 } { ptr null, i64 0 } },
	%gala_162268._.._onin_gala_core_cfunctions_windows.TypeInfo { { ptr, i64 } { ptr @string621, i64 17 }, i64 13, i64 8, i64 0, i64 0, { ptr, i64 } { ptr null, i64 0 } },
	%gala_162268._.._onin_gala_core_cfunctions_windows.TypeInfo { { ptr, i64 } { ptr @string621, i64 17 }, i64 13, i64 8, i64 0, i64 0, { ptr, i64 } { ptr null, i64 0 } },
	%gala_162268._.._onin_gala_core_cfunctions_windows.TypeInfo { { ptr, i64 } { ptr @string623, i64 23 }, i64 13, i64 8, i64 0, i64 0, { ptr, i64 } { ptr null, i64 0 } },
	%gala_162268._.._onin_gala_core_cfunctions_windows.TypeInfo { { ptr, i64 } { ptr @string624, i64 15 }, i64 13, i64 8, i64 0, i64 0, { ptr, i64 } { ptr null, i64 0 } },
	%gala_162268._.._onin_gala_core_cfunctions_windows.TypeInfo { { ptr, i64 } { ptr @string625, i64 20 }, i64 13, i64 8, i64 0, i64 0, { ptr, i64 } { ptr null, i64 0 } },
	%gala_162268._.._onin_gala_core_cfunctions_windows.TypeInfo { { ptr, i64 } { ptr @string626, i64 29 }, i64 13, i64 8, i64 0, i64 0, { ptr, i64 } { ptr null, i64 0 } },
	%gala_162268._.._onin_gala_core_cfunctions_windows.TypeInfo { { ptr, i64 } { ptr null, i64 0 }, i64 0, i64 0, i64 0, i64 0, { ptr, i64 } { ptr null, i64 0 } },
	%gala_162268._.._onin_gala_core_cfunctions_windows.TypeInfo { { ptr, i64 } { ptr null, i64 0 }, i64 0, i64 0, i64 0, i64 0, { ptr, i64 } { ptr null, i64 0 } },
	%gala_162268._.._onin_gala_core_cfunctions_windows.TypeInfo { { ptr, i64 } { ptr null, i64 0 }, i64 0, i64 0, i64 0, i64 0, { ptr, i64 } { ptr null, i64 0 } },
	%gala_162268._.._onin_gala_core_cfunctions_windows.TypeInfo { { ptr, i64 } { ptr null, i64 0 }, i64 0, i64 0, i64 0, i64 0, { ptr, i64 } { ptr null, i64 0 } },
	%gala_162268._.._onin_gala_core_cfunctions_windows.TypeInfo { { ptr, i64 } { ptr @string627, i64 23 }, i64 13, i64 8, i64 0, i64 0, { ptr, i64 } { ptr null, i64 0 } },
	%gala_162268._.._onin_gala_core_cfunctions_windows.TypeInfo { { ptr, i64 } { ptr @string628, i64 13 }, i64 13, i64 8, i64 0, i64 0, { ptr, i64 } { ptr null, i64 0 } },
	%gala_162268._.._onin_gala_core_cfunctions_windows.TypeInfo { { ptr, i64 } { ptr @string629, i64 9 }, i64 13, i64 8, i64 0, i64 0, { ptr, i64 } { ptr null, i64 0 } },
	%gala_162268._.._onin_gala_core_cfunctions_windows.TypeInfo { { ptr, i64 } { ptr @string630, i64 15 }, i64 13, i64 8, i64 0, i64 0, { ptr, i64 } { ptr null, i64 0 } },
	%gala_162268._.._onin_gala_core_cfunctions_windows.TypeInfo { { ptr, i64 } { ptr @string631, i64 31 }, i64 13, i64 8, i64 0, i64 0, { ptr, i64 } { ptr null, i64 0 } },
	%gala_162268._.._onin_gala_core_cfunctions_windows.TypeInfo { { ptr, i64 } { ptr @string629, i64 9 }, i64 13, i64 8, i64 0, i64 0, { ptr, i64 } { ptr null, i64 0 } },
	%gala_162268._.._onin_gala_core_cfunctions_windows.TypeInfo { { ptr, i64 } { ptr @string630, i64 15 }, i64 13, i64 8, i64 0, i64 0, { ptr, i64 } { ptr null, i64 0 } },
	%gala_162268._.._onin_gala_core_cfunctions_windows.TypeInfo { { ptr, i64 } { ptr @string632, i64 26 }, i64 13, i64 8, i64 0, i64 0, { ptr, i64 } { ptr null, i64 0 } },
	%gala_162268._.._onin_gala_core_cfunctions_windows.TypeInfo { { ptr, i64 } { ptr @string630, i64 15 }, i64 13, i64 8, i64 0, i64 0, { ptr, i64 } { ptr null, i64 0 } },
	%gala_162268._.._onin_gala_core_cfunctions_windows.TypeInfo { { ptr, i64 } { ptr @string628, i64 13 }, i64 13, i64 8, i64 0, i64 0, { ptr, i64 } { ptr null, i64 0 } },
	%gala_162268._.._onin_gala_core_cfunctions_windows.TypeInfo { { ptr, i64 } { ptr @string629, i64 9 }, i64 13, i64 8, i64 0, i64 0, { ptr, i64 } { ptr null, i64 0 } },
	%gala_162268._.._onin_gala_core_cfunctions_windows.TypeInfo { { ptr, i64 } { ptr @string630, i64 15 }, i64 13, i64 8, i64 0, i64 0, { ptr, i64 } { ptr null, i64 0 } },
	%gala_162268._.._onin_gala_core_cfunctions_windows.TypeInfo { { ptr, i64 } { ptr @string633, i64 44 }, i64 13, i64 8, i64 0, i64 0, { ptr, i64 } { ptr null, i64 0 } },
	%gala_162268._.._onin_gala_core_cfunctions_windows.TypeInfo { { ptr, i64 } { ptr @string630, i64 15 }, i64 13, i64 8, i64 0, i64 0, { ptr, i64 } { ptr null, i64 0 } },
	%gala_162268._.._onin_gala_core_cfunctions_windows.TypeInfo { { ptr, i64 } { ptr @string634, i64 26 }, i64 13, i64 8, i64 0, i64 0, { ptr, i64 } { ptr null, i64 0 } },
	%gala_162268._.._onin_gala_core_cfunctions_windows.TypeInfo { { ptr, i64 } { ptr @string630, i64 15 }, i64 13, i64 8, i64 0, i64 0, { ptr, i64 } { ptr null, i64 0 } },
	%gala_162268._.._onin_gala_core_cfunctions_windows.TypeInfo { { ptr, i64 } { ptr @string635, i64 21 }, i64 13, i64 8, i64 0, i64 0, { ptr, i64 } { ptr null, i64 0 } },
	%gala_162268._.._onin_gala_core_cfunctions_windows.TypeInfo { { ptr, i64 } { ptr @string630, i64 15 }, i64 13, i64 8, i64 0, i64 0, { ptr, i64 } { ptr null, i64 0 } },
	%gala_162268._.._onin_gala_core_cfunctions_windows.TypeInfo { { ptr, i64 } { ptr @string636, i64 29 }, i64 13, i64 8, i64 0, i64 0, { ptr, i64 } { ptr null, i64 0 } },
	%gala_162268._.._onin_gala_core_cfunctions_windows.TypeInfo { { ptr, i64 } { ptr @string630, i64 15 }, i64 13, i64 8, i64 0, i64 0, { ptr, i64 } { ptr null, i64 0 } },
	%gala_162268._.._onin_gala_core_cfunctions_windows.TypeInfo { { ptr, i64 } { ptr @string637, i64 28 }, i64 13, i64 8, i64 0, i64 0, { ptr, i64 } { ptr null, i64 0 } },
	%gala_162268._.._onin_gala_core_cfunctions_windows.TypeInfo { { ptr, i64 } { ptr @string630, i64 15 }, i64 13, i64 8, i64 0, i64 0, { ptr, i64 } { ptr null, i64 0 } },
	%gala_162268._.._onin_gala_core_cfunctions_windows.TypeInfo { { ptr, i64 } { ptr @string638, i64 21 }, i64 13, i64 8, i64 0, i64 0, { ptr, i64 } { ptr null, i64 0 } },
	%gala_162268._.._onin_gala_core_cfunctions_windows.TypeInfo { { ptr, i64 } { ptr @string630, i64 15 }, i64 13, i64 8, i64 0, i64 0, { ptr, i64 } { ptr null, i64 0 } },
	%gala_162268._.._onin_gala_core_cfunctions_windows.TypeInfo { { ptr, i64 } { ptr null, i64 0 }, i64 0, i64 0, i64 0, i64 0, { ptr, i64 } { ptr null, i64 0 } },
	%gala_162268._.._onin_gala_core_cfunctions_windows.TypeInfo { { ptr, i64 } { ptr null, i64 0 }, i64 0, i64 0, i64 0, i64 0, { ptr, i64 } { ptr null, i64 0 } },
	%gala_162268._.._onin_gala_core_cfunctions_windows.TypeInfo { { ptr, i64 } { ptr null, i64 0 }, i64 0, i64 0, i64 0, i64 0, { ptr, i64 } { ptr null, i64 0 } },
	%gala_162268._.._onin_gala_core_cfunctions_windows.TypeInfo { { ptr, i64 } { ptr @string630, i64 15 }, i64 13, i64 8, i64 0, i64 0, { ptr, i64 } { ptr null, i64 0 } },
	%gala_162268._.._onin_gala_core_cfunctions_windows.TypeInfo { { ptr, i64 } { ptr null, i64 0 }, i64 0, i64 0, i64 0, i64 0, { ptr, i64 } { ptr null, i64 0 } },
	%gala_162268._.._onin_gala_core_cfunctions_windows.TypeInfo { { ptr, i64 } { ptr null, i64 0 }, i64 0, i64 0, i64 0, i64 0, { ptr, i64 } { ptr null, i64 0 } },
	%gala_162268._.._onin_gala_core_cfunctions_windows.TypeInfo { { ptr, i64 } { ptr null, i64 0 }, i64 0, i64 0, i64 0, i64 0, { ptr, i64 } { ptr null, i64 0 } },
	%gala_162268._.._onin_gala_core_cfunctions_windows.TypeInfo { { ptr, i64 } { ptr @string639, i64 9 }, i64 13, i64 8, i64 0, i64 0, { ptr, i64 } { ptr null, i64 0 } },
	%gala_162268._.._onin_gala_core_cfunctions_windows.TypeInfo { { ptr, i64 } { ptr @string630, i64 15 }, i64 13, i64 8, i64 0, i64 0, { ptr, i64 } { ptr null, i64 0 } },
	%gala_162268._.._onin_gala_core_cfunctions_windows.TypeInfo { { ptr, i64 } { ptr null, i64 0 }, i64 0, i64 0, i64 0, i64 0, { ptr, i64 } { ptr null, i64 0 } },
	%gala_162268._.._onin_gala_core_cfunctions_windows.TypeInfo { { ptr, i64 } { ptr null, i64 0 }, i64 0, i64 0, i64 0, i64 0, { ptr, i64 } { ptr null, i64 0 } },
	%gala_162268._.._onin_gala_core_cfunctions_windows.TypeInfo { { ptr, i64 } { ptr null, i64 0 }, i64 0, i64 0, i64 0, i64 0, { ptr, i64 } { ptr null, i64 0 } },
	%gala_162268._.._onin_gala_core_cfunctions_windows.TypeInfo { { ptr, i64 } { ptr @string630, i64 15 }, i64 13, i64 8, i64 0, i64 0, { ptr, i64 } { ptr null, i64 0 } },
	%gala_162268._.._onin_gala_core_cfunctions_windows.TypeInfo { { ptr, i64 } { ptr null, i64 0 }, i64 0, i64 0, i64 0, i64 0, { ptr, i64 } { ptr null, i64 0 } },
	%gala_162268._.._onin_gala_core_cfunctions_windows.TypeInfo { { ptr, i64 } { ptr null, i64 0 }, i64 0, i64 0, i64 0, i64 0, { ptr, i64 } { ptr null, i64 0 } },
	%gala_162268._.._onin_gala_core_cfunctions_windows.TypeInfo { { ptr, i64 } { ptr null, i64 0 }, i64 0, i64 0, i64 0, i64 0, { ptr, i64 } { ptr null, i64 0 } },
	%gala_162268._.._onin_gala_core_cfunctions_windows.TypeInfo { { ptr, i64 } { ptr @string618, i64 46 }, i64 13, i64 8, i64 0, i64 0, { ptr, i64 } { ptr null, i64 0 } },
	%gala_162268._.._onin_gala_core_cfunctions_windows.TypeInfo { { ptr, i64 } { ptr @string630, i64 15 }, i64 13, i64 8, i64 0, i64 0, { ptr, i64 } { ptr null, i64 0 } },
	%gala_162268._.._onin_gala_core_cfunctions_windows.TypeInfo { { ptr, i64 } { ptr @string640, i64 11 }, i64 13, i64 8, i64 0, i64 0, { ptr, i64 } { ptr null, i64 0 } },
	%gala_162268._.._onin_gala_core_cfunctions_windows.TypeInfo { { ptr, i64 } { ptr @string641, i64 6 }, i64 8, i64 8, i64 183, i64 0, { ptr, i64 } { ptr null, i64 0 } },
	%gala_162268._.._onin_gala_core_cfunctions_windows.TypeInfo { { ptr, i64 } { ptr @string642, i64 23 }, i64 13, i64 8, i64 0, i64 0, { ptr, i64 } { ptr null, i64 0 } },
	%gala_162268._.._onin_gala_core_cfunctions_windows.TypeInfo { { ptr, i64 } { ptr @string643, i64 14 }, i64 13, i64 8, i64 0, i64 0, { ptr, i64 } { ptr null, i64 0 } },
	%gala_162268._.._onin_gala_core_cfunctions_windows.TypeInfo { { ptr, i64 } { ptr @string644, i64 10 }, i64 13, i64 8, i64 0, i64 0, { ptr, i64 } { ptr null, i64 0 } },
	%gala_162268._.._onin_gala_core_cfunctions_windows.TypeInfo { { ptr, i64 } { ptr @string644, i64 10 }, i64 13, i64 8, i64 0, i64 0, { ptr, i64 } { ptr null, i64 0 } },
	%gala_162268._.._onin_gala_core_cfunctions_windows.TypeInfo { { ptr, i64 } { ptr @string645, i64 15 }, i64 13, i64 8, i64 0, i64 0, { ptr, i64 } { ptr null, i64 0 } },
	%gala_162268._.._onin_gala_core_cfunctions_windows.TypeInfo { { ptr, i64 } { ptr @string645, i64 15 }, i64 13, i64 8, i64 0, i64 0, { ptr, i64 } { ptr null, i64 0 } },
	%gala_162268._.._onin_gala_core_cfunctions_windows.TypeInfo { { ptr, i64 } { ptr @string645, i64 15 }, i64 13, i64 8, i64 0, i64 0, { ptr, i64 } { ptr null, i64 0 } },
	%gala_162268._.._onin_gala_core_cfunctions_windows.TypeInfo { { ptr, i64 } { ptr @string646, i64 15 }, i64 13, i64 8, i64 0, i64 0, { ptr, i64 } { ptr null, i64 0 } },
	%gala_162268._.._onin_gala_core_cfunctions_windows.TypeInfo { { ptr, i64 } { ptr @string647, i64 28 }, i64 13, i64 8, i64 0, i64 0, { ptr, i64 } { ptr null, i64 0 } },
	%gala_162268._.._onin_gala_core_cfunctions_windows.TypeInfo { { ptr, i64 } { ptr @string618, i64 46 }, i64 13, i64 8, i64 0, i64 0, { ptr, i64 } { ptr null, i64 0 } },
	%gala_162268._.._onin_gala_core_cfunctions_windows.TypeInfo { { ptr, i64 } { ptr @string648, i64 21 }, i64 13, i64 8, i64 0, i64 0, { ptr, i64 } { ptr null, i64 0 } },
	%gala_162268._.._onin_gala_core_cfunctions_windows.TypeInfo { { ptr, i64 } { ptr @string649, i64 7 }, i64 13, i64 8, i64 0, i64 0, { ptr, i64 } { ptr null, i64 0 } },
	%gala_162268._.._onin_gala_core_cfunctions_windows.TypeInfo { { ptr, i64 } { ptr @string630, i64 15 }, i64 13, i64 8, i64 0, i64 0, { ptr, i64 } { ptr null, i64 0 } },
	%gala_162268._.._onin_gala_core_cfunctions_windows.TypeInfo { { ptr, i64 } { ptr @string536, i64 4 }, i64 13, i64 8, i64 0, i64 0, { ptr, i64 } { ptr null, i64 0 } },
	%gala_162268._.._onin_gala_core_cfunctions_windows.TypeInfo { { ptr, i64 } { ptr @string650, i64 18 }, i64 13, i64 8, i64 0, i64 0, { ptr, i64 } { ptr null, i64 0 } },
	%gala_162268._.._onin_gala_core_cfunctions_windows.TypeInfo { { ptr, i64 } { ptr @string651, i64 18 }, i64 13, i64 8, i64 0, i64 0, { ptr, i64 } { ptr null, i64 0 } },
	%gala_162268._.._onin_gala_core_cfunctions_windows.TypeInfo { { ptr, i64 } { ptr @string652, i64 5 }, i64 8, i64 8, i64 184, i64 0, { ptr, i64 } { ptr null, i64 0 } },
	%gala_162268._.._onin_gala_core_cfunctions_windows.TypeInfo { { ptr, i64 } { ptr @string653, i64 9 }, i64 13, i64 8, i64 0, i64 0, { ptr, i64 } { ptr null, i64 0 } },
	%gala_162268._.._onin_gala_core_cfunctions_windows.TypeInfo { { ptr, i64 } { ptr @string654, i64 18 }, i64 13, i64 8, i64 0, i64 0, { ptr, i64 } { ptr null, i64 0 } },
	%gala_162268._.._onin_gala_core_cfunctions_windows.TypeInfo { { ptr, i64 } { ptr @string653, i64 9 }, i64 13, i64 8, i64 0, i64 0, { ptr, i64 } { ptr null, i64 0 } },
	%gala_162268._.._onin_gala_core_cfunctions_windows.TypeInfo { { ptr, i64 } { ptr @string655, i64 23 }, i64 13, i64 8, i64 0, i64 0, { ptr, i64 } { ptr null, i64 0 } },
	%gala_162268._.._onin_gala_core_cfunctions_windows.TypeInfo { { ptr, i64 } { ptr @string618, i64 46 }, i64 13, i64 8, i64 0, i64 0, { ptr, i64 } { ptr null, i64 0 } },
	%gala_162268._.._onin_gala_core_cfunctions_windows.TypeInfo { { ptr, i64 } { ptr @string656, i64 20 }, i64 13, i64 8, i64 0, i64 0, { ptr, i64 } { ptr null, i64 0 } },
	%gala_162268._.._onin_gala_core_cfunctions_windows.TypeInfo { { ptr, i64 } { ptr @string657, i64 9 }, i64 8, i64 8, i64 185, i64 0, { ptr, i64 } { ptr null, i64 0 } },
	%gala_162268._.._onin_gala_core_cfunctions_windows.TypeInfo { { ptr, i64 } { ptr @string658, i64 24 }, i64 13, i64 8, i64 0, i64 0, { ptr, i64 } { ptr null, i64 0 } },
	%gala_162268._.._onin_gala_core_cfunctions_windows.TypeInfo { { ptr, i64 } { ptr @string659, i64 13 }, i64 13, i64 8, i64 0, i64 0, { ptr, i64 } { ptr null, i64 0 } },
	%gala_162268._.._onin_gala_core_cfunctions_windows.TypeInfo { { ptr, i64 } { ptr @string618, i64 46 }, i64 13, i64 8, i64 0, i64 0, { ptr, i64 } { ptr null, i64 0 } },
	%gala_162268._.._onin_gala_core_cfunctions_windows.TypeInfo { { ptr, i64 } { ptr @string660, i64 24 }, i64 13, i64 8, i64 0, i64 0, { ptr, i64 } { ptr null, i64 0 } },
	%gala_162268._.._onin_gala_core_cfunctions_windows.TypeInfo { { ptr, i64 } { ptr @string659, i64 13 }, i64 13, i64 8, i64 0, i64 0, { ptr, i64 } { ptr null, i64 0 } },
	%gala_162268._.._onin_gala_core_cfunctions_windows.TypeInfo { { ptr, i64 } { ptr @string618, i64 46 }, i64 13, i64 8, i64 0, i64 0, { ptr, i64 } { ptr null, i64 0 } },
	%gala_162268._.._onin_gala_core_cfunctions_windows.TypeInfo { { ptr, i64 } { ptr @string661, i64 11 }, i64 11, i64 12, i64 0, i64 0, { ptr, i64 } { ptr @tfields665, i64 3 } },
	%gala_162268._.._onin_gala_core_cfunctions_windows.TypeInfo { { ptr, i64 } { ptr @string666, i64 15 }, i64 11, i64 16, i64 0, i64 0, { ptr, i64 } { ptr @tfields670, i64 5 } },
	%gala_162268._.._onin_gala_core_cfunctions_windows.TypeInfo { { ptr, i64 } { ptr @string671, i64 13 }, i64 11, i64 40, i64 0, i64 0, { ptr, i64 } { ptr @tfields678, i64 6 } },
	%gala_162268._.._onin_gala_core_cfunctions_windows.TypeInfo { { ptr, i64 } { ptr @string679, i64 23 }, i64 11, i64 40, i64 0, i64 0, { ptr, i64 } { ptr @tfields682, i64 7 } },
	%gala_162268._.._onin_gala_core_cfunctions_windows.TypeInfo { { ptr, i64 } { ptr @string683, i64 19 }, i64 11, i64 56, i64 0, i64 0, { ptr, i64 } { ptr @tfields686, i64 8 } },
	%gala_162268._.._onin_gala_core_cfunctions_windows.TypeInfo { { ptr, i64 } { ptr @string687, i64 17 }, i64 11, i64 56, i64 0, i64 0, { ptr, i64 } { ptr @tfields689, i64 8 } },
	%gala_162268._.._onin_gala_core_cfunctions_windows.TypeInfo { { ptr, i64 } { ptr @string690, i64 13 }, i64 11, i64 24, i64 0, i64 0, { ptr, i64 } { ptr @tfields691, i64 3 } },
	%gala_162268._.._onin_gala_core_cfunctions_windows.TypeInfo { { ptr, i64 } { ptr @string692, i64 18 }, i64 11, i64 104, i64 0, i64 0, { ptr, i64 } { ptr @tfields705, i64 14 } },
	%gala_162268._.._onin_gala_core_cfunctions_windows.TypeInfo { { ptr, i64 } { ptr @string706, i64 15 }, i64 11, i64 24, i64 0, i64 0, { ptr, i64 } { ptr @tfields709, i64 3 } },
	%gala_162268._.._onin_gala_core_cfunctions_windows.TypeInfo { { ptr, i64 } { ptr @string710, i64 16 }, i64 11, i64 16, i64 0, i64 0, { ptr, i64 } { ptr @tfields712, i64 2 } },
	%gala_162268._.._onin_gala_core_cfunctions_windows.TypeInfo { { ptr, i64 } { ptr @string713, i64 15 }, i64 11, i64 32, i64 0, i64 0, { ptr, i64 } { ptr @tfields719, i64 5 } },
	%gala_162268._.._onin_gala_core_cfunctions_windows.TypeInfo { { ptr, i64 } { ptr @string720, i64 11 }, i64 11, i64 64, i64 0, i64 0, { ptr, i64 } { ptr @tfields730, i64 9 } },
	%gala_162268._.._onin_gala_core_cfunctions_windows.TypeInfo { { ptr, i64 } { ptr @string731, i64 8 }, i64 11, i64 88, i64 0, i64 0, { ptr, i64 } { ptr @tfields741, i64 10 } },
	%gala_162268._.._onin_gala_core_cfunctions_windows.TypeInfo { { ptr, i64 } { ptr @string742, i64 20 }, i64 11, i64 88, i64 0, i64 0, { ptr, i64 } { ptr @tfields748, i64 10 } },
	%gala_162268._.._onin_gala_core_cfunctions_windows.TypeInfo { { ptr, i64 } { ptr @string749, i64 10 }, i64 11, i64 96, i64 0, i64 0, { ptr, i64 } { ptr @tfields761, i64 12 } },
	%gala_162268._.._onin_gala_core_cfunctions_windows.TypeInfo { { ptr, i64 } { ptr @string762, i64 17 }, i64 11, i64 24, i64 0, i64 0, { ptr, i64 } { ptr @tfields766, i64 3 } },
	%gala_162268._.._onin_gala_core_cfunctions_windows.TypeInfo { { ptr, i64 } { ptr @string767, i64 15 }, i64 11, i64 40, i64 0, i64 0, { ptr, i64 } { ptr @tfields770, i64 4 } },
	%gala_162268._.._onin_gala_core_cfunctions_windows.TypeInfo { { ptr, i64 } { ptr @string771, i64 17 }, i64 11, i64 288, i64 0, i64 0, { ptr, i64 } { ptr @tfields774, i64 6 } },
	%gala_162268._.._onin_gala_core_cfunctions_windows.TypeInfo { { ptr, i64 } { ptr @string775, i64 20 }, i64 11, i64 16, i64 0, i64 0, { ptr, i64 } { ptr @tfields776, i64 2 } },
	%gala_162268._.._onin_gala_core_cfunctions_windows.TypeInfo { { ptr, i64 } { ptr @string777, i64 16 }, i64 11, i64 268, i64 0, i64 0, { ptr, i64 } { ptr @tfields780, i64 4 } },
	%gala_162268._.._onin_gala_core_cfunctions_windows.TypeInfo { { ptr, i64 } { ptr @string781, i64 19 }, i64 11, i64 16, i64 0, i64 0, { ptr, i64 } { ptr @tfields782, i64 2 } },
	%gala_162268._.._onin_gala_core_cfunctions_windows.TypeInfo { { ptr, i64 } { ptr @string783, i64 13 }, i64 11, i64 1320, i64 0, i64 0, { ptr, i64 } { ptr @tfields788, i64 8 } },
	%gala_162268._.._onin_gala_core_cfunctions_windows.TypeInfo { { ptr, i64 } { ptr @string789, i64 16 }, i64 11, i64 48, i64 0, i64 0, { ptr, i64 } { ptr @tfields795, i64 6 } },
	%gala_162268._.._onin_gala_core_cfunctions_windows.TypeInfo { { ptr, i64 } { ptr @string796, i64 14 }, i64 11, i64 24, i64 0, i64 0, { ptr, i64 } { ptr @tfields800, i64 3 } },
	%gala_162268._.._onin_gala_core_cfunctions_windows.TypeInfo { { ptr, i64 } { ptr @string801, i64 11 }, i64 11, i64 16, i64 0, i64 0, { ptr, i64 } { ptr @tfields803, i64 2 } },
	%gala_162268._.._onin_gala_core_cfunctions_windows.TypeInfo { { ptr, i64 } { ptr @string804, i64 11 }, i64 11, i64 16, i64 0, i64 0, { ptr, i64 } { ptr @tfields806, i64 2 } },
	%gala_162268._.._onin_gala_core_cfunctions_windows.TypeInfo { { ptr, i64 } { ptr @string807, i64 15 }, i64 11, i64 16, i64 0, i64 0, { ptr, i64 } { ptr @tfields810, i64 2 } },
	%gala_162268._.._onin_gala_core_cfunctions_windows.TypeInfo { { ptr, i64 } { ptr @string811, i64 7 }, i64 10, i64 3, i64 15, i64 3, { ptr, i64 } { ptr null, i64 0 } },
	%gala_162268._.._onin_gala_core_cfunctions_windows.TypeInfo { { ptr, i64 } { ptr @string812, i64 16 }, i64 8, i64 8, i64 284, i64 0, { ptr, i64 } { ptr null, i64 0 } },
	%gala_162268._.._onin_gala_core_cfunctions_windows.TypeInfo { { ptr, i64 } { ptr @string813, i64 25 }, i64 13, i64 8, i64 0, i64 0, { ptr, i64 } { ptr null, i64 0 } },
	%gala_162268._.._onin_gala_core_cfunctions_windows.TypeInfo { { ptr, i64 } { ptr @string814, i64 16 }, i64 8, i64 8, i64 277, i64 0, { ptr, i64 } { ptr null, i64 0 } },
	%gala_162268._.._onin_gala_core_cfunctions_windows.TypeInfo { { ptr, i64 } { ptr @string815, i64 43 }, i64 13, i64 8, i64 0, i64 0, { ptr, i64 } { ptr null, i64 0 } },
	%gala_162268._.._onin_gala_core_cfunctions_windows.TypeInfo { { ptr, i64 } { ptr @string816, i64 17 }, i64 8, i64 8, i64 285, i64 0, { ptr, i64 } { ptr null, i64 0 } },
	%gala_162268._.._onin_gala_core_cfunctions_windows.TypeInfo { { ptr, i64 } { ptr @string817, i64 45 }, i64 13, i64 8, i64 0, i64 0, { ptr, i64 } { ptr null, i64 0 } },
	%gala_162268._.._onin_gala_core_cfunctions_windows.TypeInfo { { ptr, i64 } { ptr @string818, i64 5 }, i64 8, i64 8, i64 150, i64 0, { ptr, i64 } { ptr null, i64 0 } },
	%gala_162268._.._onin_gala_core_cfunctions_windows.TypeInfo { { ptr, i64 } { ptr @string819, i64 5 }, i64 8, i64 8, i64 149, i64 0, { ptr, i64 } { ptr null, i64 0 } },
	%gala_162268._.._onin_gala_core_cfunctions_windows.TypeInfo { { ptr, i64 } { ptr @string820, i64 19 }, i64 8, i64 8, i64 283, i64 0, { ptr, i64 } { ptr null, i64 0 } },
	%gala_162268._.._onin_gala_core_cfunctions_windows.TypeInfo { { ptr, i64 } { ptr @string821, i64 16 }, i64 8, i64 8, i64 286, i64 0, { ptr, i64 } { ptr null, i64 0 } },
	%gala_162268._.._onin_gala_core_cfunctions_windows.TypeInfo { { ptr, i64 } { ptr @string822, i64 9 }, i64 8, i64 8, i64 288, i64 0, { ptr, i64 } { ptr null, i64 0 } },
	%gala_162268._.._onin_gala_core_cfunctions_windows.TypeInfo { { ptr, i64 } { ptr @string823, i64 28 }, i64 13, i64 8, i64 0, i64 0, { ptr, i64 } { ptr null, i64 0 } },
	%gala_162268._.._onin_gala_core_cfunctions_windows.TypeInfo { { ptr, i64 } { ptr @string824, i64 13 }, i64 13, i64 8, i64 0, i64 0, { ptr, i64 } { ptr null, i64 0 } },
	%gala_162268._.._onin_gala_core_cfunctions_windows.TypeInfo { { ptr, i64 } { ptr @string824, i64 13 }, i64 13, i64 8, i64 0, i64 0, { ptr, i64 } { ptr null, i64 0 } },
	%gala_162268._.._onin_gala_core_cfunctions_windows.TypeInfo { { ptr, i64 } { ptr @string824, i64 13 }, i64 13, i64 8, i64 0, i64 0, { ptr, i64 } { ptr null, i64 0 } },
	%gala_162268._.._onin_gala_core_cfunctions_windows.TypeInfo { { ptr, i64 } { ptr @string825, i64 21 }, i64 8, i64 8, i64 289, i64 0, { ptr, i64 } { ptr null, i64 0 } },
	%gala_162268._.._onin_gala_core_cfunctions_windows.TypeInfo { { ptr, i64 } { ptr @string826, i64 11 }, i64 8, i64 8, i64 290, i64 0, { ptr, i64 } { ptr null, i64 0 } },
	%gala_162268._.._onin_gala_core_cfunctions_windows.TypeInfo { { ptr, i64 } { ptr @string827, i64 21 }, i64 13, i64 8, i64 0, i64 0, { ptr, i64 } { ptr null, i64 0 } },
	%gala_162268._.._onin_gala_core_cfunctions_windows.TypeInfo { { ptr, i64 } { ptr @string828, i64 15 }, i64 13, i64 8, i64 0, i64 0, { ptr, i64 } { ptr null, i64 0 } },
	%gala_162268._.._onin_gala_core_cfunctions_windows.TypeInfo { { ptr, i64 } { ptr @string829, i64 36 }, i64 13, i64 8, i64 0, i64 0, { ptr, i64 } { ptr null, i64 0 } },
	%gala_162268._.._onin_gala_core_cfunctions_windows.TypeInfo { { ptr, i64 } { ptr @string828, i64 15 }, i64 13, i64 8, i64 0, i64 0, { ptr, i64 } { ptr null, i64 0 } },
	%gala_162268._.._onin_gala_core_cfunctions_windows.TypeInfo { { ptr, i64 } { ptr @string827, i64 21 }, i64 13, i64 8, i64 0, i64 0, { ptr, i64 } { ptr null, i64 0 } },
	%gala_162268._.._onin_gala_core_cfunctions_windows.TypeInfo { { ptr, i64 } { ptr @string828, i64 15 }, i64 13, i64 8, i64 0, i64 0, { ptr, i64 } { ptr null, i64 0 } },
	%gala_162268._.._onin_gala_core_cfunctions_windows.TypeInfo { { ptr, i64 } { ptr @string828, i64 15 }, i64 13, i64 8, i64 0, i64 0, { ptr, i64 } { ptr null, i64 0 } },
	%gala_162268._.._onin_gala_core_cfunctions_windows.TypeInfo { { ptr, i64 } { ptr @string830, i64 12 }, i64 8, i64 8, i64 287, i64 0, { ptr, i64 } { ptr null, i64 0 } },
	%gala_162268._.._onin_gala_core_cfunctions_windows.TypeInfo { { ptr, i64 } { ptr @string831, i64 34 }, i64 13, i64 8, i64 0, i64 0, { ptr, i64 } { ptr null, i64 0 } },
	%gala_162268._.._onin_gala_core_cfunctions_windows.TypeInfo { { ptr, i64 } { ptr @string832, i64 30 }, i64 13, i64 8, i64 0, i64 0, { ptr, i64 } { ptr null, i64 0 } },
	%gala_162268._.._onin_gala_core_cfunctions_windows.TypeInfo { { ptr, i64 } { ptr @string828, i64 15 }, i64 13, i64 8, i64 0, i64 0, { ptr, i64 } { ptr null, i64 0 } },
	%gala_162268._.._onin_gala_core_cfunctions_windows.TypeInfo { { ptr, i64 } { ptr @string833, i64 18 }, i64 8, i64 8, i64 291, i64 0, { ptr, i64 } { ptr null, i64 0 } },
	%gala_162268._.._onin_gala_core_cfunctions_windows.TypeInfo { { ptr, i64 } { ptr @string834, i64 27 }, i64 13, i64 8, i64 0, i64 0, { ptr, i64 } { ptr null, i64 0 } },
	%gala_162268._.._onin_gala_core_cfunctions_windows.TypeInfo { { ptr, i64 } { ptr @string835, i64 50 }, i64 13, i64 8, i64 0, i64 0, { ptr, i64 } { ptr null, i64 0 } },
	%gala_162268._.._onin_gala_core_cfunctions_windows.TypeInfo { { ptr, i64 } { ptr @string836, i64 53 }, i64 13, i64 8, i64 0, i64 0, { ptr, i64 } { ptr null, i64 0 } },
	%gala_162268._.._onin_gala_core_cfunctions_windows.TypeInfo { { ptr, i64 } { ptr @string837, i64 15 }, i64 13, i64 8, i64 0, i64 0, { ptr, i64 } { ptr null, i64 0 } },
	%gala_162268._.._onin_gala_core_cfunctions_windows.TypeInfo { { ptr, i64 } { ptr @string536, i64 4 }, i64 13, i64 8, i64 0, i64 0, { ptr, i64 } { ptr null, i64 0 } },
	%gala_162268._.._onin_gala_core_cfunctions_windows.TypeInfo { { ptr, i64 } { ptr @string838, i64 17 }, i64 13, i64 8, i64 0, i64 0, { ptr, i64 } { ptr null, i64 0 } },
	%gala_162268._.._onin_gala_core_cfunctions_windows.TypeInfo { { ptr, i64 } { ptr @string839, i64 9 }, i64 10, i64 256, i64 15, i64 256, { ptr, i64 } { ptr null, i64 0 } },
	%gala_162268._.._onin_gala_core_cfunctions_windows.TypeInfo { { ptr, i64 } { ptr @string840, i64 26 }, i64 13, i64 8, i64 0, i64 0, { ptr, i64 } { ptr null, i64 0 } },
	%gala_162268._.._onin_gala_core_cfunctions_windows.TypeInfo { { ptr, i64 } { ptr @string841, i64 18 }, i64 8, i64 8, i64 293, i64 0, { ptr, i64 } { ptr null, i64 0 } },
	%gala_162268._.._onin_gala_core_cfunctions_windows.TypeInfo { { ptr, i64 } { ptr @string842, i64 52 }, i64 13, i64 8, i64 0, i64 0, { ptr, i64 } { ptr null, i64 0 } },
	%gala_162268._.._onin_gala_core_cfunctions_windows.TypeInfo { { ptr, i64 } { ptr @string840, i64 26 }, i64 13, i64 8, i64 0, i64 0, { ptr, i64 } { ptr null, i64 0 } },
	%gala_162268._.._onin_gala_core_cfunctions_windows.TypeInfo { { ptr, i64 } { ptr @string843, i64 17 }, i64 8, i64 8, i64 295, i64 0, { ptr, i64 } { ptr null, i64 0 } },
	%gala_162268._.._onin_gala_core_cfunctions_windows.TypeInfo { { ptr, i64 } { ptr @string844, i64 51 }, i64 13, i64 8, i64 0, i64 0, { ptr, i64 } { ptr null, i64 0 } },
	%gala_162268._.._onin_gala_core_cfunctions_windows.TypeInfo { { ptr, i64 } { ptr @string845, i64 10 }, i64 10, i64 1024, i64 15, i64 1024, { ptr, i64 } { ptr null, i64 0 } },
	%gala_162268._.._onin_gala_core_cfunctions_windows.TypeInfo { { ptr, i64 } { ptr @string846, i64 20 }, i64 13, i64 8, i64 0, i64 0, { ptr, i64 } { ptr null, i64 0 } },
	%gala_162268._.._onin_gala_core_cfunctions_windows.TypeInfo { { ptr, i64 } { ptr @string847, i64 14 }, i64 8, i64 8, i64 297, i64 0, { ptr, i64 } { ptr null, i64 0 } },
	%gala_162268._.._onin_gala_core_cfunctions_windows.TypeInfo { { ptr, i64 } { ptr @string848, i64 42 }, i64 13, i64 8, i64 0, i64 0, { ptr, i64 } { ptr null, i64 0 } },
	%gala_162268._.._onin_gala_core_cfunctions_windows.TypeInfo { { ptr, i64 } { ptr @string849, i64 32 }, i64 13, i64 8, i64 0, i64 0, { ptr, i64 } { ptr null, i64 0 } },
	%gala_162268._.._onin_gala_core_cfunctions_windows.TypeInfo { { ptr, i64 } { ptr @string850, i64 43 }, i64 13, i64 8, i64 0, i64 0, { ptr, i64 } { ptr null, i64 0 } },
	%gala_162268._.._onin_gala_core_cfunctions_windows.TypeInfo { { ptr, i64 } { ptr @string851, i64 39 }, i64 13, i64 8, i64 0, i64 0, { ptr, i64 } { ptr null, i64 0 } },
	%gala_162268._.._onin_gala_core_cfunctions_windows.TypeInfo { { ptr, i64 } { ptr @string852, i64 52 }, i64 13, i64 8, i64 0, i64 0, { ptr, i64 } { ptr null, i64 0 } },
	%gala_162268._.._onin_gala_core_cfunctions_windows.TypeInfo { { ptr, i64 } { ptr @string853, i64 18 }, i64 13, i64 8, i64 0, i64 0, { ptr, i64 } { ptr null, i64 0 } },
	%gala_162268._.._onin_gala_core_cfunctions_windows.TypeInfo { { ptr, i64 } { ptr @string854, i64 23 }, i64 13, i64 8, i64 0, i64 0, { ptr, i64 } { ptr null, i64 0 } },
	%gala_162268._.._onin_gala_core_cfunctions_windows.TypeInfo { { ptr, i64 } { ptr @string824, i64 13 }, i64 13, i64 8, i64 0, i64 0, { ptr, i64 } { ptr null, i64 0 } },
	%gala_162268._.._onin_gala_core_cfunctions_windows.TypeInfo { { ptr, i64 } { ptr @string855, i64 12 }, i64 8, i64 8, i64 300, i64 0, { ptr, i64 } { ptr null, i64 0 } },
	%gala_162268._.._onin_gala_core_cfunctions_windows.TypeInfo { { ptr, i64 } { ptr @string856, i64 34 }, i64 13, i64 8, i64 0, i64 0, { ptr, i64 } { ptr null, i64 0 } },
	%gala_162268._.._onin_gala_core_cfunctions_windows.TypeInfo { { ptr, i64 } { ptr @string857, i64 12 }, i64 8, i64 8, i64 301, i64 0, { ptr, i64 } { ptr null, i64 0 } },
	%gala_162268._.._onin_gala_core_cfunctions_windows.TypeInfo { { ptr, i64 } { ptr @string858, i64 34 }, i64 13, i64 8, i64 0, i64 0, { ptr, i64 } { ptr null, i64 0 } },
	%gala_162268._.._onin_gala_core_cfunctions_windows.TypeInfo { { ptr, i64 } { ptr @string859, i64 35 }, i64 13, i64 8, i64 0, i64 0, { ptr, i64 } { ptr null, i64 0 } },
	%gala_162268._.._onin_gala_core_cfunctions_windows.TypeInfo { { ptr, i64 } { ptr @string860, i64 35 }, i64 13, i64 8, i64 0, i64 0, { ptr, i64 } { ptr null, i64 0 } },
	%gala_162268._.._onin_gala_core_cfunctions_windows.TypeInfo { { ptr, i64 } { ptr @string536, i64 4 }, i64 13, i64 8, i64 0, i64 0, { ptr, i64 } { ptr null, i64 0 } },
	%gala_162268._.._onin_gala_core_cfunctions_windows.TypeInfo { { ptr, i64 } { ptr @string861, i64 21 }, i64 13, i64 8, i64 0, i64 0, { ptr, i64 } { ptr null, i64 0 } },
	%gala_162268._.._onin_gala_core_cfunctions_windows.TypeInfo { { ptr, i64 } { ptr @string862, i64 22 }, i64 13, i64 8, i64 0, i64 0, { ptr, i64 } { ptr null, i64 0 } },
	%gala_162268._.._onin_gala_core_cfunctions_windows.TypeInfo { { ptr, i64 } { ptr @string863, i64 21 }, i64 13, i64 8, i64 0, i64 0, { ptr, i64 } { ptr null, i64 0 } },
	%gala_162268._.._onin_gala_core_cfunctions_windows.TypeInfo { { ptr, i64 } { ptr @string864, i64 25 }, i64 13, i64 8, i64 0, i64 0, { ptr, i64 } { ptr null, i64 0 } },
	%gala_162268._.._onin_gala_core_cfunctions_windows.TypeInfo { { ptr, i64 } { ptr @string865, i64 43 }, i64 13, i64 8, i64 0, i64 0, { ptr, i64 } { ptr null, i64 0 } },
	%gala_162268._.._onin_gala_core_cfunctions_windows.TypeInfo { { ptr, i64 } { ptr @string817, i64 45 }, i64 13, i64 8, i64 0, i64 0, { ptr, i64 } { ptr null, i64 0 } },
	%gala_162268._.._onin_gala_core_cfunctions_windows.TypeInfo { { ptr, i64 } { ptr @string824, i64 13 }, i64 13, i64 8, i64 0, i64 0, { ptr, i64 } { ptr null, i64 0 } },
	%gala_162268._.._onin_gala_core_cfunctions_windows.TypeInfo { { ptr, i64 } { ptr @string824, i64 13 }, i64 13, i64 8, i64 0, i64 0, { ptr, i64 } { ptr null, i64 0 } },
	%gala_162268._.._onin_gala_core_cfunctions_windows.TypeInfo { { ptr, i64 } { ptr @string824, i64 13 }, i64 13, i64 8, i64 0, i64 0, { ptr, i64 } { ptr null, i64 0 } },
	%gala_162268._.._onin_gala_core_cfunctions_windows.TypeInfo { { ptr, i64 } { ptr @string823, i64 28 }, i64 13, i64 8, i64 0, i64 0, { ptr, i64 } { ptr null, i64 0 } },
	%gala_162268._.._onin_gala_core_cfunctions_windows.TypeInfo { { ptr, i64 } { ptr @string17, i64 4 }, i64 11, i64 16, i64 0, i64 0, { ptr, i64 } { ptr @tfields868, i64 2 } },
	%gala_162268._.._onin_gala_core_cfunctions_windows.TypeInfo { { ptr, i64 } { ptr @string536, i64 4 }, i64 13, i64 8, i64 0, i64 0, { ptr, i64 } { ptr null, i64 0 } },
	%gala_162268._.._onin_gala_core_cfunctions_windows.TypeInfo { { ptr, i64 } { ptr @string840, i64 26 }, i64 13, i64 8, i64 0, i64 0, { ptr, i64 } { ptr null, i64 0 } },
	%gala_162268._.._onin_gala_core_cfunctions_windows.TypeInfo { { ptr, i64 } { ptr @string842, i64 52 }, i64 13, i64 8, i64 0, i64 0, { ptr, i64 } { ptr null, i64 0 } },
	%gala_162268._.._onin_gala_core_cfunctions_windows.TypeInfo { { ptr, i64 } { ptr @string846, i64 20 }, i64 13, i64 8, i64 0, i64 0, { ptr, i64 } { ptr null, i64 0 } },
	%gala_162268._.._onin_gala_core_cfunctions_windows.TypeInfo { { ptr, i64 } { ptr @string848, i64 42 }, i64 13, i64 8, i64 0, i64 0, { ptr, i64 } { ptr null, i64 0 } },
	%gala_162268._.._onin_gala_core_cfunctions_windows.TypeInfo { { ptr, i64 } { ptr @string869, i64 5 }, i64 8, i64 8, i64 374, i64 0, { ptr, i64 } { ptr null, i64 0 } },
	%gala_162268._.._onin_gala_core_cfunctions_windows.TypeInfo { { ptr, i64 } { ptr @string849, i64 32 }, i64 13, i64 8, i64 0, i64 0, { ptr, i64 } { ptr null, i64 0 } },
	%gala_162268._.._onin_gala_core_cfunctions_windows.TypeInfo { { ptr, i64 } { ptr @string850, i64 43 }, i64 13, i64 8, i64 0, i64 0, { ptr, i64 } { ptr null, i64 0 } },
	%gala_162268._.._onin_gala_core_cfunctions_windows.TypeInfo { { ptr, i64 } { ptr @string851, i64 39 }, i64 13, i64 8, i64 0, i64 0, { ptr, i64 } { ptr null, i64 0 } },
	%gala_162268._.._onin_gala_core_cfunctions_windows.TypeInfo { { ptr, i64 } { ptr @string870, i64 20 }, i64 8, i64 8, i64 280, i64 0, { ptr, i64 } { ptr null, i64 0 } },
	%gala_162268._.._onin_gala_core_cfunctions_windows.TypeInfo { { ptr, i64 } { ptr @string871, i64 27 }, i64 13, i64 8, i64 0, i64 0, { ptr, i64 } { ptr null, i64 0 } },
	%gala_162268._.._onin_gala_core_cfunctions_windows.TypeInfo { { ptr, i64 } { ptr @string852, i64 52 }, i64 13, i64 8, i64 0, i64 0, { ptr, i64 } { ptr null, i64 0 } },
	%gala_162268._.._onin_gala_core_cfunctions_windows.TypeInfo { { ptr, i64 } { ptr @string859, i64 35 }, i64 13, i64 8, i64 0, i64 0, { ptr, i64 } { ptr null, i64 0 } },
	%gala_162268._.._onin_gala_core_cfunctions_windows.TypeInfo { { ptr, i64 } { ptr @string860, i64 35 }, i64 13, i64 8, i64 0, i64 0, { ptr, i64 } { ptr null, i64 0 } },
	%gala_162268._.._onin_gala_core_cfunctions_windows.TypeInfo { { ptr, i64 } { ptr @string827, i64 21 }, i64 13, i64 8, i64 0, i64 0, { ptr, i64 } { ptr null, i64 0 } },
	%gala_162268._.._onin_gala_core_cfunctions_windows.TypeInfo { { ptr, i64 } { ptr @string828, i64 15 }, i64 13, i64 8, i64 0, i64 0, { ptr, i64 } { ptr null, i64 0 } },
	%gala_162268._.._onin_gala_core_cfunctions_windows.TypeInfo { { ptr, i64 } { ptr @string829, i64 36 }, i64 13, i64 8, i64 0, i64 0, { ptr, i64 } { ptr null, i64 0 } },
	%gala_162268._.._onin_gala_core_cfunctions_windows.TypeInfo { { ptr, i64 } { ptr @string828, i64 15 }, i64 13, i64 8, i64 0, i64 0, { ptr, i64 } { ptr null, i64 0 } },
	%gala_162268._.._onin_gala_core_cfunctions_windows.TypeInfo { { ptr, i64 } { ptr @string827, i64 21 }, i64 13, i64 8, i64 0, i64 0, { ptr, i64 } { ptr null, i64 0 } },
	%gala_162268._.._onin_gala_core_cfunctions_windows.TypeInfo { { ptr, i64 } { ptr @string828, i64 15 }, i64 13, i64 8, i64 0, i64 0, { ptr, i64 } { ptr null, i64 0 } },
	%gala_162268._.._onin_gala_core_cfunctions_windows.TypeInfo { { ptr, i64 } { ptr @string828, i64 15 }, i64 13, i64 8, i64 0, i64 0, { ptr, i64 } { ptr null, i64 0 } },
	%gala_162268._.._onin_gala_core_cfunctions_windows.TypeInfo { { ptr, i64 } { ptr @string828, i64 15 }, i64 13, i64 8, i64 0, i64 0, { ptr, i64 } { ptr null, i64 0 } },
	%gala_162268._.._onin_gala_core_cfunctions_windows.TypeInfo { { ptr, i64 } { ptr @string831, i64 34 }, i64 13, i64 8, i64 0, i64 0, { ptr, i64 } { ptr null, i64 0 } },
	%gala_162268._.._onin_gala_core_cfunctions_windows.TypeInfo { { ptr, i64 } { ptr @string832, i64 30 }, i64 13, i64 8, i64 0, i64 0, { ptr, i64 } { ptr null, i64 0 } },
	%gala_162268._.._onin_gala_core_cfunctions_windows.TypeInfo { { ptr, i64 } { ptr @string834, i64 27 }, i64 13, i64 8, i64 0, i64 0, { ptr, i64 } { ptr null, i64 0 } },
	%gala_162268._.._onin_gala_core_cfunctions_windows.TypeInfo { { ptr, i64 } { ptr @string835, i64 50 }, i64 13, i64 8, i64 0, i64 0, { ptr, i64 } { ptr null, i64 0 } },
	%gala_162268._.._onin_gala_core_cfunctions_windows.TypeInfo { { ptr, i64 } { ptr @string836, i64 53 }, i64 13, i64 8, i64 0, i64 0, { ptr, i64 } { ptr null, i64 0 } },
	%gala_162268._.._onin_gala_core_cfunctions_windows.TypeInfo { { ptr, i64 } { ptr @string837, i64 15 }, i64 13, i64 8, i64 0, i64 0, { ptr, i64 } { ptr null, i64 0 } },
	%gala_162268._.._onin_gala_core_cfunctions_windows.TypeInfo { { ptr, i64 } { ptr @string536, i64 4 }, i64 13, i64 8, i64 0, i64 0, { ptr, i64 } { ptr null, i64 0 } },
	%gala_162268._.._onin_gala_core_cfunctions_windows.TypeInfo { { ptr, i64 } { ptr @string838, i64 17 }, i64 13, i64 8, i64 0, i64 0, { ptr, i64 } { ptr null, i64 0 } },
	%gala_162268._.._onin_gala_core_cfunctions_windows.TypeInfo { { ptr, i64 } { ptr @string872, i64 8 }, i64 10, i64 24, i64 21, i64 3, { ptr, i64 } { ptr null, i64 0 } },
	%gala_162268._.._onin_gala_core_cfunctions_windows.TypeInfo { { ptr, i64 } { ptr @string873, i64 21 }, i64 8, i64 8, i64 294, i64 0, { ptr, i64 } { ptr null, i64 0 } },
	%gala_162268._.._onin_gala_core_cfunctions_windows.TypeInfo { { ptr, i64 } { ptr @string874, i64 17 }, i64 8, i64 8, i64 298, i64 0, { ptr, i64 } { ptr null, i64 0 } },
	%gala_162268._.._onin_gala_core_cfunctions_windows.TypeInfo { { ptr, i64 } { ptr @string875, i64 16 }, i64 8, i64 8, i64 302, i64 0, { ptr, i64 } { ptr null, i64 0 } },
	%gala_162268._.._onin_gala_core_cfunctions_windows.TypeInfo { { ptr, i64 } { ptr @string876, i64 16 }, i64 13, i64 8, i64 0, i64 0, { ptr, i64 } { ptr null, i64 0 } },
	%gala_162268._.._onin_gala_core_cfunctions_windows.TypeInfo { { ptr, i64 } { ptr @string877, i64 17 }, i64 13, i64 8, i64 0, i64 0, { ptr, i64 } { ptr null, i64 0 } },
	%gala_162268._.._onin_gala_core_cfunctions_windows.TypeInfo { { ptr, i64 } { ptr @string878, i64 20 }, i64 13, i64 8, i64 0, i64 0, { ptr, i64 } { ptr null, i64 0 } },
	%gala_162268._.._onin_gala_core_cfunctions_windows.TypeInfo { { ptr, i64 } { ptr @string879, i64 26 }, i64 13, i64 8, i64 0, i64 0, { ptr, i64 } { ptr null, i64 0 } }
]
