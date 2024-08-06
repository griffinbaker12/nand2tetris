// i = 1
// finalValue = 0
// addBy = r0
// LOOP:
// if (i - 1 == addBy) goto STOP
// finalValue = finalValue + addBy 
// i = i + 1
// goto LOOP
// END:
// R2 = finalValue

// i = 1
@i
M=1
// fv = 0
@fv
M=0
// addBy = R0
@R0
D=M
@addBy
M=D
// checkBy = R1
@R1
D=M
@checkBy
M=D
(LOOP)
// if (i > checkBy) goto STOP
@i
D=M
@checkBy
D=D-M
@END
D;JGT
// finalValue = finalValue + addBy
@addBy
D=M
@fv
M=D+M
// i = i + 1
@i
M=M+1
@LOOP
0;JMP
(END)
// R2 = sum
@fv
D=M
@R2
M=D
