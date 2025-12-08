;find 20th number of fibonacci series

start:
MOV AX, 1
MOV BX, 1
MOV CX, 18

L:
  MOV DX, AX
  ADD AX, BX
  MOV BX, DX
  LOOP L