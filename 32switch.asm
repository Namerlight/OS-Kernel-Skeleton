[bits 16]

switch:
    cli
    lgdt [gdtdesc]
    mov eax, cr0
    or eax, 0x1
    mov cr0, eax
    jmp codeseg:init

[bits 32]

init:
    mov ax, dataseg
    mov ds, ax
    mov ss, ax
    mov es, ax
    mov fs, ax
    mov gs, ax
    mov ebp, 0x90000
    mov esp, ebp
    call startprog
