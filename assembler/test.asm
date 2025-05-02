start: NOOP ;starting the program
	LDR R1 #1
	LDR R4 #2 ;16 bits before looping
count: SUBV R4 R4 #1
	PRESENT R4 start ;if R4=0 go to start
	ADD R1 R1 ;”double” the number
	LDR R5 #120
	SSOP R5
	LDR R2 #2 ;max register size, 16 bits
time:		
	SUBV R2 R2 #1
	PRESENT R2 count ;if R2=0 go to count
	JMP time
ENDPROG
END  