// 24576 is address for keyboard
(LOOP)
    @24576 
    D=M 
    @SAVE
    D;JGT
    @LOOP
    0;JMP
(SAVE)
    @24576
    D=M
    @R0
    M=D
    @LOOP
    0;JMP
