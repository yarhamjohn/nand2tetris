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

(LOOP)
    // Reset the target
    @target
    M=0

    // Check for keyboard input
    @KBD
    D=M

    // If input then set screen to black
    @BLACK
    D;JNE

    // If no input set screen to white
    @WHITE
    D;JEQ

    // Repeat
    @LOOP
    0;JMP

(BLACK)
    // Set current 'word' to black
    @SCREEN
    D=A
    @target
    A=D+M
    M=-1

    // If at end of screen, return to LOOP
    @target
    D=M
    @8191
    D=D-A
    @LOOP
    D;JEQ

    // Increment target
    @target
    M=M+1

    // Continue to next 'word'
    @BLACK
    0;JMP

(WHITE)
    // Set current 'word' to white
    @SCREEN
    D=A
    @target
    A=D+M
    M=0

    // If at end of screen, return to LOOP
    @target
    D=M
    @8191
    D=D-A
    @LOOP
    D;JEQ

    // Increment target
    @target
    M=M+1

    // Continue to next 'word'
    @WHITE
    0;JMP
    
(END)
    @END
    0;JMP




