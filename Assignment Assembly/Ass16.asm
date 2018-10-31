.model small
.stack 100h
.data
a db 'Input a character: $'
b db 10,13,'Character in reverse case is $' 
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
    
    cmp bl,'a'
    jnge L1
    cmp bl,'z'
    jnle L1
    
    jmp L2
    
    L1:
    mov ah,9
    lea dx,b
    int 21h
    
    add bl,32
    mov ah,2
    mov dl,bl
    int 21h 
    
    jmp exit:
    
    L2:
    mov ah,9
    lea dx,b
    int 21h
    
    sub bl,32
    mov ah,2
    mov dl,bl
    int 21h
    
    jmp exit:
    
    exit:
    mov ah,4ch
    int 21h
    main endp
end main