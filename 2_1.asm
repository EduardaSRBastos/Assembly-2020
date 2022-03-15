   MOV AH, 9      ;funcao 9: escrever no ecra
   LEA DX, MENU1 
   INT 21H  
   
   MOV AH, 9
   LEA DX, MENU2
   INT 21H 
    
   MOV AH, 9
   LEA DX, MENU3
   INT 21H 
    
   MOV AH, 1     ;funcao 1: ler teclado
   INT 21H
   
   RET
   
MENU1 DB 'MENU: ',13,1O,10, '$'
MENU2 DB 'Opcao 1: ',13,1O,10, '$'
MENU3 DB 'Opcao 2: ',13,1O,10, '$'
   
   END