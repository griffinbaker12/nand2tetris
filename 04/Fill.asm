// fillUntil last word in screen
@KBD
D=A
@fillUntil
M=D-1

// init numFilled
@numFilled
M=0

(LOOP)
    // draw if there is a keypress
    @KBD
    D=M
    @DRAW      
    D;JGT

(DRAW)  
    // if no keypress, clear
    @KBD
    D=M
    @CLEAR
    D;JEQ

    @numFilled
    D=M
    @fillUntil
    D=D-M
    @REDRAW
    D;JEQ
    // put screen start in D
    @SCREEN
    D=A
    @numFilled
    A=D+M
    M=-1
    @numFilled
    M=M+1
    @LOOP
    0;JMP

(REDRAW)
    @numFilled
    D=0
    @DRAW
    0;JMP

(CLEAR)
    // if numFilled is 0, jump to clear root (and then back to main loop)
    @numFilled
    D=M
    @CLEAR_ROOT
    D;JEQ

    // else we have some clearing to do
    @SCREEN
    D=A
    @numFilled
    A=D+M
    M=0
    @numFilled
    M=M-1
    @CLEAR
    0;JMP

(CLEAR_ROOT)
    @SCREEN
    M=0
    @LOOP
    0;JMP

(INF)
    0;JMP
