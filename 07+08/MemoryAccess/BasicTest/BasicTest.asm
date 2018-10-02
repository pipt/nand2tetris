// SP=256
@256
D=A
@SP
M=D

// push constant 10
@10
D=A
// Push D register
@SP
A=M
M=D
@SP
M=M+1
// end push constant 10
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
// push constant 21
@21
D=A
// Push D register
@SP
A=M
M=D
@SP
M=M+1
// end push constant 21
// push constant 22
@22
D=A
// Push D register
@SP
A=M
M=D
@SP
M=M+1
// end push constant 22
// pop segment ARG
@2
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
// pop segment ARG
@1
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
// push constant 36
@36
D=A
// Push D register
@SP
A=M
M=D
@SP
M=M+1
// end push constant 36
// pop segment THIS
@6
D=A
@THIS
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
// end pop segment THIS
// push constant 42
@42
D=A
// Push D register
@SP
A=M
M=D
@SP
M=M+1
// end push constant 42
// push constant 45
@45
D=A
// Push D register
@SP
A=M
M=D
@SP
M=M+1
// end push constant 45
// pop segment THAT
@5
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
// push constant 510
@510
D=A
// Push D register
@SP
A=M
M=D
@SP
M=M+1
// end push constant 510
// pop offset 11
@11
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
// end pop offset 11
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
// push segment THAT
@5
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
// push segment THIS
@6
D=A
@THIS
A=M
A=A+D
D=M
// Push D register
@SP
A=M
M=D
@SP
M=M+1
// end push segment THIS
// push segment THIS
@6
D=A
@THIS
A=M
A=A+D
D=M
// Push D register
@SP
A=M
M=D
@SP
M=M+1
// end push segment THIS
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
// push offset 11
@11
D=M
// Push D register
@SP
A=M
M=D
@SP
M=M+1
// end push offset 11
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
