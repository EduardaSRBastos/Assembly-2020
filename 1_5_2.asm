
    mov ah, 9         
    lea dx, texto1    
    int 21h           
     
    mov ah, 9         
    lea dx, nome1    
    int 21h 
    
    ret               
    
    texto1 db 'Menu:', 0ah,0dh, 'Opcao 1:', 0ah,0dh, 'Opcao 2:$'  
     
    nome1 db 0ah, 0ah,0dh, 'Eduarda Bastos$' 
     
    end


