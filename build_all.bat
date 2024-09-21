@echo off

echo Building Editor
scons platform=windows arch=x86_64 target=editor production=yes d3d12=yes mesa_libs=D:/Dev/godot_optional_extras/nir angle_libs=D:/Dev/godot_optional_extras/angle

echo Building Template Release
scons platform=windows arch=x86_64 target=template_release production=yes d3d12=yes mesa_libs=D:/Dev/godot_optional_extras/nir angle_libs=D:/Dev/godot_optional_extras/angle

echo Building Template Debug
scons platform=windows arch=x86_64 target=template_debug production=yes d3d12=yes mesa_libs=D:/Dev/godot_optional_extras/nir angle_libs=D:/Dev/godot_optional_extras/angle

echo Done!
pause
