;assembly code to find whether a number
;
;is a strong number
;
;A STRONG number is a number whose sum of factorials of 
;
;individual digits is equal to to that number  

include 'emu8086.inc' 
print 'enter any number'
call scan_num
mov n,cx  
mov count,cx
mov bx,00
label:
    mov dx,00 
    mov bx,00
    mov ax,n
    div ten
    mov n,ax 
    mov cx,dx
    mov rem,dx
    mov ax,rem
    jmp fact 
    back:
    add sum,ax
    cmp n,00
    jle exit
    jmp label
 





fact:     
    inc bx  
    cmp bx,cx
    jge back
    dec rem
    mul rem 
    jmp fact

exit: 
    mov ax,sum
    printn
    cmp count,ax
    jne print
    print 'strong number' 
    
    hlt              
print:
    print 'not a strong number'
    ret

define_print_num_uns
define_scan_num
n dw 145
ten dw 10
count dw 00 
sum dw 00 
rem dw 00