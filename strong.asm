;
;to check whether a number is perfert number
;
;
include 'emu8086.inc'
print 'enter any number to check it is a perfect number on not'
call scan_num
  
mov num ,cx  
mov ax,cx
div m            ;given num is divided by 2 to iterate 
                  ;half times
mov n,ax
for:
    mov dx,00            
    mov ax,num 
    div n 
    mov bx,n 
    cmp dx,00
    je perfect    ;if remainder is 0 the it is a factor 
    label:
    dec n         ;repeat loop for n times
    cmp n,00
    jg for
   jmp exit


perfect:
    
    add sum,bx
    jmp label
    


exit:
    mov ax,sum
    printn  
   
    cmp ax,num
    je print
    cmp ax,num
    jne notprint
    ret
    
    
print:
    print 'given number is strong number'
    ret
notprint:
    print 'given number is not a strong number'
    ret


define_scan_num
define_print_num_uns
n dw 00  
m dw 02
num dw 00 
sum dw 00





