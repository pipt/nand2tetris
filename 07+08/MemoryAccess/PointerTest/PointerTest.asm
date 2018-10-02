@256
D=A
@SP
M=D
// push constant 3030
@3030
D=A
// Push D register
@SP
A=M
M=D
@SP
M=M+1
// end push constant 3030
// pop offset 3
@3
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
// end pop offset 3
// push constant 3040
@3040
D=A
// Push D register
@SP
A=M
M=D
@SP
M=M+1
// end push constant 3040
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
// push constant 32
@32
D=A
// Push D register
@SP
A=M
M=D
@SP
M=M+1
// end push constant 32
// pop segment THIS
@2
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
// push constant 46
@46
D=A
// Push D register
@SP
A=M
M=D
@SP
M=M+1
// end push constant 46
// pop segment THAT
@6
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
// push offset 3
@3
D=M
// Push D register
@SP
A=M
M=D
@SP
M=M+1
// end push offset 3
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
// push segment THIS
@2
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
// push segment THAT
@6
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
