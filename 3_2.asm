TRAS:
MOV AH, 9
LEA DX, LINHA1
INT 21H

MOV AH, 1
INT 21H 

JMP TRAS

RET

LINHA1 DB 13,10, "CARREGUE NUMA TECLA : $"

END