.model small
.stack 100h
.data
.code

main proc 
    mov ax,4
    
    shl ax,1
    
    mov ah,2
    mov dx,ax
    add dx,48
    int 21h
    
    mov ah,2
    mov dl,10
    int 21h
    mov dl,13
    int 21h 
    
    mov ax,4
    shr ax,1
    
    mov ah,2
    mov dx,ax
    add dx,48
    int 21h 
    
    mov ah,2
    mov dl,10
    int 21h
    mov dl,13
    int 21h 
    
    mov ax,6
    rol ax,1
    
    mov ah,2
    mov dx,ax
    add dx,55
    int 21h
    
    mov ah,2
    mov dl,10
    int 21h
    mov dl,13
    int 21h 
    
    mov ax,6
    rcl ax,1
    
    mov ah,2
    mov dx,ax
    add dx,55
    int 21h
    
    mov ah,2
    mov dl,10
    int 21h
    mov dl,13
    int 21h 
    
    mov ax,6
    ror ax,1
    
    mov ah,2
    mov dx,ax
    add dx,48
    int 21h 
    
    mov ah,2
    mov dl,10
    int 21h
    mov dl,13
    int 21h 
    
    mov ax,6
    rcr ax,1
    
    mov ah,2
    mov dx,ax
    add dx,48
    int 21h
    
    exit:
    mov ah,4ch
    int 21h
    main endp
end main