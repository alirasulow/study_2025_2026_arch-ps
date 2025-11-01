section .data
    prompt db 'Enter your name: ', 0
    hello db 'Hello, ', 0
    buffer times 64 db 0

section .text
    global _start

_start:
    ; Print prompt
    mov eax, 4
    mov ebx, 1
    mov ecx, prompt
    mov edx, 16
    int 0x80

    ; Read input
    mov eax, 3
    mov ebx, 0
    mov ecx, buffer
    mov edx, 64
    int 0x80

    ; Print "Hello, "
    mov eax, 4
    mov ebx, 1
    mov ecx, hello
    mov edx, 7
    int 0x80

    ; Print the name
    mov eax, 4
    mov ebx, 1
    mov ecx, buffer
    mov edx, 64
    int 0x80

    ; Exit
    mov eax, 1
    mov ebx, 0
    int 0x80
