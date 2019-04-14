print:
    pusha
    
print_next:
    mov al, [bx]
    cmp al, 0
    je end_print
    
    mov ah, 0x0e
    int 0x10

    add bx, 1
    jmp print_next

end_print:
    popa
    ret

print_newline:
    pusha
    mov ah, 0x0e
    mov al, 0x0a
    int 0x10
    mov al, 0x0d
    int 0x10
    popa
    ret
