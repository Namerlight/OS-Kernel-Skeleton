[org 0x7c00]
    mov bp, 0x9000
    mov sp, bp
    mov bx, realmsg
    call print

    call switch
    jmp $

%include "messages_out.asm"
%include "32bit.asm"
%include "32gdt.asm"
%include "32switch.asm"

[bits 32]

startprog:
    mov ebx, protectmsg
    call printstr
    jmp $

realmsg db "Starting in 16bit", 0
protectmsg db "Starting in 32bit. This is the text that will be output in 32-bit mode (it's coloured too!)", 0

times 510-($-$$) db 0
dw 0xaa55
