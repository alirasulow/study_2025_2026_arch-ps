section .data
    result_msg db 'The result is: ', 0
    newline db 0xa

section .bss
    result resb 1

section .text
    global _start

_start:
    ; Simple addition: 5 + 3 = 8
    mov eax, 5
    add eax, 3
    add eax, '0'    ; Convert to ASCII
    mov [result], eax

    ; Print result message
    mov eax, 4
    mov ebx, 1
    mov ecx, result_msg
    mov edx, 15
    int 0x80

    ; Print result
    mov eax, 4
    mov ebx, 1
    mov ecx, result
    mov edx, 1
    int 0x80

    ; Print newline
    mov eax, 4
    mov ebx, 1
    mov ecx, newline
    mov edx, 1
    int 0x80

    ; Exit
    mov eax, 1
    mov ebx, 0
    int 0x80
