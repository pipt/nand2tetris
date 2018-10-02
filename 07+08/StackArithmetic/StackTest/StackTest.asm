// SP=256
@256
D=A
@SP
M=D

// push constant 17
@17
D=A
// Push D register
@SP
A=M
M=D
@SP
M=M+1
// end push constant 17
// push constant 17
@17
D=A
// Push D register
@SP
A=M
M=D
@SP
M=M+1
// end push constant 17
// eq
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
// Set top of stack to -1 (true)
@SP
A=M
M=-1
@177e4049b4040af5b60d5f390801d6e7
D;JEQ
@SP
A=M
M=0
(177e4049b4040af5b60d5f390801d6e7)
// Increment SP
@SP
M=M+1
// end eq
// push constant 17
@17
D=A
// Push D register
@SP
A=M
M=D
@SP
M=M+1
// end push constant 17
// push constant 16
@16
D=A
// Push D register
@SP
A=M
M=D
@SP
M=M+1
// end push constant 16
// eq
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
// Set top of stack to -1 (true)
@SP
A=M
M=-1
@8a71ce431abcdab8e042dd94c58d8990
D;JEQ
@SP
A=M
M=0
(8a71ce431abcdab8e042dd94c58d8990)
// Increment SP
@SP
M=M+1
// end eq
// push constant 16
@16
D=A
// Push D register
@SP
A=M
M=D
@SP
M=M+1
// end push constant 16
// push constant 17
@17
D=A
// Push D register
@SP
A=M
M=D
@SP
M=M+1
// end push constant 17
// eq
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
// Set top of stack to -1 (true)
@SP
A=M
M=-1
@2e0245214c50ba6cdc0e198ea0ea66d8
D;JEQ
@SP
A=M
M=0
(2e0245214c50ba6cdc0e198ea0ea66d8)
// Increment SP
@SP
M=M+1
// end eq
// push constant 892
@892
D=A
// Push D register
@SP
A=M
M=D
@SP
M=M+1
// end push constant 892
// push constant 891
@891
D=A
// Push D register
@SP
A=M
M=D
@SP
M=M+1
// end push constant 891
// lt
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
// Set top of stack to -1 (true)
@SP
A=M
M=-1
@b179fa16c513b13693c2cfb6086308d8
D;JLT
@SP
A=M
M=0
(b179fa16c513b13693c2cfb6086308d8)
// Increment SP
@SP
M=M+1
// end lt
// push constant 891
@891
D=A
// Push D register
@SP
A=M
M=D
@SP
M=M+1
// end push constant 891
// push constant 892
@892
D=A
// Push D register
@SP
A=M
M=D
@SP
M=M+1
// end push constant 892
// lt
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
// Set top of stack to -1 (true)
@SP
A=M
M=-1
@010c24684fda71d3bae7d5b564aa70e0
D;JLT
@SP
A=M
M=0
(010c24684fda71d3bae7d5b564aa70e0)
// Increment SP
@SP
M=M+1
// end lt
// push constant 891
@891
D=A
// Push D register
@SP
A=M
M=D
@SP
M=M+1
// end push constant 891
// push constant 891
@891
D=A
// Push D register
@SP
A=M
M=D
@SP
M=M+1
// end push constant 891
// lt
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
// Set top of stack to -1 (true)
@SP
A=M
M=-1
@8f7826aec40563d7c385fd6f4640c9e0
D;JLT
@SP
A=M
M=0
(8f7826aec40563d7c385fd6f4640c9e0)
// Increment SP
@SP
M=M+1
// end lt
// push constant 32767
@32767
D=A
// Push D register
@SP
A=M
M=D
@SP
M=M+1
// end push constant 32767
// push constant 32766
@32766
D=A
// Push D register
@SP
A=M
M=D
@SP
M=M+1
// end push constant 32766
// gt
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
// Set top of stack to -1 (true)
@SP
A=M
M=-1
@ea47dcce383da55174f1ae2a930c27a6
D;JGT
@SP
A=M
M=0
(ea47dcce383da55174f1ae2a930c27a6)
// Increment SP
@SP
M=M+1
// end gt
// push constant 32766
@32766
D=A
// Push D register
@SP
A=M
M=D
@SP
M=M+1
// end push constant 32766
// push constant 32767
@32767
D=A
// Push D register
@SP
A=M
M=D
@SP
M=M+1
// end push constant 32767
// gt
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
// Set top of stack to -1 (true)
@SP
A=M
M=-1
@cc7d85763891bcd01cb8974783c69397
D;JGT
@SP
A=M
M=0
(cc7d85763891bcd01cb8974783c69397)
// Increment SP
@SP
M=M+1
// end gt
// push constant 32766
@32766
D=A
// Push D register
@SP
A=M
M=D
@SP
M=M+1
// end push constant 32766
// push constant 32766
@32766
D=A
// Push D register
@SP
A=M
M=D
@SP
M=M+1
// end push constant 32766
// gt
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
// Set top of stack to -1 (true)
@SP
A=M
M=-1
@038faabc3db085e44435ffbe4ad87e30
D;JGT
@SP
A=M
M=0
(038faabc3db085e44435ffbe4ad87e30)
// Increment SP
@SP
M=M+1
// end gt
// push constant 57
@57
D=A
// Push D register
@SP
A=M
M=D
@SP
M=M+1
// end push constant 57
// push constant 31
@31
D=A
// Push D register
@SP
A=M
M=D
@SP
M=M+1
// end push constant 31
// push constant 53
@53
D=A
// Push D register
@SP
A=M
M=D
@SP
M=M+1
// end push constant 53
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
// push constant 112
@112
D=A
// Push D register
@SP
A=M
M=D
@SP
M=M+1
// end push constant 112
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
// -
@SP
A=M
A=A-1
M=-M
// end -
// &
// Pop to M register
@SP
M=M-1
A=M
D=M
// Pop to M register
@SP
M=M-1
A=M
D=M&D
// Push D register
@SP
A=M
M=D
@SP
M=M+1
// end &
// push constant 82
@82
D=A
// Push D register
@SP
A=M
M=D
@SP
M=M+1
// end push constant 82
// |
// Pop to M register
@SP
M=M-1
A=M
D=M
// Pop to M register
@SP
M=M-1
A=M
D=M|D
// Push D register
@SP
A=M
M=D
@SP
M=M+1
// end |
// !
@SP
A=M
A=A-1
M=!M
// end !
