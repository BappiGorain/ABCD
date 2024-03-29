.DATA
COUNT DB 04H
ARRAY DB 09H,10H,05H,03H
RES DB 0    

.CODE
MAIN PROC
    MOV AX, DATA
    MOV DS, AX
    MOV CL, COUNT
    LEA SI, ARRAY
    MOV AL, [SI]
    L2: DEC CL
    JZ L1
    INC SI
    CMP AL, [SI]
    JNL L2
    MOV AL,[SI]
    JMP L2
    L1: LEA DI, RES
    MOV [DI], AL
    END MAIN