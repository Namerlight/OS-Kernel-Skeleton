[org 0x7c00]

    mov bp, 0x9000
    mov sp, bp

    mov bx, realmsg
    call print ; This will be written after the BIOS messages

    call switch_to_pm
    jmp $ ; this will actually never be executed

%include "messages_out.asm"
%include "32bit.asm"
%include "32gdt.asm"
%include "32switch.asm"

[bits 32]
BEGIN_PM: ; after the switch we will get here
    mov ebx, protectmsg
    call printstr ; Note that this will be written at the top left corner
    jmp $

realmsg db "Initially loading 16-bit mode.", 0
protectmsg db "The 32-bit protected mode has now been loaded", 0


times 510-($-$$) db 0
dw 0xaa55
