
;
;
;assembly code to print reverse of a number and check
;
;whether the number is palindrome or not


include "emu8086.inc"
call scan_num
mov n,cx 
mov m,cx
mov count,cx
mov bx,10

ndigits:  
    
    mov ax,n 
    mov dx,00
    div bx
    mov n,ax
    add sum,dx
     cmp ax,00
    je exit
    mov ax,sum 
    cmp ax,00
    je exit
    mul bx
    mov sum,ax   
    cmp n,00
    jg ndigits
    
    


    
      
exit:
     
    printn
     
    
    mov ax,sum
    call print_num_uns
    mov ax,count 
    cmp sum,ax
    je print   
    ret 
           
print:  
    printn
    print 'palindrome' 
    ret
    
    
    
n dw 00
m dw 00
count dw 00
sum dw 00 
rem dw 00
define_print_num_uns
define_scan_num