     MOV AH, 9
     LEA DX, TEXTO1
     INT 21H 
     
     MOV AH, 9
     LEA DX, TEXTO2
     INT 21H 
     
     MOV AH, 9
     LEA DX, TEXTO2
     INT 21H    
             
     MOV AH, 9
     LEA DX, TEXTO2
     INT 21H 
     
     MOV AH, 9
     LEA DX, TEXTO2
     INT 21H 
     
     MOV AH, 9
     LEA DX, TEXTO2
     INT 21H 
     
     MOV AH, 9
     LEA DX, TEXTO2
     INT 21H 
     
     MOV AH, 9
     LEA DX, TEXTO2
     INT 21H 
     
     MOV AH, 9
     LEA DX, TEXTO9
     INT 21H        
     
     RET
     
     TEXTO1 DB "*********$"
     TEXTO2 DB ,13,10,"*       *$" 
     TEXTO9 DB ,13,10,"*********$"
     
     END