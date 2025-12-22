;Sum of even numbers to nth
start:
MOV AX, 19785
MOV BX, 2
XOR DX, DX
DIV BX
MOV BX, AX
INC BX
MUL BX ; LAW = K = K * (K + 1)
; Answer is in DX:AX