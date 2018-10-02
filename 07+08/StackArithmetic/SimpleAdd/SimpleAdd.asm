@256
D=A
@SP
M=D
// push constant 7
@7
D=A
// Push D register
@SP
A=M
M=D
@SP
M=M+1
// end push constant 7
// push constant 8
@8
D=A
// Push D register
@SP
A=M
M=D
@SP
M=M+1
// end push constant 8
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
