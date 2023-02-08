; https://forum.nasm.us/index.php?topic=2475.0

global start

extern printf        ;from msvcrt
extern scanf         ;from msvcrt
extern ExitProcess   ;from kernel32

section .bss
name:   resb 100

section .data
prompt: db 'Enter your name: ',0
frmt:   db '%s',0
greet:  db 'Hello, %s!',0ah,0

section .text
start:
        sub     rsp,40

        mov     rcx,prompt
        call    printf

        mov     rdx,name
        mov     rcx,frmt
        call    scanf

        mov     rdx,name
        mov     rcx,greet
        call    printf

        xor     ecx,ecx
        call    ExitProcess