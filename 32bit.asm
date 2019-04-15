[bits 32] ; using 32-bit protected mode

video equ 0xb8000
blue equ 0x09

printstr:
    pusha
    mov edx, video

printstrloop:
    mov al, [ebx]
    mov ah, blue
    cmp al, 0
    je printfinish
    mov [edx], ax
    add ebx, 1
    add edx, 2
    jmp printstrloop

printfinish:
    popa
    ret
