print:          ;prints from pointer set into bx
mov ah,0x0e     ;set into teleprint
printer:        ;loop to print from bx until 0 is reached
	mov al,[bx]  ;load what bx points into a
	inc bx       ;increase the pointer
	int 0x10     ;inturrupt to print al
	cmp al,0     ;check if the end is reached
	jne printer  ;if not loop
ret

