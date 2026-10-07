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


    mov rax, 0x5
    movabs rsi, 0x402100
    syscall


    mov rax, [stat+0x18]
    and rax, 0xf000
    cmp rax, 0x4000
    je is_directory