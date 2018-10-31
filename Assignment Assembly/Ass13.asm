.model small
.stack 100h 
.data
c db 10,13,'The sum of $'  
d db ' and $'
e db ' is $'
.code

main proc  
    mov ax,@data
    mov ds,ax
    
    mov ah,1
    int 21h       ;input a
    mov bl,al
    mov cl,bl     ; for show in output
    
    mov ah,1
    int 21h       ;input b
    mov bh,al
    
    add bl,bh    ;bl=bl+bh
    
    mov ah,9
    lea dx,c
    int 21h
    
    mov ah,2
    mov dl,cl
    int 21h 
    
    mov ah,9
    lea dx,d
    int 21h
    
    mov ah,2
    mov dl,bh
    int 21h
    
    mov ah,9
    lea dx,e
    int 21h
    
    
    mov ah,2
    mov dl,bl     ;show a 
    sub dl,48
    int 21h
    
    exit:
    mov ah,4ch
    int 21h
    main endp
end main