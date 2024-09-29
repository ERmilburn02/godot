@echo off

set MESA_LIBS=D:/Dev/godot_optional_extras/nir
set ANGLE_LIBS=D:/Dev/godot_optional_extras/angle
set LOG_FILE=build.log

echo Building Editor >> %LOG_FILE%
echo Building Editor
scons platform=windows arch=x86_64 target=editor production=yes d3d12=yes mesa_libs=%MESA_LIBS% angle_libs=%ANGLE_LIBS% >> %LOG_FILE% 2>&1
if %errorlevel% neq 0 (
    echo Editor build failed! Check %LOG_FILE% for details.
    exit /b
)

echo Building Template Release >> %LOG_FILE%
echo Building Template Release
scons platform=windows arch=x86_64 target=template_release production=yes d3d12=yes mesa_libs=%MESA_LIBS% angle_libs=%ANGLE_LIBS% >> %LOG_FILE% 2>&1
if %errorlevel% neq 0 (
    echo Template Release build failed! Check %LOG_FILE% for details.
    exit /b
)

echo Building Template Debug >> %LOG_FILE%
echo Building Template Debug
scons platform=windows arch=x86_64 target=template_debug production=yes d3d12=yes mesa_libs=%MESA_LIBS% angle_libs=%ANGLE_LIBS% >> %LOG_FILE% 2>&1
if %errorlevel% neq 0 (
    echo Template Debug build failed! Check %LOG_FILE% for details.
    exit /b
)

echo Done! >> %LOG_FILE%
echo Done!
pause

REM @echo off

REM echo Building Editor
REM scons platform=windows arch=x86_64 target=editor production=yes d3d12=yes mesa_libs=D:/Dev/godot_optional_extras/nir angle_libs=D:/Dev/godot_optional_extras/angle

REM echo Building Template Release
REM scons platform=windows arch=x86_64 target=template_release production=yes d3d12=yes mesa_libs=D:/Dev/godot_optional_extras/nir angle_libs=D:/Dev/godot_optional_extras/angle

REM echo Building Template Debug
REM scons platform=windows arch=x86_64 target=template_debug production=yes d3d12=yes mesa_libs=D:/Dev/godot_optional_extras/nir angle_libs=D:/Dev/godot_optional_extras/angle

REM echo Done!
REM pause
