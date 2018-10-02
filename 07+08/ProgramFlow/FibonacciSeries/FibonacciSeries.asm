// SP=256
@256
D=A
@SP
M=D

// push segment ARG
@1
D=A
@ARG
A=M
A=A+D
D=M
// Push D register
@SP
A=M
M=D
@SP
M=M+1
// end push segment ARG
// pop offset 4
@4
D=A
@R13
M=D
// Pop to M register
@SP
M=M-1
A=M
D=M
@R13
A=M
M=D
// end pop offset 4
// push constant 0
@0
D=A
// Push D register
@SP
A=M
M=D
@SP
M=M+1
// end push constant 0
// pop segment THAT
@0
D=A
@THAT
A=M
D=A+D
@R13
M=D
// Pop to M register
@SP
M=M-1
A=M
D=M
@R13
A=M
M=D
// end pop segment THAT
// push constant 1
@1
D=A
// Push D register
@SP
A=M
M=D
@SP
M=M+1
// end push constant 1
// pop segment THAT
@1
D=A
@THAT
A=M
D=A+D
@R13
M=D
// Pop to M register
@SP
M=M-1
A=M
D=M
@R13
A=M
M=D
// end pop segment THAT
// push segment ARG
@0
D=A
@ARG
A=M
A=A+D
D=M
// Push D register
@SP
A=M
M=D
@SP
M=M+1
// end push segment ARG
// push constant 2
@2
D=A
// Push D register
@SP
A=M
M=D
@SP
M=M+1
// end push constant 2
// -
// Pop to M register
@SP
M=M-1
A=M
D=M
// Pop to M register
@SP
M=M-1
A=M
D=M-D
// Push D register
@SP
A=M
M=D
@SP
M=M+1
// end -
// pop segment ARG
@0
D=A
@ARG
A=M
D=A+D
@R13
M=D
// Pop to M register
@SP
M=M-1
A=M
D=M
@R13
A=M
M=D
// end pop segment ARG
($MAIN_LOOP_START)
// push segment ARG
@0
D=A
@ARG
A=M
A=A+D
D=M
// Push D register
@SP
A=M
M=D
@SP
M=M+1
// end push segment ARG
// Pop to M register
@SP
M=M-1
A=M
D=M
@$COMPUTE_ELEMENT
D;JNE
@$END_PROGRAM
0;JMP
($COMPUTE_ELEMENT)
// push segment THAT
@0
D=A
@THAT
A=M
A=A+D
D=M
// Push D register
@SP
A=M
M=D
@SP
M=M+1
// end push segment THAT
// push segment THAT
@1
D=A
@THAT
A=M
A=A+D
D=M
// Push D register
@SP
A=M
M=D
@SP
M=M+1
// end push segment THAT
// +
// Pop to M register
@SP
M=M-1
A=M
D=M
// Pop to M register
@SP
M=M-1
A=M
D=M+D
// Push D register
@SP
A=M
M=D
@SP
M=M+1
// end +
// pop segment THAT
@2
D=A
@THAT
A=M
D=A+D
@R13
M=D
// Pop to M register
@SP
M=M-1
A=M
D=M
@R13
A=M
M=D
// end pop segment THAT
// push offset 4
@4
D=M
// Push D register
@SP
A=M
M=D
@SP
M=M+1
// end push offset 4
// push constant 1
@1
D=A
// Push D register
@SP
A=M
M=D
@SP
M=M+1
// end push constant 1
// +
// Pop to M register
@SP
M=M-1
A=M
D=M
// Pop to M register
@SP
M=M-1
A=M
D=M+D
// Push D register
@SP
A=M
M=D
@SP
M=M+1
// end +
// pop offset 4
@4
D=A
@R13
M=D
// Pop to M register
@SP
M=M-1
A=M
D=M
@R13
A=M
M=D
// end pop offset 4
// push segment ARG
@0
D=A
@ARG
A=M
A=A+D
D=M
// Push D register
@SP
A=M
M=D
@SP
M=M+1
// end push segment ARG
// push constant 1
@1
D=A
// Push D register
@SP
A=M
M=D
@SP
M=M+1
// end push constant 1
// -
// Pop to M register
@SP
M=M-1
A=M
D=M
// Pop to M register
@SP
M=M-1
A=M
D=M-D
// Push D register
@SP
A=M
M=D
@SP
M=M+1
// end -
// pop segment ARG
@0
D=A
@ARG
A=M
D=A+D
@R13
M=D
// Pop to M register
@SP
M=M-1
A=M
D=M
@R13
A=M
M=D
// end pop segment ARG
@$MAIN_LOOP_START
0;JMP
($END_PROGRAM)
