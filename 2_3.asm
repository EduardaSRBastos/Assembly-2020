     MOV AH, 9
     LEA DX, TEXTO1
     INT 21H
     
     MOV AH, 1
     INT 21H
      
     MOV BL, AL
      
     MOV AH, 9
     LEA DX, TEXTO2
     INT 21H
     
     MOV AH, 2       ;funcao 2: escrever um carater no ecra
     MOV DL, BL
     INT 21H
     
     RET
     
     TEXTO1 DB 'Carregue numa tecla: ','$'
     TEXTO2 DB 13,10,10 'Carregou na tecla', '$'