.MODEL SMALL
.DATA
N DB 5
SUM DW 0
.CODE
MOV AX, @DATA
MOV DS, AX
XOR DI, DI
LEA BX, N
BACK:MOV AL, [BX+DI]
MOV AH, 00
ADD SUM, AX
INC DI
DEC CL
JNZ BACK
MOV AH, 4CH
INT 21H
END


