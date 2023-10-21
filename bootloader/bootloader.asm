org 0x7c00
bits 16
start: jmp boot

;; constant and variable definitions
msg db "Welcome to My Operating System!", 0ah, 0dh, 0h

boot:
    cli ; no interrupts
    cld ; all that we need to init
    hlt ; halt the system

; We have to be 512 bytes. Clear the rest of the bytes with

times 510 - ($-$$) db 0
dw 0xAA55 ; Boot Signiture