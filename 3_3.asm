 JMP F1
TEXTO1 DB "Ola, mundo $"
 F1:
 
mov ah, 9
lea dx, texto1
int 21h
   
   
   MOV AH, 4Ch
   INT 21H
end