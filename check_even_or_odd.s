; Program to show use of interrupts
; Also, Hello World program !
evenMessage: DB "___even!___" ; store string
oddMessage: DB "___odd!___" ; store string

start: ; actual entry point of the program, must be present
MOV AX, 321
MOV BL, 2
DIV BL
CMP AH, 0
JZ even
JNZ odd



even:
MOV AH, 0x13          ; move BIOS interrupt number in AH
MOV CX, 11              ; move length of string in cx
MOV BX, 0               ; mov 0 to bx, so we can move it to es
MOV ES, BX              ; move segment start of string to es, 0
MOV BP, OFFSET evenMessage    ; move start offset of string in bp
MOV DL, 0               ; start writing from col 0
int 0x10        ; BIOS interrupt
JMP EXIT

odd:
MOV AH, 0x13            ; move BIOS interrupt number in AH
MOV CX, 11              ; move length of string in cx
MOV BX, 0               ; mov 0 to bx, so we can move it to es
MOV ES, BX              ; move segment start of string to es, 0
MOV BP, OFFSET oddMessage    ; move start offset of string in bp
MOV DL, 0               ; start writing from col 0
int 0x10               ; BIOS interrupt
JMP EXIT

EXIT:
