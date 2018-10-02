@256
D=A
@SP
M=D
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
// pop segment LCL
@0
D=A
@LCL
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
// end pop segment LCL
($LOOP_START)
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
// push segment LCL
@0
D=A
@LCL
A=M
A=A+D
D=M
// Push D register
@SP
A=M
M=D
@SP
M=M+1
// end push segment LCL
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
// pop segment LCL
@0
D=A
@LCL
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
// end pop segment LCL
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
@$LOOP_START
D;JNE
// push segment LCL
@0
D=A
@LCL
A=M
A=A+D
D=M
// Push D register
@SP
A=M
M=D
@SP
M=M+1
// end push segment LCL
