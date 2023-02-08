nasm -fwin64 test7.asm
rem link.exe test7.obj libcmt.lib /entry:_start /nodefaultlib /subsystem:console .\ASM.obj "C:\Program Files (x86)\Windows Kits\10\Lib\10.0.18362.0\um\x64\kernel32.lib" "C:\Program Files (x86)\Windows Kits\10\Lib\10.0.18362.0\um\x64\user32.lib"
rem link.exe test7.obj /subsystem:windows /entry:start  "/libpath:C:\Program Files (x86)\Windows Kits\10\Lib\10.0.19041.0\um\x64" /nodefaultlib kernel32.lib user32.lib msvcrt.lib /largeaddressaware:no
rem link.exe test7.obj /subsystem:console /entry:start  "/libpath:C:\Program Files (x86)\Windows Kits\10\Lib\10.0.19041.0\um\x64" /nodefaultlib kernel32.lib user32.lib ntstc_msvcrt.lib /largeaddressaware:no
rem path=D:\logiciel\golink;%path%
golink /console test7.obj msvcrt.dll kernel32.dll
