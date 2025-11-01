section .data
    msg db 'Hello, Assembly World!', 0xa
    len equ $ - msg

section .text
    global _start

_start:
    ; write message to stdout
    mov eax, 4          ; sys_write
    mov ebx, 1          ; stdout
    mov ecx, msg        ; message
    mov edx, len        ; message length
    int 0x80            ; call kernel

    ; exit program
    mov eax, 1          ; sys_exit
    mov ebx, 0          ; exit code
    int 0x80            ; call kernel
