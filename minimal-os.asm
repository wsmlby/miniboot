mov ah, 0x0e ; tty mode
mov al, 'B'
int 0x10
mov al, 'o'
int 0x10
int 0x10
mov al, 't'
int 0x10 ; 
mov al, 'e'
int 0x10
mov al, 'd'
int 0x10
mov al, '!'
int 0x10

cli ;
pause;
hlt               ; Halt the CPU

; padding and magic number
times 510 - ($-$$) db 0
dw 0xaa55 