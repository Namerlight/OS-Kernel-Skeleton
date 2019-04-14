gdtstart:
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

gdtdesc:
    dw gdtfinish - gdtstart - 1 ;
    dd gdtstart ;

codeseg equ gdtcode - gdtstart
dataseg equ gdtdata - gdtstart
