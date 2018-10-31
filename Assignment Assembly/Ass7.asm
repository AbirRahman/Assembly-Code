.model small
.stack 100h
.data
a db 'Enter a hex digit: $' 
b db 10,13,'The decimal is $'
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
    mov dl,49   ; print 1
    int 21h 
    
    mov ah,2
    mov dl,bl
    sub dl,17
    int 21h 
    
    exit:
    mov ah,4ch
    int 21h
    main endp
end main
