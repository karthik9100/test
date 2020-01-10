include 'emu8086.inc'
;call scan_num
mov m,50
mov cx,00
mov bx,1
;print 'enter the limit'
;call scan_num
;mov lim,cx
;mov cx,00
        

upperfor:
   
    mov n,bx
   
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
    cmp c,00
    je print    
    cmp c,00
    jne n_print 

print:
    mov ax,bx
    call print_num_uns
    print '   ' 
      inc bx
    cmp bx,m
    jle upperfor

    cmp bx,m
    jg break   
   
n_print: 
    
     
      inc bx
    cmp bx,m
    jle upperfor

    cmp bx,m
    jg break
  
break:
    ret
define_scan_num 
define_print_num_uns
n dw 00 
i dw 00 
m dw 00 
c dw 00