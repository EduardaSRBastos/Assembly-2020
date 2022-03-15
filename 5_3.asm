inicio:
mov ah, 9
lea dx, texto1
int 21h

mov ah, 1
int 21h

cmp al, '0'
jl nao_numero   ;menor jl

cmp al, '9'
jg nao_numero   ;maior jg

numero:
mov ah, 9
lea dx, texto2
int 21h  
jmp inicio

nao_numero:
 mov ah, 9
lea dx, texto3
int 21h  
jmp inicio

ret
texto1 db 0ah, 0dh, 'Carregue numa tecla: $'
texto2 db  ' Numero $'
texto3 db ' Nao numero $'