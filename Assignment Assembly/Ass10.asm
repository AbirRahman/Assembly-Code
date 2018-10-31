.model small
.stack 100h
.data
a db 'Enter two numbers: $' 
b db 10,13,'The difference is $'
.code

main proc
    mov ax,@data
    mov ds,ax
    
    mov ah,9
    lea dx,a
    int 21h
    
    mov ah,1
    int 21h
    mov bl,al
    
    mov ah,1
    int 21h
    mov bh,al
    
    sub bl,bh    ; bl=bl-bh
    
    mov ah,9
    lea dx,b
    int 21h
    
    mov ah,2
    mov dl,bl
    add dl,48
    int 21h 
    
    exit:
    mov ah,4ch
    int 21h
    main endp
end main
