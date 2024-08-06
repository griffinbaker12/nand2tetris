// fillUntil last word in screen
@KBD
D=A
@fillUntil
M=D-1

// init numFilled
@numFilled
M=0

(DRAW)  
    @numFilled
    D=M
    @fillUntil
    D=D-M
    @INF
    D;JEQ
    // put screen start in D
    @SCREEN
    D=A
    @numFilled
    A=D+M
    M=-1
    @numFilled
    M=M+1
    @DRAW
    0;JMP

(INF)
    0;JMP
