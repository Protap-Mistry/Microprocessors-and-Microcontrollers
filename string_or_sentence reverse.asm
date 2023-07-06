include 'EMU8086.INC'
.model small
.stack 100H
.data
    ;decale variables
    ;bh bl 8 bits reg
    ;bx 16 bits reg
    
    num db 'd' ;d=100 db=define by byte ?=unknown
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
        mov ds, ax   ;access data
        
        print "Enter: "
        
        mov ah, 1  ;takeinput
        xor cx, cx      ;counter variable =>xor reset (0) the value of cx
        
        input:
            int 21h
            cmp al, 0DH ;0D ascii value of return character
            je exit_input  ;jump if equal then exit
            
            push ax ;else push
            inc cx
            jmp input
            
        exit_input:
        
        ;start newline
        mov ah, 2
        mov dl, 0AH  ;0A ascii value of newline
        int 21h
        mov dl, 0DH  ;0D ascii value of return character
        int 21h
        ;end newline
        
        
        print "Output: "
        
        mov ah, 2
        
        output:
            pop dx
            int 21h
        loop output      
        
        
        mov ah, 4ch ;PROGRAM HAS RETURNED CONTROL TO THE OPERATING SYSTEM else emulator halted
        int 21h
    main endp
    
    
    
end main ;exit(0) 
