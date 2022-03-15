n_linha EQU 10

MOV CX, n_linha    ;0=repete 2^16

R1:   

MOV AH,1
INT 21H 

LOOP R1