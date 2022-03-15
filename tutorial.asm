    ORG 100H        ;COMECA 100HEX, OBRIGATORIO
    
INICIO:
    
    MOV AL, 10      ; COPIA 10 PARA AL
    MOV BX, 20  
    ADD AX, BX      ; AX + BX -> AX
FIM:    
    END  
    
    
    Depois do 'END' nao compila