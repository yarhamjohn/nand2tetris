// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/04/Mult.asm

// Multiplies R0 and R1 and stores the result in R2.
// (R0, R1, R2 refer to RAM[0], RAM[1], and RAM[2], respectively.)
//
// This program only needs to handle arguments that satisfy
// R0 >= 0, R1 >= 0, and R0*R1 < 32768.

// Initialize variables
@counter
M=0
@sum
M=0

// Perform multiply by repeatedly adding
(LOOP)
    // if counter = R1 goto STOP
    @R1
    D=M
    @counter
    D=D-M
    @STOP
    D;JEQ

    // Add R0 to sum
    @R0
    D=M
    @sum
    M=D+M

    // increment counter
    @counter
    M=M+1

    // goto LOOP
    @LOOP
    0;JMP

// set R2 to the sum
(STOP)
    @sum
    D=M
    @R2
    M=D

// End program
(END)
    @END
    0;JMP