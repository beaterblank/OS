;code part :
[BITS 16]       ;tell the assembler its 16 bit code

mov [BOOT_DISK],dl
[org 0x7c00]   ;offest for memory

mov bp,0x7c00  ;set stack pointer
mov sp,bp

call READ_DISK
jmp PROGRAM_SPACE        ;run forever do nothing

;functions  :
%include "DiskRead.asm"
%include "print.asm"
%include "scan.asm"
;memory part :
times 510-($-$$) db 0 ;the boot loader should be 512 bytes in size
db 0x55,0xaa   		  ;ending with 0x55aa


