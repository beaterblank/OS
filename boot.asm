;code part :

mov [BOOT_DISK],dl


[org 0x7c00]   ;offest for memory
mov bp,0x7c00  ;set stack pointer
mov sp,bp


call READ_DISK

mov bx,PROGRAM_SPACE  ;get str pointer into bx
call scan      ;scan and store

mov bx,PROGRAM_SPACE  ;get str pointer into bx
call print		;print


jmp $          ;run forever do nothing

;functions  :

%include "print.asm"
%include "scan.asm"
%include "DiskRead.asm"

;memory part :

buffer:db 0           ;defining a pointer to a memory
times 510-($-$$) db 0 ;the boot loader should be 512 bytes in size
db 0x55,0xaa   		 ;ending with 0x55aa


times 2048 db 0      ;filling one sector with M


