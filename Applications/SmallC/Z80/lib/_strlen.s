		.code
		.export	_strlen

_strlen:
		pop hl
		pop de
		push de
		push hl
		xor a
		ld b,a
		ld c,a
		ld e,l
		ld d,h
		cpir
		dec hl
		sbc hl,de
		ret
