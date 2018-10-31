.model small
.stack 100h
.data
a db 'Input a lowercase letter $'
b db 10,13,'The uppercase letter is $'
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
    
    mov ah,9
    lea dx,b
    int 21h
    
    mov ah,2
    mov dl,bl
    sub dl,32
    int 21h
    
    exit:
    mov ah,4ch
    int 21h
    main endp
end main
