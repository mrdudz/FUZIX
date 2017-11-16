		.code
		.export _strcat

_strcat:	pop bc		;ret
		pop de		;dest
		pop hl		;src
		push hl
		push de
		push bc
		push de		; for return code
_strcat_1:	ld a,(de)
		or a
		jr z,_strcat_2
		inc de
		jr _strcat_1
_strcat_2:
		ld a,(hl)
		ld (de),a
		or a
		jr z _strcat_3
		inc hl
		inc de
		jr _strcat_2
strcat_3:	pop de
		ret
