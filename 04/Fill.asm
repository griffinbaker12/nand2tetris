// get last position that we want to fill until
@KBD
D=M
@fillUntil
M=D-1
// init numFilled
@numFilled
M=0
(LOOP)
    // jump to draw if a key has been pressed  
    @KBD
    D=M 
    @DRAW
    D;JGT
    // if there is something in screen and we are not pressing kbd
    // @SCREEN
    // D=M
    // @CLEAR
    // D;JGT
    @LOOP
    0;JMP
(DRAW)
    // check if we have everything filled (meaning n = fillUntil)
    @numFilled 
    D=M
    @fillUntil
    D=D-M
    // if full, go back to loop?
    @LOOP
    D;JEQ
    // if not full, then fill up the grid...
    @SCREEN
    D=M
    @numFilled
    A=D+M
    M=-1
    @numFilled
    D=M+1
    @DRAW
    0;JMP
//(CLEAR)
    // honestly do the same thing but change all the pixels to white (up until the number we have filled)
