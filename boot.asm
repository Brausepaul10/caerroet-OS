[org 0x7C00]

mov si, msg
call printString

printString:
    lodsb
    cmp al, 0
    je end
    mov ah, 0x0E
    int 0x10
    jmp printString

end:
    jmp $

msg: db "Hello world!", 0

times 510-($-$$) db 0
dw 0xAA55