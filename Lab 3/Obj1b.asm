.DATA
COUNT DB 04H
ARRAY DB 09H,10H,05H,03H  

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
    JL L2
    MOV AL,[SI]
    JMP L2
    MOV [DI], AL
    END MAIN