.model small
.stack 100h
.data
a db 'Input a number $'
b db 10,13,'Number is greater than 5 $'
.code

main proc 
    mov ax,@data
    mov ds,ax
    
    mov ah,1
    int 21h
    mov bl,al
    
    cmp bl,53    ; 5 means 53
    jg L1
    jmp exit:
    
    L1:
    mov ah,9
    lea dx,b
    int 21h
    jmp exit:
    
    exit:
    mov ah,4ch
    int 21h
    main endp
end main
    