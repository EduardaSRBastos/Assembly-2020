mov ah, 9
lea dx, texto1
int 21H

mov cx, 30

l1:
mov ah, 1
int 21h

cmp al, '.'
loopne l1

ret
texto1 db "qual o seu nome? [. para terminar]$"

end