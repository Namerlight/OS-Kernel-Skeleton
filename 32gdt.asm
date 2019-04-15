gdtstart: ; don't remove the labels, they're needed to compute sizes and jumps
    ; the GDT starts with a null 8-byte
    dd 0x0 ; 4 byte
    dd 0x0 ; 4 byte


gdtcode: 
    dw 0xffff
    dw 0x0
    db 0x0
    db 10011010b
    db 11001111b
    db 0x0


gdtdata:
    dw 0xffff
    dw 0x0
    db 0x0
    db 10010010b
    db 11001111b
    db 0x0

gdtfinish:

; GDT descriptor
gdtdesc:
    dw gdtfinish - gdtstart - 1
    dd gdtstart

codesegment equ gdtcode - gdtstart
datasegment equ gdtdata - gdtstart
