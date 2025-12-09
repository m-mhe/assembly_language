;TEST TRIANGLE

start:
MOV AX, 9
MOV BX, 100
MOV CX, 4

CMP AX, BX
JAE TestAX
JMP TestBX

TestAX:
    CMP AX, CX
    JAE TestTriangle
    JMP ForCXBig
    
TestBX:
    CMP BX, CX
    JB ForCXBig
    MOV DX, AX
    MOV AX, BX
    MOV BX, DX
    JMP TestTriangle

ForCXBig:    
    MOV DX, AX
    MOV AX, CX
    MOV CX, DX
    JMP TestTriangle
    
TestTriangle:
    ADD BX, CX
    CMP BX, AX
    JA True
    MOV DX, 0
    JMP END
    
True:
    MOV DX, 1

END:
    
 