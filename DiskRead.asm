PROGRAM_SPACE equ 0x7e00
READ_DISK:
	mov bx,PROGRAM_SPACE 
	mov ah,2
	mov al,1   ;number of sectors to read
	mov dl,[BOOT_DISK] ;disk
	mov ch,0x00 ;cylynder number
	mov dh,0x00 ;head number
	mov cl,0x02 ;sector number
	int 0x13
	jnc  exit
	mov bx,DISK_READ_ERR_STR
	call print
exit:ret
BOOT_DISK:db 0
DISK_READ_ERR_STR:db "DISK READ Failed...",0


