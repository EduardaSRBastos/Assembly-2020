
    mov ah, 9         ;Escrever frase no ecra
    lea dx, texto1    ;dx aponta para a memoria texto1
    int 21h           ;interromper
    
    ret               ;return
    
    texto1 db 'Ola,', 0ah,0dh, ' mundo!', 0ah, '!!$'  ;db=define byte
    
    end


