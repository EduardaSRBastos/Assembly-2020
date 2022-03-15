inicio:
mov ah, 9
lea dx, texto1
int 21h

mov ah, 1
int 21h

cmp al, '5'
je cinco
jne diferente

cinco:
mov ah, 9
lea dx, texto2
int 21h  
jmp inicio

diferente:
 mov ah, 9
lea dx, texto3
int 21h  
jmp inicio

ret
texto1 db 0ah, 0dh, 'Carregue numa tecla: $'
texto2 db  ' Cinco $'
texto3 db ' Diferente $'