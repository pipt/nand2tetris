// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/04/Fill.asm

// Runs an infinite loop that listens to the keyboard input.
// When a key is pressed (any key), the program blackens the screen,
// i.e. writes "black" in every pixel;
// the screen should remain fully black as long as the key is pressed. 
// When no key is pressed, the program clears the screen, i.e. writes
// "white" in every pixel;
// the screen should remain fully clear as long as no key is pressed.

@8192
D=A
@limit
M=D

(RESET_OFFSET)
@offset
M=0

(START)

@SCREEN
D=A
@offset
A=D+M
M=0
M=!M

@offset
M=M+1
D=M
@limit
D=D-M
@RESET_OFFSET
D;JGT

@START
0;JMP
