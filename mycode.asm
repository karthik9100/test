
;assembly code to print armstrong numbers



include 'emu8086.inc'
call scan_num

mov n,cx           ;mov scaned value to n 'n is a aux variable'


for:  
    mov dx,00
    mov ax,n  
    mov k,10
    div k   ;divides ax,10
    ;cx contains remainder 
    mov n,ax      ;quotient is assigned to n
    mov rem,dx
    mov ax,rem
    mul rem
    mul rem
    ;call print_num_uns
    add sum,ax
    cmp n,01
    jge for    
cmp sum,cx
je print 
cmp sum,cx
jne print1
print:
    print 'armstrong' 
    ret  
print1:
    print 'not ' 
    ret
define_print_num_uns
define_scan_num
n dw 00
sum dw 00
k dw 10  
rem dw 00
    
    