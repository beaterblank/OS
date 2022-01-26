[org 0x7e00]

mov bx,string
call print

jmp$

%include "print.asm"
%include "scan.asm"

string:db "success",0

times 512-($-$$) db 0      ;filling one sector with M