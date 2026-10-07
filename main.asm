section .data


section .text
    global _start


_start : 

    mov rax, 0x2
    movabs rdi, 0x402000
    mov rsi, 0x0
    syscall

    mov rax, 0x8
    mov rdx, 0x2
    syscall