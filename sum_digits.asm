include 'emu8086.inc'
print 'enter any number to find sum of digits  '
call scan_num                                
mov bx,10
loop1: 
    mov dx,00
    mov ax,cx
    div bx
    jmp cal
    back: 
        mov cx,ax
        cmp ax,00
        jne loop1
        printn
        print 'sum of its digits is  '
        mov ax,sum
        call print_num_uns
        hlt
        
        
cal:
    add sum,dx
    jmp back
  
define_scan_num
define_print_num_uns
sum dw 00  