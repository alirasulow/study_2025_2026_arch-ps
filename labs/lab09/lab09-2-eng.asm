section .data
    msg db 'Result: '
    result db '   ',0xA
    
section .text
global _start

_start:
    mov ebx, 3
    mov eax, 2
    add ebx, eax
    
    mov eax, ebx
    mov ecx, 4
    mul ecx
    
    add eax, 5
    
    mov ebx, 10
    mov ecx, 2
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
    mov edx, 8
    int 0x80
    
    mov eax, 4
    mov ebx, 1
    mov ecx, result
    mov edx, 4
    int 0x80
    
    mov eax, 1
    xor ebx, ebx
    int 0x80
