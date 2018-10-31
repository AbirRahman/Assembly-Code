.model small
.stack 100h
.code

main proc
    mov cl,5
    neg cl
    
    exit:
    mov ah,4ch
    int 21h
    main endp
end main