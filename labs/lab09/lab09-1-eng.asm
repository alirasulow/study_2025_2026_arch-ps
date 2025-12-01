section .data
    msg db 'Result f(5) = ',0
    result db '     ',0xA
    
section .text
global _start

calculate:
    imul eax, 10
    sub eax, 4
    ret

_start:
    mov eax, 5
    call calculate
    
    mov ebx, 10
    mov ecx, 4
.convert:
    xor edx, edx
    div ebx
    add dl, '0'
    mov [result + ecx], dl
    dec ecx
    test eax, eax
    jnz .convert
    
    mov eax, 4
    mov ebx, 1
    mov ecx, msg
    mov edx, 14
    int 0x80
    
    mov eax, 4
    mov ebx, 1
    mov ecx, result
    mov edx, 6
    int 0x80
    
    mov eax, 1
    xor ebx, ebx
    int 0x80
