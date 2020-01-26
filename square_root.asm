;
;program to print square root of a number
;
include 'emu8086.inc'
print 'enter any number  '
call scan_num
mov n, cx
mov bx,01
loop1:
    mov ax,bx 
    mul ax
    cmp n,ax
    jl square
    
    inc bx 
    jmp loop1
      
square:
    printn   
    dec bx
    mov ax,bx 
    print 'square root of given number is  '
    call print_num_uns
    
 hlt 
define_print_num_uns
define_scan_num
n dw 00