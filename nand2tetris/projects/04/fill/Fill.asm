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

@target
M=0

@colour
M=0

(LOOP)
    // Reset the target
    @target
    M=0

    // Check for keyboard input
    @KBD
    D=M

    // If input then set screen to black
    @colour
    M=-1
    @WRITE
    D;JNE

    // If no input set screen to white
    @colour
    M=0
    @WRITE
    D;JEQ

    // Repeat
    @LOOP
    0;JMP

(WRITE)
    // Save screen address to D
    @SCREEN
    D=A

    // Get target address for word
    @target
    D=D+M

    // Save target address
    @R0
    M=D

    // Read required colour
    @colour
    D=M

    // Set target address to required colour
    @R0
    A=M
    M=D

    // Retrieve target address
    @target
    D=M

    // If at end of screen (8192 - 1)
    @8191
    D=D-A

    // Jump back to main loop
    @LOOP
    D;JEQ

    // Otherwise, increment target
    @target
    M=M+1

    // Continue to next 'word'
    @WRITE
    0;JMP

(END)
    @END
    0;JMP




