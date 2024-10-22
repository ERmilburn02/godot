@echo off

cd /d "%~dp0\.."

set "out_bin_dir=D:\Apps\Godot-CustomBuild\bin"
set "out_template_dir=D:\Apps\Godot-CustomBuild\bin\editor_data\export_templates\4.4.dev"

@REM Ensure output directories exist

IF NOT EXIST "%out_bin_dir%" (
    echo "Output directory does not exist"
    pause
    exit /b 1
)

IF NOT EXIST "%out_template_dir%" (
    echo "Output template directory does not exist"
    pause
    exit /b 1
)

@REM Ensure binaries exist

IF NOT EXIST "bin\godot.windows.editor.x86_64.console.exe" (
    echo "godot.windows.editor.x86_64.console.exe not found"
    pause
    exit /b 1
)

IF NOT EXIST "bin\godot.windows.editor.x86_64.exe" (
    echo "godot.windows.editor.x86_64.exe not found"
    pause
    exit /b 1
)

IF NOT EXIST "bin\godot.windows.template_debug.x86_64.console.exe" (
  echo "godot.windows.template_debug.x86_64.console.exe not found"
  pause
  exit /b 1
)

IF NOT EXIST "bin\godot.windows.template_debug.x86_64.exe" (
  echo "godot.windows.template_debug.x86_64.exe not found"
  pause
  exit /b 1
)

IF NOT EXIST "bin\godot.windows.template_release.x86_64.console.exe" (
  echo "godot.windows.template_release.x86_64.console.exe not found"
  pause
  exit /b 1
)

IF NOT EXIST "bin\godot.windows.template_release.x86_64.exe" (
  echo "godot.windows.template_release.x86_64.exe not found"
  pause
  exit /b 1
)

@REM Copy everything
@REM Also rename the templates to how Godot expects them
@REM PLATFORM_CONFIG_ARCH.console.exe

@REM xcopy /s /y bin\godot.windows.editor.x86_64.console.exe "%out_bin_dir%\godot.windows.editor.x86_64.console.exe"
@REM xcopy /s /y bin\godot.windows.editor.x86_64.exe "%out_bin_dir%\godot.windows.editor.x86_64.exe"

@REM xcopy /s /y bin\godot.windows.template_debug.x86_64.console.exe "%out_template_dir%\windows_debug_x86_64.console.exe"
@REM xcopy /s /y bin\godot.windows.template_debug.x86_64.exe "%out_template_dir%\windows_debug_x86_64.exe"

@REM xcopy /s /y bin\godot.windows.template_release.x86_64.console.exe "%out_template_dir%\windows_release_x86_64.console.exe"
@REM xcopy /s /y bin\godot.windows.template_release.x86_64.exe "%out_template_dir%\windows_release_x86_64.exe"

@REM Replace with regular copy

copy /y bin\godot.windows.editor.x86_64.console.exe "%out_bin_dir%\godot.windows.editor.x86_64.console.exe"
copy /y bin\godot.windows.editor.x86_64.exe "%out_bin_dir%\godot.windows.editor.x86_64.exe"

copy /y bin\godot.windows.template_debug.x86_64.console.exe "%out_template_dir%\windows_debug_x86_64.console.exe"
copy /y bin\godot.windows.template_debug.x86_64.exe "%out_template_dir%\windows_debug_x86_64.exe"

copy /y bin\godot.windows.template_release.x86_64.console.exe "%out_template_dir%\windows_release_x86_64.console.exe"
copy /y bin\godot.windows.template_release.x86_64.exe "%out_template_dir%\windows_release_x86_64.exe"

pause