[bits 32]

video equ 0xb8000
blue equ 0x09

printstr:
    pusha
    mov edx, video

printloop:
    mov al, [ebx]
    mov ah, blue
    cmp al, 0
    je printfinish
    mov [edx], ax
    add ebx, 1
    add edx, 2
    jmp printloop

printfinish:
    popa
    ret
    
