nasm -fwin32 test4.asm
link test4.obj /subsystem:windows /entry:WinMain  /nodefaultlib kernel32.lib user32.lib /largeaddressaware:no