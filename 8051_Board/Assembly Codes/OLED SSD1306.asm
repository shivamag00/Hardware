;Ports used for I2C bus
	ORG 00H
	SDA EQU P2.1
	SCL EQU P2.2
	MOV P3, #0FFH ;Turning off LED on P3.0

;Initializing OLED Display	
	LCALL I2C_INIT
	LCALL I2C_start
	MOV A,#78H
	ACALL I2C_SEND
	ACALL DELAY
	MOV P3, #0FFH
	ACALL DELAY
	MOV A,#00H
	ACALL I2C_SEND
	ACALL DELAY
	MOV P3, #0FFH
	ACALL DELAY
	MOV A,#0AEH
	ACALL I2C_SEND
	ACALL DELAY
	MOV P3, #0FFH
	ACALL DELAY
	MOV A,#0A8H
	ACALL I2C_SEND
	ACALL DELAY
	MOV P3, #0FFH
	ACALL DELAY
	MOV A,#03FH
	ACALL I2C_SEND
	ACALL DELAY
	MOV P3, #0FFH
	ACALL DELAY
	MOV A,#0D3H
	ACALL I2C_SEND
	ACALL DELAY
	MOV P3, #0FFH
	ACALL DELAY
	MOV A,#00H
	ACALL I2C_SEND
	ACALL DELAY
	MOV P3, #0FFH
	ACALL DELAY
	MOV A,#40H
	ACALL I2C_SEND
	ACALL DELAY
	MOV P3, #0FFH
	ACALL DELAY
	MOV A,#0A1H
	ACALL I2C_SEND
	ACALL DELAY
	MOV P3, #0FFH
	ACALL DELAY
	MOV A,#0C8H
	ACALL I2C_SEND
	ACALL DELAY
	MOV P3, #0FFH
	ACALL DELAY
	MOV A,#0DAH
	ACALL I2C_SEND
	ACALL DELAY
	MOV P3, #0FFH
	ACALL DELAY
	MOV A,#12H
	ACALL I2C_SEND
	ACALL DELAY
	MOV P3, #0FFH
	ACALL DELAY
	MOV A,#81H
	ACALL I2C_SEND
	ACALL DELAY
	MOV P3, #0FFH
	ACALL DELAY
	MOV A,#0CFH
	ACALL I2C_SEND
	ACALL DELAY
	MOV P3, #0FFH
	ACALL DELAY
	MOV A,#0A4H
	ACALL I2C_SEND
	ACALL DELAY
	MOV P3, #0FFH
	ACALL DELAY
	MOV A,#0A6H
	ACALL I2C_SEND
	ACALL DELAY
	MOV P3, #0FFH
	ACALL DELAY
	MOV A,#0D5H
	ACALL I2C_SEND
	ACALL DELAY
	MOV P3, #0FFH
	ACALL DELAY
	MOV A,#80H
	ACALL I2C_SEND
	ACALL DELAY
	MOV P3, #0FFH
	ACALL DELAY
	MOV A,#8DH
	ACALL I2C_SEND
	ACALL DELAY
	MOV P3, #0FFH
	ACALL DELAY
	MOV A,#14H
	ACALL I2C_SEND
	ACALL DELAY
	MOV P3, #0FFH
	ACALL DELAY
	MOV A,#0D9H
	ACALL I2C_SEND
	ACALL DELAY
	MOV P3, #0FFH
	ACALL DELAY
	MOV A,#0F1H
	ACALL I2C_SEND
	ACALL DELAY
	MOV P3, #0FFH
	ACALL DELAY
	MOV A,#0DBH
	ACALL I2C_SEND
	ACALL DELAY
	MOV P3, #0FFH
	ACALL DELAY
	MOV A,#40H
	ACALL I2C_SEND
	ACALL DELAY
	MOV P3, #0FFH
	ACALL DELAY
	MOV A,#20H
	ACALL I2C_SEND
	ACALL DELAY
	MOV P3, #0FFH
	ACALL DELAY
	MOV A,#00H
	ACALL I2C_SEND
	ACALL DELAY
	MOV P3, #0FFH
	ACALL DELAY
	MOV A,#0AFH
	ACALL I2C_SEND
	ACALL DELAY
	MOV P3, #0FFH
	ACALL DELAY
	
	
	
	;Initializing OLED to read DATA
	LCALL I2C_stop
	LCALL I2C_start
	MOV A,#78H
	ACALL I2C_SEND
	MOV A,#00H
	ACALL I2C_SEND
	MOV A,#21H
	ACALL I2C_SEND
	MOV A,#00H
	ACALL I2C_SEND
	MOV A,#7FH
	ACALL I2C_SEND
	MOV A,#22H
	ACALL I2C_SEND
	MOV A,#00H
	ACALL I2C_SEND
	MOV A,#07H
	ACALL I2C_SEND
	LCALL I2C_stop
	
	
	;OLED reading DATA
	LCALL I2C_start
	MOV A,#78H
	ACALL I2C_SEND
	MOV A,#40H
	ACALL I2C_SEND
	
	MOV R2,#7
	AGAINS: MOV R3,#128
	HERES: MOV A,#00H
	ACALL I2C_SEND
	DJNZ R3,HERES
	DJNZ R2,AGAINS
	
	MOV A,#00H
	ACALL I2C_SEND
	;F
	MOV A,#7EH
	ACALL I2C_SEND
	MOV A,#0AH
	ACALL I2C_SEND
	MOV A,#0AH
	ACALL I2C_SEND
	MOV A,#02H
	ACALL I2C_SEND
	
	;I
	MOV A,#00H
	ACALL I2C_SEND	
	MOV A,#7EH
	ACALL I2C_SEND
	
	;N
	MOV A,#00H
	ACALL I2C_SEND	
	MOV A,#7EH
	ACALL I2C_SEND
	MOV A,#02H
	ACALL I2C_SEND
	MOV A,#02H
	ACALL I2C_SEND
	MOV A,#7EH
	ACALL I2C_SEND
	
	;A
	MOV A,#00H
	ACALL I2C_SEND	
	MOV A,#7EH
	ACALL I2C_SEND
	MOV A,#12H
	ACALL I2C_SEND
	MOV A,#12H
	ACALL I2C_SEND
	MOV A,#7EH
	ACALL I2C_SEND
	
	;L
	MOV A,#00H
	ACALL I2C_SEND	
	MOV A,#7EH
	ACALL I2C_SEND
	MOV A,#40H
	ACALL I2C_SEND
	MOV A,#40H
	ACALL I2C_SEND
	
	;L
	MOV A,#00H
	ACALL I2C_SEND	
	MOV A,#7EH
	ACALL I2C_SEND
	MOV A,#40H
	ACALL I2C_SEND
	MOV A,#40H
	ACALL I2C_SEND
	
	;Y
	MOV A,#00H
	ACALL I2C_SEND
	MOV A,#0EH
	ACALL I2C_SEND
	MOV A,#70H
	ACALL I2C_SEND
	MOV A,#0EH
	ACALL I2C_SEND
	
	;SPACES
	MOV A,#00H
	ACALL I2C_SEND
	MOV A,#00H
	ACALL I2C_SEND
	MOV A,#00H
	ACALL I2C_SEND
	
	;I
	MOV A,#00H
	ACALL I2C_SEND
	MOV A,#7EH
	ACALL I2C_SEND
	
	;T
	MOV A,#00H
	ACALL I2C_SEND	
	MOV A,#02H
	ACALL I2C_SEND
	MOV A,#02H
	ACALL I2C_SEND
	MOV A,#7EH
	ACALL I2C_SEND
	MOV A,#02H
	ACALL I2C_SEND
	MOV A,#02H
	ACALL I2C_SEND
	
	
	MOV A,#00H
	ACALL I2C_SEND
	MOV A,#00H
	ACALL I2C_SEND
	MOV A,#00H
	ACALL I2C_SEND
	
	;I
	MOV A,#00H
	ACALL I2C_SEND
	MOV A,#7EH
	ACALL I2C_SEND	
	
	;S
	MOV A,#00H
	ACALL I2C_SEND
	MOV A,#5EH
	ACALL I2C_SEND
	MOV A,#52H
	ACALL I2C_SEND
	MOV A,#52H
	ACALL I2C_SEND	
	MOV A,#72H
	ACALL I2C_SEND
	
	MOV A,#00H
	ACALL I2C_SEND
	MOV A,#00H
	ACALL I2C_SEND
	MOV A,#00H
	ACALL I2C_SEND
	
	;I
	MOV A,#00H
	ACALL I2C_SEND
	MOV A,#7EH
	ACALL I2C_SEND
	
	;N
	MOV A,#00H
	ACALL I2C_SEND	
	MOV A,#7EH
	ACALL I2C_SEND
	MOV A,#02H
	ACALL I2C_SEND
	MOV A,#02H
	ACALL I2C_SEND
	MOV A,#7EH
	ACALL I2C_SEND
	
	MOV A,#00H
	ACALL I2C_SEND
	MOV A,#00H
	ACALL I2C_SEND
	MOV A,#00H
	ACALL I2C_SEND
	
	;A
	MOV A,#00H
	ACALL I2C_SEND	
	MOV A,#7EH
	ACALL I2C_SEND
	MOV A,#12H
	ACALL I2C_SEND
	MOV A,#12H
	ACALL I2C_SEND
	MOV A,#7EH
	ACALL I2C_SEND
	
	;S
	MOV A,#00H
	ACALL I2C_SEND	
	MOV A,#5EH
	ACALL I2C_SEND
	MOV A,#52H
	ACALL I2C_SEND
	MOV A,#52H
	ACALL I2C_SEND
	MOV A,#72H
	ACALL I2C_SEND
	
	;S
	MOV A,#00H
	ACALL I2C_SEND
	MOV A,#5EH
	ACALL I2C_SEND	
	MOV A,#52H
	ACALL I2C_SEND
	MOV A,#52H
	ACALL I2C_SEND
	MOV A,#72H
	ACALL I2C_SEND
	
	;E
	MOV A,#00H
	ACALL I2C_SEND
	MOV A,#7EH
	ACALL I2C_SEND	
	MOV A,#52H
	ACALL I2C_SEND
	MOV A,#42H
	ACALL I2C_SEND
	MOV A,#42H
	ACALL I2C_SEND
	
	;M
	MOV A,#00H
	ACALL I2C_SEND	
	MOV A,#7EH
	ACALL I2C_SEND
	MOV A,#02H
	ACALL I2C_SEND
	MOV A,#0EH
	ACALL I2C_SEND
	MOV A,#02H
	ACALL I2C_SEND
	MOV A,#7EH
	ACALL I2C_SEND
	
	;M
	MOV A,#00H
	ACALL I2C_SEND
	MOV A,#7EH
	ACALL I2C_SEND
	MOV A,#02H
	ACALL I2C_SEND
	MOV A,#0EH
	ACALL I2C_SEND
	MOV A,#02H
	ACALL I2C_SEND
	MOV A,#7EH
	ACALL I2C_SEND
	
	;B
	MOV A,#00H
	ACALL I2C_SEND	
	MOV A,#7EH
	ACALL I2C_SEND
	MOV A,#52H
	ACALL I2C_SEND
	MOV A,#52H
	ACALL I2C_SEND
	MOV A,#7EH
	ACALL I2C_SEND
	
	;L
	MOV A,#00H
	ACALL I2C_SEND
	MOV A,#7EH
	ACALL I2C_SEND	
	MOV A,#40H
	ACALL I2C_SEND
	MOV A,#40H
	ACALL I2C_SEND
	
	;Y
	MOV A,#00H
	ACALL I2C_SEND
	MOV A,#0EH
	ACALL I2C_SEND
	MOV A,#70H
	ACALL I2C_SEND
	MOV A,#0EH
	ACALL I2C_SEND
	
	MOV A,#00H
	ACALL I2C_SEND
	MOV A,#00H
	ACALL I2C_SEND
	MOV A,#00H
	ACALL I2C_SEND
	MOV A,#00H
	ACALL I2C_SEND
	MOV A,#00H
	ACALL I2C_SEND
	MOV A,#00H
	ACALL I2C_SEND

	;SMILEY
	MOV A,#22H
	ACALL I2C_SEND
	MOV A,#22H
	ACALL I2C_SEND
	MOV A,#00H
	ACALL I2C_SEND
	MOV A,#00H
	ACALL I2C_SEND
	MOV A,#82H
	ACALL I2C_SEND
	MOV A,#44H
	ACALL I2C_SEND
	MOV A,#28H
	ACALL I2C_SEND
	MOV A,#10H
	ACALL I2C_SEND

	MOV A,#00H
	ACALL I2C_SEND
	MOV A,#00H
	ACALL I2C_SEND
	MOV A,#00H
	ACALL I2C_SEND
	MOV A,#00H
	ACALL I2C_SEND
	MOV A,#00H
	ACALL I2C_SEND
	MOV A,#00H
	ACALL I2C_SEND
	MOV A,#00H
	ACALL I2C_SEND
	
	LCALL I2C_stop
	MOV P3,#0FFH 	;LED OFF
	
	WAIT: SJMP WAIT	;CODE ENDS
		
		

;Initializing the I2C Bus
I2C_INIT:
	RET
	
;Creating the start condition
I2C_start:
	CLR SDA
	SETB SDA
	SETB SCL
	SETB SCL
	CLR SDA
	CLR SCL
	RET

;Creating the restart condition
I2C_REstart:
	CLR SCL
	SETB SDA
	SETB SCL
	CLR SDA
	RET

;Creating the stop condition
I2C_stop:
	CLR SCL
	CLR SDA
	SETB SCL
	SETB SDA
	RET
	
;Creating the send AND receive acknowledge condition
I2C_SEND:
	MOV R6, #08;
	REP:
		CLR SCL
		RLC A
		MOV SDA, C
		SETB SCL
		DJNZ R6, REP
	CLR SCL
	SETB SDA
	SETB SCL
	WAIT1:	
		MOV C, SDA
		JC WAIT1
	CLR A
	RLC A
	MOV P3,A
	CLR SCL
	RET

;Delay of approx 2 seconds
DELAY:
	MOV R2,#200
	AGAIN: MOV R3,#250
	HERE: NOP
		NOP
		DJNZ R3,HERE
		DJNZ R2,AGAIN
		RET
END