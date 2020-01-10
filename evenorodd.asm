include "emu8086.inc"
mov  ax,9
mov bx,2
div bx
cmp dx,00
je i
cmp dx,01
je j
i:
    print "even" 
    hlt
j:   
    mov ax,8          
    print  "chekke"
                     
ret
