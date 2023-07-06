
.stack 100h
.model small

.data 

 
    msg1 db 10,13,'Enter Number: $'

    msg2 db 10,13,'Number is Positive $' 

    msg3 db 10,13,'Number is Negative $' 

    msg4 db 10,13, 'Number is Zero $'   

    

.code

main proc  

    mov ax,@data    ; create heap memory fro getting data from data section

    mov ds,ax

    
    mov dx,offset msg1 ; display first message

    mov ah,9

    int 21h  

    
    mov ah,1       ; input  number

    int 21h  
    

    mov bl,al   

    mov cl,30h  ; assci code of < or >

    
    cmp bl,cl
   

    jg positive   ;jump if greater

    je zero

    jl Negative    

    
   positive:

    lea dx,msg2   ;load effective address

    mov ah,9

    int 21h  

    
    mov ah,4ch 

    int 21h 

     
   negative:

    lea dx,msg3

    mov ah,9

    int 21h 

    mov ah,4ch 

    int 21h    
       

    zero:

    lea dx,msg4

    mov ah,9

    int 21h  

    

    mov ah,4ch 

    int 21h 



main endp

    



end main