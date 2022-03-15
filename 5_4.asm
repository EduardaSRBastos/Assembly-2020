inicio:
mov ah, 9
lea dx, texto1
int 21h
  
mov ah, 1
int 21h
 
cmp al, 'S'
je l1

cmp al, 's'
je l1
 
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
 
 l1:

mov ah, 9
lea dx, texto4
int 21h 

 loopne l1 
 
ret
texto1 db 0ah, 0dh, 'Carregue numa tecla: [S=Sair] $'
texto2 db  ' Numero $'
texto3 db ' Nao numero $' 
texto4 db 0ah, 0dh,' Sair - Obrigado $'