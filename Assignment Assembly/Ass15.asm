.model small
.stack 100h
.data
a db 'Input two number: $'
b db 10,13,'First is greater. $' 
c db 10,13,'Second is greater. $'
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
    
    cmp bl,bh
    jg L1
    jmp L2
    
    L1:
    mov ah,9
    lea dx,b
    int 21h
    jmp exit:
    
    L2:
    mov ah,9
    lea dx,c
    int 21h
    jmp exit:
    
    exit:
    mov ah,4ch
    int 21h
    main endp
end main