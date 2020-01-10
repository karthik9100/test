include 'emu8086.inc'
call scan_num
mov n,cx
mov i,02


prime:
    mov ax,n
    div i
    cmp dx,00
    je label1 
    cmp dx,00
    jne label2
   
  
  
  
label1:
    
    jmp n_print    
    
     
label2:
    inc i
    mov ax,i
    mov dx,00
    CMP ax,n 
    jl prime
    cmp bx,00
    je print    
    cmp bx,00
    jne n_print 

print:
    print 'prime'   
    ret
n_print:
    print 'not a prime' 
    ret

define_scan_num
n dw 00 
i dw 00