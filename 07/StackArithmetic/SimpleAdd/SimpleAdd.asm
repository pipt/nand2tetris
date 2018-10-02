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
// add
// Pop to M register
@SP
M=M-1
A=M
D=M // Put first arg in D
// Pop to M register
@SP
M=M-1
A=M
D=D+M // Add second arg to D
// Push D register
@SP
A=M
M=D
@SP
M=M+1
// end add
