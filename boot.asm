[org 0x7C00]

jmp main

MAX_BUFFER_SIZE equ 80 ; Maximale Puffergröße für eine Zeile

; Funktion zum Lesen eines Zeichens von der Tastatur
readKey:
    mov ah, 0
    int 0x16
    ret

; Hauptteil des Betriebssystems
main:
    mov si, inputPrompt
    call printString

    mov di, buffer
    mov cx, MAX_BUFFER_SIZE
    call clearBuffer

inputloop:
    call readKey
    mov ah, al
    cmp ah, 13 ; Wenn Enter gedrückt wurde
    je endInputLoop
    cmp ah, 8 ; Wenn Backspace gedrückt wurde
    je handleBackspace
    mov [di], ah ; Zeichen in den Puffer schreiben
    call printChar
    inc di
    jmp inputloop

handleBackspace:
    cmp di, buffer ; Überprüfen, ob der Puffer leer ist
    je inputloop ; Wenn ja, ignoriere den Backspace
    dec di ; Cursor eine Position zurück
    mov byte [di], ' ' ; Das gelöschte Zeichen durch ein Leerzeichen ersetzen
    call printChar
    dec di ; Cursor erneut eine Position zurück bewegen
    jmp inputloop

endInputLoop:
    mov si, newLine
    call printString
    mov si, buffer
    call printString
    jmp main ; Zurück zum Anfang der Eingabeschleife

; Funktion zum Anzeigen eines Zeichens
printChar:
    mov ah, 0x0E
    int 0x10
    ret

; Funktion zum Anzeigen eines Strings
printString:
    lodsb
    cmp al, 0
    je endPrintString
    mov ah, 0x0E
    int 0x10
    jmp printString

endPrintString:
    ret

; Funktion zum Löschen des Puffers
clearBuffer:
    mov al, ' ' ; Leerzeichen
    rep stosb ; Fülle den Puffer mit Leerzeichen
    ret

; Prompt, das den Benutzer auffordert, eine Eingabe einzugeben
inputPrompt:
    db "Enter a sentence: ", 0

; Zeichenpuffer für die Benutzereingabe
buffer:
    times MAX_BUFFER_SIZE db 0

; Neue Zeile
newLine:
    db 0x0D, 0x0A, 0 ; CR, LF, Nullterminator

times 510-($-$$) db 0
dw 0xAA55
