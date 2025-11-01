# Лабораторная работа №4
## Создание и процесс обработки программ на языке ассемблера NASM

Выполнил: Али Расулов  
Группа: [Номер группы]  
Дата: 18 октября 2025 г.

### Цель работы
Приобретение практических навыков создания, компиляции и выполнения программ на языке ассемблера NASM.

---

## Ход работы

### 1. Проверка установки NASM
- Проверили наличие NASM: nasm --version
- Версия: 2.16.03

### 2. Создание простой программы "Hello World"
Код программы (hello.asm):
```nasm
section .data
    msg db 'Hello, Assembly World!', 0xa
    len equ $ - msg

section .text
    global _start

_start:
    mov eax, 4
    mov ebx, 1
    mov ecx, msg
    mov edx, len
    int 0x80

    mov eax, 1
    mov ebx, 0
    int 0x80






