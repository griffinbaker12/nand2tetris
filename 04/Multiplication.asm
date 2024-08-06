// check if R0 is 0
@R0
D=M
@ZERO_RESULT
D;JEQ

// check if R1 is 0
@R1
D=M
@ZERO_RESULT
D;JEQ

// initialize variables (
// i = 1,
// fv = 0,
// addBy = R0,
// checkBy = R1
// )
@i
M=1
@fv
M=0
@R0
D=M
@addBy
M=D
@R1
D=M
@checkBy
M=D

(LOOP)
    // jump to STOP if i > checkBy
    @i
    D=M
    @checkBy
    D=D-M
    @STOP
    D;JGT
    // fv = fv + addBy
    @addBy
    D=M
    @fv
    M=D+M
    // i = i + 1
    @i
    M=M+1
    // run it back
    @LOOP
    0;JMP

// R2 = fv
(STOP)
    @fv
    D=M
    @R2
    M=D

// return 0 if one of inputs was 0
(ZERO_RESULT)
    @R2
    M=0

// infinite loop to stabilize pc
(END)
    @END
    0;JMP
