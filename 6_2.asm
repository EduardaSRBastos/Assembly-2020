inicio: 

mov ah, 9
lea dx, texto1
int 21h

mov cx, 20
mov si, 0

R1:

mov ah, 1
int 21h

cmp al, 13
je sim  

mov nome1[si], al 
inc si

loop R1

;jne nao


sim:  

mov ah, 9
lea dx, texto2
int 21h 

mov cx, 20
mov si, 0

R2:

mov ah, 1
int 21h

cmp al, 13
je sim2  

mov nome2[si], al 
inc si

loop R2  


sim2:  

mov si, 0
mov cx, 20

R3:

mov al, nome1[si]
cmp al, nome2[si]
jl print_nome
jg print_nome2
inc si

loop R3

print_nome:

mov ah, 9
lea dx, mudar_linha
int 21h

mov ah, 9
lea dx, nome1
int 21h
  
mov ah, 9
lea dx, mudar_linha
int 21h

mov ah, 9
lea dx, nome2
int 21h    
ret

print_nome2: 

mov ah, 9
lea dx, mudar_linha
int 21h

mov ah, 9
lea dx, nome2
int 21h
 
mov ah, 9
lea dx, mudar_linha
int 21h

mov ah, 9
lea dx, nome1
int 21h



ret
texto1 db 13, 10, 'Nome: $'
texto2 db 13, 10, 'Nome: $'
nome1 db '                     $'
nome2 db '                     $'   
mudar_linha db 13, 10, '$'