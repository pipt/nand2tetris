@256
D=A
@SP
M=D
// push constant 111
@111
D=A
// Push D register
@SP
A=M
M=D
@SP
M=M+1
// end push constant 111
// push constant 333
@333
D=A
// Push D register
@SP
A=M
M=D
@SP
M=M+1
// end push constant 333
// push constant 888
@888
D=A
// Push D register
@SP
A=M
M=D
@SP
M=M+1
// end push constant 888
// pop offset StaticTest.vm.8
@StaticTest.vm.8
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
// end pop offset StaticTest.vm.8
// pop offset StaticTest.vm.3
@StaticTest.vm.3
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
// end pop offset StaticTest.vm.3
// pop offset StaticTest.vm.1
@StaticTest.vm.1
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
// end pop offset StaticTest.vm.1
// push offset StaticTest.vm.3
@StaticTest.vm.3
D=M
// Push D register
@SP
A=M
M=D
@SP
M=M+1
// end push offset StaticTest.vm.3
// push offset StaticTest.vm.1
@StaticTest.vm.1
D=M
// Push D register
@SP
A=M
M=D
@SP
M=M+1
// end push offset StaticTest.vm.1
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
// push offset StaticTest.vm.8
@StaticTest.vm.8
D=M
// Push D register
@SP
A=M
M=D
@SP
M=M+1
// end push offset StaticTest.vm.8
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
