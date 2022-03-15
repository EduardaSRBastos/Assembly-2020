
name "Sopa_Letras"
org 100h 

;Eduarda Bastos - 70647
;Rui Duarte - 70650  

;mostrar sopa de letras
mov ah, 9
lea dx, linha1 
int 21h 

mov ah, 9
lea dx, linha2
int 21h 

mov ah, 9
lea dx, linha3
int 21h

mov ah, 9
lea dx, linha4
int 21h

mov ah, 9
lea dx, linha5
int 21h

mov ah, 9
lea dx, linha6
int 21h

mov ah, 9
lea dx, linha7
int 21h

mov ah, 9
lea dx, linha8
int 21h

mov ah, 9
lea dx, linha9
int 21h

mov ah, 9
lea dx, linha10
int 21h 

 
inicio: 

;verificar se encontrou todas as palavras
mov al, total3                    
cmp al, 48
je acabar

;mostrar quantas palavras faltam encontrar 
mov ah, 9
lea dx, total
int 21h 
 
mov ah, 9
lea dx, total3
int 21h 
  
mov ah, 9
lea dx, total2
int 21h 

;mostrar texto principal
mov ah, 9
lea dx, texto1
int 21h

;palavra introduzida pelo user
mov cx, 21
mov si, 0

introduzir: 
mov ah, 1
int 21h

cmp al, 13  ;verificar se inseriu [ENTER]
je fim

mov str[si], al      ;inserir letra a letra no vetor 
inc si
loop introduzir

fim: 
mov cx, 15
mov si, 0 


;comparar se palavra introduzida esta correta
compara:
mov al, str[si]                    
cmp al, assem[si] 
je sim 
cmp al, bin[si]
je sim2 
cmp al, en[si] 
je sim3
cmp al, reg[si] 
je sim4 
cmp al, mem[si] 
je sim5
cmp al, log[si] 
je sim6         
cmp al, assem2[si] 
je sim 
cmp al, bin2[si]
je sim2 
cmp al, en2[si] 
je sim3
cmp al, reg2[si] 
je sim4 
cmp al, mem2[si] 
je sim5
cmp al, log2[si] 
je sim6
jne falha    

;comparar palavra com tamanho da variavel
sim:
cmp si, len-1 
je assembly
jne au 
sim2: 
cmp si, len2-1 
je binario
jne au 
sim3:
cmp si, len3-2
je endereco
jne au  
sim4:
cmp si, len4-2
je registo         
jne au
sim5:
cmp si, len5-1
je memoria
jne au  
sim6:
cmp si, len6-1
je logica         
jne au 
 
au:
inc si 
jne compara
 
;inserir na sopa de letras palavra encontrada 
assembly: 
cmp flag, 0
je repetido
dec total3
mov bp,OFFSET linhaA2 
mov ah,13h 
mov al,01h 
xor bh,bh
mov bl,6 ; cor
mov cx,15 ; tamanho
mov dh,3 ; linha
mov dl,22 ; coluna
int 10h  
mov  dl, 0   ;posicao x             
mov  dh, 21    ;posicao y
mov  ah, 2                  
mov  bh, 0                  
int  10h 

mov ah, 9
lea dx, texto2
int 21h  
mov flag, 0
;esperar 1 segundo
MOV     CX, 0FH
MOV     DX, 4240H
MOV     AH, 86H
INT     15H
jmp limparLinha  
 
 
binario:
cmp flag2, 0
je repetido  
dec total3
mov bp,OFFSET linhaA5
mov ah,13h
mov al,01h
xor bh,bh 
mov bl,6 ; cor
mov cx,13 ; tamanho
mov dh,9 ; linha
mov dl,4 ; coluna
int 10h  

mov  dl, 0   ;posicao x             
mov  dh, 21    ;posicao y
mov  ah, 2                  
mov  bh, 0                  
int  10h 

mov ah, 9
lea dx, texto2
int 21h  

mov flag2, 0
;esperar 1 segundo
MOV     CX, 0FH
MOV     DX, 4240H
MOV     AH, 86H
INT     15H
jmp limparLinha  
 
 
endereco:   
cmp flag3, 0
je repetido 
dec total3
mov bp,OFFSET linhaA7 
mov ah,13h 
mov al,01h 
xor bh,bh 
mov bl,6 
mov cx,15 
mov dh,13 
mov dl,2 
int 10h 

mov  dl, 0   ;posicao x             
mov  dh, 21    ;posicao y
mov  ah, 2                  
mov  bh, 0                  
int  10h 

mov ah, 9
lea dx, texto2
int 21h  
mov flag3, 0
;esperar 1 segundo
MOV     CX, 0FH
MOV     DX, 4240H
MOV     AH, 86H
INT     15H
jmp limparLinha
 
 
registo: 
cmp flag4, 0
je repetido 
dec total3
mov bp,OFFSET linhaA9 
mov ah,13h 
mov al,01h 
xor bh,bh 
mov bl,6 
mov cx,13 
mov dh,17 
mov dl,20 
int 10h 

mov  dl, 0   ;posicao x             
mov  dh, 21    ;posicao y
mov  ah, 2                  
mov  bh, 0                  
int  10h 

mov ah, 9
lea dx, texto2
int 21h  
mov flag4, 0
;esperar 1 segundo
MOV     CX, 0FH
MOV     DX, 4240H
MOV     AH, 86H
INT     15H
jmp limparLinha


memoria:   
cmp flag5, 0
je repetido 
dec total3
mov bp,OFFSET linhaM1 
mov ah,13h
mov al,01h
xor bh,bh 
mov bl,6
mov cx,1
mov dh,1
mov dl,28 
int 10h 
mov bp,OFFSET linhaM2 
mov ah,13h 
mov al,01h 
xor bh,bh 
mov bl,6 
mov cx,1 
mov dh,3 
mov dl,28 
int 10h 
mov bp,OFFSET linhaM3 
mov ah,13h 
mov al,01h 
xor bh,bh 
mov bl,6 
mov cx,1 
mov dh,5 
mov dl,28 
int 10h 
mov bp,OFFSET linhaM4 
mov ah,13h 
mov al,01h
xor bh,bh 
mov bl,6
mov cx,1 
mov dh,7 
mov dl,28 
int 10h 
mov bp,OFFSET linhaM5
mov ah,13h 
mov al,01h 
xor bh,bh 
mov bl,6 
mov cx,1 
mov dh,9 
mov dl,28 
int 10h
mov bp,OFFSET linhaM6 
mov ah,13h 
mov al,01h 
xor bh,bh 
mov bl,6 
mov cx,1
mov dh,11 
mov dl,28 
int 10h
mov bp,OFFSET linhaM7 
mov ah,13h 
mov al,01h 
xor bh,bh
mov bl,6 
mov cx,1 
mov dh,13 
mov dl,28 
int 10h 

mov  dl, 0             
mov  dh, 21    
mov  ah, 2                  
mov  bh, 0                  
int  10h 

mov ah, 9
lea dx, texto2
int 21h  
mov flag5, 0
;esperar 1 segundo
MOV     CX, 0FH
MOV     DX, 4240H
MOV     AH, 86H
INT     15H
jmp limparLinha

logica: 
cmp flag6, 0
je repetido 
dec total3
mov bp,OFFSET linhaL1 
mov ah,13h 
mov al,01h 
xor bh,bh 
mov bl,6 
mov cx,1 
mov dh,7 
mov dl,18 
int 10h
mov bp,OFFSET linhaL2 
mov ah,13h 
mov al,01h 
xor bh,bh 
mov bl,6 
mov cx,1 
mov dh,9 
mov dl,18
int 10h 
mov bp,OFFSET linhaL3 
mov ah,13h 
mov al,01h 
xor bh,bh 
mov bl,6 
mov cx,1 
mov dh,11
mov dl,18 
int 10h 
mov bp,OFFSET linhaL4 
mov ah,13h 
mov al,01h 
xor bh,bh 
mov bl,6 
mov cx,1 
mov dh,13 
mov dl,18 
int 10h 
mov bp,OFFSET linhaL5 
mov ah,13h 
mov al,01h 
xor bh,bh
mov bl,6 
mov cx,1
mov dh,15 
mov dl,18 
int 10h  
mov bp,OFFSET linhaL6 
mov ah,13h 
mov al,01h 
xor bh,bh 
mov bl,6 
mov cx,1 
mov dh,17 
mov dl,18
int 10h  

mov  dl, 0   ;posicao x             
mov  dh, 21    ;posicao y
mov  ah, 2                  
mov  bh, 0                  
int  10h 

mov ah, 9
lea dx, texto2
int 21h  
mov flag6, 0
;esperar 1 segundo
MOV     CX, 0FH
MOV     DX, 4240H
MOV     AH, 86H
INT     15H
jmp limparLinha

;palavra errada
falha:
mov ah, 9
lea dx, texto3
int 21h

;esperar 1 segundo
mov     cx, 0fh
mov     dx, 4240h
mov     ah, 86h
int     15h
jmp limparlinha

;limpar linhas e ir para a linha de novo
limparLinha:
mov  dl, 0   ;posicao x             
mov  dh, 19    ;posicao y
mov  ah, 2                  
mov  bh, 0                  
int  10h

mov ah, 9
lea dx, limpar
int 21h 

mov  dl, 0   ;posicao x             
mov  dh, 20    ;posicao y
mov  ah, 2                  
mov  bh, 0                  
int  10h

mov ah, 9
lea dx, limpar
int 21h  

mov  dl, 0   ;posicao x             
mov  dh, 21    ;posicao y
mov  ah, 2                  
mov  bh, 0                  
int  10h
 
mov ah, 9
lea dx, limpar
int 21h    

mov  dl, 0   ;posicao x             
mov  dh, 22    ;posicao y
mov  ah, 2                  
mov  bh, 0                  
int  10h
 
mov ah, 9
lea dx, limpar
int 21h

mov  dl, 0   ;posicao x             
mov  dh, 19    ;posicao y
mov  ah, 2                  
mov  bh, 0                  
int  10h 

mov cx, 15
mov si, 0
branco: 
mov str[si], ' '
inc si
loop branco
jmp inicio
  
;se palavra for repetida, nao pode ser encontrada outra vez  
repetido:
mov ah, 9
lea dx, igual
int 21h 
;esperar 1 segundo
MOV     CX, 0FH
MOV     DX, 4240H
MOV     AH, 86H
INT     15H
jmp limparLinha

loopne inicio 

;sai fora do loop para encontrar a palavra, e acaba
acabar:
mov ah, 9
lea dx, final
int 21h

mov ah, 4ch
int 21h  

ret 
linha1 DB 13,10,'F O E I D K E F N N A L R U M Z A T W L$'
linha2 DB 13,10,13,10, "W Q N C T Y H X E Q I A S S E M B L Y L$"
linha3 DB 13,10,13,10, "F G C G O P M O O D W E O R M O C C Y K$"
linha4 DB 13,10,13,10, "K W G O R I N E T L O W C H O C G W E J$"
linha5 DB 13,10,13,10, "W E B I N A R I O O N F Y Y R Z Z O M C$"
linha6 DB 13,10,13,10, "Q W M F E J F Z D G E Q V Z I R V J Y V$"
linha7 DB 13,10,13,10, "D E N D E R E C O I V V W M A H F B M W$"
linha8 DB 13,10,13,10, "K V F A C C N M H C V Y J U K P Z U C U$"
linha9 DB 13,10,13,10, "V S W F E A I F Q A R E G I S T O V J D$"
linha10 DB 13,10,13,10, "G J V R E M O P Q F D G Q G U W E K Z P$"
sair1 db 13,10,13,10, 'Clique em [ESC] para sair.$' 
texto1 db 0ah, 0dh, 'Escreva a palavra: $'
texto2 db 0ah, 0dh,'Parabens!$'
texto3 db 0ah, 0dh,'Essa palavra nao existe. Tente outra vez!$'   
texto4 db 0ah, 0dh,'Sair - Obrigado.$'
limpar db 0ah, 0dh,'                                            $'
igual db 13,10,13,10, 'Ja encontrou esta palavra antes.$'  
final db 13,10,13,10, 'Encontrou todas as palavras. Parabens!$'

;lista: binario, memoria, assembly, logica, registo, endereco  
flag db 1  
flag2 db 1
flag3 db 1
flag4 db 1
flag5 db 1
flag6 db 1   
total3 db "6$"
total db 13,10,"Falta encontrar $" 
total2 db " palavra(s)$"

linhaM1 DB 'M$'
linhaM2 DB "E$"
linhaM3 DB "M$" 
linhaM4 DB "O$"
linhaM5 DB "R$"
linhaM6 DB "I$"
linhaM7 DB "A$"
linhaA2 DB "A S S E M B L Y$"
str db "                    $" 
assem db "ASSEMBLY" 
len equ $ - assem 
assem2 db "assembly" 
bin db "BINARIO" 
len2 equ $ - bin
bin2 db "binario"
en db "ENDERECO" 
len3 equ $ - en 
en2 db "endereco"
reg db "REGISTO"
len4 equ $ - reg 
reg2 db "registo"
mem db "MEMORIA" 
len5 equ $ - mem 
mem2 db "memoria" 
log db "LOGICA"
len6 equ $ - log 
log2 db "logica"
mudarlinha db 13, 10, '$'
linhaA5 DB , "B I N A R I O$" 
linhaA7 DB , "E N D E R E C O$" 
linhaA9 DB , "R E G I S T O$" 
linhaL1 DB "L$"  
linhaL2 DB "O$"
linhaL3 DB "G$"  
linhaL4 DB "I$"  
linhaL5 DB "C$"
linhaL6 DB "A$" 