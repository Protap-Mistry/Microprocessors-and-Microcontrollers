.model small
.stack 100H
.data
    ;decale variables
    ;bh bl 8 bits reg
    ;bx 16 bits reg
    
    num db 'd' ;d=100 db=define byte ?=unknown
    num2 db ?
    num3 db 50
    char db '#'
    char2 db ?
    str db "dfghjko"
    msg db "message $"
    
    
.code
    ;implementation
    
    
    main proc ;int main
        ;statement
        
        ;HINT: instruction destination, source
        
        mov ax, @data
        mov ds, ax        ;access data
        
        ;printing data
        mov ah, 2
        mov dl, num
        int 21h
        
        ;newline
        mov ah, 2
        mov dl, 0AH  ;0A ascii value of newline
        int 21h
        mov dl, 0DH  ;0D ascii value of return character
        int 21h
        
        
        ;mov ah, 2
        mov dl, num3
        int 21h
        
        ;newline
        mov ah, 2
        mov dl, 0AH  ;0A ascii value of newline
        int 21h
        mov dl, 0DH  ;0D ascii value of return character
        int 21h
        
        ;mov ah, 2
        mov dl, char
        int 21h
        
        ;newline
        mov ah, 2
        mov dl, 0AH  ;0A ascii value of newline
        int 21h
        mov dl, 0DH  ;0D ascii value of return character
        int 21h
        
        mov ah, 9    ;9 for printing string
        lea dx, msg
        int 21h
        
        mov ah, 4ch ;PROGRAM HAS RETURNED CONTROL TO THE OPERATING SYSTEM else emulator halted
        int 21h
    main endp
    
    
    
end main ;exit(0) 
