# Builds gain.clap (a CLAP plugin written in galayalang) on Windows and Linux.
#
#   make            build gain.clap
#   make install    copy it into the user's CLAP plugin folder
#   make validate   run clap-validator on it (must be on PATH)
#   make clean
#
# Needs GNU make. On Windows, recipes run through cmd.exe and MSVC is found
# with vswhere, unless cl.exe is already on PATH (e.g. in a developer prompt).

NAME := gain
SRC  := gain_plugin.gala
DEPS := clap.gala
OUT  := $(NAME).clap

.DEFAULT_GOAL := all

ifeq ($(OS),Windows_NT)

SHELL      := cmd.exe
GALA_OBJ   := gala_out.obj
SHIM_OBJ   := clap_entry.obj
GALA_FLAGS := --abi win64

# ---- find MSVC ----
# `call` first so cmd.exe doesn't mangle the quoted path containing "(x86)".
VSWHERE := C:\Program Files (x86)\Microsoft Visual Studio\Installer\vswhere.exe
ifneq ($(strip $(shell where cl 2>nul)),)
  VCENV :=
else
  VSROOT := $(strip $(shell call "$(VSWHERE)" -latest -products * -requires Microsoft.VisualStudio.Component.VC.Tools.x86.x64 -property installationPath 2>nul))
  ifneq ($(VSROOT),)
    VCENV := call "$(VSROOT)\VC\Auxiliary\Build\vcvars64.bat" >nul &&
  else
    VCENV := echo ERROR: MSVC not found. Install the "Desktop development with C++" workload. && exit /b 1 &&
  endif
endif

# extra link inputs listed by galac (whitespace separated), read at recipe time
LINKS = $(shell type $(GALA_OBJ).links 2>nul)

SHIM_CMD = $(VCENV) cl /nologo /c /O2 /Fo$(SHIM_OBJ) clap_entry.c
LINK_CMD = $(VCENV) link /nologo /DLL /OUT:$(OUT) $(SHIM_OBJ) $(GALA_OBJ) $(LINKS)

clean:
	-del /q /f $(OUT) $(NAME).lib $(NAME).exp $(SHIM_OBJ) $(GALA_OBJ) 2>nul

install: $(OUT)
	if not exist "%LOCALAPPDATA%\Programs\Common\CLAP" mkdir "%LOCALAPPDATA%\Programs\Common\CLAP"
	copy /y $(OUT) "%LOCALAPPDATA%\Programs\Common\CLAP\" >nul

else

GALA_OBJ   := gala_out.o
SHIM_OBJ   := clap_entry.o
# If galac needs an explicit ABI flag on Linux, put it here.
GALA_FLAGS :=

LINKS = $(shell cat $(GALA_OBJ).links 2>/dev/null)

SHIM_CMD = $(CC) -c -O2 -fPIC -o $(SHIM_OBJ) clap_entry.c
LINK_CMD = $(CC) -shared -o $(OUT) $(SHIM_OBJ) $(GALA_OBJ) $(LINKS)

clean:
	rm -f $(OUT) $(SHIM_OBJ) $(GALA_OBJ)

install: $(OUT)
	mkdir -p $(HOME)/.clap
	cp $(OUT) $(HOME)/.clap/

endif

# ---- common rules ----
.PHONY: all clean install

all: $(OUT)

$(OUT): $(SHIM_OBJ) $(GALA_OBJ)
	$(LINK_CMD)

$(SHIM_OBJ): clap_entry.c
	$(SHIM_CMD)

$(GALA_OBJ): $(SRC) $(DEPS)
	galac -c -o $@ $(SRC) $(GALA_FLAGS)