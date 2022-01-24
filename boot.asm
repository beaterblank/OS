;code part :

[org 0x7c00]   ;offest for memory

mov bx,buffer  ;get str pointer into bx
call scan      ;scan and st
mov bx,buffer  ;get str pointer into bx
call print		;print


jmp $          ;run forever do nothing

;functions  :

%include "print.asm"
%include "scan.asm"

;memory part :

buffer:db 0           ;defining a pointer to a memory
 
times 510-($-$$) db 0 ;the boot loader should be 512 bytes in size
db 0x55,0xaa   		 ;ending with 0x55aa
