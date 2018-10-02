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
@9b5fa1e33af29a3ab2882fcf5e03dbbe
D;JEQ
@SP
A=M
M=0
(9b5fa1e33af29a3ab2882fcf5e03dbbe)
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
@ed65f7e2e2594a0602494a8282fe0972
D;JEQ
@SP
A=M
M=0
(ed65f7e2e2594a0602494a8282fe0972)
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
@269ea3aa98988cf5ab887183720d6cfe
D;JEQ
@SP
A=M
M=0
(269ea3aa98988cf5ab887183720d6cfe)
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
@e56efa4e40a374a4269bdacbb10967f2
D;JLT
@SP
A=M
M=0
(e56efa4e40a374a4269bdacbb10967f2)
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
@dbfaff227d073628ab2dd7a78479291d
D;JLT
@SP
A=M
M=0
(dbfaff227d073628ab2dd7a78479291d)
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
@dcf07417a69425f93fcd4aa31e6ea49e
D;JLT
@SP
A=M
M=0
(dcf07417a69425f93fcd4aa31e6ea49e)
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
@60f50f764d9b373993c942e5b72588fc
D;JGT
@SP
A=M
M=0
(60f50f764d9b373993c942e5b72588fc)
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
@1ad46db4e395e73fb16d8a5b2bc8420f
D;JGT
@SP
A=M
M=0
(1ad46db4e395e73fb16d8a5b2bc8420f)
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
@7bea8a89fa6c7d24f522de22b1f43bb4
D;JGT
@SP
A=M
M=0
(7bea8a89fa6c7d24f522de22b1f43bb4)
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
