@n
M=0
(LOOP)
@n
D=M
@R1
D=D-M
@STOP
D;JEQ
@R0
D=M
@n
// this activates the indexed reg
A=D+M
// that you set here (also makes it so that we are not overwriting i)
M=-1
@n
M=M+1
@LOOP;
0;JMP
(END)
@END
0;JMP
