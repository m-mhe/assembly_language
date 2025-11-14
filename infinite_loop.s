start:
reset:
MOV AX, 0
LOL:
ADD AX, 1
CMP AX, 0XFFFF
JZ reset
JMP LOL