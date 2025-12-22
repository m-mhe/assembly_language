;To FIND Least Common Divisor (LCD)
start:
MOV AX, 457
MOV BL, 67
MOV CX, AX
MOV DX, BX
FindGCD:
    DIV BL
    CMP AH, 0
    JZ FindLCM
    XCHG AH, BL
    JMP FindGCD
    
FindLCM:
    MOV AX, CX
    MUL DX 
    DIV BX