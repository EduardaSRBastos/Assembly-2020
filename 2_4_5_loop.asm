    MOV AH, 9
    LEA DX, TEXTO1
    INT 21H
  
  NR_LINHA EQU 4
          
    MOV CX, NR_LINHA
    R1:
    
    MOV AH, 9
    LEA DX, TEXTO2
    INT 21H 
    
    LOOP R1
    
    MOV AH, 9
    LEA DX, TEXTO3
    INT 21H  
    
    RET
    
    TEXTO1 DB 0DAH,0C4H,0C4H,0BFH,'$'  
    TEXTO2 DB ,13,10,0B3H,020H,020H,0B3H,'$'
    TEXTO3 DB ,13,10,0C0H,0C4H,0C4H,0D9H,'$'  