;Factorial
start:
MOV AX, 6
MOV CX, AX
DEC CX

Factorial:
    MUL CX
    LOOP Factorial
    