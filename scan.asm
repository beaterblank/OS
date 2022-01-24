scan:          ;scans into the pointer set by bx
scanner:       ;loop   
	mov ah,0    ;set into scan mode
	int 0x16    ;scanline
	cmp al,0x0D ;wait till enter key pressed
	je exitscan	;on enter key exit
	mov ah,0x0e ;set teleprint mode
	int 0x10    ;print
	mov [bx],al ;get the input
	inc bx      ;increase the pointer
	jmp scanner ;loop back
exitscan:ret
