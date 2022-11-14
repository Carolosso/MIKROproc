NAME PROG1
CSEG at 0000h
	;1
	;clr P3.3
	;MOV P2,#0FFh
	
	;2
	;clr P3.5
	;MOV P2,#0
	
	;3
	;clr P3.5
	;MOV P2,#0FFh
;Petla: 
	;cpl P2.0
	;jmp Petla
	
	;4
	;clr P3.3
;Petla:
	;mov A,P2
	;cpl A
	;mov P2,A
	;jmp Petla
	
	;5
	;clr P3.3
;Petla:
	;mov A,P2
	;cpl A
	;mov P2,A
	;mov R0,#0
	;mov R1,#0
;Stop1:
	;inc R0
	;cjne R0,#200,Stop1
	;mov R0,#0
	;inc R1
	;cjne R1,#250,Stop1
	;jmp Petla
	
	;6
	MOV R0,#0
	MOV R1,#0
	MOV A,#1
	clr P3.3
	MOV P2,A
	
	Stop1:
	inc R0
	cjne R0,#200,Stop1
	mov R0,#0
	inc R1
	cjne R1,#250,Stop1
	
	MOV R7,#2
	MOV P2,R7
	MOV R0,#0
	MOV R1,#0
	Stop2:
	inc R0
	cjne R0,#200,Stop2
	mov R0,#0
	inc R1
	cjne R1,#250,Stop2
	
	
	ADD A,R7
	MOV P2,A
	Stop3:
	inc R0
	cjne R0,#200,Stop3
	mov R0,#0
	inc R1
	cjne R1,#250,Stop3

END	
