INICIO:

MOV ah, 1 
INT	21h   

CMP al, 13   
JE  SAIR 
MOV ah, 0  
SUB al, 48   

mov cl, al
mov al, bl   

mul dl       

add al, dl   
mov bl, al
jmp INICIO 

SAIR:

CMP	bl,10

JE IGUAL
JL MENOR
JG MAIOR

MENOR:
MOV ah, 9
LEA dx, MSG1
INT 21h 
JMP CONTINUAR



IGUAL:
MOV ah, 9
LEA dx, MSG2
INT 21h 
JMP CONTINUAR

MAIOR:
MOV ah, 9
LEA dx, MSG3
INT 21h
JMP CONTINUAR

CONTINUAR:
MOV ah, 9
LEA dx, MSG4
INT 21h
JMP INICIO

MSG1 DB 13,10, 'Menor $' 
MSG2 DB 13,10, 'Igual $' 
MSG3 DB 13,10, 'Maior $' 
MSG4 DB 13,10, 'Continuar $'
