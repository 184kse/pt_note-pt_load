section .data


section .text
    global _start


PT_LOAD     equ 1
PT_NOTE     equ 4
PF_X        equ 1
PF_R        equ 4

E_PHOFF     equ 32
E_PHNUM     equ 56
E_PHENTSIZE equ 54

P_TYPE      equ 0
P_FLAGS     equ 4


_start:

    mov rax, 2
    mov rdi, main.asm
    mov rsi, 2
    mov rdv, 0
    syscall

    cmp rax, 0
    js exit_error
    mov r12, rax