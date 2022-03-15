 NR_LINHA EQU 3
          
    MOV CX, NR_LINHA
    
    
    MOV AH, 9
    LEA DX, TEXTO1
    INT 21H  
    R1:
    MOV AH, 1
    INT 21H 
    MOV DL, AH
    LOOP R1
    
    mov ah, 9      
    mov dl, 255  
    LEA DX, TEXTO2
    int 21h
    
   MOV AH, 4Ch
   INT 21H
   
    RET
    
    TEXTO1 DB 13,10,'Carregue em 3 teclas: $'
    TEXTO2 DB 13,10, "Carregou nas teclas: $"  