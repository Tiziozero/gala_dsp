@echo off
call "C:\Program Files\Microsoft Visual Studio\18\Community\VC\Auxiliary\Build\vcvars64.bat" >nul
if errorlevel 1 exit /b 1
lib.exe /NOLOGO /OUT:"gala_out.obj" ".gala_build/gala_144156._.._onin_gala_core_mem_windows.obj" ".gala_build/gala_162268._.._onin_gala_core_cfunctions_windows.obj" ".gala_build/gala_546687._.._onin_gala_core_core_windows.obj" ".gala_build/gala_744116._clap.obj" ".gala_build/gala_976878._gain_plugin.obj" 
exit /b %errorlevel%
