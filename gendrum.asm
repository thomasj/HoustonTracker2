

genDrum					;generate kick drum sample
	ld d,1			;1
	ld a,#80		;2
	ld hl,text_mem		;3
_xlp
	ld b,d			;1
_lp
	ld (hl),a		;1
	inc hl			;1
	djnz _lp		;2
	
	inc d			;1
	sub #10			;2
	
	jr nc,_xlp		;2
	
	add a,#10		;2
	srl a			;2
	
	jr nz,_xlp		;2
	
_exit
	ld (hl),a		;1
				;23b
	
	
	
	80,40,40,20,20,20,20,10,10,10,10,10,10,10,10,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8	;1+2+4+8+16=31
	4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4			;32
	
	
	80,70,70,60,60,60,50,50,50,50,40,40,40,40,30,30,30,30,30,30,30,			;1+2+3+4+5+6 = 21
	7*20,8*10,									;15
	9*8,10*4,11*2,12*1,0								;43 = 79
								