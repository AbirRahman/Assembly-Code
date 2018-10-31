.model small
.stack 100h
.data
a db 'Input a number $' 
b db 10,13,'After inc the number is $'
c db 10,13,'After dec the number is $'
d db 10,13,'After neg the number is $'  

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
    
    inc bl
    
    mov ah,9
    lea dx,b
    int 21h
    
    mov ah,2
    mov dl,bl
    int 21h
    
    dec bl
    
    mov ah,9
    lea dx,c
    int 21h
    
    mov ah,2
    mov dl,bl
    int 21h 
    
    mov ax,5
    
    neg ax
    
    mov ah,9
    lea dx,d
    int 21h
    
    mov ah,2
    mov dx,ax
    int 21h
    
    exit:
    mov ah,4ch
    int 21h
    main endp
end main
