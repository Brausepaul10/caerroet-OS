[org 0x7C00]

jmp main
; function that reads a key
readKey:
    mov ah, 0
    int 0x16
    ret

; main part of the operating system
main:
    mov si, inputPrompt
    call printString

; read and display input
inputloop:
    call readKey
    mov ah, al
    cmp ah, 13
    je endInputLoop
    mov [buffer], ah
    mov si, buffer
    call printChar
    jmp inputloop

endInputLoop:
    jmp $


; function that prints a character
printChar:
    mov ah, 0x0E
    int 0x10
    ret

; function that prints a string
printString:
    lodsb
    cmp al, 0
    je endPrintString
    mov ah, 0x0E
    int 0x10
    jmp printString

endPrintString:
    ret

; prompt that tells the user to enter input
inputPrompt:
    db "Enter a sentence: ", 0

buffer:
    db 0



times 510-($-$$) db 0
dw 0xAA55