// Initialise SP
  @256
  D=A
  @SP
  M=D
// call Sys.init 0
// push return address onto stack
  @Sys.init$ret.0
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's LCL to the stack
  @LCL
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's ARG to the stack
  @ARG
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's THIS to the stack
  @THIS
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's THAT to the stack
  @THAT
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// set the callee ARG to point at the first arg passed to the function
  @SP
  D=M
  @5
  D=D-A
  @0
  D=D-A
  @ARG
  M=D
// set the callee LCL point at the top of the stack
  @SP
  D=M
  @LCL
  M=D
// goto Sys.init
  @Sys.init
  0;JMP
// create return address label
(Sys.init$ret.0)
// function Array.new 0
  (Array.new)

// push ARG 0
  @0
  D=A
  @ARG
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 0
  @0
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// gt
  @SP
  AM=M-1
  D=M
  A=A-1
  D=M-D
  @TRUE3
  D;JGT
  @SP
  A=M-1
  M=0
  @CONTINUE3
  0;JMP
(TRUE3)
  @SP
  A=M-1
  M=-1
(CONTINUE3)

// not
  @SP
  A=M-1
  M=!M

// if-goto IF_TRUE0
  @SP
  AM=M-1
  D=M
  @IF_TRUE0
  D;JNE

// goto IF_FALSE0
  @IF_FALSE0
  0;JMP

// label IF_TRUE0
  (IF_TRUE0)

// push constant 2
  @2
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// call Sys.error 1
// push return address onto stack
  @Sys.error$ret.0
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's LCL to the stack
  @LCL
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's ARG to the stack
  @ARG
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's THIS to the stack
  @THIS
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's THAT to the stack
  @THAT
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// set the callee ARG to point at the first arg passed to the function
  @SP
  D=M
  @5
  D=D-A
  @1
  D=D-A
  @ARG
  M=D
// set the callee LCL point at the top of the stack
  @SP
  D=M
  @LCL
  M=D
// goto Sys.error
  @Sys.error
  0;JMP
// create return address label
(Sys.error$ret.0)

// pop TEMP 0
  @5
  D=A
  @TEMP
  D=M+D
  @R13
  M=D
  @SP
  AM=M-1
  D=M
  @R13
  A=M
  M=D

// label IF_FALSE0
  (IF_FALSE0)

// push ARG 0
  @0
  D=A
  @ARG
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// call Memory.alloc 1
// push return address onto stack
  @Memory.alloc$ret.0
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's LCL to the stack
  @LCL
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's ARG to the stack
  @ARG
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's THIS to the stack
  @THIS
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's THAT to the stack
  @THAT
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// set the callee ARG to point at the first arg passed to the function
  @SP
  D=M
  @5
  D=D-A
  @1
  D=D-A
  @ARG
  M=D
// set the callee LCL point at the top of the stack
  @SP
  D=M
  @LCL
  M=D
// goto Memory.alloc
  @Memory.alloc
  0;JMP
// create return address label
(Memory.alloc$ret.0)

// return
// Store the start of the local stack (i.e. 'frame') in a temp variable
  @LCL
  D=M
  @R13
  M=D
// Store the return address in a temp variable
  @5
  A=D-A
  D=M
  @R14
  M=D
// Store the return value in the first argument (i.e. top of caller stack)
  @SP
  AM=M-1
  D=M
  @ARG
  A=M
  M=D
// Restore the caller's stack pointer (one after the return value)
  @ARG
  D=M+1
  @SP
  M=D
// Restore the caller's THAT segment
  @R13
  AM=M-1
  D=M
  @THAT
  M=D
// Restore the caller's THIS segment
  @R13
  AM=M-1
  D=M
  @THIS
  M=D
// Restore the caller's ARG segment
  @R13
  AM=M-1
  D=M
  @ARG
  M=D
// Restore the caller's LCL segment
  @R13
  AM=M-1
  D=M
  @LCL
  M=D
// Jump to the return address
  @R14
  A=M
  0;JMP

// function Array.dispose 0
  (Array.dispose)

// push ARG 0
  @0
  D=A
  @ARG
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// pop pointer 0
  @SP
  AM=M-1
  D=M
  @THIS
  M=D

// push pointer 0
  @THIS
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// call Memory.deAlloc 1
// push return address onto stack
  @Memory.deAlloc$ret.0
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's LCL to the stack
  @LCL
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's ARG to the stack
  @ARG
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's THIS to the stack
  @THIS
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's THAT to the stack
  @THAT
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// set the callee ARG to point at the first arg passed to the function
  @SP
  D=M
  @5
  D=D-A
  @1
  D=D-A
  @ARG
  M=D
// set the callee LCL point at the top of the stack
  @SP
  D=M
  @LCL
  M=D
// goto Memory.deAlloc
  @Memory.deAlloc
  0;JMP
// create return address label
(Memory.deAlloc$ret.0)

// pop TEMP 0
  @5
  D=A
  @TEMP
  D=M+D
  @R13
  M=D
  @SP
  AM=M-1
  D=M
  @R13
  A=M
  M=D

// push constant 0
  @0
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// return
// Store the start of the local stack (i.e. 'frame') in a temp variable
  @LCL
  D=M
  @R13
  M=D
// Store the return address in a temp variable
  @5
  A=D-A
  D=M
  @R14
  M=D
// Store the return value in the first argument (i.e. top of caller stack)
  @SP
  AM=M-1
  D=M
  @ARG
  A=M
  M=D
// Restore the caller's stack pointer (one after the return value)
  @ARG
  D=M+1
  @SP
  M=D
// Restore the caller's THAT segment
  @R13
  AM=M-1
  D=M
  @THAT
  M=D
// Restore the caller's THIS segment
  @R13
  AM=M-1
  D=M
  @THIS
  M=D
// Restore the caller's ARG segment
  @R13
  AM=M-1
  D=M
  @ARG
  M=D
// Restore the caller's LCL segment
  @R13
  AM=M-1
  D=M
  @LCL
  M=D
// Jump to the return address
  @R14
  A=M
  0;JMP

// function Keyboard.init 0
  (Keyboard.init)

// push constant 0
  @0
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// return
// Store the start of the local stack (i.e. 'frame') in a temp variable
  @LCL
  D=M
  @R13
  M=D
// Store the return address in a temp variable
  @5
  A=D-A
  D=M
  @R14
  M=D
// Store the return value in the first argument (i.e. top of caller stack)
  @SP
  AM=M-1
  D=M
  @ARG
  A=M
  M=D
// Restore the caller's stack pointer (one after the return value)
  @ARG
  D=M+1
  @SP
  M=D
// Restore the caller's THAT segment
  @R13
  AM=M-1
  D=M
  @THAT
  M=D
// Restore the caller's THIS segment
  @R13
  AM=M-1
  D=M
  @THIS
  M=D
// Restore the caller's ARG segment
  @R13
  AM=M-1
  D=M
  @ARG
  M=D
// Restore the caller's LCL segment
  @R13
  AM=M-1
  D=M
  @LCL
  M=D
// Jump to the return address
  @R14
  A=M
  0;JMP

// function Keyboard.keyPressed 0
  (Keyboard.keyPressed)

// push constant 24576
  @24576
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// call Memory.peek 1
// push return address onto stack
  @Memory.peek$ret.0
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's LCL to the stack
  @LCL
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's ARG to the stack
  @ARG
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's THIS to the stack
  @THIS
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's THAT to the stack
  @THAT
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// set the callee ARG to point at the first arg passed to the function
  @SP
  D=M
  @5
  D=D-A
  @1
  D=D-A
  @ARG
  M=D
// set the callee LCL point at the top of the stack
  @SP
  D=M
  @LCL
  M=D
// goto Memory.peek
  @Memory.peek
  0;JMP
// create return address label
(Memory.peek$ret.0)

// return
// Store the start of the local stack (i.e. 'frame') in a temp variable
  @LCL
  D=M
  @R13
  M=D
// Store the return address in a temp variable
  @5
  A=D-A
  D=M
  @R14
  M=D
// Store the return value in the first argument (i.e. top of caller stack)
  @SP
  AM=M-1
  D=M
  @ARG
  A=M
  M=D
// Restore the caller's stack pointer (one after the return value)
  @ARG
  D=M+1
  @SP
  M=D
// Restore the caller's THAT segment
  @R13
  AM=M-1
  D=M
  @THAT
  M=D
// Restore the caller's THIS segment
  @R13
  AM=M-1
  D=M
  @THIS
  M=D
// Restore the caller's ARG segment
  @R13
  AM=M-1
  D=M
  @ARG
  M=D
// Restore the caller's LCL segment
  @R13
  AM=M-1
  D=M
  @LCL
  M=D
// Jump to the return address
  @R14
  A=M
  0;JMP

// function Keyboard.readChar 2
  (Keyboard.readChar)
  @SP
  A=M
  M=0
  @SP
  M=M+1
  @SP
  A=M
  M=0
  @SP
  M=M+1

// push constant 0
  @0
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// call Output.printChar 1
// push return address onto stack
  @Output.printChar$ret.0
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's LCL to the stack
  @LCL
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's ARG to the stack
  @ARG
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's THIS to the stack
  @THIS
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's THAT to the stack
  @THAT
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// set the callee ARG to point at the first arg passed to the function
  @SP
  D=M
  @5
  D=D-A
  @1
  D=D-A
  @ARG
  M=D
// set the callee LCL point at the top of the stack
  @SP
  D=M
  @LCL
  M=D
// goto Output.printChar
  @Output.printChar
  0;JMP
// create return address label
(Output.printChar$ret.0)

// pop TEMP 0
  @5
  D=A
  @TEMP
  D=M+D
  @R13
  M=D
  @SP
  AM=M-1
  D=M
  @R13
  A=M
  M=D

// label WHILE_EXP0
  (WHILE_EXP0)

// push LCL 1
  @1
  D=A
  @LCL
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 0
  @0
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// eq
  @SP
  AM=M-1
  D=M
  A=A-1
  D=M-D
  @TRUE37
  D;JEQ
  @SP
  A=M-1
  M=0
  @CONTINUE37
  0;JMP
(TRUE37)
  @SP
  A=M-1
  M=-1
(CONTINUE37)

// push LCL 0
  @0
  D=A
  @LCL
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 0
  @0
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// gt
  @SP
  AM=M-1
  D=M
  A=A-1
  D=M-D
  @TRUE40
  D;JGT
  @SP
  A=M-1
  M=0
  @CONTINUE40
  0;JMP
(TRUE40)
  @SP
  A=M-1
  M=-1
(CONTINUE40)

// or
  @SP
  AM=M-1
  D=M
  A=A-1
  M=M|D

// not
  @SP
  A=M-1
  M=!M

// if-goto WHILE_END0
  @SP
  AM=M-1
  D=M
  @WHILE_END0
  D;JNE

// call Keyboard.keyPressed 0
// push return address onto stack
  @Keyboard.keyPressed$ret.0
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's LCL to the stack
  @LCL
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's ARG to the stack
  @ARG
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's THIS to the stack
  @THIS
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's THAT to the stack
  @THAT
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// set the callee ARG to point at the first arg passed to the function
  @SP
  D=M
  @5
  D=D-A
  @0
  D=D-A
  @ARG
  M=D
// set the callee LCL point at the top of the stack
  @SP
  D=M
  @LCL
  M=D
// goto Keyboard.keyPressed
  @Keyboard.keyPressed
  0;JMP
// create return address label
(Keyboard.keyPressed$ret.0)

// pop LCL 0
  @0
  D=A
  @LCL
  D=M+D
  @R13
  M=D
  @SP
  AM=M-1
  D=M
  @R13
  A=M
  M=D

// push LCL 0
  @0
  D=A
  @LCL
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 0
  @0
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// gt
  @SP
  AM=M-1
  D=M
  A=A-1
  D=M-D
  @TRUE48
  D;JGT
  @SP
  A=M-1
  M=0
  @CONTINUE48
  0;JMP
(TRUE48)
  @SP
  A=M-1
  M=-1
(CONTINUE48)

// if-goto IF_TRUE0
  @SP
  AM=M-1
  D=M
  @IF_TRUE0
  D;JNE

// goto IF_FALSE0
  @IF_FALSE0
  0;JMP

// label IF_TRUE0
  (IF_TRUE0)

// push LCL 0
  @0
  D=A
  @LCL
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// pop LCL 1
  @1
  D=A
  @LCL
  D=M+D
  @R13
  M=D
  @SP
  AM=M-1
  D=M
  @R13
  A=M
  M=D

// label IF_FALSE0
  (IF_FALSE0)

// goto WHILE_EXP0
  @WHILE_EXP0
  0;JMP

// label WHILE_END0
  (WHILE_END0)

// call String.backSpace 0
// push return address onto stack
  @String.backSpace$ret.0
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's LCL to the stack
  @LCL
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's ARG to the stack
  @ARG
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's THIS to the stack
  @THIS
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's THAT to the stack
  @THAT
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// set the callee ARG to point at the first arg passed to the function
  @SP
  D=M
  @5
  D=D-A
  @0
  D=D-A
  @ARG
  M=D
// set the callee LCL point at the top of the stack
  @SP
  D=M
  @LCL
  M=D
// goto String.backSpace
  @String.backSpace
  0;JMP
// create return address label
(String.backSpace$ret.0)

// call Output.printChar 1
// push return address onto stack
  @Output.printChar$ret.1
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's LCL to the stack
  @LCL
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's ARG to the stack
  @ARG
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's THIS to the stack
  @THIS
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's THAT to the stack
  @THAT
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// set the callee ARG to point at the first arg passed to the function
  @SP
  D=M
  @5
  D=D-A
  @1
  D=D-A
  @ARG
  M=D
// set the callee LCL point at the top of the stack
  @SP
  D=M
  @LCL
  M=D
// goto Output.printChar
  @Output.printChar
  0;JMP
// create return address label
(Output.printChar$ret.1)

// pop TEMP 0
  @5
  D=A
  @TEMP
  D=M+D
  @R13
  M=D
  @SP
  AM=M-1
  D=M
  @R13
  A=M
  M=D

// push LCL 1
  @1
  D=A
  @LCL
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// call Output.printChar 1
// push return address onto stack
  @Output.printChar$ret.2
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's LCL to the stack
  @LCL
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's ARG to the stack
  @ARG
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's THIS to the stack
  @THIS
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's THAT to the stack
  @THAT
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// set the callee ARG to point at the first arg passed to the function
  @SP
  D=M
  @5
  D=D-A
  @1
  D=D-A
  @ARG
  M=D
// set the callee LCL point at the top of the stack
  @SP
  D=M
  @LCL
  M=D
// goto Output.printChar
  @Output.printChar
  0;JMP
// create return address label
(Output.printChar$ret.2)

// pop TEMP 0
  @5
  D=A
  @TEMP
  D=M+D
  @R13
  M=D
  @SP
  AM=M-1
  D=M
  @R13
  A=M
  M=D

// push LCL 1
  @1
  D=A
  @LCL
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// return
// Store the start of the local stack (i.e. 'frame') in a temp variable
  @LCL
  D=M
  @R13
  M=D
// Store the return address in a temp variable
  @5
  A=D-A
  D=M
  @R14
  M=D
// Store the return value in the first argument (i.e. top of caller stack)
  @SP
  AM=M-1
  D=M
  @ARG
  A=M
  M=D
// Restore the caller's stack pointer (one after the return value)
  @ARG
  D=M+1
  @SP
  M=D
// Restore the caller's THAT segment
  @R13
  AM=M-1
  D=M
  @THAT
  M=D
// Restore the caller's THIS segment
  @R13
  AM=M-1
  D=M
  @THIS
  M=D
// Restore the caller's ARG segment
  @R13
  AM=M-1
  D=M
  @ARG
  M=D
// Restore the caller's LCL segment
  @R13
  AM=M-1
  D=M
  @LCL
  M=D
// Jump to the return address
  @R14
  A=M
  0;JMP

// function Keyboard.readLine 5
  (Keyboard.readLine)
  @SP
  A=M
  M=0
  @SP
  M=M+1
  @SP
  A=M
  M=0
  @SP
  M=M+1
  @SP
  A=M
  M=0
  @SP
  M=M+1
  @SP
  A=M
  M=0
  @SP
  M=M+1
  @SP
  A=M
  M=0
  @SP
  M=M+1

// push constant 80
  @80
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// call String.new 1
// push return address onto stack
  @String.new$ret.0
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's LCL to the stack
  @LCL
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's ARG to the stack
  @ARG
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's THIS to the stack
  @THIS
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's THAT to the stack
  @THAT
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// set the callee ARG to point at the first arg passed to the function
  @SP
  D=M
  @5
  D=D-A
  @1
  D=D-A
  @ARG
  M=D
// set the callee LCL point at the top of the stack
  @SP
  D=M
  @LCL
  M=D
// goto String.new
  @String.new
  0;JMP
// create return address label
(String.new$ret.0)

// pop LCL 3
  @3
  D=A
  @LCL
  D=M+D
  @R13
  M=D
  @SP
  AM=M-1
  D=M
  @R13
  A=M
  M=D

// push ARG 0
  @0
  D=A
  @ARG
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// call Output.printString 1
// push return address onto stack
  @Output.printString$ret.0
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's LCL to the stack
  @LCL
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's ARG to the stack
  @ARG
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's THIS to the stack
  @THIS
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's THAT to the stack
  @THAT
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// set the callee ARG to point at the first arg passed to the function
  @SP
  D=M
  @5
  D=D-A
  @1
  D=D-A
  @ARG
  M=D
// set the callee LCL point at the top of the stack
  @SP
  D=M
  @LCL
  M=D
// goto Output.printString
  @Output.printString
  0;JMP
// create return address label
(Output.printString$ret.0)

// pop TEMP 0
  @5
  D=A
  @TEMP
  D=M+D
  @R13
  M=D
  @SP
  AM=M-1
  D=M
  @R13
  A=M
  M=D

// call String.newLine 0
// push return address onto stack
  @String.newLine$ret.0
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's LCL to the stack
  @LCL
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's ARG to the stack
  @ARG
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's THIS to the stack
  @THIS
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's THAT to the stack
  @THAT
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// set the callee ARG to point at the first arg passed to the function
  @SP
  D=M
  @5
  D=D-A
  @0
  D=D-A
  @ARG
  M=D
// set the callee LCL point at the top of the stack
  @SP
  D=M
  @LCL
  M=D
// goto String.newLine
  @String.newLine
  0;JMP
// create return address label
(String.newLine$ret.0)

// pop LCL 1
  @1
  D=A
  @LCL
  D=M+D
  @R13
  M=D
  @SP
  AM=M-1
  D=M
  @R13
  A=M
  M=D

// call String.backSpace 0
// push return address onto stack
  @String.backSpace$ret.1
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's LCL to the stack
  @LCL
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's ARG to the stack
  @ARG
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's THIS to the stack
  @THIS
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's THAT to the stack
  @THAT
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// set the callee ARG to point at the first arg passed to the function
  @SP
  D=M
  @5
  D=D-A
  @0
  D=D-A
  @ARG
  M=D
// set the callee LCL point at the top of the stack
  @SP
  D=M
  @LCL
  M=D
// goto String.backSpace
  @String.backSpace
  0;JMP
// create return address label
(String.backSpace$ret.1)

// pop LCL 2
  @2
  D=A
  @LCL
  D=M+D
  @R13
  M=D
  @SP
  AM=M-1
  D=M
  @R13
  A=M
  M=D

// label WHILE_EXP0
  (WHILE_EXP0)

// push LCL 4
  @4
  D=A
  @LCL
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// not
  @SP
  A=M-1
  M=!M

// not
  @SP
  A=M-1
  M=!M

// if-goto WHILE_END0
  @SP
  AM=M-1
  D=M
  @WHILE_END0
  D;JNE

// call Keyboard.readChar 0
// push return address onto stack
  @Keyboard.readChar$ret.0
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's LCL to the stack
  @LCL
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's ARG to the stack
  @ARG
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's THIS to the stack
  @THIS
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's THAT to the stack
  @THAT
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// set the callee ARG to point at the first arg passed to the function
  @SP
  D=M
  @5
  D=D-A
  @0
  D=D-A
  @ARG
  M=D
// set the callee LCL point at the top of the stack
  @SP
  D=M
  @LCL
  M=D
// goto Keyboard.readChar
  @Keyboard.readChar
  0;JMP
// create return address label
(Keyboard.readChar$ret.0)

// pop LCL 0
  @0
  D=A
  @LCL
  D=M+D
  @R13
  M=D
  @SP
  AM=M-1
  D=M
  @R13
  A=M
  M=D

// push LCL 0
  @0
  D=A
  @LCL
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push LCL 1
  @1
  D=A
  @LCL
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// eq
  @SP
  AM=M-1
  D=M
  A=A-1
  D=M-D
  @TRUE85
  D;JEQ
  @SP
  A=M-1
  M=0
  @CONTINUE85
  0;JMP
(TRUE85)
  @SP
  A=M-1
  M=-1
(CONTINUE85)

// pop LCL 4
  @4
  D=A
  @LCL
  D=M+D
  @R13
  M=D
  @SP
  AM=M-1
  D=M
  @R13
  A=M
  M=D

// push LCL 4
  @4
  D=A
  @LCL
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// not
  @SP
  A=M-1
  M=!M

// if-goto IF_TRUE0
  @SP
  AM=M-1
  D=M
  @IF_TRUE0
  D;JNE

// goto IF_FALSE0
  @IF_FALSE0
  0;JMP

// label IF_TRUE0
  (IF_TRUE0)

// push LCL 0
  @0
  D=A
  @LCL
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push LCL 2
  @2
  D=A
  @LCL
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// eq
  @SP
  AM=M-1
  D=M
  A=A-1
  D=M-D
  @TRUE94
  D;JEQ
  @SP
  A=M-1
  M=0
  @CONTINUE94
  0;JMP
(TRUE94)
  @SP
  A=M-1
  M=-1
(CONTINUE94)

// if-goto IF_TRUE1
  @SP
  AM=M-1
  D=M
  @IF_TRUE1
  D;JNE

// goto IF_FALSE1
  @IF_FALSE1
  0;JMP

// label IF_TRUE1
  (IF_TRUE1)

// push LCL 3
  @3
  D=A
  @LCL
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// call String.eraseLastChar 1
// push return address onto stack
  @String.eraseLastChar$ret.0
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's LCL to the stack
  @LCL
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's ARG to the stack
  @ARG
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's THIS to the stack
  @THIS
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's THAT to the stack
  @THAT
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// set the callee ARG to point at the first arg passed to the function
  @SP
  D=M
  @5
  D=D-A
  @1
  D=D-A
  @ARG
  M=D
// set the callee LCL point at the top of the stack
  @SP
  D=M
  @LCL
  M=D
// goto String.eraseLastChar
  @String.eraseLastChar
  0;JMP
// create return address label
(String.eraseLastChar$ret.0)

// pop TEMP 0
  @5
  D=A
  @TEMP
  D=M+D
  @R13
  M=D
  @SP
  AM=M-1
  D=M
  @R13
  A=M
  M=D

// goto IF_END1
  @IF_END1
  0;JMP

// label IF_FALSE1
  (IF_FALSE1)

// push LCL 3
  @3
  D=A
  @LCL
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push LCL 0
  @0
  D=A
  @LCL
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// call String.appendChar 2
// push return address onto stack
  @String.appendChar$ret.0
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's LCL to the stack
  @LCL
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's ARG to the stack
  @ARG
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's THIS to the stack
  @THIS
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's THAT to the stack
  @THAT
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// set the callee ARG to point at the first arg passed to the function
  @SP
  D=M
  @5
  D=D-A
  @2
  D=D-A
  @ARG
  M=D
// set the callee LCL point at the top of the stack
  @SP
  D=M
  @LCL
  M=D
// goto String.appendChar
  @String.appendChar
  0;JMP
// create return address label
(String.appendChar$ret.0)

// pop LCL 3
  @3
  D=A
  @LCL
  D=M+D
  @R13
  M=D
  @SP
  AM=M-1
  D=M
  @R13
  A=M
  M=D

// label IF_END1
  (IF_END1)

// label IF_FALSE0
  (IF_FALSE0)

// goto WHILE_EXP0
  @WHILE_EXP0
  0;JMP

// label WHILE_END0
  (WHILE_END0)

// push LCL 3
  @3
  D=A
  @LCL
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// return
// Store the start of the local stack (i.e. 'frame') in a temp variable
  @LCL
  D=M
  @R13
  M=D
// Store the return address in a temp variable
  @5
  A=D-A
  D=M
  @R14
  M=D
// Store the return value in the first argument (i.e. top of caller stack)
  @SP
  AM=M-1
  D=M
  @ARG
  A=M
  M=D
// Restore the caller's stack pointer (one after the return value)
  @ARG
  D=M+1
  @SP
  M=D
// Restore the caller's THAT segment
  @R13
  AM=M-1
  D=M
  @THAT
  M=D
// Restore the caller's THIS segment
  @R13
  AM=M-1
  D=M
  @THIS
  M=D
// Restore the caller's ARG segment
  @R13
  AM=M-1
  D=M
  @ARG
  M=D
// Restore the caller's LCL segment
  @R13
  AM=M-1
  D=M
  @LCL
  M=D
// Jump to the return address
  @R14
  A=M
  0;JMP

// function Keyboard.readInt 2
  (Keyboard.readInt)
  @SP
  A=M
  M=0
  @SP
  M=M+1
  @SP
  A=M
  M=0
  @SP
  M=M+1

// push ARG 0
  @0
  D=A
  @ARG
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// call Keyboard.readLine 1
// push return address onto stack
  @Keyboard.readLine$ret.0
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's LCL to the stack
  @LCL
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's ARG to the stack
  @ARG
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's THIS to the stack
  @THIS
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's THAT to the stack
  @THAT
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// set the callee ARG to point at the first arg passed to the function
  @SP
  D=M
  @5
  D=D-A
  @1
  D=D-A
  @ARG
  M=D
// set the callee LCL point at the top of the stack
  @SP
  D=M
  @LCL
  M=D
// goto Keyboard.readLine
  @Keyboard.readLine
  0;JMP
// create return address label
(Keyboard.readLine$ret.0)

// pop LCL 0
  @0
  D=A
  @LCL
  D=M+D
  @R13
  M=D
  @SP
  AM=M-1
  D=M
  @R13
  A=M
  M=D

// push LCL 0
  @0
  D=A
  @LCL
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// call String.intValue 1
// push return address onto stack
  @String.intValue$ret.0
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's LCL to the stack
  @LCL
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's ARG to the stack
  @ARG
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's THIS to the stack
  @THIS
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's THAT to the stack
  @THAT
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// set the callee ARG to point at the first arg passed to the function
  @SP
  D=M
  @5
  D=D-A
  @1
  D=D-A
  @ARG
  M=D
// set the callee LCL point at the top of the stack
  @SP
  D=M
  @LCL
  M=D
// goto String.intValue
  @String.intValue
  0;JMP
// create return address label
(String.intValue$ret.0)

// pop LCL 1
  @1
  D=A
  @LCL
  D=M+D
  @R13
  M=D
  @SP
  AM=M-1
  D=M
  @R13
  A=M
  M=D

// push LCL 0
  @0
  D=A
  @LCL
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// call String.dispose 1
// push return address onto stack
  @String.dispose$ret.0
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's LCL to the stack
  @LCL
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's ARG to the stack
  @ARG
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's THIS to the stack
  @THIS
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's THAT to the stack
  @THAT
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// set the callee ARG to point at the first arg passed to the function
  @SP
  D=M
  @5
  D=D-A
  @1
  D=D-A
  @ARG
  M=D
// set the callee LCL point at the top of the stack
  @SP
  D=M
  @LCL
  M=D
// goto String.dispose
  @String.dispose
  0;JMP
// create return address label
(String.dispose$ret.0)

// pop TEMP 0
  @5
  D=A
  @TEMP
  D=M+D
  @R13
  M=D
  @SP
  AM=M-1
  D=M
  @R13
  A=M
  M=D

// push LCL 1
  @1
  D=A
  @LCL
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// return
// Store the start of the local stack (i.e. 'frame') in a temp variable
  @LCL
  D=M
  @R13
  M=D
// Store the return address in a temp variable
  @5
  A=D-A
  D=M
  @R14
  M=D
// Store the return value in the first argument (i.e. top of caller stack)
  @SP
  AM=M-1
  D=M
  @ARG
  A=M
  M=D
// Restore the caller's stack pointer (one after the return value)
  @ARG
  D=M+1
  @SP
  M=D
// Restore the caller's THAT segment
  @R13
  AM=M-1
  D=M
  @THAT
  M=D
// Restore the caller's THIS segment
  @R13
  AM=M-1
  D=M
  @THIS
  M=D
// Restore the caller's ARG segment
  @R13
  AM=M-1
  D=M
  @ARG
  M=D
// Restore the caller's LCL segment
  @R13
  AM=M-1
  D=M
  @LCL
  M=D
// Jump to the return address
  @R14
  A=M
  0;JMP

// function Main.main 0
  (Main.main)

// push constant 12
  @12
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// call String.new 1
// push return address onto stack
  @String.new$ret.1
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's LCL to the stack
  @LCL
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's ARG to the stack
  @ARG
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's THIS to the stack
  @THIS
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's THAT to the stack
  @THAT
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// set the callee ARG to point at the first arg passed to the function
  @SP
  D=M
  @5
  D=D-A
  @1
  D=D-A
  @ARG
  M=D
// set the callee LCL point at the top of the stack
  @SP
  D=M
  @LCL
  M=D
// goto String.new
  @String.new
  0;JMP
// create return address label
(String.new$ret.1)

// push constant 72
  @72
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// call String.appendChar 2
// push return address onto stack
  @String.appendChar$ret.1
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's LCL to the stack
  @LCL
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's ARG to the stack
  @ARG
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's THIS to the stack
  @THIS
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's THAT to the stack
  @THAT
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// set the callee ARG to point at the first arg passed to the function
  @SP
  D=M
  @5
  D=D-A
  @2
  D=D-A
  @ARG
  M=D
// set the callee LCL point at the top of the stack
  @SP
  D=M
  @LCL
  M=D
// goto String.appendChar
  @String.appendChar
  0;JMP
// create return address label
(String.appendChar$ret.1)

// push constant 101
  @101
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// call String.appendChar 2
// push return address onto stack
  @String.appendChar$ret.2
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's LCL to the stack
  @LCL
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's ARG to the stack
  @ARG
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's THIS to the stack
  @THIS
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's THAT to the stack
  @THAT
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// set the callee ARG to point at the first arg passed to the function
  @SP
  D=M
  @5
  D=D-A
  @2
  D=D-A
  @ARG
  M=D
// set the callee LCL point at the top of the stack
  @SP
  D=M
  @LCL
  M=D
// goto String.appendChar
  @String.appendChar
  0;JMP
// create return address label
(String.appendChar$ret.2)

// push constant 108
  @108
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// call String.appendChar 2
// push return address onto stack
  @String.appendChar$ret.3
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's LCL to the stack
  @LCL
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's ARG to the stack
  @ARG
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's THIS to the stack
  @THIS
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's THAT to the stack
  @THAT
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// set the callee ARG to point at the first arg passed to the function
  @SP
  D=M
  @5
  D=D-A
  @2
  D=D-A
  @ARG
  M=D
// set the callee LCL point at the top of the stack
  @SP
  D=M
  @LCL
  M=D
// goto String.appendChar
  @String.appendChar
  0;JMP
// create return address label
(String.appendChar$ret.3)

// push constant 108
  @108
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// call String.appendChar 2
// push return address onto stack
  @String.appendChar$ret.4
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's LCL to the stack
  @LCL
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's ARG to the stack
  @ARG
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's THIS to the stack
  @THIS
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's THAT to the stack
  @THAT
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// set the callee ARG to point at the first arg passed to the function
  @SP
  D=M
  @5
  D=D-A
  @2
  D=D-A
  @ARG
  M=D
// set the callee LCL point at the top of the stack
  @SP
  D=M
  @LCL
  M=D
// goto String.appendChar
  @String.appendChar
  0;JMP
// create return address label
(String.appendChar$ret.4)

// push constant 111
  @111
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// call String.appendChar 2
// push return address onto stack
  @String.appendChar$ret.5
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's LCL to the stack
  @LCL
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's ARG to the stack
  @ARG
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's THIS to the stack
  @THIS
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's THAT to the stack
  @THAT
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// set the callee ARG to point at the first arg passed to the function
  @SP
  D=M
  @5
  D=D-A
  @2
  D=D-A
  @ARG
  M=D
// set the callee LCL point at the top of the stack
  @SP
  D=M
  @LCL
  M=D
// goto String.appendChar
  @String.appendChar
  0;JMP
// create return address label
(String.appendChar$ret.5)

// push constant 32
  @32
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// call String.appendChar 2
// push return address onto stack
  @String.appendChar$ret.6
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's LCL to the stack
  @LCL
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's ARG to the stack
  @ARG
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's THIS to the stack
  @THIS
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's THAT to the stack
  @THAT
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// set the callee ARG to point at the first arg passed to the function
  @SP
  D=M
  @5
  D=D-A
  @2
  D=D-A
  @ARG
  M=D
// set the callee LCL point at the top of the stack
  @SP
  D=M
  @LCL
  M=D
// goto String.appendChar
  @String.appendChar
  0;JMP
// create return address label
(String.appendChar$ret.6)

// push constant 119
  @119
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// call String.appendChar 2
// push return address onto stack
  @String.appendChar$ret.7
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's LCL to the stack
  @LCL
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's ARG to the stack
  @ARG
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's THIS to the stack
  @THIS
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's THAT to the stack
  @THAT
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// set the callee ARG to point at the first arg passed to the function
  @SP
  D=M
  @5
  D=D-A
  @2
  D=D-A
  @ARG
  M=D
// set the callee LCL point at the top of the stack
  @SP
  D=M
  @LCL
  M=D
// goto String.appendChar
  @String.appendChar
  0;JMP
// create return address label
(String.appendChar$ret.7)

// push constant 111
  @111
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// call String.appendChar 2
// push return address onto stack
  @String.appendChar$ret.8
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's LCL to the stack
  @LCL
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's ARG to the stack
  @ARG
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's THIS to the stack
  @THIS
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's THAT to the stack
  @THAT
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// set the callee ARG to point at the first arg passed to the function
  @SP
  D=M
  @5
  D=D-A
  @2
  D=D-A
  @ARG
  M=D
// set the callee LCL point at the top of the stack
  @SP
  D=M
  @LCL
  M=D
// goto String.appendChar
  @String.appendChar
  0;JMP
// create return address label
(String.appendChar$ret.8)

// push constant 114
  @114
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// call String.appendChar 2
// push return address onto stack
  @String.appendChar$ret.9
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's LCL to the stack
  @LCL
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's ARG to the stack
  @ARG
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's THIS to the stack
  @THIS
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's THAT to the stack
  @THAT
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// set the callee ARG to point at the first arg passed to the function
  @SP
  D=M
  @5
  D=D-A
  @2
  D=D-A
  @ARG
  M=D
// set the callee LCL point at the top of the stack
  @SP
  D=M
  @LCL
  M=D
// goto String.appendChar
  @String.appendChar
  0;JMP
// create return address label
(String.appendChar$ret.9)

// push constant 108
  @108
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// call String.appendChar 2
// push return address onto stack
  @String.appendChar$ret.10
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's LCL to the stack
  @LCL
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's ARG to the stack
  @ARG
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's THIS to the stack
  @THIS
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's THAT to the stack
  @THAT
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// set the callee ARG to point at the first arg passed to the function
  @SP
  D=M
  @5
  D=D-A
  @2
  D=D-A
  @ARG
  M=D
// set the callee LCL point at the top of the stack
  @SP
  D=M
  @LCL
  M=D
// goto String.appendChar
  @String.appendChar
  0;JMP
// create return address label
(String.appendChar$ret.10)

// push constant 100
  @100
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// call String.appendChar 2
// push return address onto stack
  @String.appendChar$ret.11
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's LCL to the stack
  @LCL
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's ARG to the stack
  @ARG
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's THIS to the stack
  @THIS
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's THAT to the stack
  @THAT
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// set the callee ARG to point at the first arg passed to the function
  @SP
  D=M
  @5
  D=D-A
  @2
  D=D-A
  @ARG
  M=D
// set the callee LCL point at the top of the stack
  @SP
  D=M
  @LCL
  M=D
// goto String.appendChar
  @String.appendChar
  0;JMP
// create return address label
(String.appendChar$ret.11)

// push constant 33
  @33
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// call String.appendChar 2
// push return address onto stack
  @String.appendChar$ret.12
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's LCL to the stack
  @LCL
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's ARG to the stack
  @ARG
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's THIS to the stack
  @THIS
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's THAT to the stack
  @THAT
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// set the callee ARG to point at the first arg passed to the function
  @SP
  D=M
  @5
  D=D-A
  @2
  D=D-A
  @ARG
  M=D
// set the callee LCL point at the top of the stack
  @SP
  D=M
  @LCL
  M=D
// goto String.appendChar
  @String.appendChar
  0;JMP
// create return address label
(String.appendChar$ret.12)

// call Output.printString 1
// push return address onto stack
  @Output.printString$ret.1
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's LCL to the stack
  @LCL
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's ARG to the stack
  @ARG
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's THIS to the stack
  @THIS
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's THAT to the stack
  @THAT
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// set the callee ARG to point at the first arg passed to the function
  @SP
  D=M
  @5
  D=D-A
  @1
  D=D-A
  @ARG
  M=D
// set the callee LCL point at the top of the stack
  @SP
  D=M
  @LCL
  M=D
// goto Output.printString
  @Output.printString
  0;JMP
// create return address label
(Output.printString$ret.1)

// pop TEMP 0
  @5
  D=A
  @TEMP
  D=M+D
  @R13
  M=D
  @SP
  AM=M-1
  D=M
  @R13
  A=M
  M=D

// call Output.println 0
// push return address onto stack
  @Output.println$ret.0
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's LCL to the stack
  @LCL
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's ARG to the stack
  @ARG
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's THIS to the stack
  @THIS
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's THAT to the stack
  @THAT
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// set the callee ARG to point at the first arg passed to the function
  @SP
  D=M
  @5
  D=D-A
  @0
  D=D-A
  @ARG
  M=D
// set the callee LCL point at the top of the stack
  @SP
  D=M
  @LCL
  M=D
// goto Output.println
  @Output.println
  0;JMP
// create return address label
(Output.println$ret.0)

// pop TEMP 0
  @5
  D=A
  @TEMP
  D=M+D
  @R13
  M=D
  @SP
  AM=M-1
  D=M
  @R13
  A=M
  M=D

// push constant 0
  @0
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// return
// Store the start of the local stack (i.e. 'frame') in a temp variable
  @LCL
  D=M
  @R13
  M=D
// Store the return address in a temp variable
  @5
  A=D-A
  D=M
  @R14
  M=D
// Store the return value in the first argument (i.e. top of caller stack)
  @SP
  AM=M-1
  D=M
  @ARG
  A=M
  M=D
// Restore the caller's stack pointer (one after the return value)
  @ARG
  D=M+1
  @SP
  M=D
// Restore the caller's THAT segment
  @R13
  AM=M-1
  D=M
  @THAT
  M=D
// Restore the caller's THIS segment
  @R13
  AM=M-1
  D=M
  @THIS
  M=D
// Restore the caller's ARG segment
  @R13
  AM=M-1
  D=M
  @ARG
  M=D
// Restore the caller's LCL segment
  @R13
  AM=M-1
  D=M
  @LCL
  M=D
// Jump to the return address
  @R14
  A=M
  0;JMP

// function Math.init 1
  (Math.init)
  @SP
  A=M
  M=0
  @SP
  M=M+1

// push constant 16
  @16
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// call Array.new 1
// push return address onto stack
  @Array.new$ret.0
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's LCL to the stack
  @LCL
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's ARG to the stack
  @ARG
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's THIS to the stack
  @THIS
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's THAT to the stack
  @THAT
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// set the callee ARG to point at the first arg passed to the function
  @SP
  D=M
  @5
  D=D-A
  @1
  D=D-A
  @ARG
  M=D
// set the callee LCL point at the top of the stack
  @SP
  D=M
  @LCL
  M=D
// goto Array.new
  @Array.new
  0;JMP
// create return address label
(Array.new$ret.0)

// pop static 1
  @SP
  AM=M-1
  D=M
  @Math.1
  M=D

// push constant 16
  @16
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// call Array.new 1
// push return address onto stack
  @Array.new$ret.1
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's LCL to the stack
  @LCL
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's ARG to the stack
  @ARG
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's THIS to the stack
  @THIS
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's THAT to the stack
  @THAT
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// set the callee ARG to point at the first arg passed to the function
  @SP
  D=M
  @5
  D=D-A
  @1
  D=D-A
  @ARG
  M=D
// set the callee LCL point at the top of the stack
  @SP
  D=M
  @LCL
  M=D
// goto Array.new
  @Array.new
  0;JMP
// create return address label
(Array.new$ret.1)

// pop static 0
  @SP
  AM=M-1
  D=M
  @Math.0
  M=D

// push constant 0
  @0
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push static 0
  @Math.0
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// add
  @SP
  AM=M-1
  D=M
  A=A-1
  M=M+D

// push constant 1
  @1
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// pop TEMP 0
  @5
  D=A
  @TEMP
  D=M+D
  @R13
  M=D
  @SP
  AM=M-1
  D=M
  @R13
  A=M
  M=D

// pop pointer 1
  @SP
  AM=M-1
  D=M
  @THAT
  M=D

// push TEMP 0
  @5
  D=A
  @TEMP
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// pop THAT 0
  @0
  D=A
  @THAT
  D=M+D
  @R13
  M=D
  @SP
  AM=M-1
  D=M
  @R13
  A=M
  M=D

// label WHILE_EXP0
  (WHILE_EXP0)

// push LCL 0
  @0
  D=A
  @LCL
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 15
  @15
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// lt
  @SP
  AM=M-1
  D=M
  A=A-1
  D=M-D
  @TRUE176
  D;JLT
  @SP
  A=M-1
  M=0
  @CONTINUE176
  0;JMP
(TRUE176)
  @SP
  A=M-1
  M=-1
(CONTINUE176)

// not
  @SP
  A=M-1
  M=!M

// if-goto WHILE_END0
  @SP
  AM=M-1
  D=M
  @WHILE_END0
  D;JNE

// push LCL 0
  @0
  D=A
  @LCL
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 1
  @1
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// add
  @SP
  AM=M-1
  D=M
  A=A-1
  M=M+D

// pop LCL 0
  @0
  D=A
  @LCL
  D=M+D
  @R13
  M=D
  @SP
  AM=M-1
  D=M
  @R13
  A=M
  M=D

// push LCL 0
  @0
  D=A
  @LCL
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push static 0
  @Math.0
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// add
  @SP
  AM=M-1
  D=M
  A=A-1
  M=M+D

// push LCL 0
  @0
  D=A
  @LCL
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 1
  @1
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// sub
  @SP
  AM=M-1
  D=M
  A=A-1
  M=M-D

// push static 0
  @Math.0
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// add
  @SP
  AM=M-1
  D=M
  A=A-1
  M=M+D

// pop pointer 1
  @SP
  AM=M-1
  D=M
  @THAT
  M=D

// push THAT 0
  @0
  D=A
  @THAT
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push LCL 0
  @0
  D=A
  @LCL
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 1
  @1
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// sub
  @SP
  AM=M-1
  D=M
  A=A-1
  M=M-D

// push static 0
  @Math.0
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// add
  @SP
  AM=M-1
  D=M
  A=A-1
  M=M+D

// pop pointer 1
  @SP
  AM=M-1
  D=M
  @THAT
  M=D

// push THAT 0
  @0
  D=A
  @THAT
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// add
  @SP
  AM=M-1
  D=M
  A=A-1
  M=M+D

// pop TEMP 0
  @5
  D=A
  @TEMP
  D=M+D
  @R13
  M=D
  @SP
  AM=M-1
  D=M
  @R13
  A=M
  M=D

// pop pointer 1
  @SP
  AM=M-1
  D=M
  @THAT
  M=D

// push TEMP 0
  @5
  D=A
  @TEMP
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// pop THAT 0
  @0
  D=A
  @THAT
  D=M+D
  @R13
  M=D
  @SP
  AM=M-1
  D=M
  @R13
  A=M
  M=D

// goto WHILE_EXP0
  @WHILE_EXP0
  0;JMP

// label WHILE_END0
  (WHILE_END0)

// push constant 0
  @0
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// return
// Store the start of the local stack (i.e. 'frame') in a temp variable
  @LCL
  D=M
  @R13
  M=D
// Store the return address in a temp variable
  @5
  A=D-A
  D=M
  @R14
  M=D
// Store the return value in the first argument (i.e. top of caller stack)
  @SP
  AM=M-1
  D=M
  @ARG
  A=M
  M=D
// Restore the caller's stack pointer (one after the return value)
  @ARG
  D=M+1
  @SP
  M=D
// Restore the caller's THAT segment
  @R13
  AM=M-1
  D=M
  @THAT
  M=D
// Restore the caller's THIS segment
  @R13
  AM=M-1
  D=M
  @THIS
  M=D
// Restore the caller's ARG segment
  @R13
  AM=M-1
  D=M
  @ARG
  M=D
// Restore the caller's LCL segment
  @R13
  AM=M-1
  D=M
  @LCL
  M=D
// Jump to the return address
  @R14
  A=M
  0;JMP

// function Math.abs 0
  (Math.abs)

// push ARG 0
  @0
  D=A
  @ARG
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 0
  @0
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// lt
  @SP
  AM=M-1
  D=M
  A=A-1
  D=M-D
  @TRUE212
  D;JLT
  @SP
  A=M-1
  M=0
  @CONTINUE212
  0;JMP
(TRUE212)
  @SP
  A=M-1
  M=-1
(CONTINUE212)

// if-goto IF_TRUE0
  @SP
  AM=M-1
  D=M
  @IF_TRUE0
  D;JNE

// goto IF_FALSE0
  @IF_FALSE0
  0;JMP

// label IF_TRUE0
  (IF_TRUE0)

// push ARG 0
  @0
  D=A
  @ARG
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// neg
  @SP
  A=M-1
  M=-M

// pop ARG 0
  @0
  D=A
  @ARG
  D=M+D
  @R13
  M=D
  @SP
  AM=M-1
  D=M
  @R13
  A=M
  M=D

// label IF_FALSE0
  (IF_FALSE0)

// push ARG 0
  @0
  D=A
  @ARG
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// return
// Store the start of the local stack (i.e. 'frame') in a temp variable
  @LCL
  D=M
  @R13
  M=D
// Store the return address in a temp variable
  @5
  A=D-A
  D=M
  @R14
  M=D
// Store the return value in the first argument (i.e. top of caller stack)
  @SP
  AM=M-1
  D=M
  @ARG
  A=M
  M=D
// Restore the caller's stack pointer (one after the return value)
  @ARG
  D=M+1
  @SP
  M=D
// Restore the caller's THAT segment
  @R13
  AM=M-1
  D=M
  @THAT
  M=D
// Restore the caller's THIS segment
  @R13
  AM=M-1
  D=M
  @THIS
  M=D
// Restore the caller's ARG segment
  @R13
  AM=M-1
  D=M
  @ARG
  M=D
// Restore the caller's LCL segment
  @R13
  AM=M-1
  D=M
  @LCL
  M=D
// Jump to the return address
  @R14
  A=M
  0;JMP

// function Math.multiply 5
  (Math.multiply)
  @SP
  A=M
  M=0
  @SP
  M=M+1
  @SP
  A=M
  M=0
  @SP
  M=M+1
  @SP
  A=M
  M=0
  @SP
  M=M+1
  @SP
  A=M
  M=0
  @SP
  M=M+1
  @SP
  A=M
  M=0
  @SP
  M=M+1

// push ARG 0
  @0
  D=A
  @ARG
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 0
  @0
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// lt
  @SP
  AM=M-1
  D=M
  A=A-1
  D=M-D
  @TRUE225
  D;JLT
  @SP
  A=M-1
  M=0
  @CONTINUE225
  0;JMP
(TRUE225)
  @SP
  A=M-1
  M=-1
(CONTINUE225)

// push ARG 1
  @1
  D=A
  @ARG
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 0
  @0
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// gt
  @SP
  AM=M-1
  D=M
  A=A-1
  D=M-D
  @TRUE228
  D;JGT
  @SP
  A=M-1
  M=0
  @CONTINUE228
  0;JMP
(TRUE228)
  @SP
  A=M-1
  M=-1
(CONTINUE228)

// and
  @SP
  AM=M-1
  D=M
  A=A-1
  M=M&D

// push ARG 0
  @0
  D=A
  @ARG
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 0
  @0
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// gt
  @SP
  AM=M-1
  D=M
  A=A-1
  D=M-D
  @TRUE232
  D;JGT
  @SP
  A=M-1
  M=0
  @CONTINUE232
  0;JMP
(TRUE232)
  @SP
  A=M-1
  M=-1
(CONTINUE232)

// push ARG 1
  @1
  D=A
  @ARG
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 0
  @0
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// lt
  @SP
  AM=M-1
  D=M
  A=A-1
  D=M-D
  @TRUE235
  D;JLT
  @SP
  A=M-1
  M=0
  @CONTINUE235
  0;JMP
(TRUE235)
  @SP
  A=M-1
  M=-1
(CONTINUE235)

// and
  @SP
  AM=M-1
  D=M
  A=A-1
  M=M&D

// or
  @SP
  AM=M-1
  D=M
  A=A-1
  M=M|D

// pop LCL 4
  @4
  D=A
  @LCL
  D=M+D
  @R13
  M=D
  @SP
  AM=M-1
  D=M
  @R13
  A=M
  M=D

// push ARG 0
  @0
  D=A
  @ARG
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// call Math.abs 1
// push return address onto stack
  @Math.abs$ret.0
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's LCL to the stack
  @LCL
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's ARG to the stack
  @ARG
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's THIS to the stack
  @THIS
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's THAT to the stack
  @THAT
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// set the callee ARG to point at the first arg passed to the function
  @SP
  D=M
  @5
  D=D-A
  @1
  D=D-A
  @ARG
  M=D
// set the callee LCL point at the top of the stack
  @SP
  D=M
  @LCL
  M=D
// goto Math.abs
  @Math.abs
  0;JMP
// create return address label
(Math.abs$ret.0)

// pop ARG 0
  @0
  D=A
  @ARG
  D=M+D
  @R13
  M=D
  @SP
  AM=M-1
  D=M
  @R13
  A=M
  M=D

// push ARG 1
  @1
  D=A
  @ARG
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// call Math.abs 1
// push return address onto stack
  @Math.abs$ret.1
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's LCL to the stack
  @LCL
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's ARG to the stack
  @ARG
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's THIS to the stack
  @THIS
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's THAT to the stack
  @THAT
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// set the callee ARG to point at the first arg passed to the function
  @SP
  D=M
  @5
  D=D-A
  @1
  D=D-A
  @ARG
  M=D
// set the callee LCL point at the top of the stack
  @SP
  D=M
  @LCL
  M=D
// goto Math.abs
  @Math.abs
  0;JMP
// create return address label
(Math.abs$ret.1)

// pop ARG 1
  @1
  D=A
  @ARG
  D=M+D
  @R13
  M=D
  @SP
  AM=M-1
  D=M
  @R13
  A=M
  M=D

// push ARG 0
  @0
  D=A
  @ARG
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push ARG 1
  @1
  D=A
  @ARG
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// lt
  @SP
  AM=M-1
  D=M
  A=A-1
  D=M-D
  @TRUE247
  D;JLT
  @SP
  A=M-1
  M=0
  @CONTINUE247
  0;JMP
(TRUE247)
  @SP
  A=M-1
  M=-1
(CONTINUE247)

// if-goto IF_TRUE0
  @SP
  AM=M-1
  D=M
  @IF_TRUE0
  D;JNE

// goto IF_FALSE0
  @IF_FALSE0
  0;JMP

// label IF_TRUE0
  (IF_TRUE0)

// push ARG 0
  @0
  D=A
  @ARG
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// pop LCL 1
  @1
  D=A
  @LCL
  D=M+D
  @R13
  M=D
  @SP
  AM=M-1
  D=M
  @R13
  A=M
  M=D

// push ARG 1
  @1
  D=A
  @ARG
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// pop ARG 0
  @0
  D=A
  @ARG
  D=M+D
  @R13
  M=D
  @SP
  AM=M-1
  D=M
  @R13
  A=M
  M=D

// push LCL 1
  @1
  D=A
  @LCL
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// pop ARG 1
  @1
  D=A
  @ARG
  D=M+D
  @R13
  M=D
  @SP
  AM=M-1
  D=M
  @R13
  A=M
  M=D

// label IF_FALSE0
  (IF_FALSE0)

// label WHILE_EXP0
  (WHILE_EXP0)

// push LCL 2
  @2
  D=A
  @LCL
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 1
  @1
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// sub
  @SP
  AM=M-1
  D=M
  A=A-1
  M=M-D

// push ARG 1
  @1
  D=A
  @ARG
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 1
  @1
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// sub
  @SP
  AM=M-1
  D=M
  A=A-1
  M=M-D

// lt
  @SP
  AM=M-1
  D=M
  A=A-1
  D=M-D
  @TRUE265
  D;JLT
  @SP
  A=M-1
  M=0
  @CONTINUE265
  0;JMP
(TRUE265)
  @SP
  A=M-1
  M=-1
(CONTINUE265)

// not
  @SP
  A=M-1
  M=!M

// if-goto WHILE_END0
  @SP
  AM=M-1
  D=M
  @WHILE_END0
  D;JNE

// push LCL 3
  @3
  D=A
  @LCL
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push static 0
  @Math.0
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// add
  @SP
  AM=M-1
  D=M
  A=A-1
  M=M+D

// pop pointer 1
  @SP
  AM=M-1
  D=M
  @THAT
  M=D

// push THAT 0
  @0
  D=A
  @THAT
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push ARG 1
  @1
  D=A
  @ARG
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// and
  @SP
  AM=M-1
  D=M
  A=A-1
  M=M&D

// push constant 0
  @0
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// eq
  @SP
  AM=M-1
  D=M
  A=A-1
  D=M-D
  @TRUE276
  D;JEQ
  @SP
  A=M-1
  M=0
  @CONTINUE276
  0;JMP
(TRUE276)
  @SP
  A=M-1
  M=-1
(CONTINUE276)

// not
  @SP
  A=M-1
  M=!M

// if-goto IF_TRUE1
  @SP
  AM=M-1
  D=M
  @IF_TRUE1
  D;JNE

// goto IF_FALSE1
  @IF_FALSE1
  0;JMP

// label IF_TRUE1
  (IF_TRUE1)

// push LCL 0
  @0
  D=A
  @LCL
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push ARG 0
  @0
  D=A
  @ARG
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// add
  @SP
  AM=M-1
  D=M
  A=A-1
  M=M+D

// pop LCL 0
  @0
  D=A
  @LCL
  D=M+D
  @R13
  M=D
  @SP
  AM=M-1
  D=M
  @R13
  A=M
  M=D

// push LCL 2
  @2
  D=A
  @LCL
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push LCL 3
  @3
  D=A
  @LCL
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push static 0
  @Math.0
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// add
  @SP
  AM=M-1
  D=M
  A=A-1
  M=M+D

// pop pointer 1
  @SP
  AM=M-1
  D=M
  @THAT
  M=D

// push THAT 0
  @0
  D=A
  @THAT
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// add
  @SP
  AM=M-1
  D=M
  A=A-1
  M=M+D

// pop LCL 2
  @2
  D=A
  @LCL
  D=M+D
  @R13
  M=D
  @SP
  AM=M-1
  D=M
  @R13
  A=M
  M=D

// label IF_FALSE1
  (IF_FALSE1)

// push ARG 0
  @0
  D=A
  @ARG
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push ARG 0
  @0
  D=A
  @ARG
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// add
  @SP
  AM=M-1
  D=M
  A=A-1
  M=M+D

// pop ARG 0
  @0
  D=A
  @ARG
  D=M+D
  @R13
  M=D
  @SP
  AM=M-1
  D=M
  @R13
  A=M
  M=D

// push LCL 3
  @3
  D=A
  @LCL
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 1
  @1
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// add
  @SP
  AM=M-1
  D=M
  A=A-1
  M=M+D

// pop LCL 3
  @3
  D=A
  @LCL
  D=M+D
  @R13
  M=D
  @SP
  AM=M-1
  D=M
  @R13
  A=M
  M=D

// goto WHILE_EXP0
  @WHILE_EXP0
  0;JMP

// label WHILE_END0
  (WHILE_END0)

// push LCL 4
  @4
  D=A
  @LCL
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// if-goto IF_TRUE2
  @SP
  AM=M-1
  D=M
  @IF_TRUE2
  D;JNE

// goto IF_FALSE2
  @IF_FALSE2
  0;JMP

// label IF_TRUE2
  (IF_TRUE2)

// push LCL 0
  @0
  D=A
  @LCL
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// neg
  @SP
  A=M-1
  M=-M

// pop LCL 0
  @0
  D=A
  @LCL
  D=M+D
  @R13
  M=D
  @SP
  AM=M-1
  D=M
  @R13
  A=M
  M=D

// label IF_FALSE2
  (IF_FALSE2)

// push LCL 0
  @0
  D=A
  @LCL
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// return
// Store the start of the local stack (i.e. 'frame') in a temp variable
  @LCL
  D=M
  @R13
  M=D
// Store the return address in a temp variable
  @5
  A=D-A
  D=M
  @R14
  M=D
// Store the return value in the first argument (i.e. top of caller stack)
  @SP
  AM=M-1
  D=M
  @ARG
  A=M
  M=D
// Restore the caller's stack pointer (one after the return value)
  @ARG
  D=M+1
  @SP
  M=D
// Restore the caller's THAT segment
  @R13
  AM=M-1
  D=M
  @THAT
  M=D
// Restore the caller's THIS segment
  @R13
  AM=M-1
  D=M
  @THIS
  M=D
// Restore the caller's ARG segment
  @R13
  AM=M-1
  D=M
  @ARG
  M=D
// Restore the caller's LCL segment
  @R13
  AM=M-1
  D=M
  @LCL
  M=D
// Jump to the return address
  @R14
  A=M
  0;JMP

// function Math.divide 4
  (Math.divide)
  @SP
  A=M
  M=0
  @SP
  M=M+1
  @SP
  A=M
  M=0
  @SP
  M=M+1
  @SP
  A=M
  M=0
  @SP
  M=M+1
  @SP
  A=M
  M=0
  @SP
  M=M+1

// push ARG 1
  @1
  D=A
  @ARG
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 0
  @0
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// eq
  @SP
  AM=M-1
  D=M
  A=A-1
  D=M-D
  @TRUE317
  D;JEQ
  @SP
  A=M-1
  M=0
  @CONTINUE317
  0;JMP
(TRUE317)
  @SP
  A=M-1
  M=-1
(CONTINUE317)

// if-goto IF_TRUE0
  @SP
  AM=M-1
  D=M
  @IF_TRUE0
  D;JNE

// goto IF_FALSE0
  @IF_FALSE0
  0;JMP

// label IF_TRUE0
  (IF_TRUE0)

// push constant 3
  @3
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// call Sys.error 1
// push return address onto stack
  @Sys.error$ret.1
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's LCL to the stack
  @LCL
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's ARG to the stack
  @ARG
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's THIS to the stack
  @THIS
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's THAT to the stack
  @THAT
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// set the callee ARG to point at the first arg passed to the function
  @SP
  D=M
  @5
  D=D-A
  @1
  D=D-A
  @ARG
  M=D
// set the callee LCL point at the top of the stack
  @SP
  D=M
  @LCL
  M=D
// goto Sys.error
  @Sys.error
  0;JMP
// create return address label
(Sys.error$ret.1)

// pop TEMP 0
  @5
  D=A
  @TEMP
  D=M+D
  @R13
  M=D
  @SP
  AM=M-1
  D=M
  @R13
  A=M
  M=D

// label IF_FALSE0
  (IF_FALSE0)

// push ARG 0
  @0
  D=A
  @ARG
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 0
  @0
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// lt
  @SP
  AM=M-1
  D=M
  A=A-1
  D=M-D
  @TRUE327
  D;JLT
  @SP
  A=M-1
  M=0
  @CONTINUE327
  0;JMP
(TRUE327)
  @SP
  A=M-1
  M=-1
(CONTINUE327)

// push ARG 1
  @1
  D=A
  @ARG
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 0
  @0
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// gt
  @SP
  AM=M-1
  D=M
  A=A-1
  D=M-D
  @TRUE330
  D;JGT
  @SP
  A=M-1
  M=0
  @CONTINUE330
  0;JMP
(TRUE330)
  @SP
  A=M-1
  M=-1
(CONTINUE330)

// and
  @SP
  AM=M-1
  D=M
  A=A-1
  M=M&D

// push ARG 0
  @0
  D=A
  @ARG
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 0
  @0
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// gt
  @SP
  AM=M-1
  D=M
  A=A-1
  D=M-D
  @TRUE334
  D;JGT
  @SP
  A=M-1
  M=0
  @CONTINUE334
  0;JMP
(TRUE334)
  @SP
  A=M-1
  M=-1
(CONTINUE334)

// push ARG 1
  @1
  D=A
  @ARG
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 0
  @0
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// lt
  @SP
  AM=M-1
  D=M
  A=A-1
  D=M-D
  @TRUE337
  D;JLT
  @SP
  A=M-1
  M=0
  @CONTINUE337
  0;JMP
(TRUE337)
  @SP
  A=M-1
  M=-1
(CONTINUE337)

// and
  @SP
  AM=M-1
  D=M
  A=A-1
  M=M&D

// or
  @SP
  AM=M-1
  D=M
  A=A-1
  M=M|D

// pop LCL 2
  @2
  D=A
  @LCL
  D=M+D
  @R13
  M=D
  @SP
  AM=M-1
  D=M
  @R13
  A=M
  M=D

// push constant 0
  @0
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push static 1
  @Math.1
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// add
  @SP
  AM=M-1
  D=M
  A=A-1
  M=M+D

// push ARG 1
  @1
  D=A
  @ARG
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// call Math.abs 1
// push return address onto stack
  @Math.abs$ret.2
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's LCL to the stack
  @LCL
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's ARG to the stack
  @ARG
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's THIS to the stack
  @THIS
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's THAT to the stack
  @THAT
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// set the callee ARG to point at the first arg passed to the function
  @SP
  D=M
  @5
  D=D-A
  @1
  D=D-A
  @ARG
  M=D
// set the callee LCL point at the top of the stack
  @SP
  D=M
  @LCL
  M=D
// goto Math.abs
  @Math.abs
  0;JMP
// create return address label
(Math.abs$ret.2)

// pop TEMP 0
  @5
  D=A
  @TEMP
  D=M+D
  @R13
  M=D
  @SP
  AM=M-1
  D=M
  @R13
  A=M
  M=D

// pop pointer 1
  @SP
  AM=M-1
  D=M
  @THAT
  M=D

// push TEMP 0
  @5
  D=A
  @TEMP
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// pop THAT 0
  @0
  D=A
  @THAT
  D=M+D
  @R13
  M=D
  @SP
  AM=M-1
  D=M
  @R13
  A=M
  M=D

// push ARG 0
  @0
  D=A
  @ARG
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// call Math.abs 1
// push return address onto stack
  @Math.abs$ret.3
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's LCL to the stack
  @LCL
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's ARG to the stack
  @ARG
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's THIS to the stack
  @THIS
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's THAT to the stack
  @THAT
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// set the callee ARG to point at the first arg passed to the function
  @SP
  D=M
  @5
  D=D-A
  @1
  D=D-A
  @ARG
  M=D
// set the callee LCL point at the top of the stack
  @SP
  D=M
  @LCL
  M=D
// goto Math.abs
  @Math.abs
  0;JMP
// create return address label
(Math.abs$ret.3)

// pop ARG 0
  @0
  D=A
  @ARG
  D=M+D
  @R13
  M=D
  @SP
  AM=M-1
  D=M
  @R13
  A=M
  M=D

// label WHILE_EXP0
  (WHILE_EXP0)

// push LCL 0
  @0
  D=A
  @LCL
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 15
  @15
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// lt
  @SP
  AM=M-1
  D=M
  A=A-1
  D=M-D
  @TRUE356
  D;JLT
  @SP
  A=M-1
  M=0
  @CONTINUE356
  0;JMP
(TRUE356)
  @SP
  A=M-1
  M=-1
(CONTINUE356)

// push LCL 3
  @3
  D=A
  @LCL
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// not
  @SP
  A=M-1
  M=!M

// and
  @SP
  AM=M-1
  D=M
  A=A-1
  M=M&D

// not
  @SP
  A=M-1
  M=!M

// if-goto WHILE_END0
  @SP
  AM=M-1
  D=M
  @WHILE_END0
  D;JNE

// push constant 32767
  @32767
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push LCL 0
  @0
  D=A
  @LCL
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push static 1
  @Math.1
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// add
  @SP
  AM=M-1
  D=M
  A=A-1
  M=M+D

// pop pointer 1
  @SP
  AM=M-1
  D=M
  @THAT
  M=D

// push THAT 0
  @0
  D=A
  @THAT
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 1
  @1
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// sub
  @SP
  AM=M-1
  D=M
  A=A-1
  M=M-D

// sub
  @SP
  AM=M-1
  D=M
  A=A-1
  M=M-D

// push LCL 0
  @0
  D=A
  @LCL
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push static 1
  @Math.1
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// add
  @SP
  AM=M-1
  D=M
  A=A-1
  M=M+D

// pop pointer 1
  @SP
  AM=M-1
  D=M
  @THAT
  M=D

// push THAT 0
  @0
  D=A
  @THAT
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 1
  @1
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// sub
  @SP
  AM=M-1
  D=M
  A=A-1
  M=M-D

// lt
  @SP
  AM=M-1
  D=M
  A=A-1
  D=M-D
  @TRUE378
  D;JLT
  @SP
  A=M-1
  M=0
  @CONTINUE378
  0;JMP
(TRUE378)
  @SP
  A=M-1
  M=-1
(CONTINUE378)

// pop LCL 3
  @3
  D=A
  @LCL
  D=M+D
  @R13
  M=D
  @SP
  AM=M-1
  D=M
  @R13
  A=M
  M=D

// push LCL 3
  @3
  D=A
  @LCL
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// not
  @SP
  A=M-1
  M=!M

// if-goto IF_TRUE1
  @SP
  AM=M-1
  D=M
  @IF_TRUE1
  D;JNE

// goto IF_FALSE1
  @IF_FALSE1
  0;JMP

// label IF_TRUE1
  (IF_TRUE1)

// push LCL 0
  @0
  D=A
  @LCL
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 1
  @1
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// add
  @SP
  AM=M-1
  D=M
  A=A-1
  M=M+D

// push static 1
  @Math.1
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// add
  @SP
  AM=M-1
  D=M
  A=A-1
  M=M+D

// push LCL 0
  @0
  D=A
  @LCL
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push static 1
  @Math.1
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// add
  @SP
  AM=M-1
  D=M
  A=A-1
  M=M+D

// pop pointer 1
  @SP
  AM=M-1
  D=M
  @THAT
  M=D

// push THAT 0
  @0
  D=A
  @THAT
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push LCL 0
  @0
  D=A
  @LCL
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push static 1
  @Math.1
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// add
  @SP
  AM=M-1
  D=M
  A=A-1
  M=M+D

// pop pointer 1
  @SP
  AM=M-1
  D=M
  @THAT
  M=D

// push THAT 0
  @0
  D=A
  @THAT
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// add
  @SP
  AM=M-1
  D=M
  A=A-1
  M=M+D

// pop TEMP 0
  @5
  D=A
  @TEMP
  D=M+D
  @R13
  M=D
  @SP
  AM=M-1
  D=M
  @R13
  A=M
  M=D

// pop pointer 1
  @SP
  AM=M-1
  D=M
  @THAT
  M=D

// push TEMP 0
  @5
  D=A
  @TEMP
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// pop THAT 0
  @0
  D=A
  @THAT
  D=M+D
  @R13
  M=D
  @SP
  AM=M-1
  D=M
  @R13
  A=M
  M=D

// push LCL 0
  @0
  D=A
  @LCL
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 1
  @1
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// add
  @SP
  AM=M-1
  D=M
  A=A-1
  M=M+D

// push static 1
  @Math.1
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// add
  @SP
  AM=M-1
  D=M
  A=A-1
  M=M+D

// pop pointer 1
  @SP
  AM=M-1
  D=M
  @THAT
  M=D

// push THAT 0
  @0
  D=A
  @THAT
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 1
  @1
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// sub
  @SP
  AM=M-1
  D=M
  A=A-1
  M=M-D

// push ARG 0
  @0
  D=A
  @ARG
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 1
  @1
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// sub
  @SP
  AM=M-1
  D=M
  A=A-1
  M=M-D

// gt
  @SP
  AM=M-1
  D=M
  A=A-1
  D=M-D
  @TRUE417
  D;JGT
  @SP
  A=M-1
  M=0
  @CONTINUE417
  0;JMP
(TRUE417)
  @SP
  A=M-1
  M=-1
(CONTINUE417)

// pop LCL 3
  @3
  D=A
  @LCL
  D=M+D
  @R13
  M=D
  @SP
  AM=M-1
  D=M
  @R13
  A=M
  M=D

// push LCL 3
  @3
  D=A
  @LCL
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// not
  @SP
  A=M-1
  M=!M

// if-goto IF_TRUE2
  @SP
  AM=M-1
  D=M
  @IF_TRUE2
  D;JNE

// goto IF_FALSE2
  @IF_FALSE2
  0;JMP

// label IF_TRUE2
  (IF_TRUE2)

// push LCL 0
  @0
  D=A
  @LCL
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 1
  @1
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// add
  @SP
  AM=M-1
  D=M
  A=A-1
  M=M+D

// pop LCL 0
  @0
  D=A
  @LCL
  D=M+D
  @R13
  M=D
  @SP
  AM=M-1
  D=M
  @R13
  A=M
  M=D

// label IF_FALSE2
  (IF_FALSE2)

// label IF_FALSE1
  (IF_FALSE1)

// goto WHILE_EXP0
  @WHILE_EXP0
  0;JMP

// label WHILE_END0
  (WHILE_END0)

// label WHILE_EXP1
  (WHILE_EXP1)

// push LCL 0
  @0
  D=A
  @LCL
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 1
  @1
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// neg
  @SP
  A=M-1
  M=-M

// gt
  @SP
  AM=M-1
  D=M
  A=A-1
  D=M-D
  @TRUE436
  D;JGT
  @SP
  A=M-1
  M=0
  @CONTINUE436
  0;JMP
(TRUE436)
  @SP
  A=M-1
  M=-1
(CONTINUE436)

// not
  @SP
  A=M-1
  M=!M

// if-goto WHILE_END1
  @SP
  AM=M-1
  D=M
  @WHILE_END1
  D;JNE

// push LCL 0
  @0
  D=A
  @LCL
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push static 1
  @Math.1
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// add
  @SP
  AM=M-1
  D=M
  A=A-1
  M=M+D

// pop pointer 1
  @SP
  AM=M-1
  D=M
  @THAT
  M=D

// push THAT 0
  @0
  D=A
  @THAT
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 1
  @1
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// sub
  @SP
  AM=M-1
  D=M
  A=A-1
  M=M-D

// push ARG 0
  @0
  D=A
  @ARG
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 1
  @1
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// sub
  @SP
  AM=M-1
  D=M
  A=A-1
  M=M-D

// gt
  @SP
  AM=M-1
  D=M
  A=A-1
  D=M-D
  @TRUE449
  D;JGT
  @SP
  A=M-1
  M=0
  @CONTINUE449
  0;JMP
(TRUE449)
  @SP
  A=M-1
  M=-1
(CONTINUE449)

// not
  @SP
  A=M-1
  M=!M

// if-goto IF_TRUE3
  @SP
  AM=M-1
  D=M
  @IF_TRUE3
  D;JNE

// goto IF_FALSE3
  @IF_FALSE3
  0;JMP

// label IF_TRUE3
  (IF_TRUE3)

// push LCL 1
  @1
  D=A
  @LCL
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push LCL 0
  @0
  D=A
  @LCL
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push static 0
  @Math.0
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// add
  @SP
  AM=M-1
  D=M
  A=A-1
  M=M+D

// pop pointer 1
  @SP
  AM=M-1
  D=M
  @THAT
  M=D

// push THAT 0
  @0
  D=A
  @THAT
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// add
  @SP
  AM=M-1
  D=M
  A=A-1
  M=M+D

// pop LCL 1
  @1
  D=A
  @LCL
  D=M+D
  @R13
  M=D
  @SP
  AM=M-1
  D=M
  @R13
  A=M
  M=D

// push ARG 0
  @0
  D=A
  @ARG
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push LCL 0
  @0
  D=A
  @LCL
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push static 1
  @Math.1
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// add
  @SP
  AM=M-1
  D=M
  A=A-1
  M=M+D

// pop pointer 1
  @SP
  AM=M-1
  D=M
  @THAT
  M=D

// push THAT 0
  @0
  D=A
  @THAT
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// sub
  @SP
  AM=M-1
  D=M
  A=A-1
  M=M-D

// pop ARG 0
  @0
  D=A
  @ARG
  D=M+D
  @R13
  M=D
  @SP
  AM=M-1
  D=M
  @R13
  A=M
  M=D

// label IF_FALSE3
  (IF_FALSE3)

// push LCL 0
  @0
  D=A
  @LCL
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 1
  @1
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// sub
  @SP
  AM=M-1
  D=M
  A=A-1
  M=M-D

// pop LCL 0
  @0
  D=A
  @LCL
  D=M+D
  @R13
  M=D
  @SP
  AM=M-1
  D=M
  @R13
  A=M
  M=D

// goto WHILE_EXP1
  @WHILE_EXP1
  0;JMP

// label WHILE_END1
  (WHILE_END1)

// push LCL 2
  @2
  D=A
  @LCL
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// if-goto IF_TRUE4
  @SP
  AM=M-1
  D=M
  @IF_TRUE4
  D;JNE

// goto IF_FALSE4
  @IF_FALSE4
  0;JMP

// label IF_TRUE4
  (IF_TRUE4)

// push LCL 1
  @1
  D=A
  @LCL
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// neg
  @SP
  A=M-1
  M=-M

// pop LCL 1
  @1
  D=A
  @LCL
  D=M+D
  @R13
  M=D
  @SP
  AM=M-1
  D=M
  @R13
  A=M
  M=D

// label IF_FALSE4
  (IF_FALSE4)

// push LCL 1
  @1
  D=A
  @LCL
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// return
// Store the start of the local stack (i.e. 'frame') in a temp variable
  @LCL
  D=M
  @R13
  M=D
// Store the return address in a temp variable
  @5
  A=D-A
  D=M
  @R14
  M=D
// Store the return value in the first argument (i.e. top of caller stack)
  @SP
  AM=M-1
  D=M
  @ARG
  A=M
  M=D
// Restore the caller's stack pointer (one after the return value)
  @ARG
  D=M+1
  @SP
  M=D
// Restore the caller's THAT segment
  @R13
  AM=M-1
  D=M
  @THAT
  M=D
// Restore the caller's THIS segment
  @R13
  AM=M-1
  D=M
  @THIS
  M=D
// Restore the caller's ARG segment
  @R13
  AM=M-1
  D=M
  @ARG
  M=D
// Restore the caller's LCL segment
  @R13
  AM=M-1
  D=M
  @LCL
  M=D
// Jump to the return address
  @R14
  A=M
  0;JMP

// function Math.sqrt 4
  (Math.sqrt)
  @SP
  A=M
  M=0
  @SP
  M=M+1
  @SP
  A=M
  M=0
  @SP
  M=M+1
  @SP
  A=M
  M=0
  @SP
  M=M+1
  @SP
  A=M
  M=0
  @SP
  M=M+1

// push ARG 0
  @0
  D=A
  @ARG
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 0
  @0
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// lt
  @SP
  AM=M-1
  D=M
  A=A-1
  D=M-D
  @TRUE490
  D;JLT
  @SP
  A=M-1
  M=0
  @CONTINUE490
  0;JMP
(TRUE490)
  @SP
  A=M-1
  M=-1
(CONTINUE490)

// if-goto IF_TRUE0
  @SP
  AM=M-1
  D=M
  @IF_TRUE0
  D;JNE

// goto IF_FALSE0
  @IF_FALSE0
  0;JMP

// label IF_TRUE0
  (IF_TRUE0)

// push constant 4
  @4
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// call Sys.error 1
// push return address onto stack
  @Sys.error$ret.2
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's LCL to the stack
  @LCL
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's ARG to the stack
  @ARG
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's THIS to the stack
  @THIS
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's THAT to the stack
  @THAT
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// set the callee ARG to point at the first arg passed to the function
  @SP
  D=M
  @5
  D=D-A
  @1
  D=D-A
  @ARG
  M=D
// set the callee LCL point at the top of the stack
  @SP
  D=M
  @LCL
  M=D
// goto Sys.error
  @Sys.error
  0;JMP
// create return address label
(Sys.error$ret.2)

// pop TEMP 0
  @5
  D=A
  @TEMP
  D=M+D
  @R13
  M=D
  @SP
  AM=M-1
  D=M
  @R13
  A=M
  M=D

// label IF_FALSE0
  (IF_FALSE0)

// push constant 7
  @7
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// pop LCL 0
  @0
  D=A
  @LCL
  D=M+D
  @R13
  M=D
  @SP
  AM=M-1
  D=M
  @R13
  A=M
  M=D

// label WHILE_EXP0
  (WHILE_EXP0)

// push LCL 0
  @0
  D=A
  @LCL
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 1
  @1
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// neg
  @SP
  A=M-1
  M=-M

// gt
  @SP
  AM=M-1
  D=M
  A=A-1
  D=M-D
  @TRUE504
  D;JGT
  @SP
  A=M-1
  M=0
  @CONTINUE504
  0;JMP
(TRUE504)
  @SP
  A=M-1
  M=-1
(CONTINUE504)

// not
  @SP
  A=M-1
  M=!M

// if-goto WHILE_END0
  @SP
  AM=M-1
  D=M
  @WHILE_END0
  D;JNE

// push LCL 3
  @3
  D=A
  @LCL
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push LCL 0
  @0
  D=A
  @LCL
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push static 0
  @Math.0
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// add
  @SP
  AM=M-1
  D=M
  A=A-1
  M=M+D

// pop pointer 1
  @SP
  AM=M-1
  D=M
  @THAT
  M=D

// push THAT 0
  @0
  D=A
  @THAT
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// add
  @SP
  AM=M-1
  D=M
  A=A-1
  M=M+D

// pop LCL 1
  @1
  D=A
  @LCL
  D=M+D
  @R13
  M=D
  @SP
  AM=M-1
  D=M
  @R13
  A=M
  M=D

// push LCL 1
  @1
  D=A
  @LCL
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push LCL 1
  @1
  D=A
  @LCL
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// call Math.multiply 2
// push return address onto stack
  @Math.multiply$ret.0
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's LCL to the stack
  @LCL
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's ARG to the stack
  @ARG
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's THIS to the stack
  @THIS
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's THAT to the stack
  @THAT
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// set the callee ARG to point at the first arg passed to the function
  @SP
  D=M
  @5
  D=D-A
  @2
  D=D-A
  @ARG
  M=D
// set the callee LCL point at the top of the stack
  @SP
  D=M
  @LCL
  M=D
// goto Math.multiply
  @Math.multiply
  0;JMP
// create return address label
(Math.multiply$ret.0)

// pop LCL 2
  @2
  D=A
  @LCL
  D=M+D
  @R13
  M=D
  @SP
  AM=M-1
  D=M
  @R13
  A=M
  M=D

// push LCL 2
  @2
  D=A
  @LCL
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push ARG 0
  @0
  D=A
  @ARG
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// gt
  @SP
  AM=M-1
  D=M
  A=A-1
  D=M-D
  @TRUE521
  D;JGT
  @SP
  A=M-1
  M=0
  @CONTINUE521
  0;JMP
(TRUE521)
  @SP
  A=M-1
  M=-1
(CONTINUE521)

// not
  @SP
  A=M-1
  M=!M

// push LCL 2
  @2
  D=A
  @LCL
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 0
  @0
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// lt
  @SP
  AM=M-1
  D=M
  A=A-1
  D=M-D
  @TRUE525
  D;JLT
  @SP
  A=M-1
  M=0
  @CONTINUE525
  0;JMP
(TRUE525)
  @SP
  A=M-1
  M=-1
(CONTINUE525)

// not
  @SP
  A=M-1
  M=!M

// and
  @SP
  AM=M-1
  D=M
  A=A-1
  M=M&D

// if-goto IF_TRUE1
  @SP
  AM=M-1
  D=M
  @IF_TRUE1
  D;JNE

// goto IF_FALSE1
  @IF_FALSE1
  0;JMP

// label IF_TRUE1
  (IF_TRUE1)

// push LCL 1
  @1
  D=A
  @LCL
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// pop LCL 3
  @3
  D=A
  @LCL
  D=M+D
  @R13
  M=D
  @SP
  AM=M-1
  D=M
  @R13
  A=M
  M=D

// label IF_FALSE1
  (IF_FALSE1)

// push LCL 0
  @0
  D=A
  @LCL
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 1
  @1
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// sub
  @SP
  AM=M-1
  D=M
  A=A-1
  M=M-D

// pop LCL 0
  @0
  D=A
  @LCL
  D=M+D
  @R13
  M=D
  @SP
  AM=M-1
  D=M
  @R13
  A=M
  M=D

// goto WHILE_EXP0
  @WHILE_EXP0
  0;JMP

// label WHILE_END0
  (WHILE_END0)

// push LCL 3
  @3
  D=A
  @LCL
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// return
// Store the start of the local stack (i.e. 'frame') in a temp variable
  @LCL
  D=M
  @R13
  M=D
// Store the return address in a temp variable
  @5
  A=D-A
  D=M
  @R14
  M=D
// Store the return value in the first argument (i.e. top of caller stack)
  @SP
  AM=M-1
  D=M
  @ARG
  A=M
  M=D
// Restore the caller's stack pointer (one after the return value)
  @ARG
  D=M+1
  @SP
  M=D
// Restore the caller's THAT segment
  @R13
  AM=M-1
  D=M
  @THAT
  M=D
// Restore the caller's THIS segment
  @R13
  AM=M-1
  D=M
  @THIS
  M=D
// Restore the caller's ARG segment
  @R13
  AM=M-1
  D=M
  @ARG
  M=D
// Restore the caller's LCL segment
  @R13
  AM=M-1
  D=M
  @LCL
  M=D
// Jump to the return address
  @R14
  A=M
  0;JMP

// function Math.max 0
  (Math.max)

// push ARG 0
  @0
  D=A
  @ARG
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push ARG 1
  @1
  D=A
  @ARG
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// gt
  @SP
  AM=M-1
  D=M
  A=A-1
  D=M-D
  @TRUE545
  D;JGT
  @SP
  A=M-1
  M=0
  @CONTINUE545
  0;JMP
(TRUE545)
  @SP
  A=M-1
  M=-1
(CONTINUE545)

// if-goto IF_TRUE0
  @SP
  AM=M-1
  D=M
  @IF_TRUE0
  D;JNE

// goto IF_FALSE0
  @IF_FALSE0
  0;JMP

// label IF_TRUE0
  (IF_TRUE0)

// push ARG 0
  @0
  D=A
  @ARG
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// pop ARG 1
  @1
  D=A
  @ARG
  D=M+D
  @R13
  M=D
  @SP
  AM=M-1
  D=M
  @R13
  A=M
  M=D

// label IF_FALSE0
  (IF_FALSE0)

// push ARG 1
  @1
  D=A
  @ARG
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// return
// Store the start of the local stack (i.e. 'frame') in a temp variable
  @LCL
  D=M
  @R13
  M=D
// Store the return address in a temp variable
  @5
  A=D-A
  D=M
  @R14
  M=D
// Store the return value in the first argument (i.e. top of caller stack)
  @SP
  AM=M-1
  D=M
  @ARG
  A=M
  M=D
// Restore the caller's stack pointer (one after the return value)
  @ARG
  D=M+1
  @SP
  M=D
// Restore the caller's THAT segment
  @R13
  AM=M-1
  D=M
  @THAT
  M=D
// Restore the caller's THIS segment
  @R13
  AM=M-1
  D=M
  @THIS
  M=D
// Restore the caller's ARG segment
  @R13
  AM=M-1
  D=M
  @ARG
  M=D
// Restore the caller's LCL segment
  @R13
  AM=M-1
  D=M
  @LCL
  M=D
// Jump to the return address
  @R14
  A=M
  0;JMP

// function Math.min 0
  (Math.min)

// push ARG 0
  @0
  D=A
  @ARG
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push ARG 1
  @1
  D=A
  @ARG
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// lt
  @SP
  AM=M-1
  D=M
  A=A-1
  D=M-D
  @TRUE557
  D;JLT
  @SP
  A=M-1
  M=0
  @CONTINUE557
  0;JMP
(TRUE557)
  @SP
  A=M-1
  M=-1
(CONTINUE557)

// if-goto IF_TRUE0
  @SP
  AM=M-1
  D=M
  @IF_TRUE0
  D;JNE

// goto IF_FALSE0
  @IF_FALSE0
  0;JMP

// label IF_TRUE0
  (IF_TRUE0)

// push ARG 0
  @0
  D=A
  @ARG
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// pop ARG 1
  @1
  D=A
  @ARG
  D=M+D
  @R13
  M=D
  @SP
  AM=M-1
  D=M
  @R13
  A=M
  M=D

// label IF_FALSE0
  (IF_FALSE0)

// push ARG 1
  @1
  D=A
  @ARG
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// return
// Store the start of the local stack (i.e. 'frame') in a temp variable
  @LCL
  D=M
  @R13
  M=D
// Store the return address in a temp variable
  @5
  A=D-A
  D=M
  @R14
  M=D
// Store the return value in the first argument (i.e. top of caller stack)
  @SP
  AM=M-1
  D=M
  @ARG
  A=M
  M=D
// Restore the caller's stack pointer (one after the return value)
  @ARG
  D=M+1
  @SP
  M=D
// Restore the caller's THAT segment
  @R13
  AM=M-1
  D=M
  @THAT
  M=D
// Restore the caller's THIS segment
  @R13
  AM=M-1
  D=M
  @THIS
  M=D
// Restore the caller's ARG segment
  @R13
  AM=M-1
  D=M
  @ARG
  M=D
// Restore the caller's LCL segment
  @R13
  AM=M-1
  D=M
  @LCL
  M=D
// Jump to the return address
  @R14
  A=M
  0;JMP

// function Memory.init 0
  (Memory.init)

// push constant 0
  @0
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// pop static 0
  @SP
  AM=M-1
  D=M
  @Memory.0
  M=D

// push constant 2048
  @2048
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push static 0
  @Memory.0
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// add
  @SP
  AM=M-1
  D=M
  A=A-1
  M=M+D

// push constant 14334
  @14334
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// pop TEMP 0
  @5
  D=A
  @TEMP
  D=M+D
  @R13
  M=D
  @SP
  AM=M-1
  D=M
  @R13
  A=M
  M=D

// pop pointer 1
  @SP
  AM=M-1
  D=M
  @THAT
  M=D

// push TEMP 0
  @5
  D=A
  @TEMP
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// pop THAT 0
  @0
  D=A
  @THAT
  D=M+D
  @R13
  M=D
  @SP
  AM=M-1
  D=M
  @R13
  A=M
  M=D

// push constant 2049
  @2049
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push static 0
  @Memory.0
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// add
  @SP
  AM=M-1
  D=M
  A=A-1
  M=M+D

// push constant 2050
  @2050
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// pop TEMP 0
  @5
  D=A
  @TEMP
  D=M+D
  @R13
  M=D
  @SP
  AM=M-1
  D=M
  @R13
  A=M
  M=D

// pop pointer 1
  @SP
  AM=M-1
  D=M
  @THAT
  M=D

// push TEMP 0
  @5
  D=A
  @TEMP
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// pop THAT 0
  @0
  D=A
  @THAT
  D=M+D
  @R13
  M=D
  @SP
  AM=M-1
  D=M
  @R13
  A=M
  M=D

// push constant 0
  @0
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// return
// Store the start of the local stack (i.e. 'frame') in a temp variable
  @LCL
  D=M
  @R13
  M=D
// Store the return address in a temp variable
  @5
  A=D-A
  D=M
  @R14
  M=D
// Store the return value in the first argument (i.e. top of caller stack)
  @SP
  AM=M-1
  D=M
  @ARG
  A=M
  M=D
// Restore the caller's stack pointer (one after the return value)
  @ARG
  D=M+1
  @SP
  M=D
// Restore the caller's THAT segment
  @R13
  AM=M-1
  D=M
  @THAT
  M=D
// Restore the caller's THIS segment
  @R13
  AM=M-1
  D=M
  @THIS
  M=D
// Restore the caller's ARG segment
  @R13
  AM=M-1
  D=M
  @ARG
  M=D
// Restore the caller's LCL segment
  @R13
  AM=M-1
  D=M
  @LCL
  M=D
// Jump to the return address
  @R14
  A=M
  0;JMP

// function Memory.peek 0
  (Memory.peek)

// push ARG 0
  @0
  D=A
  @ARG
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push static 0
  @Memory.0
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// add
  @SP
  AM=M-1
  D=M
  A=A-1
  M=M+D

// pop pointer 1
  @SP
  AM=M-1
  D=M
  @THAT
  M=D

// push THAT 0
  @0
  D=A
  @THAT
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// return
// Store the start of the local stack (i.e. 'frame') in a temp variable
  @LCL
  D=M
  @R13
  M=D
// Store the return address in a temp variable
  @5
  A=D-A
  D=M
  @R14
  M=D
// Store the return value in the first argument (i.e. top of caller stack)
  @SP
  AM=M-1
  D=M
  @ARG
  A=M
  M=D
// Restore the caller's stack pointer (one after the return value)
  @ARG
  D=M+1
  @SP
  M=D
// Restore the caller's THAT segment
  @R13
  AM=M-1
  D=M
  @THAT
  M=D
// Restore the caller's THIS segment
  @R13
  AM=M-1
  D=M
  @THIS
  M=D
// Restore the caller's ARG segment
  @R13
  AM=M-1
  D=M
  @ARG
  M=D
// Restore the caller's LCL segment
  @R13
  AM=M-1
  D=M
  @LCL
  M=D
// Jump to the return address
  @R14
  A=M
  0;JMP

// function Memory.poke 0
  (Memory.poke)

// push ARG 0
  @0
  D=A
  @ARG
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push static 0
  @Memory.0
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// add
  @SP
  AM=M-1
  D=M
  A=A-1
  M=M+D

// push ARG 1
  @1
  D=A
  @ARG
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// pop TEMP 0
  @5
  D=A
  @TEMP
  D=M+D
  @R13
  M=D
  @SP
  AM=M-1
  D=M
  @R13
  A=M
  M=D

// pop pointer 1
  @SP
  AM=M-1
  D=M
  @THAT
  M=D

// push TEMP 0
  @5
  D=A
  @TEMP
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// pop THAT 0
  @0
  D=A
  @THAT
  D=M+D
  @R13
  M=D
  @SP
  AM=M-1
  D=M
  @R13
  A=M
  M=D

// push constant 0
  @0
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// return
// Store the start of the local stack (i.e. 'frame') in a temp variable
  @LCL
  D=M
  @R13
  M=D
// Store the return address in a temp variable
  @5
  A=D-A
  D=M
  @R14
  M=D
// Store the return value in the first argument (i.e. top of caller stack)
  @SP
  AM=M-1
  D=M
  @ARG
  A=M
  M=D
// Restore the caller's stack pointer (one after the return value)
  @ARG
  D=M+1
  @SP
  M=D
// Restore the caller's THAT segment
  @R13
  AM=M-1
  D=M
  @THAT
  M=D
// Restore the caller's THIS segment
  @R13
  AM=M-1
  D=M
  @THIS
  M=D
// Restore the caller's ARG segment
  @R13
  AM=M-1
  D=M
  @ARG
  M=D
// Restore the caller's LCL segment
  @R13
  AM=M-1
  D=M
  @LCL
  M=D
// Jump to the return address
  @R14
  A=M
  0;JMP

// function Memory.alloc 2
  (Memory.alloc)
  @SP
  A=M
  M=0
  @SP
  M=M+1
  @SP
  A=M
  M=0
  @SP
  M=M+1

// push ARG 0
  @0
  D=A
  @ARG
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 0
  @0
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// lt
  @SP
  AM=M-1
  D=M
  A=A-1
  D=M-D
  @TRUE608
  D;JLT
  @SP
  A=M-1
  M=0
  @CONTINUE608
  0;JMP
(TRUE608)
  @SP
  A=M-1
  M=-1
(CONTINUE608)

// if-goto IF_TRUE0
  @SP
  AM=M-1
  D=M
  @IF_TRUE0
  D;JNE

// goto IF_FALSE0
  @IF_FALSE0
  0;JMP

// label IF_TRUE0
  (IF_TRUE0)

// push constant 5
  @5
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// call Sys.error 1
// push return address onto stack
  @Sys.error$ret.3
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's LCL to the stack
  @LCL
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's ARG to the stack
  @ARG
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's THIS to the stack
  @THIS
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's THAT to the stack
  @THAT
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// set the callee ARG to point at the first arg passed to the function
  @SP
  D=M
  @5
  D=D-A
  @1
  D=D-A
  @ARG
  M=D
// set the callee LCL point at the top of the stack
  @SP
  D=M
  @LCL
  M=D
// goto Sys.error
  @Sys.error
  0;JMP
// create return address label
(Sys.error$ret.3)

// pop TEMP 0
  @5
  D=A
  @TEMP
  D=M+D
  @R13
  M=D
  @SP
  AM=M-1
  D=M
  @R13
  A=M
  M=D

// label IF_FALSE0
  (IF_FALSE0)

// push ARG 0
  @0
  D=A
  @ARG
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 0
  @0
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// eq
  @SP
  AM=M-1
  D=M
  A=A-1
  D=M-D
  @TRUE618
  D;JEQ
  @SP
  A=M-1
  M=0
  @CONTINUE618
  0;JMP
(TRUE618)
  @SP
  A=M-1
  M=-1
(CONTINUE618)

// if-goto IF_TRUE1
  @SP
  AM=M-1
  D=M
  @IF_TRUE1
  D;JNE

// goto IF_FALSE1
  @IF_FALSE1
  0;JMP

// label IF_TRUE1
  (IF_TRUE1)

// push constant 1
  @1
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// pop ARG 0
  @0
  D=A
  @ARG
  D=M+D
  @R13
  M=D
  @SP
  AM=M-1
  D=M
  @R13
  A=M
  M=D

// label IF_FALSE1
  (IF_FALSE1)

// push constant 2048
  @2048
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// pop LCL 0
  @0
  D=A
  @LCL
  D=M+D
  @R13
  M=D
  @SP
  AM=M-1
  D=M
  @R13
  A=M
  M=D

// label WHILE_EXP0
  (WHILE_EXP0)

// push LCL 0
  @0
  D=A
  @LCL
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 16383
  @16383
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// lt
  @SP
  AM=M-1
  D=M
  A=A-1
  D=M-D
  @TRUE630
  D;JLT
  @SP
  A=M-1
  M=0
  @CONTINUE630
  0;JMP
(TRUE630)
  @SP
  A=M-1
  M=-1
(CONTINUE630)

// push constant 0
  @0
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push LCL 0
  @0
  D=A
  @LCL
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// add
  @SP
  AM=M-1
  D=M
  A=A-1
  M=M+D

// pop pointer 1
  @SP
  AM=M-1
  D=M
  @THAT
  M=D

// push THAT 0
  @0
  D=A
  @THAT
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push ARG 0
  @0
  D=A
  @ARG
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// lt
  @SP
  AM=M-1
  D=M
  A=A-1
  D=M-D
  @TRUE637
  D;JLT
  @SP
  A=M-1
  M=0
  @CONTINUE637
  0;JMP
(TRUE637)
  @SP
  A=M-1
  M=-1
(CONTINUE637)

// and
  @SP
  AM=M-1
  D=M
  A=A-1
  M=M&D

// not
  @SP
  A=M-1
  M=!M

// if-goto WHILE_END0
  @SP
  AM=M-1
  D=M
  @WHILE_END0
  D;JNE

// push constant 1
  @1
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push LCL 0
  @0
  D=A
  @LCL
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// add
  @SP
  AM=M-1
  D=M
  A=A-1
  M=M+D

// pop pointer 1
  @SP
  AM=M-1
  D=M
  @THAT
  M=D

// push THAT 0
  @0
  D=A
  @THAT
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// pop LCL 1
  @1
  D=A
  @LCL
  D=M+D
  @R13
  M=D
  @SP
  AM=M-1
  D=M
  @R13
  A=M
  M=D

// push constant 0
  @0
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push LCL 0
  @0
  D=A
  @LCL
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// add
  @SP
  AM=M-1
  D=M
  A=A-1
  M=M+D

// pop pointer 1
  @SP
  AM=M-1
  D=M
  @THAT
  M=D

// push THAT 0
  @0
  D=A
  @THAT
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 0
  @0
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// eq
  @SP
  AM=M-1
  D=M
  A=A-1
  D=M-D
  @TRUE653
  D;JEQ
  @SP
  A=M-1
  M=0
  @CONTINUE653
  0;JMP
(TRUE653)
  @SP
  A=M-1
  M=-1
(CONTINUE653)

// push LCL 1
  @1
  D=A
  @LCL
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 16382
  @16382
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// gt
  @SP
  AM=M-1
  D=M
  A=A-1
  D=M-D
  @TRUE656
  D;JGT
  @SP
  A=M-1
  M=0
  @CONTINUE656
  0;JMP
(TRUE656)
  @SP
  A=M-1
  M=-1
(CONTINUE656)

// or
  @SP
  AM=M-1
  D=M
  A=A-1
  M=M|D

// push constant 0
  @0
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push LCL 1
  @1
  D=A
  @LCL
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// add
  @SP
  AM=M-1
  D=M
  A=A-1
  M=M+D

// pop pointer 1
  @SP
  AM=M-1
  D=M
  @THAT
  M=D

// push THAT 0
  @0
  D=A
  @THAT
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 0
  @0
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// eq
  @SP
  AM=M-1
  D=M
  A=A-1
  D=M-D
  @TRUE664
  D;JEQ
  @SP
  A=M-1
  M=0
  @CONTINUE664
  0;JMP
(TRUE664)
  @SP
  A=M-1
  M=-1
(CONTINUE664)

// or
  @SP
  AM=M-1
  D=M
  A=A-1
  M=M|D

// if-goto IF_TRUE2
  @SP
  AM=M-1
  D=M
  @IF_TRUE2
  D;JNE

// goto IF_FALSE2
  @IF_FALSE2
  0;JMP

// label IF_TRUE2
  (IF_TRUE2)

// push LCL 1
  @1
  D=A
  @LCL
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// pop LCL 0
  @0
  D=A
  @LCL
  D=M+D
  @R13
  M=D
  @SP
  AM=M-1
  D=M
  @R13
  A=M
  M=D

// goto IF_END2
  @IF_END2
  0;JMP

// label IF_FALSE2
  (IF_FALSE2)

// push constant 0
  @0
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push LCL 0
  @0
  D=A
  @LCL
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// add
  @SP
  AM=M-1
  D=M
  A=A-1
  M=M+D

// push constant 1
  @1
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push LCL 0
  @0
  D=A
  @LCL
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// add
  @SP
  AM=M-1
  D=M
  A=A-1
  M=M+D

// pop pointer 1
  @SP
  AM=M-1
  D=M
  @THAT
  M=D

// push THAT 0
  @0
  D=A
  @THAT
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push LCL 0
  @0
  D=A
  @LCL
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// sub
  @SP
  AM=M-1
  D=M
  A=A-1
  M=M-D

// push constant 0
  @0
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push LCL 1
  @1
  D=A
  @LCL
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// add
  @SP
  AM=M-1
  D=M
  A=A-1
  M=M+D

// pop pointer 1
  @SP
  AM=M-1
  D=M
  @THAT
  M=D

// push THAT 0
  @0
  D=A
  @THAT
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// add
  @SP
  AM=M-1
  D=M
  A=A-1
  M=M+D

// pop TEMP 0
  @5
  D=A
  @TEMP
  D=M+D
  @R13
  M=D
  @SP
  AM=M-1
  D=M
  @R13
  A=M
  M=D

// pop pointer 1
  @SP
  AM=M-1
  D=M
  @THAT
  M=D

// push TEMP 0
  @5
  D=A
  @TEMP
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// pop THAT 0
  @0
  D=A
  @THAT
  D=M+D
  @R13
  M=D
  @SP
  AM=M-1
  D=M
  @R13
  A=M
  M=D

// push constant 1
  @1
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push LCL 1
  @1
  D=A
  @LCL
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// add
  @SP
  AM=M-1
  D=M
  A=A-1
  M=M+D

// pop pointer 1
  @SP
  AM=M-1
  D=M
  @THAT
  M=D

// push THAT 0
  @0
  D=A
  @THAT
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push LCL 1
  @1
  D=A
  @LCL
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 2
  @2
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// add
  @SP
  AM=M-1
  D=M
  A=A-1
  M=M+D

// eq
  @SP
  AM=M-1
  D=M
  A=A-1
  D=M-D
  @TRUE701
  D;JEQ
  @SP
  A=M-1
  M=0
  @CONTINUE701
  0;JMP
(TRUE701)
  @SP
  A=M-1
  M=-1
(CONTINUE701)

// if-goto IF_TRUE3
  @SP
  AM=M-1
  D=M
  @IF_TRUE3
  D;JNE

// goto IF_FALSE3
  @IF_FALSE3
  0;JMP

// label IF_TRUE3
  (IF_TRUE3)

// push constant 1
  @1
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push LCL 0
  @0
  D=A
  @LCL
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// add
  @SP
  AM=M-1
  D=M
  A=A-1
  M=M+D

// push LCL 0
  @0
  D=A
  @LCL
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 2
  @2
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// add
  @SP
  AM=M-1
  D=M
  A=A-1
  M=M+D

// pop TEMP 0
  @5
  D=A
  @TEMP
  D=M+D
  @R13
  M=D
  @SP
  AM=M-1
  D=M
  @R13
  A=M
  M=D

// pop pointer 1
  @SP
  AM=M-1
  D=M
  @THAT
  M=D

// push TEMP 0
  @5
  D=A
  @TEMP
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// pop THAT 0
  @0
  D=A
  @THAT
  D=M+D
  @R13
  M=D
  @SP
  AM=M-1
  D=M
  @R13
  A=M
  M=D

// goto IF_END3
  @IF_END3
  0;JMP

// label IF_FALSE3
  (IF_FALSE3)

// push constant 1
  @1
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push LCL 0
  @0
  D=A
  @LCL
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// add
  @SP
  AM=M-1
  D=M
  A=A-1
  M=M+D

// push constant 1
  @1
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push LCL 1
  @1
  D=A
  @LCL
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// add
  @SP
  AM=M-1
  D=M
  A=A-1
  M=M+D

// pop pointer 1
  @SP
  AM=M-1
  D=M
  @THAT
  M=D

// push THAT 0
  @0
  D=A
  @THAT
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// pop TEMP 0
  @5
  D=A
  @TEMP
  D=M+D
  @R13
  M=D
  @SP
  AM=M-1
  D=M
  @R13
  A=M
  M=D

// pop pointer 1
  @SP
  AM=M-1
  D=M
  @THAT
  M=D

// push TEMP 0
  @5
  D=A
  @TEMP
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// pop THAT 0
  @0
  D=A
  @THAT
  D=M+D
  @R13
  M=D
  @SP
  AM=M-1
  D=M
  @R13
  A=M
  M=D

// label IF_END3
  (IF_END3)

// label IF_END2
  (IF_END2)

// goto WHILE_EXP0
  @WHILE_EXP0
  0;JMP

// label WHILE_END0
  (WHILE_END0)

// push LCL 0
  @0
  D=A
  @LCL
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push ARG 0
  @0
  D=A
  @ARG
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// add
  @SP
  AM=M-1
  D=M
  A=A-1
  M=M+D

// push constant 16379
  @16379
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// gt
  @SP
  AM=M-1
  D=M
  A=A-1
  D=M-D
  @TRUE737
  D;JGT
  @SP
  A=M-1
  M=0
  @CONTINUE737
  0;JMP
(TRUE737)
  @SP
  A=M-1
  M=-1
(CONTINUE737)

// if-goto IF_TRUE4
  @SP
  AM=M-1
  D=M
  @IF_TRUE4
  D;JNE

// goto IF_FALSE4
  @IF_FALSE4
  0;JMP

// label IF_TRUE4
  (IF_TRUE4)

// push constant 6
  @6
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// call Sys.error 1
// push return address onto stack
  @Sys.error$ret.4
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's LCL to the stack
  @LCL
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's ARG to the stack
  @ARG
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's THIS to the stack
  @THIS
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's THAT to the stack
  @THAT
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// set the callee ARG to point at the first arg passed to the function
  @SP
  D=M
  @5
  D=D-A
  @1
  D=D-A
  @ARG
  M=D
// set the callee LCL point at the top of the stack
  @SP
  D=M
  @LCL
  M=D
// goto Sys.error
  @Sys.error
  0;JMP
// create return address label
(Sys.error$ret.4)

// pop TEMP 0
  @5
  D=A
  @TEMP
  D=M+D
  @R13
  M=D
  @SP
  AM=M-1
  D=M
  @R13
  A=M
  M=D

// label IF_FALSE4
  (IF_FALSE4)

// push constant 0
  @0
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push LCL 0
  @0
  D=A
  @LCL
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// add
  @SP
  AM=M-1
  D=M
  A=A-1
  M=M+D

// pop pointer 1
  @SP
  AM=M-1
  D=M
  @THAT
  M=D

// push THAT 0
  @0
  D=A
  @THAT
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push ARG 0
  @0
  D=A
  @ARG
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 2
  @2
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// add
  @SP
  AM=M-1
  D=M
  A=A-1
  M=M+D

// gt
  @SP
  AM=M-1
  D=M
  A=A-1
  D=M-D
  @TRUE753
  D;JGT
  @SP
  A=M-1
  M=0
  @CONTINUE753
  0;JMP
(TRUE753)
  @SP
  A=M-1
  M=-1
(CONTINUE753)

// if-goto IF_TRUE5
  @SP
  AM=M-1
  D=M
  @IF_TRUE5
  D;JNE

// goto IF_FALSE5
  @IF_FALSE5
  0;JMP

// label IF_TRUE5
  (IF_TRUE5)

// push ARG 0
  @0
  D=A
  @ARG
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 2
  @2
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// add
  @SP
  AM=M-1
  D=M
  A=A-1
  M=M+D

// push LCL 0
  @0
  D=A
  @LCL
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// add
  @SP
  AM=M-1
  D=M
  A=A-1
  M=M+D

// push constant 0
  @0
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push LCL 0
  @0
  D=A
  @LCL
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// add
  @SP
  AM=M-1
  D=M
  A=A-1
  M=M+D

// pop pointer 1
  @SP
  AM=M-1
  D=M
  @THAT
  M=D

// push THAT 0
  @0
  D=A
  @THAT
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push ARG 0
  @0
  D=A
  @ARG
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// sub
  @SP
  AM=M-1
  D=M
  A=A-1
  M=M-D

// push constant 2
  @2
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// sub
  @SP
  AM=M-1
  D=M
  A=A-1
  M=M-D

// pop TEMP 0
  @5
  D=A
  @TEMP
  D=M+D
  @R13
  M=D
  @SP
  AM=M-1
  D=M
  @R13
  A=M
  M=D

// pop pointer 1
  @SP
  AM=M-1
  D=M
  @THAT
  M=D

// push TEMP 0
  @5
  D=A
  @TEMP
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// pop THAT 0
  @0
  D=A
  @THAT
  D=M+D
  @R13
  M=D
  @SP
  AM=M-1
  D=M
  @R13
  A=M
  M=D

// push constant 1
  @1
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push LCL 0
  @0
  D=A
  @LCL
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// add
  @SP
  AM=M-1
  D=M
  A=A-1
  M=M+D

// pop pointer 1
  @SP
  AM=M-1
  D=M
  @THAT
  M=D

// push THAT 0
  @0
  D=A
  @THAT
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push LCL 0
  @0
  D=A
  @LCL
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 2
  @2
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// add
  @SP
  AM=M-1
  D=M
  A=A-1
  M=M+D

// eq
  @SP
  AM=M-1
  D=M
  A=A-1
  D=M-D
  @TRUE783
  D;JEQ
  @SP
  A=M-1
  M=0
  @CONTINUE783
  0;JMP
(TRUE783)
  @SP
  A=M-1
  M=-1
(CONTINUE783)

// if-goto IF_TRUE6
  @SP
  AM=M-1
  D=M
  @IF_TRUE6
  D;JNE

// goto IF_FALSE6
  @IF_FALSE6
  0;JMP

// label IF_TRUE6
  (IF_TRUE6)

// push ARG 0
  @0
  D=A
  @ARG
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 3
  @3
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// add
  @SP
  AM=M-1
  D=M
  A=A-1
  M=M+D

// push LCL 0
  @0
  D=A
  @LCL
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// add
  @SP
  AM=M-1
  D=M
  A=A-1
  M=M+D

// push LCL 0
  @0
  D=A
  @LCL
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push ARG 0
  @0
  D=A
  @ARG
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// add
  @SP
  AM=M-1
  D=M
  A=A-1
  M=M+D

// push constant 4
  @4
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// add
  @SP
  AM=M-1
  D=M
  A=A-1
  M=M+D

// pop TEMP 0
  @5
  D=A
  @TEMP
  D=M+D
  @R13
  M=D
  @SP
  AM=M-1
  D=M
  @R13
  A=M
  M=D

// pop pointer 1
  @SP
  AM=M-1
  D=M
  @THAT
  M=D

// push TEMP 0
  @5
  D=A
  @TEMP
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// pop THAT 0
  @0
  D=A
  @THAT
  D=M+D
  @R13
  M=D
  @SP
  AM=M-1
  D=M
  @R13
  A=M
  M=D

// goto IF_END6
  @IF_END6
  0;JMP

// label IF_FALSE6
  (IF_FALSE6)

// push ARG 0
  @0
  D=A
  @ARG
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 3
  @3
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// add
  @SP
  AM=M-1
  D=M
  A=A-1
  M=M+D

// push LCL 0
  @0
  D=A
  @LCL
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// add
  @SP
  AM=M-1
  D=M
  A=A-1
  M=M+D

// push constant 1
  @1
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push LCL 0
  @0
  D=A
  @LCL
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// add
  @SP
  AM=M-1
  D=M
  A=A-1
  M=M+D

// pop pointer 1
  @SP
  AM=M-1
  D=M
  @THAT
  M=D

// push THAT 0
  @0
  D=A
  @THAT
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// pop TEMP 0
  @5
  D=A
  @TEMP
  D=M+D
  @R13
  M=D
  @SP
  AM=M-1
  D=M
  @R13
  A=M
  M=D

// pop pointer 1
  @SP
  AM=M-1
  D=M
  @THAT
  M=D

// push TEMP 0
  @5
  D=A
  @TEMP
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// pop THAT 0
  @0
  D=A
  @THAT
  D=M+D
  @R13
  M=D
  @SP
  AM=M-1
  D=M
  @R13
  A=M
  M=D

// label IF_END6
  (IF_END6)

// push constant 1
  @1
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push LCL 0
  @0
  D=A
  @LCL
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// add
  @SP
  AM=M-1
  D=M
  A=A-1
  M=M+D

// push LCL 0
  @0
  D=A
  @LCL
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push ARG 0
  @0
  D=A
  @ARG
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// add
  @SP
  AM=M-1
  D=M
  A=A-1
  M=M+D

// push constant 2
  @2
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// add
  @SP
  AM=M-1
  D=M
  A=A-1
  M=M+D

// pop TEMP 0
  @5
  D=A
  @TEMP
  D=M+D
  @R13
  M=D
  @SP
  AM=M-1
  D=M
  @R13
  A=M
  M=D

// pop pointer 1
  @SP
  AM=M-1
  D=M
  @THAT
  M=D

// push TEMP 0
  @5
  D=A
  @TEMP
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// pop THAT 0
  @0
  D=A
  @THAT
  D=M+D
  @R13
  M=D
  @SP
  AM=M-1
  D=M
  @R13
  A=M
  M=D

// label IF_FALSE5
  (IF_FALSE5)

// push constant 0
  @0
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push LCL 0
  @0
  D=A
  @LCL
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// add
  @SP
  AM=M-1
  D=M
  A=A-1
  M=M+D

// push constant 0
  @0
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// pop TEMP 0
  @5
  D=A
  @TEMP
  D=M+D
  @R13
  M=D
  @SP
  AM=M-1
  D=M
  @R13
  A=M
  M=D

// pop pointer 1
  @SP
  AM=M-1
  D=M
  @THAT
  M=D

// push TEMP 0
  @5
  D=A
  @TEMP
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// pop THAT 0
  @0
  D=A
  @THAT
  D=M+D
  @R13
  M=D
  @SP
  AM=M-1
  D=M
  @R13
  A=M
  M=D

// push LCL 0
  @0
  D=A
  @LCL
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 2
  @2
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// add
  @SP
  AM=M-1
  D=M
  A=A-1
  M=M+D

// return
// Store the start of the local stack (i.e. 'frame') in a temp variable
  @LCL
  D=M
  @R13
  M=D
// Store the return address in a temp variable
  @5
  A=D-A
  D=M
  @R14
  M=D
// Store the return value in the first argument (i.e. top of caller stack)
  @SP
  AM=M-1
  D=M
  @ARG
  A=M
  M=D
// Restore the caller's stack pointer (one after the return value)
  @ARG
  D=M+1
  @SP
  M=D
// Restore the caller's THAT segment
  @R13
  AM=M-1
  D=M
  @THAT
  M=D
// Restore the caller's THIS segment
  @R13
  AM=M-1
  D=M
  @THIS
  M=D
// Restore the caller's ARG segment
  @R13
  AM=M-1
  D=M
  @ARG
  M=D
// Restore the caller's LCL segment
  @R13
  AM=M-1
  D=M
  @LCL
  M=D
// Jump to the return address
  @R14
  A=M
  0;JMP

// function Memory.deAlloc 2
  (Memory.deAlloc)
  @SP
  A=M
  M=0
  @SP
  M=M+1
  @SP
  A=M
  M=0
  @SP
  M=M+1

// push ARG 0
  @0
  D=A
  @ARG
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 2
  @2
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// sub
  @SP
  AM=M-1
  D=M
  A=A-1
  M=M-D

// pop LCL 0
  @0
  D=A
  @LCL
  D=M+D
  @R13
  M=D
  @SP
  AM=M-1
  D=M
  @R13
  A=M
  M=D

// push constant 1
  @1
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push LCL 0
  @0
  D=A
  @LCL
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// add
  @SP
  AM=M-1
  D=M
  A=A-1
  M=M+D

// pop pointer 1
  @SP
  AM=M-1
  D=M
  @THAT
  M=D

// push THAT 0
  @0
  D=A
  @THAT
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// pop LCL 1
  @1
  D=A
  @LCL
  D=M+D
  @R13
  M=D
  @SP
  AM=M-1
  D=M
  @R13
  A=M
  M=D

// push constant 0
  @0
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push LCL 1
  @1
  D=A
  @LCL
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// add
  @SP
  AM=M-1
  D=M
  A=A-1
  M=M+D

// pop pointer 1
  @SP
  AM=M-1
  D=M
  @THAT
  M=D

// push THAT 0
  @0
  D=A
  @THAT
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 0
  @0
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// eq
  @SP
  AM=M-1
  D=M
  A=A-1
  D=M-D
  @TRUE860
  D;JEQ
  @SP
  A=M-1
  M=0
  @CONTINUE860
  0;JMP
(TRUE860)
  @SP
  A=M-1
  M=-1
(CONTINUE860)

// if-goto IF_TRUE0
  @SP
  AM=M-1
  D=M
  @IF_TRUE0
  D;JNE

// goto IF_FALSE0
  @IF_FALSE0
  0;JMP

// label IF_TRUE0
  (IF_TRUE0)

// push constant 0
  @0
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push LCL 0
  @0
  D=A
  @LCL
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// add
  @SP
  AM=M-1
  D=M
  A=A-1
  M=M+D

// push constant 1
  @1
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push LCL 0
  @0
  D=A
  @LCL
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// add
  @SP
  AM=M-1
  D=M
  A=A-1
  M=M+D

// pop pointer 1
  @SP
  AM=M-1
  D=M
  @THAT
  M=D

// push THAT 0
  @0
  D=A
  @THAT
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push LCL 0
  @0
  D=A
  @LCL
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// sub
  @SP
  AM=M-1
  D=M
  A=A-1
  M=M-D

// push constant 2
  @2
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// sub
  @SP
  AM=M-1
  D=M
  A=A-1
  M=M-D

// pop TEMP 0
  @5
  D=A
  @TEMP
  D=M+D
  @R13
  M=D
  @SP
  AM=M-1
  D=M
  @R13
  A=M
  M=D

// pop pointer 1
  @SP
  AM=M-1
  D=M
  @THAT
  M=D

// push TEMP 0
  @5
  D=A
  @TEMP
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// pop THAT 0
  @0
  D=A
  @THAT
  D=M+D
  @R13
  M=D
  @SP
  AM=M-1
  D=M
  @R13
  A=M
  M=D

// goto IF_END0
  @IF_END0
  0;JMP

// label IF_FALSE0
  (IF_FALSE0)

// push constant 0
  @0
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push LCL 0
  @0
  D=A
  @LCL
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// add
  @SP
  AM=M-1
  D=M
  A=A-1
  M=M+D

// push constant 1
  @1
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push LCL 0
  @0
  D=A
  @LCL
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// add
  @SP
  AM=M-1
  D=M
  A=A-1
  M=M+D

// pop pointer 1
  @SP
  AM=M-1
  D=M
  @THAT
  M=D

// push THAT 0
  @0
  D=A
  @THAT
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push LCL 0
  @0
  D=A
  @LCL
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// sub
  @SP
  AM=M-1
  D=M
  A=A-1
  M=M-D

// push constant 0
  @0
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push LCL 1
  @1
  D=A
  @LCL
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// add
  @SP
  AM=M-1
  D=M
  A=A-1
  M=M+D

// pop pointer 1
  @SP
  AM=M-1
  D=M
  @THAT
  M=D

// push THAT 0
  @0
  D=A
  @THAT
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// add
  @SP
  AM=M-1
  D=M
  A=A-1
  M=M+D

// pop TEMP 0
  @5
  D=A
  @TEMP
  D=M+D
  @R13
  M=D
  @SP
  AM=M-1
  D=M
  @R13
  A=M
  M=D

// pop pointer 1
  @SP
  AM=M-1
  D=M
  @THAT
  M=D

// push TEMP 0
  @5
  D=A
  @TEMP
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// pop THAT 0
  @0
  D=A
  @THAT
  D=M+D
  @R13
  M=D
  @SP
  AM=M-1
  D=M
  @R13
  A=M
  M=D

// push constant 1
  @1
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push LCL 1
  @1
  D=A
  @LCL
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// add
  @SP
  AM=M-1
  D=M
  A=A-1
  M=M+D

// pop pointer 1
  @SP
  AM=M-1
  D=M
  @THAT
  M=D

// push THAT 0
  @0
  D=A
  @THAT
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push LCL 1
  @1
  D=A
  @LCL
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 2
  @2
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// add
  @SP
  AM=M-1
  D=M
  A=A-1
  M=M+D

// eq
  @SP
  AM=M-1
  D=M
  A=A-1
  D=M-D
  @TRUE910
  D;JEQ
  @SP
  A=M-1
  M=0
  @CONTINUE910
  0;JMP
(TRUE910)
  @SP
  A=M-1
  M=-1
(CONTINUE910)

// if-goto IF_TRUE1
  @SP
  AM=M-1
  D=M
  @IF_TRUE1
  D;JNE

// goto IF_FALSE1
  @IF_FALSE1
  0;JMP

// label IF_TRUE1
  (IF_TRUE1)

// push constant 1
  @1
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push LCL 0
  @0
  D=A
  @LCL
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// add
  @SP
  AM=M-1
  D=M
  A=A-1
  M=M+D

// push LCL 0
  @0
  D=A
  @LCL
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 2
  @2
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// add
  @SP
  AM=M-1
  D=M
  A=A-1
  M=M+D

// pop TEMP 0
  @5
  D=A
  @TEMP
  D=M+D
  @R13
  M=D
  @SP
  AM=M-1
  D=M
  @R13
  A=M
  M=D

// pop pointer 1
  @SP
  AM=M-1
  D=M
  @THAT
  M=D

// push TEMP 0
  @5
  D=A
  @TEMP
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// pop THAT 0
  @0
  D=A
  @THAT
  D=M+D
  @R13
  M=D
  @SP
  AM=M-1
  D=M
  @R13
  A=M
  M=D

// goto IF_END1
  @IF_END1
  0;JMP

// label IF_FALSE1
  (IF_FALSE1)

// push constant 1
  @1
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push LCL 0
  @0
  D=A
  @LCL
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// add
  @SP
  AM=M-1
  D=M
  A=A-1
  M=M+D

// push constant 1
  @1
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push LCL 1
  @1
  D=A
  @LCL
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// add
  @SP
  AM=M-1
  D=M
  A=A-1
  M=M+D

// pop pointer 1
  @SP
  AM=M-1
  D=M
  @THAT
  M=D

// push THAT 0
  @0
  D=A
  @THAT
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// pop TEMP 0
  @5
  D=A
  @TEMP
  D=M+D
  @R13
  M=D
  @SP
  AM=M-1
  D=M
  @R13
  A=M
  M=D

// pop pointer 1
  @SP
  AM=M-1
  D=M
  @THAT
  M=D

// push TEMP 0
  @5
  D=A
  @TEMP
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// pop THAT 0
  @0
  D=A
  @THAT
  D=M+D
  @R13
  M=D
  @SP
  AM=M-1
  D=M
  @R13
  A=M
  M=D

// label IF_END1
  (IF_END1)

// label IF_END0
  (IF_END0)

// push constant 0
  @0
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// return
// Store the start of the local stack (i.e. 'frame') in a temp variable
  @LCL
  D=M
  @R13
  M=D
// Store the return address in a temp variable
  @5
  A=D-A
  D=M
  @R14
  M=D
// Store the return value in the first argument (i.e. top of caller stack)
  @SP
  AM=M-1
  D=M
  @ARG
  A=M
  M=D
// Restore the caller's stack pointer (one after the return value)
  @ARG
  D=M+1
  @SP
  M=D
// Restore the caller's THAT segment
  @R13
  AM=M-1
  D=M
  @THAT
  M=D
// Restore the caller's THIS segment
  @R13
  AM=M-1
  D=M
  @THIS
  M=D
// Restore the caller's ARG segment
  @R13
  AM=M-1
  D=M
  @ARG
  M=D
// Restore the caller's LCL segment
  @R13
  AM=M-1
  D=M
  @LCL
  M=D
// Jump to the return address
  @R14
  A=M
  0;JMP

// function Output.init 0
  (Output.init)

// push constant 16384
  @16384
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// pop static 4
  @SP
  AM=M-1
  D=M
  @Output.4
  M=D

// push constant 0
  @0
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// not
  @SP
  A=M-1
  M=!M

// pop static 2
  @SP
  AM=M-1
  D=M
  @Output.2
  M=D

// push constant 32
  @32
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// pop static 1
  @SP
  AM=M-1
  D=M
  @Output.1
  M=D

// push constant 0
  @0
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// pop static 0
  @SP
  AM=M-1
  D=M
  @Output.0
  M=D

// push constant 6
  @6
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// call String.new 1
// push return address onto stack
  @String.new$ret.2
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's LCL to the stack
  @LCL
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's ARG to the stack
  @ARG
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's THIS to the stack
  @THIS
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's THAT to the stack
  @THAT
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// set the callee ARG to point at the first arg passed to the function
  @SP
  D=M
  @5
  D=D-A
  @1
  D=D-A
  @ARG
  M=D
// set the callee LCL point at the top of the stack
  @SP
  D=M
  @LCL
  M=D
// goto String.new
  @String.new
  0;JMP
// create return address label
(String.new$ret.2)

// pop static 3
  @SP
  AM=M-1
  D=M
  @Output.3
  M=D

// call Output.initMap 0
// push return address onto stack
  @Output.initMap$ret.0
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's LCL to the stack
  @LCL
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's ARG to the stack
  @ARG
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's THIS to the stack
  @THIS
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's THAT to the stack
  @THAT
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// set the callee ARG to point at the first arg passed to the function
  @SP
  D=M
  @5
  D=D-A
  @0
  D=D-A
  @ARG
  M=D
// set the callee LCL point at the top of the stack
  @SP
  D=M
  @LCL
  M=D
// goto Output.initMap
  @Output.initMap
  0;JMP
// create return address label
(Output.initMap$ret.0)

// pop TEMP 0
  @5
  D=A
  @TEMP
  D=M+D
  @R13
  M=D
  @SP
  AM=M-1
  D=M
  @R13
  A=M
  M=D

// call Output.createShiftedMap 0
// push return address onto stack
  @Output.createShiftedMap$ret.0
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's LCL to the stack
  @LCL
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's ARG to the stack
  @ARG
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's THIS to the stack
  @THIS
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's THAT to the stack
  @THAT
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// set the callee ARG to point at the first arg passed to the function
  @SP
  D=M
  @5
  D=D-A
  @0
  D=D-A
  @ARG
  M=D
// set the callee LCL point at the top of the stack
  @SP
  D=M
  @LCL
  M=D
// goto Output.createShiftedMap
  @Output.createShiftedMap
  0;JMP
// create return address label
(Output.createShiftedMap$ret.0)

// pop TEMP 0
  @5
  D=A
  @TEMP
  D=M+D
  @R13
  M=D
  @SP
  AM=M-1
  D=M
  @R13
  A=M
  M=D

// push constant 0
  @0
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// return
// Store the start of the local stack (i.e. 'frame') in a temp variable
  @LCL
  D=M
  @R13
  M=D
// Store the return address in a temp variable
  @5
  A=D-A
  D=M
  @R14
  M=D
// Store the return value in the first argument (i.e. top of caller stack)
  @SP
  AM=M-1
  D=M
  @ARG
  A=M
  M=D
// Restore the caller's stack pointer (one after the return value)
  @ARG
  D=M+1
  @SP
  M=D
// Restore the caller's THAT segment
  @R13
  AM=M-1
  D=M
  @THAT
  M=D
// Restore the caller's THIS segment
  @R13
  AM=M-1
  D=M
  @THIS
  M=D
// Restore the caller's ARG segment
  @R13
  AM=M-1
  D=M
  @ARG
  M=D
// Restore the caller's LCL segment
  @R13
  AM=M-1
  D=M
  @LCL
  M=D
// Jump to the return address
  @R14
  A=M
  0;JMP

// function Output.initMap 0
  (Output.initMap)

// push constant 127
  @127
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// call Array.new 1
// push return address onto stack
  @Array.new$ret.2
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's LCL to the stack
  @LCL
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's ARG to the stack
  @ARG
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's THIS to the stack
  @THIS
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's THAT to the stack
  @THAT
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// set the callee ARG to point at the first arg passed to the function
  @SP
  D=M
  @5
  D=D-A
  @1
  D=D-A
  @ARG
  M=D
// set the callee LCL point at the top of the stack
  @SP
  D=M
  @LCL
  M=D
// goto Array.new
  @Array.new
  0;JMP
// create return address label
(Array.new$ret.2)

// pop static 5
  @SP
  AM=M-1
  D=M
  @Output.5
  M=D

// push constant 0
  @0
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 63
  @63
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 63
  @63
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 63
  @63
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 63
  @63
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 63
  @63
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 63
  @63
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 63
  @63
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 63
  @63
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 63
  @63
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 0
  @0
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 0
  @0
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// call Output.create 12
// push return address onto stack
  @Output.create$ret.0
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's LCL to the stack
  @LCL
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's ARG to the stack
  @ARG
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's THIS to the stack
  @THIS
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's THAT to the stack
  @THAT
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// set the callee ARG to point at the first arg passed to the function
  @SP
  D=M
  @5
  D=D-A
  @12
  D=D-A
  @ARG
  M=D
// set the callee LCL point at the top of the stack
  @SP
  D=M
  @LCL
  M=D
// goto Output.create
  @Output.create
  0;JMP
// create return address label
(Output.create$ret.0)

// pop TEMP 0
  @5
  D=A
  @TEMP
  D=M+D
  @R13
  M=D
  @SP
  AM=M-1
  D=M
  @R13
  A=M
  M=D

// push constant 32
  @32
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 0
  @0
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 0
  @0
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 0
  @0
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 0
  @0
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 0
  @0
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 0
  @0
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 0
  @0
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 0
  @0
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 0
  @0
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 0
  @0
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 0
  @0
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// call Output.create 12
// push return address onto stack
  @Output.create$ret.1
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's LCL to the stack
  @LCL
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's ARG to the stack
  @ARG
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's THIS to the stack
  @THIS
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's THAT to the stack
  @THAT
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// set the callee ARG to point at the first arg passed to the function
  @SP
  D=M
  @5
  D=D-A
  @12
  D=D-A
  @ARG
  M=D
// set the callee LCL point at the top of the stack
  @SP
  D=M
  @LCL
  M=D
// goto Output.create
  @Output.create
  0;JMP
// create return address label
(Output.create$ret.1)

// pop TEMP 0
  @5
  D=A
  @TEMP
  D=M+D
  @R13
  M=D
  @SP
  AM=M-1
  D=M
  @R13
  A=M
  M=D

// push constant 33
  @33
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 12
  @12
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 30
  @30
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 30
  @30
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 30
  @30
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 12
  @12
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 12
  @12
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 0
  @0
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 12
  @12
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 12
  @12
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 0
  @0
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 0
  @0
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// call Output.create 12
// push return address onto stack
  @Output.create$ret.2
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's LCL to the stack
  @LCL
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's ARG to the stack
  @ARG
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's THIS to the stack
  @THIS
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's THAT to the stack
  @THAT
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// set the callee ARG to point at the first arg passed to the function
  @SP
  D=M
  @5
  D=D-A
  @12
  D=D-A
  @ARG
  M=D
// set the callee LCL point at the top of the stack
  @SP
  D=M
  @LCL
  M=D
// goto Output.create
  @Output.create
  0;JMP
// create return address label
(Output.create$ret.2)

// pop TEMP 0
  @5
  D=A
  @TEMP
  D=M+D
  @R13
  M=D
  @SP
  AM=M-1
  D=M
  @R13
  A=M
  M=D

// push constant 34
  @34
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 54
  @54
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 54
  @54
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 20
  @20
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 0
  @0
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 0
  @0
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 0
  @0
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 0
  @0
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 0
  @0
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 0
  @0
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 0
  @0
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 0
  @0
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// call Output.create 12
// push return address onto stack
  @Output.create$ret.3
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's LCL to the stack
  @LCL
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's ARG to the stack
  @ARG
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's THIS to the stack
  @THIS
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's THAT to the stack
  @THAT
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// set the callee ARG to point at the first arg passed to the function
  @SP
  D=M
  @5
  D=D-A
  @12
  D=D-A
  @ARG
  M=D
// set the callee LCL point at the top of the stack
  @SP
  D=M
  @LCL
  M=D
// goto Output.create
  @Output.create
  0;JMP
// create return address label
(Output.create$ret.3)

// pop TEMP 0
  @5
  D=A
  @TEMP
  D=M+D
  @R13
  M=D
  @SP
  AM=M-1
  D=M
  @R13
  A=M
  M=D

// push constant 35
  @35
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 0
  @0
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 18
  @18
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 18
  @18
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 63
  @63
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 18
  @18
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 18
  @18
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 63
  @63
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 18
  @18
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 18
  @18
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 0
  @0
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 0
  @0
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// call Output.create 12
// push return address onto stack
  @Output.create$ret.4
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's LCL to the stack
  @LCL
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's ARG to the stack
  @ARG
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's THIS to the stack
  @THIS
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's THAT to the stack
  @THAT
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// set the callee ARG to point at the first arg passed to the function
  @SP
  D=M
  @5
  D=D-A
  @12
  D=D-A
  @ARG
  M=D
// set the callee LCL point at the top of the stack
  @SP
  D=M
  @LCL
  M=D
// goto Output.create
  @Output.create
  0;JMP
// create return address label
(Output.create$ret.4)

// pop TEMP 0
  @5
  D=A
  @TEMP
  D=M+D
  @R13
  M=D
  @SP
  AM=M-1
  D=M
  @R13
  A=M
  M=D

// push constant 36
  @36
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 12
  @12
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 30
  @30
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 51
  @51
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 3
  @3
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 30
  @30
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 48
  @48
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 51
  @51
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 30
  @30
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 12
  @12
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 12
  @12
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 0
  @0
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// call Output.create 12
// push return address onto stack
  @Output.create$ret.5
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's LCL to the stack
  @LCL
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's ARG to the stack
  @ARG
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's THIS to the stack
  @THIS
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's THAT to the stack
  @THAT
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// set the callee ARG to point at the first arg passed to the function
  @SP
  D=M
  @5
  D=D-A
  @12
  D=D-A
  @ARG
  M=D
// set the callee LCL point at the top of the stack
  @SP
  D=M
  @LCL
  M=D
// goto Output.create
  @Output.create
  0;JMP
// create return address label
(Output.create$ret.5)

// pop TEMP 0
  @5
  D=A
  @TEMP
  D=M+D
  @R13
  M=D
  @SP
  AM=M-1
  D=M
  @R13
  A=M
  M=D

// push constant 37
  @37
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 0
  @0
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 0
  @0
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 35
  @35
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 51
  @51
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 24
  @24
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 12
  @12
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 6
  @6
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 51
  @51
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 49
  @49
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 0
  @0
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 0
  @0
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// call Output.create 12
// push return address onto stack
  @Output.create$ret.6
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's LCL to the stack
  @LCL
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's ARG to the stack
  @ARG
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's THIS to the stack
  @THIS
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's THAT to the stack
  @THAT
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// set the callee ARG to point at the first arg passed to the function
  @SP
  D=M
  @5
  D=D-A
  @12
  D=D-A
  @ARG
  M=D
// set the callee LCL point at the top of the stack
  @SP
  D=M
  @LCL
  M=D
// goto Output.create
  @Output.create
  0;JMP
// create return address label
(Output.create$ret.6)

// pop TEMP 0
  @5
  D=A
  @TEMP
  D=M+D
  @R13
  M=D
  @SP
  AM=M-1
  D=M
  @R13
  A=M
  M=D

// push constant 38
  @38
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 12
  @12
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 30
  @30
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 30
  @30
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 12
  @12
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 54
  @54
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 27
  @27
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 27
  @27
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 27
  @27
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 54
  @54
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 0
  @0
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 0
  @0
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// call Output.create 12
// push return address onto stack
  @Output.create$ret.7
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's LCL to the stack
  @LCL
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's ARG to the stack
  @ARG
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's THIS to the stack
  @THIS
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's THAT to the stack
  @THAT
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// set the callee ARG to point at the first arg passed to the function
  @SP
  D=M
  @5
  D=D-A
  @12
  D=D-A
  @ARG
  M=D
// set the callee LCL point at the top of the stack
  @SP
  D=M
  @LCL
  M=D
// goto Output.create
  @Output.create
  0;JMP
// create return address label
(Output.create$ret.7)

// pop TEMP 0
  @5
  D=A
  @TEMP
  D=M+D
  @R13
  M=D
  @SP
  AM=M-1
  D=M
  @R13
  A=M
  M=D

// push constant 39
  @39
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 12
  @12
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 12
  @12
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 6
  @6
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 0
  @0
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 0
  @0
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 0
  @0
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 0
  @0
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 0
  @0
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 0
  @0
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 0
  @0
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 0
  @0
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// call Output.create 12
// push return address onto stack
  @Output.create$ret.8
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's LCL to the stack
  @LCL
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's ARG to the stack
  @ARG
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's THIS to the stack
  @THIS
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's THAT to the stack
  @THAT
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// set the callee ARG to point at the first arg passed to the function
  @SP
  D=M
  @5
  D=D-A
  @12
  D=D-A
  @ARG
  M=D
// set the callee LCL point at the top of the stack
  @SP
  D=M
  @LCL
  M=D
// goto Output.create
  @Output.create
  0;JMP
// create return address label
(Output.create$ret.8)

// pop TEMP 0
  @5
  D=A
  @TEMP
  D=M+D
  @R13
  M=D
  @SP
  AM=M-1
  D=M
  @R13
  A=M
  M=D

// push constant 40
  @40
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 24
  @24
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 12
  @12
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 6
  @6
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 6
  @6
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 6
  @6
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 6
  @6
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 6
  @6
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 12
  @12
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 24
  @24
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 0
  @0
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 0
  @0
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// call Output.create 12
// push return address onto stack
  @Output.create$ret.9
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's LCL to the stack
  @LCL
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's ARG to the stack
  @ARG
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's THIS to the stack
  @THIS
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's THAT to the stack
  @THAT
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// set the callee ARG to point at the first arg passed to the function
  @SP
  D=M
  @5
  D=D-A
  @12
  D=D-A
  @ARG
  M=D
// set the callee LCL point at the top of the stack
  @SP
  D=M
  @LCL
  M=D
// goto Output.create
  @Output.create
  0;JMP
// create return address label
(Output.create$ret.9)

// pop TEMP 0
  @5
  D=A
  @TEMP
  D=M+D
  @R13
  M=D
  @SP
  AM=M-1
  D=M
  @R13
  A=M
  M=D

// push constant 41
  @41
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 6
  @6
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 12
  @12
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 24
  @24
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 24
  @24
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 24
  @24
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 24
  @24
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 24
  @24
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 12
  @12
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 6
  @6
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 0
  @0
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 0
  @0
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// call Output.create 12
// push return address onto stack
  @Output.create$ret.10
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's LCL to the stack
  @LCL
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's ARG to the stack
  @ARG
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's THIS to the stack
  @THIS
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's THAT to the stack
  @THAT
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// set the callee ARG to point at the first arg passed to the function
  @SP
  D=M
  @5
  D=D-A
  @12
  D=D-A
  @ARG
  M=D
// set the callee LCL point at the top of the stack
  @SP
  D=M
  @LCL
  M=D
// goto Output.create
  @Output.create
  0;JMP
// create return address label
(Output.create$ret.10)

// pop TEMP 0
  @5
  D=A
  @TEMP
  D=M+D
  @R13
  M=D
  @SP
  AM=M-1
  D=M
  @R13
  A=M
  M=D

// push constant 42
  @42
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 0
  @0
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 0
  @0
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 0
  @0
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 51
  @51
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 30
  @30
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 63
  @63
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 30
  @30
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 51
  @51
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 0
  @0
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 0
  @0
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 0
  @0
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// call Output.create 12
// push return address onto stack
  @Output.create$ret.11
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's LCL to the stack
  @LCL
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's ARG to the stack
  @ARG
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's THIS to the stack
  @THIS
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's THAT to the stack
  @THAT
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// set the callee ARG to point at the first arg passed to the function
  @SP
  D=M
  @5
  D=D-A
  @12
  D=D-A
  @ARG
  M=D
// set the callee LCL point at the top of the stack
  @SP
  D=M
  @LCL
  M=D
// goto Output.create
  @Output.create
  0;JMP
// create return address label
(Output.create$ret.11)

// pop TEMP 0
  @5
  D=A
  @TEMP
  D=M+D
  @R13
  M=D
  @SP
  AM=M-1
  D=M
  @R13
  A=M
  M=D

// push constant 43
  @43
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 0
  @0
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 0
  @0
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 0
  @0
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 12
  @12
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 12
  @12
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 63
  @63
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 12
  @12
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 12
  @12
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 0
  @0
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 0
  @0
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 0
  @0
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// call Output.create 12
// push return address onto stack
  @Output.create$ret.12
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's LCL to the stack
  @LCL
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's ARG to the stack
  @ARG
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's THIS to the stack
  @THIS
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's THAT to the stack
  @THAT
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// set the callee ARG to point at the first arg passed to the function
  @SP
  D=M
  @5
  D=D-A
  @12
  D=D-A
  @ARG
  M=D
// set the callee LCL point at the top of the stack
  @SP
  D=M
  @LCL
  M=D
// goto Output.create
  @Output.create
  0;JMP
// create return address label
(Output.create$ret.12)

// pop TEMP 0
  @5
  D=A
  @TEMP
  D=M+D
  @R13
  M=D
  @SP
  AM=M-1
  D=M
  @R13
  A=M
  M=D

// push constant 44
  @44
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 0
  @0
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 0
  @0
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 0
  @0
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 0
  @0
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 0
  @0
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 0
  @0
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 0
  @0
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 12
  @12
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 12
  @12
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 6
  @6
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 0
  @0
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// call Output.create 12
// push return address onto stack
  @Output.create$ret.13
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's LCL to the stack
  @LCL
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's ARG to the stack
  @ARG
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's THIS to the stack
  @THIS
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's THAT to the stack
  @THAT
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// set the callee ARG to point at the first arg passed to the function
  @SP
  D=M
  @5
  D=D-A
  @12
  D=D-A
  @ARG
  M=D
// set the callee LCL point at the top of the stack
  @SP
  D=M
  @LCL
  M=D
// goto Output.create
  @Output.create
  0;JMP
// create return address label
(Output.create$ret.13)

// pop TEMP 0
  @5
  D=A
  @TEMP
  D=M+D
  @R13
  M=D
  @SP
  AM=M-1
  D=M
  @R13
  A=M
  M=D

// push constant 45
  @45
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 0
  @0
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 0
  @0
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 0
  @0
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 0
  @0
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 0
  @0
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 63
  @63
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 0
  @0
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 0
  @0
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 0
  @0
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 0
  @0
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 0
  @0
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// call Output.create 12
// push return address onto stack
  @Output.create$ret.14
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's LCL to the stack
  @LCL
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's ARG to the stack
  @ARG
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's THIS to the stack
  @THIS
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's THAT to the stack
  @THAT
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// set the callee ARG to point at the first arg passed to the function
  @SP
  D=M
  @5
  D=D-A
  @12
  D=D-A
  @ARG
  M=D
// set the callee LCL point at the top of the stack
  @SP
  D=M
  @LCL
  M=D
// goto Output.create
  @Output.create
  0;JMP
// create return address label
(Output.create$ret.14)

// pop TEMP 0
  @5
  D=A
  @TEMP
  D=M+D
  @R13
  M=D
  @SP
  AM=M-1
  D=M
  @R13
  A=M
  M=D

// push constant 46
  @46
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 0
  @0
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 0
  @0
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 0
  @0
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 0
  @0
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 0
  @0
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 0
  @0
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 0
  @0
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 12
  @12
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 12
  @12
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 0
  @0
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 0
  @0
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// call Output.create 12
// push return address onto stack
  @Output.create$ret.15
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's LCL to the stack
  @LCL
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's ARG to the stack
  @ARG
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's THIS to the stack
  @THIS
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's THAT to the stack
  @THAT
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// set the callee ARG to point at the first arg passed to the function
  @SP
  D=M
  @5
  D=D-A
  @12
  D=D-A
  @ARG
  M=D
// set the callee LCL point at the top of the stack
  @SP
  D=M
  @LCL
  M=D
// goto Output.create
  @Output.create
  0;JMP
// create return address label
(Output.create$ret.15)

// pop TEMP 0
  @5
  D=A
  @TEMP
  D=M+D
  @R13
  M=D
  @SP
  AM=M-1
  D=M
  @R13
  A=M
  M=D

// push constant 47
  @47
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 0
  @0
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 0
  @0
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 32
  @32
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 48
  @48
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 24
  @24
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 12
  @12
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 6
  @6
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 3
  @3
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 1
  @1
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 0
  @0
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 0
  @0
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// call Output.create 12
// push return address onto stack
  @Output.create$ret.16
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's LCL to the stack
  @LCL
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's ARG to the stack
  @ARG
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's THIS to the stack
  @THIS
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's THAT to the stack
  @THAT
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// set the callee ARG to point at the first arg passed to the function
  @SP
  D=M
  @5
  D=D-A
  @12
  D=D-A
  @ARG
  M=D
// set the callee LCL point at the top of the stack
  @SP
  D=M
  @LCL
  M=D
// goto Output.create
  @Output.create
  0;JMP
// create return address label
(Output.create$ret.16)

// pop TEMP 0
  @5
  D=A
  @TEMP
  D=M+D
  @R13
  M=D
  @SP
  AM=M-1
  D=M
  @R13
  A=M
  M=D

// push constant 48
  @48
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 12
  @12
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 30
  @30
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 51
  @51
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 51
  @51
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 51
  @51
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 51
  @51
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 51
  @51
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 30
  @30
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 12
  @12
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 0
  @0
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 0
  @0
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// call Output.create 12
// push return address onto stack
  @Output.create$ret.17
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's LCL to the stack
  @LCL
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's ARG to the stack
  @ARG
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's THIS to the stack
  @THIS
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's THAT to the stack
  @THAT
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// set the callee ARG to point at the first arg passed to the function
  @SP
  D=M
  @5
  D=D-A
  @12
  D=D-A
  @ARG
  M=D
// set the callee LCL point at the top of the stack
  @SP
  D=M
  @LCL
  M=D
// goto Output.create
  @Output.create
  0;JMP
// create return address label
(Output.create$ret.17)

// pop TEMP 0
  @5
  D=A
  @TEMP
  D=M+D
  @R13
  M=D
  @SP
  AM=M-1
  D=M
  @R13
  A=M
  M=D

// push constant 49
  @49
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 12
  @12
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 14
  @14
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 15
  @15
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 12
  @12
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 12
  @12
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 12
  @12
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 12
  @12
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 12
  @12
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 63
  @63
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 0
  @0
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 0
  @0
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// call Output.create 12
// push return address onto stack
  @Output.create$ret.18
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's LCL to the stack
  @LCL
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's ARG to the stack
  @ARG
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's THIS to the stack
  @THIS
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's THAT to the stack
  @THAT
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// set the callee ARG to point at the first arg passed to the function
  @SP
  D=M
  @5
  D=D-A
  @12
  D=D-A
  @ARG
  M=D
// set the callee LCL point at the top of the stack
  @SP
  D=M
  @LCL
  M=D
// goto Output.create
  @Output.create
  0;JMP
// create return address label
(Output.create$ret.18)

// pop TEMP 0
  @5
  D=A
  @TEMP
  D=M+D
  @R13
  M=D
  @SP
  AM=M-1
  D=M
  @R13
  A=M
  M=D

// push constant 50
  @50
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 30
  @30
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 51
  @51
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 48
  @48
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 24
  @24
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 12
  @12
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 6
  @6
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 3
  @3
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 51
  @51
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 63
  @63
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 0
  @0
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 0
  @0
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// call Output.create 12
// push return address onto stack
  @Output.create$ret.19
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's LCL to the stack
  @LCL
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's ARG to the stack
  @ARG
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's THIS to the stack
  @THIS
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's THAT to the stack
  @THAT
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// set the callee ARG to point at the first arg passed to the function
  @SP
  D=M
  @5
  D=D-A
  @12
  D=D-A
  @ARG
  M=D
// set the callee LCL point at the top of the stack
  @SP
  D=M
  @LCL
  M=D
// goto Output.create
  @Output.create
  0;JMP
// create return address label
(Output.create$ret.19)

// pop TEMP 0
  @5
  D=A
  @TEMP
  D=M+D
  @R13
  M=D
  @SP
  AM=M-1
  D=M
  @R13
  A=M
  M=D

// push constant 51
  @51
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 30
  @30
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 51
  @51
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 48
  @48
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 48
  @48
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 28
  @28
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 48
  @48
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 48
  @48
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 51
  @51
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 30
  @30
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 0
  @0
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 0
  @0
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// call Output.create 12
// push return address onto stack
  @Output.create$ret.20
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's LCL to the stack
  @LCL
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's ARG to the stack
  @ARG
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's THIS to the stack
  @THIS
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's THAT to the stack
  @THAT
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// set the callee ARG to point at the first arg passed to the function
  @SP
  D=M
  @5
  D=D-A
  @12
  D=D-A
  @ARG
  M=D
// set the callee LCL point at the top of the stack
  @SP
  D=M
  @LCL
  M=D
// goto Output.create
  @Output.create
  0;JMP
// create return address label
(Output.create$ret.20)

// pop TEMP 0
  @5
  D=A
  @TEMP
  D=M+D
  @R13
  M=D
  @SP
  AM=M-1
  D=M
  @R13
  A=M
  M=D

// push constant 52
  @52
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 16
  @16
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 24
  @24
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 28
  @28
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 26
  @26
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 25
  @25
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 63
  @63
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 24
  @24
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 24
  @24
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 60
  @60
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 0
  @0
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 0
  @0
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// call Output.create 12
// push return address onto stack
  @Output.create$ret.21
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's LCL to the stack
  @LCL
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's ARG to the stack
  @ARG
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's THIS to the stack
  @THIS
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's THAT to the stack
  @THAT
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// set the callee ARG to point at the first arg passed to the function
  @SP
  D=M
  @5
  D=D-A
  @12
  D=D-A
  @ARG
  M=D
// set the callee LCL point at the top of the stack
  @SP
  D=M
  @LCL
  M=D
// goto Output.create
  @Output.create
  0;JMP
// create return address label
(Output.create$ret.21)

// pop TEMP 0
  @5
  D=A
  @TEMP
  D=M+D
  @R13
  M=D
  @SP
  AM=M-1
  D=M
  @R13
  A=M
  M=D

// push constant 53
  @53
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 63
  @63
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 3
  @3
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 3
  @3
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 31
  @31
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 48
  @48
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 48
  @48
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 48
  @48
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 51
  @51
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 30
  @30
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 0
  @0
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 0
  @0
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// call Output.create 12
// push return address onto stack
  @Output.create$ret.22
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's LCL to the stack
  @LCL
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's ARG to the stack
  @ARG
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's THIS to the stack
  @THIS
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's THAT to the stack
  @THAT
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// set the callee ARG to point at the first arg passed to the function
  @SP
  D=M
  @5
  D=D-A
  @12
  D=D-A
  @ARG
  M=D
// set the callee LCL point at the top of the stack
  @SP
  D=M
  @LCL
  M=D
// goto Output.create
  @Output.create
  0;JMP
// create return address label
(Output.create$ret.22)

// pop TEMP 0
  @5
  D=A
  @TEMP
  D=M+D
  @R13
  M=D
  @SP
  AM=M-1
  D=M
  @R13
  A=M
  M=D

// push constant 54
  @54
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 28
  @28
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 6
  @6
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 3
  @3
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 3
  @3
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 31
  @31
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 51
  @51
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 51
  @51
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 51
  @51
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 30
  @30
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 0
  @0
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 0
  @0
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// call Output.create 12
// push return address onto stack
  @Output.create$ret.23
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's LCL to the stack
  @LCL
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's ARG to the stack
  @ARG
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's THIS to the stack
  @THIS
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's THAT to the stack
  @THAT
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// set the callee ARG to point at the first arg passed to the function
  @SP
  D=M
  @5
  D=D-A
  @12
  D=D-A
  @ARG
  M=D
// set the callee LCL point at the top of the stack
  @SP
  D=M
  @LCL
  M=D
// goto Output.create
  @Output.create
  0;JMP
// create return address label
(Output.create$ret.23)

// pop TEMP 0
  @5
  D=A
  @TEMP
  D=M+D
  @R13
  M=D
  @SP
  AM=M-1
  D=M
  @R13
  A=M
  M=D

// push constant 55
  @55
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 63
  @63
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 49
  @49
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 48
  @48
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 48
  @48
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 24
  @24
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 12
  @12
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 12
  @12
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 12
  @12
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 12
  @12
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 0
  @0
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 0
  @0
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// call Output.create 12
// push return address onto stack
  @Output.create$ret.24
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's LCL to the stack
  @LCL
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's ARG to the stack
  @ARG
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's THIS to the stack
  @THIS
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's THAT to the stack
  @THAT
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// set the callee ARG to point at the first arg passed to the function
  @SP
  D=M
  @5
  D=D-A
  @12
  D=D-A
  @ARG
  M=D
// set the callee LCL point at the top of the stack
  @SP
  D=M
  @LCL
  M=D
// goto Output.create
  @Output.create
  0;JMP
// create return address label
(Output.create$ret.24)

// pop TEMP 0
  @5
  D=A
  @TEMP
  D=M+D
  @R13
  M=D
  @SP
  AM=M-1
  D=M
  @R13
  A=M
  M=D

// push constant 56
  @56
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 30
  @30
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 51
  @51
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 51
  @51
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 51
  @51
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 30
  @30
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 51
  @51
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 51
  @51
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 51
  @51
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 30
  @30
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 0
  @0
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 0
  @0
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// call Output.create 12
// push return address onto stack
  @Output.create$ret.25
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's LCL to the stack
  @LCL
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's ARG to the stack
  @ARG
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's THIS to the stack
  @THIS
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's THAT to the stack
  @THAT
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// set the callee ARG to point at the first arg passed to the function
  @SP
  D=M
  @5
  D=D-A
  @12
  D=D-A
  @ARG
  M=D
// set the callee LCL point at the top of the stack
  @SP
  D=M
  @LCL
  M=D
// goto Output.create
  @Output.create
  0;JMP
// create return address label
(Output.create$ret.25)

// pop TEMP 0
  @5
  D=A
  @TEMP
  D=M+D
  @R13
  M=D
  @SP
  AM=M-1
  D=M
  @R13
  A=M
  M=D

// push constant 57
  @57
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 30
  @30
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 51
  @51
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 51
  @51
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 51
  @51
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 62
  @62
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 48
  @48
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 48
  @48
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 24
  @24
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 14
  @14
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 0
  @0
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 0
  @0
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// call Output.create 12
// push return address onto stack
  @Output.create$ret.26
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's LCL to the stack
  @LCL
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's ARG to the stack
  @ARG
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's THIS to the stack
  @THIS
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's THAT to the stack
  @THAT
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// set the callee ARG to point at the first arg passed to the function
  @SP
  D=M
  @5
  D=D-A
  @12
  D=D-A
  @ARG
  M=D
// set the callee LCL point at the top of the stack
  @SP
  D=M
  @LCL
  M=D
// goto Output.create
  @Output.create
  0;JMP
// create return address label
(Output.create$ret.26)

// pop TEMP 0
  @5
  D=A
  @TEMP
  D=M+D
  @R13
  M=D
  @SP
  AM=M-1
  D=M
  @R13
  A=M
  M=D

// push constant 58
  @58
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 0
  @0
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 0
  @0
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 12
  @12
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 12
  @12
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 0
  @0
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 0
  @0
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 12
  @12
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 12
  @12
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 0
  @0
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 0
  @0
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 0
  @0
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// call Output.create 12
// push return address onto stack
  @Output.create$ret.27
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's LCL to the stack
  @LCL
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's ARG to the stack
  @ARG
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's THIS to the stack
  @THIS
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's THAT to the stack
  @THAT
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// set the callee ARG to point at the first arg passed to the function
  @SP
  D=M
  @5
  D=D-A
  @12
  D=D-A
  @ARG
  M=D
// set the callee LCL point at the top of the stack
  @SP
  D=M
  @LCL
  M=D
// goto Output.create
  @Output.create
  0;JMP
// create return address label
(Output.create$ret.27)

// pop TEMP 0
  @5
  D=A
  @TEMP
  D=M+D
  @R13
  M=D
  @SP
  AM=M-1
  D=M
  @R13
  A=M
  M=D

// push constant 59
  @59
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 0
  @0
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 0
  @0
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 12
  @12
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 12
  @12
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 0
  @0
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 0
  @0
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 12
  @12
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 12
  @12
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 6
  @6
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 0
  @0
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 0
  @0
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// call Output.create 12
// push return address onto stack
  @Output.create$ret.28
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's LCL to the stack
  @LCL
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's ARG to the stack
  @ARG
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's THIS to the stack
  @THIS
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's THAT to the stack
  @THAT
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// set the callee ARG to point at the first arg passed to the function
  @SP
  D=M
  @5
  D=D-A
  @12
  D=D-A
  @ARG
  M=D
// set the callee LCL point at the top of the stack
  @SP
  D=M
  @LCL
  M=D
// goto Output.create
  @Output.create
  0;JMP
// create return address label
(Output.create$ret.28)

// pop TEMP 0
  @5
  D=A
  @TEMP
  D=M+D
  @R13
  M=D
  @SP
  AM=M-1
  D=M
  @R13
  A=M
  M=D

// push constant 60
  @60
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 0
  @0
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 0
  @0
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 24
  @24
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 12
  @12
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 6
  @6
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 3
  @3
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 6
  @6
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 12
  @12
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 24
  @24
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 0
  @0
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 0
  @0
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// call Output.create 12
// push return address onto stack
  @Output.create$ret.29
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's LCL to the stack
  @LCL
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's ARG to the stack
  @ARG
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's THIS to the stack
  @THIS
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's THAT to the stack
  @THAT
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// set the callee ARG to point at the first arg passed to the function
  @SP
  D=M
  @5
  D=D-A
  @12
  D=D-A
  @ARG
  M=D
// set the callee LCL point at the top of the stack
  @SP
  D=M
  @LCL
  M=D
// goto Output.create
  @Output.create
  0;JMP
// create return address label
(Output.create$ret.29)

// pop TEMP 0
  @5
  D=A
  @TEMP
  D=M+D
  @R13
  M=D
  @SP
  AM=M-1
  D=M
  @R13
  A=M
  M=D

// push constant 61
  @61
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 0
  @0
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 0
  @0
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 0
  @0
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 63
  @63
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 0
  @0
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 0
  @0
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 63
  @63
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 0
  @0
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 0
  @0
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 0
  @0
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 0
  @0
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// call Output.create 12
// push return address onto stack
  @Output.create$ret.30
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's LCL to the stack
  @LCL
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's ARG to the stack
  @ARG
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's THIS to the stack
  @THIS
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's THAT to the stack
  @THAT
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// set the callee ARG to point at the first arg passed to the function
  @SP
  D=M
  @5
  D=D-A
  @12
  D=D-A
  @ARG
  M=D
// set the callee LCL point at the top of the stack
  @SP
  D=M
  @LCL
  M=D
// goto Output.create
  @Output.create
  0;JMP
// create return address label
(Output.create$ret.30)

// pop TEMP 0
  @5
  D=A
  @TEMP
  D=M+D
  @R13
  M=D
  @SP
  AM=M-1
  D=M
  @R13
  A=M
  M=D

// push constant 62
  @62
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 0
  @0
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 0
  @0
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 3
  @3
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 6
  @6
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 12
  @12
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 24
  @24
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 12
  @12
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 6
  @6
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 3
  @3
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 0
  @0
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 0
  @0
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// call Output.create 12
// push return address onto stack
  @Output.create$ret.31
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's LCL to the stack
  @LCL
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's ARG to the stack
  @ARG
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's THIS to the stack
  @THIS
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's THAT to the stack
  @THAT
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// set the callee ARG to point at the first arg passed to the function
  @SP
  D=M
  @5
  D=D-A
  @12
  D=D-A
  @ARG
  M=D
// set the callee LCL point at the top of the stack
  @SP
  D=M
  @LCL
  M=D
// goto Output.create
  @Output.create
  0;JMP
// create return address label
(Output.create$ret.31)

// pop TEMP 0
  @5
  D=A
  @TEMP
  D=M+D
  @R13
  M=D
  @SP
  AM=M-1
  D=M
  @R13
  A=M
  M=D

// push constant 64
  @64
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 30
  @30
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 51
  @51
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 51
  @51
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 59
  @59
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 59
  @59
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 59
  @59
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 27
  @27
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 3
  @3
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 30
  @30
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 0
  @0
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 0
  @0
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// call Output.create 12
// push return address onto stack
  @Output.create$ret.32
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's LCL to the stack
  @LCL
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's ARG to the stack
  @ARG
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's THIS to the stack
  @THIS
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's THAT to the stack
  @THAT
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// set the callee ARG to point at the first arg passed to the function
  @SP
  D=M
  @5
  D=D-A
  @12
  D=D-A
  @ARG
  M=D
// set the callee LCL point at the top of the stack
  @SP
  D=M
  @LCL
  M=D
// goto Output.create
  @Output.create
  0;JMP
// create return address label
(Output.create$ret.32)

// pop TEMP 0
  @5
  D=A
  @TEMP
  D=M+D
  @R13
  M=D
  @SP
  AM=M-1
  D=M
  @R13
  A=M
  M=D

// push constant 63
  @63
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 30
  @30
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 51
  @51
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 51
  @51
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 24
  @24
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 12
  @12
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 12
  @12
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 0
  @0
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 12
  @12
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 12
  @12
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 0
  @0
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 0
  @0
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// call Output.create 12
// push return address onto stack
  @Output.create$ret.33
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's LCL to the stack
  @LCL
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's ARG to the stack
  @ARG
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's THIS to the stack
  @THIS
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's THAT to the stack
  @THAT
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// set the callee ARG to point at the first arg passed to the function
  @SP
  D=M
  @5
  D=D-A
  @12
  D=D-A
  @ARG
  M=D
// set the callee LCL point at the top of the stack
  @SP
  D=M
  @LCL
  M=D
// goto Output.create
  @Output.create
  0;JMP
// create return address label
(Output.create$ret.33)

// pop TEMP 0
  @5
  D=A
  @TEMP
  D=M+D
  @R13
  M=D
  @SP
  AM=M-1
  D=M
  @R13
  A=M
  M=D

// push constant 65
  @65
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 12
  @12
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 30
  @30
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 51
  @51
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 51
  @51
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 63
  @63
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 51
  @51
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 51
  @51
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 51
  @51
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 51
  @51
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 0
  @0
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 0
  @0
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// call Output.create 12
// push return address onto stack
  @Output.create$ret.34
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's LCL to the stack
  @LCL
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's ARG to the stack
  @ARG
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's THIS to the stack
  @THIS
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's THAT to the stack
  @THAT
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// set the callee ARG to point at the first arg passed to the function
  @SP
  D=M
  @5
  D=D-A
  @12
  D=D-A
  @ARG
  M=D
// set the callee LCL point at the top of the stack
  @SP
  D=M
  @LCL
  M=D
// goto Output.create
  @Output.create
  0;JMP
// create return address label
(Output.create$ret.34)

// pop TEMP 0
  @5
  D=A
  @TEMP
  D=M+D
  @R13
  M=D
  @SP
  AM=M-1
  D=M
  @R13
  A=M
  M=D

// push constant 66
  @66
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 31
  @31
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 51
  @51
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 51
  @51
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 51
  @51
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 31
  @31
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 51
  @51
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 51
  @51
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 51
  @51
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 31
  @31
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 0
  @0
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 0
  @0
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// call Output.create 12
// push return address onto stack
  @Output.create$ret.35
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's LCL to the stack
  @LCL
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's ARG to the stack
  @ARG
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's THIS to the stack
  @THIS
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's THAT to the stack
  @THAT
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// set the callee ARG to point at the first arg passed to the function
  @SP
  D=M
  @5
  D=D-A
  @12
  D=D-A
  @ARG
  M=D
// set the callee LCL point at the top of the stack
  @SP
  D=M
  @LCL
  M=D
// goto Output.create
  @Output.create
  0;JMP
// create return address label
(Output.create$ret.35)

// pop TEMP 0
  @5
  D=A
  @TEMP
  D=M+D
  @R13
  M=D
  @SP
  AM=M-1
  D=M
  @R13
  A=M
  M=D

// push constant 67
  @67
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 28
  @28
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 54
  @54
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 35
  @35
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 3
  @3
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 3
  @3
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 3
  @3
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 35
  @35
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 54
  @54
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 28
  @28
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 0
  @0
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 0
  @0
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// call Output.create 12
// push return address onto stack
  @Output.create$ret.36
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's LCL to the stack
  @LCL
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's ARG to the stack
  @ARG
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's THIS to the stack
  @THIS
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's THAT to the stack
  @THAT
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// set the callee ARG to point at the first arg passed to the function
  @SP
  D=M
  @5
  D=D-A
  @12
  D=D-A
  @ARG
  M=D
// set the callee LCL point at the top of the stack
  @SP
  D=M
  @LCL
  M=D
// goto Output.create
  @Output.create
  0;JMP
// create return address label
(Output.create$ret.36)

// pop TEMP 0
  @5
  D=A
  @TEMP
  D=M+D
  @R13
  M=D
  @SP
  AM=M-1
  D=M
  @R13
  A=M
  M=D

// push constant 68
  @68
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 15
  @15
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 27
  @27
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 51
  @51
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 51
  @51
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 51
  @51
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 51
  @51
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 51
  @51
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 27
  @27
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 15
  @15
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 0
  @0
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 0
  @0
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// call Output.create 12
// push return address onto stack
  @Output.create$ret.37
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's LCL to the stack
  @LCL
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's ARG to the stack
  @ARG
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's THIS to the stack
  @THIS
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's THAT to the stack
  @THAT
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// set the callee ARG to point at the first arg passed to the function
  @SP
  D=M
  @5
  D=D-A
  @12
  D=D-A
  @ARG
  M=D
// set the callee LCL point at the top of the stack
  @SP
  D=M
  @LCL
  M=D
// goto Output.create
  @Output.create
  0;JMP
// create return address label
(Output.create$ret.37)

// pop TEMP 0
  @5
  D=A
  @TEMP
  D=M+D
  @R13
  M=D
  @SP
  AM=M-1
  D=M
  @R13
  A=M
  M=D

// push constant 69
  @69
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 63
  @63
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 51
  @51
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 35
  @35
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 11
  @11
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 15
  @15
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 11
  @11
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 35
  @35
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 51
  @51
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 63
  @63
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 0
  @0
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 0
  @0
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// call Output.create 12
// push return address onto stack
  @Output.create$ret.38
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's LCL to the stack
  @LCL
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's ARG to the stack
  @ARG
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's THIS to the stack
  @THIS
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's THAT to the stack
  @THAT
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// set the callee ARG to point at the first arg passed to the function
  @SP
  D=M
  @5
  D=D-A
  @12
  D=D-A
  @ARG
  M=D
// set the callee LCL point at the top of the stack
  @SP
  D=M
  @LCL
  M=D
// goto Output.create
  @Output.create
  0;JMP
// create return address label
(Output.create$ret.38)

// pop TEMP 0
  @5
  D=A
  @TEMP
  D=M+D
  @R13
  M=D
  @SP
  AM=M-1
  D=M
  @R13
  A=M
  M=D

// push constant 70
  @70
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 63
  @63
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 51
  @51
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 35
  @35
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 11
  @11
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 15
  @15
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 11
  @11
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 3
  @3
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 3
  @3
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 3
  @3
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 0
  @0
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 0
  @0
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// call Output.create 12
// push return address onto stack
  @Output.create$ret.39
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's LCL to the stack
  @LCL
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's ARG to the stack
  @ARG
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's THIS to the stack
  @THIS
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's THAT to the stack
  @THAT
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// set the callee ARG to point at the first arg passed to the function
  @SP
  D=M
  @5
  D=D-A
  @12
  D=D-A
  @ARG
  M=D
// set the callee LCL point at the top of the stack
  @SP
  D=M
  @LCL
  M=D
// goto Output.create
  @Output.create
  0;JMP
// create return address label
(Output.create$ret.39)

// pop TEMP 0
  @5
  D=A
  @TEMP
  D=M+D
  @R13
  M=D
  @SP
  AM=M-1
  D=M
  @R13
  A=M
  M=D

// push constant 71
  @71
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 28
  @28
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 54
  @54
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 35
  @35
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 3
  @3
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 59
  @59
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 51
  @51
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 51
  @51
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 54
  @54
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 44
  @44
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 0
  @0
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 0
  @0
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// call Output.create 12
// push return address onto stack
  @Output.create$ret.40
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's LCL to the stack
  @LCL
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's ARG to the stack
  @ARG
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's THIS to the stack
  @THIS
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's THAT to the stack
  @THAT
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// set the callee ARG to point at the first arg passed to the function
  @SP
  D=M
  @5
  D=D-A
  @12
  D=D-A
  @ARG
  M=D
// set the callee LCL point at the top of the stack
  @SP
  D=M
  @LCL
  M=D
// goto Output.create
  @Output.create
  0;JMP
// create return address label
(Output.create$ret.40)

// pop TEMP 0
  @5
  D=A
  @TEMP
  D=M+D
  @R13
  M=D
  @SP
  AM=M-1
  D=M
  @R13
  A=M
  M=D

// push constant 72
  @72
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 51
  @51
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 51
  @51
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 51
  @51
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 51
  @51
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 63
  @63
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 51
  @51
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 51
  @51
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 51
  @51
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 51
  @51
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 0
  @0
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 0
  @0
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// call Output.create 12
// push return address onto stack
  @Output.create$ret.41
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's LCL to the stack
  @LCL
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's ARG to the stack
  @ARG
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's THIS to the stack
  @THIS
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's THAT to the stack
  @THAT
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// set the callee ARG to point at the first arg passed to the function
  @SP
  D=M
  @5
  D=D-A
  @12
  D=D-A
  @ARG
  M=D
// set the callee LCL point at the top of the stack
  @SP
  D=M
  @LCL
  M=D
// goto Output.create
  @Output.create
  0;JMP
// create return address label
(Output.create$ret.41)

// pop TEMP 0
  @5
  D=A
  @TEMP
  D=M+D
  @R13
  M=D
  @SP
  AM=M-1
  D=M
  @R13
  A=M
  M=D

// push constant 73
  @73
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 30
  @30
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 12
  @12
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 12
  @12
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 12
  @12
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 12
  @12
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 12
  @12
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 12
  @12
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 12
  @12
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 30
  @30
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 0
  @0
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 0
  @0
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// call Output.create 12
// push return address onto stack
  @Output.create$ret.42
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's LCL to the stack
  @LCL
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's ARG to the stack
  @ARG
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's THIS to the stack
  @THIS
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's THAT to the stack
  @THAT
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// set the callee ARG to point at the first arg passed to the function
  @SP
  D=M
  @5
  D=D-A
  @12
  D=D-A
  @ARG
  M=D
// set the callee LCL point at the top of the stack
  @SP
  D=M
  @LCL
  M=D
// goto Output.create
  @Output.create
  0;JMP
// create return address label
(Output.create$ret.42)

// pop TEMP 0
  @5
  D=A
  @TEMP
  D=M+D
  @R13
  M=D
  @SP
  AM=M-1
  D=M
  @R13
  A=M
  M=D

// push constant 74
  @74
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 60
  @60
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 24
  @24
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 24
  @24
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 24
  @24
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 24
  @24
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 24
  @24
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 27
  @27
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 27
  @27
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 14
  @14
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 0
  @0
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 0
  @0
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// call Output.create 12
// push return address onto stack
  @Output.create$ret.43
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's LCL to the stack
  @LCL
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's ARG to the stack
  @ARG
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's THIS to the stack
  @THIS
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's THAT to the stack
  @THAT
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// set the callee ARG to point at the first arg passed to the function
  @SP
  D=M
  @5
  D=D-A
  @12
  D=D-A
  @ARG
  M=D
// set the callee LCL point at the top of the stack
  @SP
  D=M
  @LCL
  M=D
// goto Output.create
  @Output.create
  0;JMP
// create return address label
(Output.create$ret.43)

// pop TEMP 0
  @5
  D=A
  @TEMP
  D=M+D
  @R13
  M=D
  @SP
  AM=M-1
  D=M
  @R13
  A=M
  M=D

// push constant 75
  @75
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 51
  @51
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 51
  @51
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 51
  @51
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 27
  @27
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 15
  @15
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 27
  @27
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 51
  @51
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 51
  @51
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 51
  @51
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 0
  @0
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 0
  @0
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// call Output.create 12
// push return address onto stack
  @Output.create$ret.44
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's LCL to the stack
  @LCL
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's ARG to the stack
  @ARG
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's THIS to the stack
  @THIS
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's THAT to the stack
  @THAT
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// set the callee ARG to point at the first arg passed to the function
  @SP
  D=M
  @5
  D=D-A
  @12
  D=D-A
  @ARG
  M=D
// set the callee LCL point at the top of the stack
  @SP
  D=M
  @LCL
  M=D
// goto Output.create
  @Output.create
  0;JMP
// create return address label
(Output.create$ret.44)

// pop TEMP 0
  @5
  D=A
  @TEMP
  D=M+D
  @R13
  M=D
  @SP
  AM=M-1
  D=M
  @R13
  A=M
  M=D

// push constant 76
  @76
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 3
  @3
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 3
  @3
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 3
  @3
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 3
  @3
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 3
  @3
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 3
  @3
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 35
  @35
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 51
  @51
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 63
  @63
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 0
  @0
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 0
  @0
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// call Output.create 12
// push return address onto stack
  @Output.create$ret.45
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's LCL to the stack
  @LCL
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's ARG to the stack
  @ARG
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's THIS to the stack
  @THIS
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's THAT to the stack
  @THAT
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// set the callee ARG to point at the first arg passed to the function
  @SP
  D=M
  @5
  D=D-A
  @12
  D=D-A
  @ARG
  M=D
// set the callee LCL point at the top of the stack
  @SP
  D=M
  @LCL
  M=D
// goto Output.create
  @Output.create
  0;JMP
// create return address label
(Output.create$ret.45)

// pop TEMP 0
  @5
  D=A
  @TEMP
  D=M+D
  @R13
  M=D
  @SP
  AM=M-1
  D=M
  @R13
  A=M
  M=D

// push constant 77
  @77
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 33
  @33
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 51
  @51
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 63
  @63
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 63
  @63
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 51
  @51
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 51
  @51
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 51
  @51
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 51
  @51
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 51
  @51
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 0
  @0
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 0
  @0
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// call Output.create 12
// push return address onto stack
  @Output.create$ret.46
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's LCL to the stack
  @LCL
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's ARG to the stack
  @ARG
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's THIS to the stack
  @THIS
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's THAT to the stack
  @THAT
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// set the callee ARG to point at the first arg passed to the function
  @SP
  D=M
  @5
  D=D-A
  @12
  D=D-A
  @ARG
  M=D
// set the callee LCL point at the top of the stack
  @SP
  D=M
  @LCL
  M=D
// goto Output.create
  @Output.create
  0;JMP
// create return address label
(Output.create$ret.46)

// pop TEMP 0
  @5
  D=A
  @TEMP
  D=M+D
  @R13
  M=D
  @SP
  AM=M-1
  D=M
  @R13
  A=M
  M=D

// push constant 78
  @78
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 51
  @51
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 51
  @51
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 55
  @55
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 55
  @55
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 63
  @63
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 59
  @59
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 59
  @59
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 51
  @51
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 51
  @51
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 0
  @0
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 0
  @0
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// call Output.create 12
// push return address onto stack
  @Output.create$ret.47
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's LCL to the stack
  @LCL
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's ARG to the stack
  @ARG
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's THIS to the stack
  @THIS
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's THAT to the stack
  @THAT
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// set the callee ARG to point at the first arg passed to the function
  @SP
  D=M
  @5
  D=D-A
  @12
  D=D-A
  @ARG
  M=D
// set the callee LCL point at the top of the stack
  @SP
  D=M
  @LCL
  M=D
// goto Output.create
  @Output.create
  0;JMP
// create return address label
(Output.create$ret.47)

// pop TEMP 0
  @5
  D=A
  @TEMP
  D=M+D
  @R13
  M=D
  @SP
  AM=M-1
  D=M
  @R13
  A=M
  M=D

// push constant 79
  @79
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 30
  @30
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 51
  @51
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 51
  @51
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 51
  @51
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 51
  @51
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 51
  @51
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 51
  @51
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 51
  @51
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 30
  @30
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 0
  @0
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 0
  @0
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// call Output.create 12
// push return address onto stack
  @Output.create$ret.48
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's LCL to the stack
  @LCL
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's ARG to the stack
  @ARG
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's THIS to the stack
  @THIS
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's THAT to the stack
  @THAT
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// set the callee ARG to point at the first arg passed to the function
  @SP
  D=M
  @5
  D=D-A
  @12
  D=D-A
  @ARG
  M=D
// set the callee LCL point at the top of the stack
  @SP
  D=M
  @LCL
  M=D
// goto Output.create
  @Output.create
  0;JMP
// create return address label
(Output.create$ret.48)

// pop TEMP 0
  @5
  D=A
  @TEMP
  D=M+D
  @R13
  M=D
  @SP
  AM=M-1
  D=M
  @R13
  A=M
  M=D

// push constant 80
  @80
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 31
  @31
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 51
  @51
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 51
  @51
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 51
  @51
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 31
  @31
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 3
  @3
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 3
  @3
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 3
  @3
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 3
  @3
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 0
  @0
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 0
  @0
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// call Output.create 12
// push return address onto stack
  @Output.create$ret.49
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's LCL to the stack
  @LCL
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's ARG to the stack
  @ARG
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's THIS to the stack
  @THIS
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's THAT to the stack
  @THAT
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// set the callee ARG to point at the first arg passed to the function
  @SP
  D=M
  @5
  D=D-A
  @12
  D=D-A
  @ARG
  M=D
// set the callee LCL point at the top of the stack
  @SP
  D=M
  @LCL
  M=D
// goto Output.create
  @Output.create
  0;JMP
// create return address label
(Output.create$ret.49)

// pop TEMP 0
  @5
  D=A
  @TEMP
  D=M+D
  @R13
  M=D
  @SP
  AM=M-1
  D=M
  @R13
  A=M
  M=D

// push constant 81
  @81
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 30
  @30
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 51
  @51
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 51
  @51
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 51
  @51
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 51
  @51
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 51
  @51
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 63
  @63
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 59
  @59
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 30
  @30
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 48
  @48
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 0
  @0
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// call Output.create 12
// push return address onto stack
  @Output.create$ret.50
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's LCL to the stack
  @LCL
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's ARG to the stack
  @ARG
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's THIS to the stack
  @THIS
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's THAT to the stack
  @THAT
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// set the callee ARG to point at the first arg passed to the function
  @SP
  D=M
  @5
  D=D-A
  @12
  D=D-A
  @ARG
  M=D
// set the callee LCL point at the top of the stack
  @SP
  D=M
  @LCL
  M=D
// goto Output.create
  @Output.create
  0;JMP
// create return address label
(Output.create$ret.50)

// pop TEMP 0
  @5
  D=A
  @TEMP
  D=M+D
  @R13
  M=D
  @SP
  AM=M-1
  D=M
  @R13
  A=M
  M=D

// push constant 82
  @82
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 31
  @31
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 51
  @51
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 51
  @51
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 51
  @51
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 31
  @31
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 27
  @27
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 51
  @51
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 51
  @51
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 51
  @51
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 0
  @0
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 0
  @0
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// call Output.create 12
// push return address onto stack
  @Output.create$ret.51
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's LCL to the stack
  @LCL
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's ARG to the stack
  @ARG
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's THIS to the stack
  @THIS
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's THAT to the stack
  @THAT
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// set the callee ARG to point at the first arg passed to the function
  @SP
  D=M
  @5
  D=D-A
  @12
  D=D-A
  @ARG
  M=D
// set the callee LCL point at the top of the stack
  @SP
  D=M
  @LCL
  M=D
// goto Output.create
  @Output.create
  0;JMP
// create return address label
(Output.create$ret.51)

// pop TEMP 0
  @5
  D=A
  @TEMP
  D=M+D
  @R13
  M=D
  @SP
  AM=M-1
  D=M
  @R13
  A=M
  M=D

// push constant 83
  @83
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 30
  @30
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 51
  @51
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 51
  @51
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 6
  @6
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 28
  @28
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 48
  @48
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 51
  @51
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 51
  @51
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 30
  @30
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 0
  @0
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 0
  @0
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// call Output.create 12
// push return address onto stack
  @Output.create$ret.52
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's LCL to the stack
  @LCL
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's ARG to the stack
  @ARG
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's THIS to the stack
  @THIS
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's THAT to the stack
  @THAT
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// set the callee ARG to point at the first arg passed to the function
  @SP
  D=M
  @5
  D=D-A
  @12
  D=D-A
  @ARG
  M=D
// set the callee LCL point at the top of the stack
  @SP
  D=M
  @LCL
  M=D
// goto Output.create
  @Output.create
  0;JMP
// create return address label
(Output.create$ret.52)

// pop TEMP 0
  @5
  D=A
  @TEMP
  D=M+D
  @R13
  M=D
  @SP
  AM=M-1
  D=M
  @R13
  A=M
  M=D

// push constant 84
  @84
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 63
  @63
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 63
  @63
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 45
  @45
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 12
  @12
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 12
  @12
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 12
  @12
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 12
  @12
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 12
  @12
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 30
  @30
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 0
  @0
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 0
  @0
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// call Output.create 12
// push return address onto stack
  @Output.create$ret.53
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's LCL to the stack
  @LCL
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's ARG to the stack
  @ARG
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's THIS to the stack
  @THIS
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's THAT to the stack
  @THAT
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// set the callee ARG to point at the first arg passed to the function
  @SP
  D=M
  @5
  D=D-A
  @12
  D=D-A
  @ARG
  M=D
// set the callee LCL point at the top of the stack
  @SP
  D=M
  @LCL
  M=D
// goto Output.create
  @Output.create
  0;JMP
// create return address label
(Output.create$ret.53)

// pop TEMP 0
  @5
  D=A
  @TEMP
  D=M+D
  @R13
  M=D
  @SP
  AM=M-1
  D=M
  @R13
  A=M
  M=D

// push constant 85
  @85
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 51
  @51
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 51
  @51
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 51
  @51
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 51
  @51
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 51
  @51
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 51
  @51
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 51
  @51
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 51
  @51
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 30
  @30
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 0
  @0
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 0
  @0
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// call Output.create 12
// push return address onto stack
  @Output.create$ret.54
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's LCL to the stack
  @LCL
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's ARG to the stack
  @ARG
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's THIS to the stack
  @THIS
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's THAT to the stack
  @THAT
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// set the callee ARG to point at the first arg passed to the function
  @SP
  D=M
  @5
  D=D-A
  @12
  D=D-A
  @ARG
  M=D
// set the callee LCL point at the top of the stack
  @SP
  D=M
  @LCL
  M=D
// goto Output.create
  @Output.create
  0;JMP
// create return address label
(Output.create$ret.54)

// pop TEMP 0
  @5
  D=A
  @TEMP
  D=M+D
  @R13
  M=D
  @SP
  AM=M-1
  D=M
  @R13
  A=M
  M=D

// push constant 86
  @86
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 51
  @51
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 51
  @51
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 51
  @51
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 51
  @51
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 51
  @51
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 30
  @30
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 30
  @30
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 12
  @12
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 12
  @12
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 0
  @0
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 0
  @0
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// call Output.create 12
// push return address onto stack
  @Output.create$ret.55
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's LCL to the stack
  @LCL
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's ARG to the stack
  @ARG
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's THIS to the stack
  @THIS
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's THAT to the stack
  @THAT
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// set the callee ARG to point at the first arg passed to the function
  @SP
  D=M
  @5
  D=D-A
  @12
  D=D-A
  @ARG
  M=D
// set the callee LCL point at the top of the stack
  @SP
  D=M
  @LCL
  M=D
// goto Output.create
  @Output.create
  0;JMP
// create return address label
(Output.create$ret.55)

// pop TEMP 0
  @5
  D=A
  @TEMP
  D=M+D
  @R13
  M=D
  @SP
  AM=M-1
  D=M
  @R13
  A=M
  M=D

// push constant 87
  @87
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 51
  @51
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 51
  @51
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 51
  @51
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 51
  @51
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 51
  @51
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 63
  @63
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 63
  @63
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 63
  @63
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 18
  @18
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 0
  @0
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 0
  @0
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// call Output.create 12
// push return address onto stack
  @Output.create$ret.56
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's LCL to the stack
  @LCL
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's ARG to the stack
  @ARG
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's THIS to the stack
  @THIS
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's THAT to the stack
  @THAT
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// set the callee ARG to point at the first arg passed to the function
  @SP
  D=M
  @5
  D=D-A
  @12
  D=D-A
  @ARG
  M=D
// set the callee LCL point at the top of the stack
  @SP
  D=M
  @LCL
  M=D
// goto Output.create
  @Output.create
  0;JMP
// create return address label
(Output.create$ret.56)

// pop TEMP 0
  @5
  D=A
  @TEMP
  D=M+D
  @R13
  M=D
  @SP
  AM=M-1
  D=M
  @R13
  A=M
  M=D

// push constant 88
  @88
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 51
  @51
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 51
  @51
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 30
  @30
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 30
  @30
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 12
  @12
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 30
  @30
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 30
  @30
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 51
  @51
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 51
  @51
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 0
  @0
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 0
  @0
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// call Output.create 12
// push return address onto stack
  @Output.create$ret.57
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's LCL to the stack
  @LCL
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's ARG to the stack
  @ARG
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's THIS to the stack
  @THIS
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's THAT to the stack
  @THAT
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// set the callee ARG to point at the first arg passed to the function
  @SP
  D=M
  @5
  D=D-A
  @12
  D=D-A
  @ARG
  M=D
// set the callee LCL point at the top of the stack
  @SP
  D=M
  @LCL
  M=D
// goto Output.create
  @Output.create
  0;JMP
// create return address label
(Output.create$ret.57)

// pop TEMP 0
  @5
  D=A
  @TEMP
  D=M+D
  @R13
  M=D
  @SP
  AM=M-1
  D=M
  @R13
  A=M
  M=D

// push constant 89
  @89
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 51
  @51
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 51
  @51
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 51
  @51
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 51
  @51
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 30
  @30
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 12
  @12
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 12
  @12
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 12
  @12
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 30
  @30
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 0
  @0
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 0
  @0
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// call Output.create 12
// push return address onto stack
  @Output.create$ret.58
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's LCL to the stack
  @LCL
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's ARG to the stack
  @ARG
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's THIS to the stack
  @THIS
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's THAT to the stack
  @THAT
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// set the callee ARG to point at the first arg passed to the function
  @SP
  D=M
  @5
  D=D-A
  @12
  D=D-A
  @ARG
  M=D
// set the callee LCL point at the top of the stack
  @SP
  D=M
  @LCL
  M=D
// goto Output.create
  @Output.create
  0;JMP
// create return address label
(Output.create$ret.58)

// pop TEMP 0
  @5
  D=A
  @TEMP
  D=M+D
  @R13
  M=D
  @SP
  AM=M-1
  D=M
  @R13
  A=M
  M=D

// push constant 90
  @90
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 63
  @63
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 51
  @51
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 49
  @49
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 24
  @24
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 12
  @12
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 6
  @6
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 35
  @35
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 51
  @51
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 63
  @63
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 0
  @0
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 0
  @0
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// call Output.create 12
// push return address onto stack
  @Output.create$ret.59
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's LCL to the stack
  @LCL
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's ARG to the stack
  @ARG
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's THIS to the stack
  @THIS
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's THAT to the stack
  @THAT
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// set the callee ARG to point at the first arg passed to the function
  @SP
  D=M
  @5
  D=D-A
  @12
  D=D-A
  @ARG
  M=D
// set the callee LCL point at the top of the stack
  @SP
  D=M
  @LCL
  M=D
// goto Output.create
  @Output.create
  0;JMP
// create return address label
(Output.create$ret.59)

// pop TEMP 0
  @5
  D=A
  @TEMP
  D=M+D
  @R13
  M=D
  @SP
  AM=M-1
  D=M
  @R13
  A=M
  M=D

// push constant 91
  @91
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 30
  @30
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 6
  @6
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 6
  @6
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 6
  @6
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 6
  @6
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 6
  @6
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 6
  @6
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 6
  @6
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 30
  @30
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 0
  @0
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 0
  @0
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// call Output.create 12
// push return address onto stack
  @Output.create$ret.60
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's LCL to the stack
  @LCL
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's ARG to the stack
  @ARG
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's THIS to the stack
  @THIS
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's THAT to the stack
  @THAT
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// set the callee ARG to point at the first arg passed to the function
  @SP
  D=M
  @5
  D=D-A
  @12
  D=D-A
  @ARG
  M=D
// set the callee LCL point at the top of the stack
  @SP
  D=M
  @LCL
  M=D
// goto Output.create
  @Output.create
  0;JMP
// create return address label
(Output.create$ret.60)

// pop TEMP 0
  @5
  D=A
  @TEMP
  D=M+D
  @R13
  M=D
  @SP
  AM=M-1
  D=M
  @R13
  A=M
  M=D

// push constant 92
  @92
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 0
  @0
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 0
  @0
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 1
  @1
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 3
  @3
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 6
  @6
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 12
  @12
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 24
  @24
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 48
  @48
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 32
  @32
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 0
  @0
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 0
  @0
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// call Output.create 12
// push return address onto stack
  @Output.create$ret.61
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's LCL to the stack
  @LCL
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's ARG to the stack
  @ARG
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's THIS to the stack
  @THIS
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's THAT to the stack
  @THAT
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// set the callee ARG to point at the first arg passed to the function
  @SP
  D=M
  @5
  D=D-A
  @12
  D=D-A
  @ARG
  M=D
// set the callee LCL point at the top of the stack
  @SP
  D=M
  @LCL
  M=D
// goto Output.create
  @Output.create
  0;JMP
// create return address label
(Output.create$ret.61)

// pop TEMP 0
  @5
  D=A
  @TEMP
  D=M+D
  @R13
  M=D
  @SP
  AM=M-1
  D=M
  @R13
  A=M
  M=D

// push constant 93
  @93
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 30
  @30
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 24
  @24
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 24
  @24
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 24
  @24
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 24
  @24
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 24
  @24
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 24
  @24
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 24
  @24
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 30
  @30
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 0
  @0
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 0
  @0
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// call Output.create 12
// push return address onto stack
  @Output.create$ret.62
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's LCL to the stack
  @LCL
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's ARG to the stack
  @ARG
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's THIS to the stack
  @THIS
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's THAT to the stack
  @THAT
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// set the callee ARG to point at the first arg passed to the function
  @SP
  D=M
  @5
  D=D-A
  @12
  D=D-A
  @ARG
  M=D
// set the callee LCL point at the top of the stack
  @SP
  D=M
  @LCL
  M=D
// goto Output.create
  @Output.create
  0;JMP
// create return address label
(Output.create$ret.62)

// pop TEMP 0
  @5
  D=A
  @TEMP
  D=M+D
  @R13
  M=D
  @SP
  AM=M-1
  D=M
  @R13
  A=M
  M=D

// push constant 94
  @94
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 8
  @8
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 28
  @28
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 54
  @54
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 0
  @0
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 0
  @0
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 0
  @0
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 0
  @0
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 0
  @0
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 0
  @0
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 0
  @0
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 0
  @0
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// call Output.create 12
// push return address onto stack
  @Output.create$ret.63
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's LCL to the stack
  @LCL
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's ARG to the stack
  @ARG
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's THIS to the stack
  @THIS
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's THAT to the stack
  @THAT
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// set the callee ARG to point at the first arg passed to the function
  @SP
  D=M
  @5
  D=D-A
  @12
  D=D-A
  @ARG
  M=D
// set the callee LCL point at the top of the stack
  @SP
  D=M
  @LCL
  M=D
// goto Output.create
  @Output.create
  0;JMP
// create return address label
(Output.create$ret.63)

// pop TEMP 0
  @5
  D=A
  @TEMP
  D=M+D
  @R13
  M=D
  @SP
  AM=M-1
  D=M
  @R13
  A=M
  M=D

// push constant 95
  @95
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 0
  @0
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 0
  @0
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 0
  @0
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 0
  @0
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 0
  @0
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 0
  @0
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 0
  @0
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 0
  @0
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 0
  @0
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 63
  @63
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 0
  @0
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// call Output.create 12
// push return address onto stack
  @Output.create$ret.64
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's LCL to the stack
  @LCL
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's ARG to the stack
  @ARG
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's THIS to the stack
  @THIS
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's THAT to the stack
  @THAT
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// set the callee ARG to point at the first arg passed to the function
  @SP
  D=M
  @5
  D=D-A
  @12
  D=D-A
  @ARG
  M=D
// set the callee LCL point at the top of the stack
  @SP
  D=M
  @LCL
  M=D
// goto Output.create
  @Output.create
  0;JMP
// create return address label
(Output.create$ret.64)

// pop TEMP 0
  @5
  D=A
  @TEMP
  D=M+D
  @R13
  M=D
  @SP
  AM=M-1
  D=M
  @R13
  A=M
  M=D

// push constant 96
  @96
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 6
  @6
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 12
  @12
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 24
  @24
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 0
  @0
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 0
  @0
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 0
  @0
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 0
  @0
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 0
  @0
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 0
  @0
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 0
  @0
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 0
  @0
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// call Output.create 12
// push return address onto stack
  @Output.create$ret.65
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's LCL to the stack
  @LCL
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's ARG to the stack
  @ARG
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's THIS to the stack
  @THIS
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's THAT to the stack
  @THAT
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// set the callee ARG to point at the first arg passed to the function
  @SP
  D=M
  @5
  D=D-A
  @12
  D=D-A
  @ARG
  M=D
// set the callee LCL point at the top of the stack
  @SP
  D=M
  @LCL
  M=D
// goto Output.create
  @Output.create
  0;JMP
// create return address label
(Output.create$ret.65)

// pop TEMP 0
  @5
  D=A
  @TEMP
  D=M+D
  @R13
  M=D
  @SP
  AM=M-1
  D=M
  @R13
  A=M
  M=D

// push constant 97
  @97
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 0
  @0
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 0
  @0
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 0
  @0
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 14
  @14
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 24
  @24
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 30
  @30
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 27
  @27
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 27
  @27
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 54
  @54
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 0
  @0
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 0
  @0
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// call Output.create 12
// push return address onto stack
  @Output.create$ret.66
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's LCL to the stack
  @LCL
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's ARG to the stack
  @ARG
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's THIS to the stack
  @THIS
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's THAT to the stack
  @THAT
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// set the callee ARG to point at the first arg passed to the function
  @SP
  D=M
  @5
  D=D-A
  @12
  D=D-A
  @ARG
  M=D
// set the callee LCL point at the top of the stack
  @SP
  D=M
  @LCL
  M=D
// goto Output.create
  @Output.create
  0;JMP
// create return address label
(Output.create$ret.66)

// pop TEMP 0
  @5
  D=A
  @TEMP
  D=M+D
  @R13
  M=D
  @SP
  AM=M-1
  D=M
  @R13
  A=M
  M=D

// push constant 98
  @98
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 3
  @3
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 3
  @3
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 3
  @3
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 15
  @15
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 27
  @27
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 51
  @51
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 51
  @51
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 51
  @51
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 30
  @30
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 0
  @0
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 0
  @0
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// call Output.create 12
// push return address onto stack
  @Output.create$ret.67
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's LCL to the stack
  @LCL
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's ARG to the stack
  @ARG
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's THIS to the stack
  @THIS
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's THAT to the stack
  @THAT
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// set the callee ARG to point at the first arg passed to the function
  @SP
  D=M
  @5
  D=D-A
  @12
  D=D-A
  @ARG
  M=D
// set the callee LCL point at the top of the stack
  @SP
  D=M
  @LCL
  M=D
// goto Output.create
  @Output.create
  0;JMP
// create return address label
(Output.create$ret.67)

// pop TEMP 0
  @5
  D=A
  @TEMP
  D=M+D
  @R13
  M=D
  @SP
  AM=M-1
  D=M
  @R13
  A=M
  M=D

// push constant 99
  @99
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 0
  @0
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 0
  @0
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 0
  @0
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 30
  @30
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 51
  @51
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 3
  @3
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 3
  @3
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 51
  @51
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 30
  @30
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 0
  @0
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 0
  @0
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// call Output.create 12
// push return address onto stack
  @Output.create$ret.68
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's LCL to the stack
  @LCL
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's ARG to the stack
  @ARG
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's THIS to the stack
  @THIS
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's THAT to the stack
  @THAT
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// set the callee ARG to point at the first arg passed to the function
  @SP
  D=M
  @5
  D=D-A
  @12
  D=D-A
  @ARG
  M=D
// set the callee LCL point at the top of the stack
  @SP
  D=M
  @LCL
  M=D
// goto Output.create
  @Output.create
  0;JMP
// create return address label
(Output.create$ret.68)

// pop TEMP 0
  @5
  D=A
  @TEMP
  D=M+D
  @R13
  M=D
  @SP
  AM=M-1
  D=M
  @R13
  A=M
  M=D

// push constant 100
  @100
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 48
  @48
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 48
  @48
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 48
  @48
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 60
  @60
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 54
  @54
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 51
  @51
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 51
  @51
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 51
  @51
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 30
  @30
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 0
  @0
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 0
  @0
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// call Output.create 12
// push return address onto stack
  @Output.create$ret.69
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's LCL to the stack
  @LCL
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's ARG to the stack
  @ARG
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's THIS to the stack
  @THIS
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's THAT to the stack
  @THAT
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// set the callee ARG to point at the first arg passed to the function
  @SP
  D=M
  @5
  D=D-A
  @12
  D=D-A
  @ARG
  M=D
// set the callee LCL point at the top of the stack
  @SP
  D=M
  @LCL
  M=D
// goto Output.create
  @Output.create
  0;JMP
// create return address label
(Output.create$ret.69)

// pop TEMP 0
  @5
  D=A
  @TEMP
  D=M+D
  @R13
  M=D
  @SP
  AM=M-1
  D=M
  @R13
  A=M
  M=D

// push constant 101
  @101
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 0
  @0
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 0
  @0
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 0
  @0
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 30
  @30
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 51
  @51
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 63
  @63
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 3
  @3
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 51
  @51
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 30
  @30
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 0
  @0
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 0
  @0
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// call Output.create 12
// push return address onto stack
  @Output.create$ret.70
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's LCL to the stack
  @LCL
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's ARG to the stack
  @ARG
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's THIS to the stack
  @THIS
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's THAT to the stack
  @THAT
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// set the callee ARG to point at the first arg passed to the function
  @SP
  D=M
  @5
  D=D-A
  @12
  D=D-A
  @ARG
  M=D
// set the callee LCL point at the top of the stack
  @SP
  D=M
  @LCL
  M=D
// goto Output.create
  @Output.create
  0;JMP
// create return address label
(Output.create$ret.70)

// pop TEMP 0
  @5
  D=A
  @TEMP
  D=M+D
  @R13
  M=D
  @SP
  AM=M-1
  D=M
  @R13
  A=M
  M=D

// push constant 102
  @102
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 28
  @28
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 54
  @54
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 38
  @38
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 6
  @6
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 15
  @15
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 6
  @6
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 6
  @6
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 6
  @6
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 15
  @15
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 0
  @0
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 0
  @0
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// call Output.create 12
// push return address onto stack
  @Output.create$ret.71
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's LCL to the stack
  @LCL
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's ARG to the stack
  @ARG
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's THIS to the stack
  @THIS
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's THAT to the stack
  @THAT
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// set the callee ARG to point at the first arg passed to the function
  @SP
  D=M
  @5
  D=D-A
  @12
  D=D-A
  @ARG
  M=D
// set the callee LCL point at the top of the stack
  @SP
  D=M
  @LCL
  M=D
// goto Output.create
  @Output.create
  0;JMP
// create return address label
(Output.create$ret.71)

// pop TEMP 0
  @5
  D=A
  @TEMP
  D=M+D
  @R13
  M=D
  @SP
  AM=M-1
  D=M
  @R13
  A=M
  M=D

// push constant 103
  @103
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 0
  @0
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 0
  @0
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 30
  @30
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 51
  @51
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 51
  @51
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 51
  @51
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 62
  @62
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 48
  @48
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 51
  @51
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 30
  @30
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 0
  @0
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// call Output.create 12
// push return address onto stack
  @Output.create$ret.72
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's LCL to the stack
  @LCL
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's ARG to the stack
  @ARG
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's THIS to the stack
  @THIS
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's THAT to the stack
  @THAT
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// set the callee ARG to point at the first arg passed to the function
  @SP
  D=M
  @5
  D=D-A
  @12
  D=D-A
  @ARG
  M=D
// set the callee LCL point at the top of the stack
  @SP
  D=M
  @LCL
  M=D
// goto Output.create
  @Output.create
  0;JMP
// create return address label
(Output.create$ret.72)

// pop TEMP 0
  @5
  D=A
  @TEMP
  D=M+D
  @R13
  M=D
  @SP
  AM=M-1
  D=M
  @R13
  A=M
  M=D

// push constant 104
  @104
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 3
  @3
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 3
  @3
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 3
  @3
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 27
  @27
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 55
  @55
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 51
  @51
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 51
  @51
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 51
  @51
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 51
  @51
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 0
  @0
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 0
  @0
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// call Output.create 12
// push return address onto stack
  @Output.create$ret.73
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's LCL to the stack
  @LCL
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's ARG to the stack
  @ARG
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's THIS to the stack
  @THIS
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's THAT to the stack
  @THAT
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// set the callee ARG to point at the first arg passed to the function
  @SP
  D=M
  @5
  D=D-A
  @12
  D=D-A
  @ARG
  M=D
// set the callee LCL point at the top of the stack
  @SP
  D=M
  @LCL
  M=D
// goto Output.create
  @Output.create
  0;JMP
// create return address label
(Output.create$ret.73)

// pop TEMP 0
  @5
  D=A
  @TEMP
  D=M+D
  @R13
  M=D
  @SP
  AM=M-1
  D=M
  @R13
  A=M
  M=D

// push constant 105
  @105
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 12
  @12
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 12
  @12
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 0
  @0
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 14
  @14
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 12
  @12
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 12
  @12
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 12
  @12
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 12
  @12
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 30
  @30
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 0
  @0
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 0
  @0
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// call Output.create 12
// push return address onto stack
  @Output.create$ret.74
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's LCL to the stack
  @LCL
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's ARG to the stack
  @ARG
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's THIS to the stack
  @THIS
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's THAT to the stack
  @THAT
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// set the callee ARG to point at the first arg passed to the function
  @SP
  D=M
  @5
  D=D-A
  @12
  D=D-A
  @ARG
  M=D
// set the callee LCL point at the top of the stack
  @SP
  D=M
  @LCL
  M=D
// goto Output.create
  @Output.create
  0;JMP
// create return address label
(Output.create$ret.74)

// pop TEMP 0
  @5
  D=A
  @TEMP
  D=M+D
  @R13
  M=D
  @SP
  AM=M-1
  D=M
  @R13
  A=M
  M=D

// push constant 106
  @106
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 48
  @48
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 48
  @48
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 0
  @0
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 56
  @56
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 48
  @48
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 48
  @48
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 48
  @48
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 48
  @48
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 51
  @51
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 30
  @30
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 0
  @0
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// call Output.create 12
// push return address onto stack
  @Output.create$ret.75
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's LCL to the stack
  @LCL
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's ARG to the stack
  @ARG
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's THIS to the stack
  @THIS
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's THAT to the stack
  @THAT
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// set the callee ARG to point at the first arg passed to the function
  @SP
  D=M
  @5
  D=D-A
  @12
  D=D-A
  @ARG
  M=D
// set the callee LCL point at the top of the stack
  @SP
  D=M
  @LCL
  M=D
// goto Output.create
  @Output.create
  0;JMP
// create return address label
(Output.create$ret.75)

// pop TEMP 0
  @5
  D=A
  @TEMP
  D=M+D
  @R13
  M=D
  @SP
  AM=M-1
  D=M
  @R13
  A=M
  M=D

// push constant 107
  @107
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 3
  @3
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 3
  @3
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 3
  @3
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 51
  @51
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 27
  @27
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 15
  @15
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 15
  @15
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 27
  @27
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 51
  @51
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 0
  @0
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 0
  @0
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// call Output.create 12
// push return address onto stack
  @Output.create$ret.76
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's LCL to the stack
  @LCL
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's ARG to the stack
  @ARG
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's THIS to the stack
  @THIS
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's THAT to the stack
  @THAT
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// set the callee ARG to point at the first arg passed to the function
  @SP
  D=M
  @5
  D=D-A
  @12
  D=D-A
  @ARG
  M=D
// set the callee LCL point at the top of the stack
  @SP
  D=M
  @LCL
  M=D
// goto Output.create
  @Output.create
  0;JMP
// create return address label
(Output.create$ret.76)

// pop TEMP 0
  @5
  D=A
  @TEMP
  D=M+D
  @R13
  M=D
  @SP
  AM=M-1
  D=M
  @R13
  A=M
  M=D

// push constant 108
  @108
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 14
  @14
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 12
  @12
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 12
  @12
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 12
  @12
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 12
  @12
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 12
  @12
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 12
  @12
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 12
  @12
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 30
  @30
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 0
  @0
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 0
  @0
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// call Output.create 12
// push return address onto stack
  @Output.create$ret.77
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's LCL to the stack
  @LCL
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's ARG to the stack
  @ARG
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's THIS to the stack
  @THIS
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's THAT to the stack
  @THAT
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// set the callee ARG to point at the first arg passed to the function
  @SP
  D=M
  @5
  D=D-A
  @12
  D=D-A
  @ARG
  M=D
// set the callee LCL point at the top of the stack
  @SP
  D=M
  @LCL
  M=D
// goto Output.create
  @Output.create
  0;JMP
// create return address label
(Output.create$ret.77)

// pop TEMP 0
  @5
  D=A
  @TEMP
  D=M+D
  @R13
  M=D
  @SP
  AM=M-1
  D=M
  @R13
  A=M
  M=D

// push constant 109
  @109
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 0
  @0
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 0
  @0
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 0
  @0
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 29
  @29
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 63
  @63
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 43
  @43
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 43
  @43
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 43
  @43
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 43
  @43
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 0
  @0
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 0
  @0
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// call Output.create 12
// push return address onto stack
  @Output.create$ret.78
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's LCL to the stack
  @LCL
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's ARG to the stack
  @ARG
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's THIS to the stack
  @THIS
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's THAT to the stack
  @THAT
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// set the callee ARG to point at the first arg passed to the function
  @SP
  D=M
  @5
  D=D-A
  @12
  D=D-A
  @ARG
  M=D
// set the callee LCL point at the top of the stack
  @SP
  D=M
  @LCL
  M=D
// goto Output.create
  @Output.create
  0;JMP
// create return address label
(Output.create$ret.78)

// pop TEMP 0
  @5
  D=A
  @TEMP
  D=M+D
  @R13
  M=D
  @SP
  AM=M-1
  D=M
  @R13
  A=M
  M=D

// push constant 110
  @110
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 0
  @0
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 0
  @0
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 0
  @0
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 29
  @29
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 51
  @51
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 51
  @51
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 51
  @51
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 51
  @51
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 51
  @51
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 0
  @0
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 0
  @0
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// call Output.create 12
// push return address onto stack
  @Output.create$ret.79
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's LCL to the stack
  @LCL
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's ARG to the stack
  @ARG
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's THIS to the stack
  @THIS
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's THAT to the stack
  @THAT
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// set the callee ARG to point at the first arg passed to the function
  @SP
  D=M
  @5
  D=D-A
  @12
  D=D-A
  @ARG
  M=D
// set the callee LCL point at the top of the stack
  @SP
  D=M
  @LCL
  M=D
// goto Output.create
  @Output.create
  0;JMP
// create return address label
(Output.create$ret.79)

// pop TEMP 0
  @5
  D=A
  @TEMP
  D=M+D
  @R13
  M=D
  @SP
  AM=M-1
  D=M
  @R13
  A=M
  M=D

// push constant 111
  @111
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 0
  @0
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 0
  @0
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 0
  @0
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 30
  @30
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 51
  @51
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 51
  @51
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 51
  @51
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 51
  @51
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 30
  @30
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 0
  @0
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 0
  @0
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// call Output.create 12
// push return address onto stack
  @Output.create$ret.80
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's LCL to the stack
  @LCL
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's ARG to the stack
  @ARG
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's THIS to the stack
  @THIS
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's THAT to the stack
  @THAT
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// set the callee ARG to point at the first arg passed to the function
  @SP
  D=M
  @5
  D=D-A
  @12
  D=D-A
  @ARG
  M=D
// set the callee LCL point at the top of the stack
  @SP
  D=M
  @LCL
  M=D
// goto Output.create
  @Output.create
  0;JMP
// create return address label
(Output.create$ret.80)

// pop TEMP 0
  @5
  D=A
  @TEMP
  D=M+D
  @R13
  M=D
  @SP
  AM=M-1
  D=M
  @R13
  A=M
  M=D

// push constant 112
  @112
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 0
  @0
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 0
  @0
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 0
  @0
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 30
  @30
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 51
  @51
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 51
  @51
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 51
  @51
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 31
  @31
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 3
  @3
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 3
  @3
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 0
  @0
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// call Output.create 12
// push return address onto stack
  @Output.create$ret.81
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's LCL to the stack
  @LCL
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's ARG to the stack
  @ARG
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's THIS to the stack
  @THIS
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's THAT to the stack
  @THAT
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// set the callee ARG to point at the first arg passed to the function
  @SP
  D=M
  @5
  D=D-A
  @12
  D=D-A
  @ARG
  M=D
// set the callee LCL point at the top of the stack
  @SP
  D=M
  @LCL
  M=D
// goto Output.create
  @Output.create
  0;JMP
// create return address label
(Output.create$ret.81)

// pop TEMP 0
  @5
  D=A
  @TEMP
  D=M+D
  @R13
  M=D
  @SP
  AM=M-1
  D=M
  @R13
  A=M
  M=D

// push constant 113
  @113
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 0
  @0
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 0
  @0
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 0
  @0
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 30
  @30
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 51
  @51
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 51
  @51
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 51
  @51
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 62
  @62
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 48
  @48
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 48
  @48
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 0
  @0
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// call Output.create 12
// push return address onto stack
  @Output.create$ret.82
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's LCL to the stack
  @LCL
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's ARG to the stack
  @ARG
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's THIS to the stack
  @THIS
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's THAT to the stack
  @THAT
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// set the callee ARG to point at the first arg passed to the function
  @SP
  D=M
  @5
  D=D-A
  @12
  D=D-A
  @ARG
  M=D
// set the callee LCL point at the top of the stack
  @SP
  D=M
  @LCL
  M=D
// goto Output.create
  @Output.create
  0;JMP
// create return address label
(Output.create$ret.82)

// pop TEMP 0
  @5
  D=A
  @TEMP
  D=M+D
  @R13
  M=D
  @SP
  AM=M-1
  D=M
  @R13
  A=M
  M=D

// push constant 114
  @114
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 0
  @0
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 0
  @0
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 0
  @0
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 29
  @29
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 55
  @55
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 51
  @51
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 3
  @3
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 3
  @3
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 7
  @7
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 0
  @0
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 0
  @0
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// call Output.create 12
// push return address onto stack
  @Output.create$ret.83
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's LCL to the stack
  @LCL
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's ARG to the stack
  @ARG
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's THIS to the stack
  @THIS
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's THAT to the stack
  @THAT
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// set the callee ARG to point at the first arg passed to the function
  @SP
  D=M
  @5
  D=D-A
  @12
  D=D-A
  @ARG
  M=D
// set the callee LCL point at the top of the stack
  @SP
  D=M
  @LCL
  M=D
// goto Output.create
  @Output.create
  0;JMP
// create return address label
(Output.create$ret.83)

// pop TEMP 0
  @5
  D=A
  @TEMP
  D=M+D
  @R13
  M=D
  @SP
  AM=M-1
  D=M
  @R13
  A=M
  M=D

// push constant 115
  @115
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 0
  @0
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 0
  @0
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 0
  @0
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 30
  @30
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 51
  @51
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 6
  @6
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 24
  @24
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 51
  @51
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 30
  @30
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 0
  @0
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 0
  @0
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// call Output.create 12
// push return address onto stack
  @Output.create$ret.84
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's LCL to the stack
  @LCL
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's ARG to the stack
  @ARG
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's THIS to the stack
  @THIS
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's THAT to the stack
  @THAT
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// set the callee ARG to point at the first arg passed to the function
  @SP
  D=M
  @5
  D=D-A
  @12
  D=D-A
  @ARG
  M=D
// set the callee LCL point at the top of the stack
  @SP
  D=M
  @LCL
  M=D
// goto Output.create
  @Output.create
  0;JMP
// create return address label
(Output.create$ret.84)

// pop TEMP 0
  @5
  D=A
  @TEMP
  D=M+D
  @R13
  M=D
  @SP
  AM=M-1
  D=M
  @R13
  A=M
  M=D

// push constant 116
  @116
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 4
  @4
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 6
  @6
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 6
  @6
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 15
  @15
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 6
  @6
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 6
  @6
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 6
  @6
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 54
  @54
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 28
  @28
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 0
  @0
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 0
  @0
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// call Output.create 12
// push return address onto stack
  @Output.create$ret.85
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's LCL to the stack
  @LCL
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's ARG to the stack
  @ARG
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's THIS to the stack
  @THIS
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's THAT to the stack
  @THAT
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// set the callee ARG to point at the first arg passed to the function
  @SP
  D=M
  @5
  D=D-A
  @12
  D=D-A
  @ARG
  M=D
// set the callee LCL point at the top of the stack
  @SP
  D=M
  @LCL
  M=D
// goto Output.create
  @Output.create
  0;JMP
// create return address label
(Output.create$ret.85)

// pop TEMP 0
  @5
  D=A
  @TEMP
  D=M+D
  @R13
  M=D
  @SP
  AM=M-1
  D=M
  @R13
  A=M
  M=D

// push constant 117
  @117
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 0
  @0
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 0
  @0
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 0
  @0
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 27
  @27
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 27
  @27
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 27
  @27
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 27
  @27
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 27
  @27
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 54
  @54
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 0
  @0
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 0
  @0
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// call Output.create 12
// push return address onto stack
  @Output.create$ret.86
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's LCL to the stack
  @LCL
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's ARG to the stack
  @ARG
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's THIS to the stack
  @THIS
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's THAT to the stack
  @THAT
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// set the callee ARG to point at the first arg passed to the function
  @SP
  D=M
  @5
  D=D-A
  @12
  D=D-A
  @ARG
  M=D
// set the callee LCL point at the top of the stack
  @SP
  D=M
  @LCL
  M=D
// goto Output.create
  @Output.create
  0;JMP
// create return address label
(Output.create$ret.86)

// pop TEMP 0
  @5
  D=A
  @TEMP
  D=M+D
  @R13
  M=D
  @SP
  AM=M-1
  D=M
  @R13
  A=M
  M=D

// push constant 118
  @118
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 0
  @0
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 0
  @0
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 0
  @0
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 51
  @51
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 51
  @51
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 51
  @51
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 51
  @51
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 30
  @30
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 12
  @12
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 0
  @0
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 0
  @0
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// call Output.create 12
// push return address onto stack
  @Output.create$ret.87
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's LCL to the stack
  @LCL
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's ARG to the stack
  @ARG
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's THIS to the stack
  @THIS
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's THAT to the stack
  @THAT
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// set the callee ARG to point at the first arg passed to the function
  @SP
  D=M
  @5
  D=D-A
  @12
  D=D-A
  @ARG
  M=D
// set the callee LCL point at the top of the stack
  @SP
  D=M
  @LCL
  M=D
// goto Output.create
  @Output.create
  0;JMP
// create return address label
(Output.create$ret.87)

// pop TEMP 0
  @5
  D=A
  @TEMP
  D=M+D
  @R13
  M=D
  @SP
  AM=M-1
  D=M
  @R13
  A=M
  M=D

// push constant 119
  @119
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 0
  @0
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 0
  @0
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 0
  @0
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 51
  @51
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 51
  @51
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 51
  @51
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 63
  @63
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 63
  @63
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 18
  @18
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 0
  @0
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 0
  @0
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// call Output.create 12
// push return address onto stack
  @Output.create$ret.88
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's LCL to the stack
  @LCL
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's ARG to the stack
  @ARG
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's THIS to the stack
  @THIS
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's THAT to the stack
  @THAT
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// set the callee ARG to point at the first arg passed to the function
  @SP
  D=M
  @5
  D=D-A
  @12
  D=D-A
  @ARG
  M=D
// set the callee LCL point at the top of the stack
  @SP
  D=M
  @LCL
  M=D
// goto Output.create
  @Output.create
  0;JMP
// create return address label
(Output.create$ret.88)

// pop TEMP 0
  @5
  D=A
  @TEMP
  D=M+D
  @R13
  M=D
  @SP
  AM=M-1
  D=M
  @R13
  A=M
  M=D

// push constant 120
  @120
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 0
  @0
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 0
  @0
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 0
  @0
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 51
  @51
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 30
  @30
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 12
  @12
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 12
  @12
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 30
  @30
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 51
  @51
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 0
  @0
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 0
  @0
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// call Output.create 12
// push return address onto stack
  @Output.create$ret.89
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's LCL to the stack
  @LCL
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's ARG to the stack
  @ARG
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's THIS to the stack
  @THIS
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's THAT to the stack
  @THAT
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// set the callee ARG to point at the first arg passed to the function
  @SP
  D=M
  @5
  D=D-A
  @12
  D=D-A
  @ARG
  M=D
// set the callee LCL point at the top of the stack
  @SP
  D=M
  @LCL
  M=D
// goto Output.create
  @Output.create
  0;JMP
// create return address label
(Output.create$ret.89)

// pop TEMP 0
  @5
  D=A
  @TEMP
  D=M+D
  @R13
  M=D
  @SP
  AM=M-1
  D=M
  @R13
  A=M
  M=D

// push constant 121
  @121
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 0
  @0
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 0
  @0
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 0
  @0
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 51
  @51
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 51
  @51
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 51
  @51
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 62
  @62
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 48
  @48
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 24
  @24
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 15
  @15
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 0
  @0
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// call Output.create 12
// push return address onto stack
  @Output.create$ret.90
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's LCL to the stack
  @LCL
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's ARG to the stack
  @ARG
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's THIS to the stack
  @THIS
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's THAT to the stack
  @THAT
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// set the callee ARG to point at the first arg passed to the function
  @SP
  D=M
  @5
  D=D-A
  @12
  D=D-A
  @ARG
  M=D
// set the callee LCL point at the top of the stack
  @SP
  D=M
  @LCL
  M=D
// goto Output.create
  @Output.create
  0;JMP
// create return address label
(Output.create$ret.90)

// pop TEMP 0
  @5
  D=A
  @TEMP
  D=M+D
  @R13
  M=D
  @SP
  AM=M-1
  D=M
  @R13
  A=M
  M=D

// push constant 122
  @122
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 0
  @0
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 0
  @0
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 0
  @0
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 63
  @63
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 27
  @27
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 12
  @12
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 6
  @6
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 51
  @51
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 63
  @63
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 0
  @0
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 0
  @0
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// call Output.create 12
// push return address onto stack
  @Output.create$ret.91
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's LCL to the stack
  @LCL
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's ARG to the stack
  @ARG
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's THIS to the stack
  @THIS
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's THAT to the stack
  @THAT
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// set the callee ARG to point at the first arg passed to the function
  @SP
  D=M
  @5
  D=D-A
  @12
  D=D-A
  @ARG
  M=D
// set the callee LCL point at the top of the stack
  @SP
  D=M
  @LCL
  M=D
// goto Output.create
  @Output.create
  0;JMP
// create return address label
(Output.create$ret.91)

// pop TEMP 0
  @5
  D=A
  @TEMP
  D=M+D
  @R13
  M=D
  @SP
  AM=M-1
  D=M
  @R13
  A=M
  M=D

// push constant 123
  @123
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 56
  @56
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 12
  @12
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 12
  @12
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 12
  @12
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 7
  @7
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 12
  @12
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 12
  @12
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 12
  @12
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 56
  @56
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 0
  @0
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 0
  @0
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// call Output.create 12
// push return address onto stack
  @Output.create$ret.92
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's LCL to the stack
  @LCL
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's ARG to the stack
  @ARG
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's THIS to the stack
  @THIS
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's THAT to the stack
  @THAT
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// set the callee ARG to point at the first arg passed to the function
  @SP
  D=M
  @5
  D=D-A
  @12
  D=D-A
  @ARG
  M=D
// set the callee LCL point at the top of the stack
  @SP
  D=M
  @LCL
  M=D
// goto Output.create
  @Output.create
  0;JMP
// create return address label
(Output.create$ret.92)

// pop TEMP 0
  @5
  D=A
  @TEMP
  D=M+D
  @R13
  M=D
  @SP
  AM=M-1
  D=M
  @R13
  A=M
  M=D

// push constant 124
  @124
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 12
  @12
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 12
  @12
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 12
  @12
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 12
  @12
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 12
  @12
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 12
  @12
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 12
  @12
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 12
  @12
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 12
  @12
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 0
  @0
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 0
  @0
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// call Output.create 12
// push return address onto stack
  @Output.create$ret.93
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's LCL to the stack
  @LCL
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's ARG to the stack
  @ARG
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's THIS to the stack
  @THIS
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's THAT to the stack
  @THAT
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// set the callee ARG to point at the first arg passed to the function
  @SP
  D=M
  @5
  D=D-A
  @12
  D=D-A
  @ARG
  M=D
// set the callee LCL point at the top of the stack
  @SP
  D=M
  @LCL
  M=D
// goto Output.create
  @Output.create
  0;JMP
// create return address label
(Output.create$ret.93)

// pop TEMP 0
  @5
  D=A
  @TEMP
  D=M+D
  @R13
  M=D
  @SP
  AM=M-1
  D=M
  @R13
  A=M
  M=D

// push constant 125
  @125
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 7
  @7
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 12
  @12
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 12
  @12
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 12
  @12
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 56
  @56
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 12
  @12
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 12
  @12
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 12
  @12
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 7
  @7
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 0
  @0
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 0
  @0
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// call Output.create 12
// push return address onto stack
  @Output.create$ret.94
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's LCL to the stack
  @LCL
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's ARG to the stack
  @ARG
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's THIS to the stack
  @THIS
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's THAT to the stack
  @THAT
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// set the callee ARG to point at the first arg passed to the function
  @SP
  D=M
  @5
  D=D-A
  @12
  D=D-A
  @ARG
  M=D
// set the callee LCL point at the top of the stack
  @SP
  D=M
  @LCL
  M=D
// goto Output.create
  @Output.create
  0;JMP
// create return address label
(Output.create$ret.94)

// pop TEMP 0
  @5
  D=A
  @TEMP
  D=M+D
  @R13
  M=D
  @SP
  AM=M-1
  D=M
  @R13
  A=M
  M=D

// push constant 126
  @126
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 38
  @38
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 45
  @45
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 25
  @25
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 0
  @0
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 0
  @0
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 0
  @0
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 0
  @0
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 0
  @0
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 0
  @0
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 0
  @0
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 0
  @0
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// call Output.create 12
// push return address onto stack
  @Output.create$ret.95
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's LCL to the stack
  @LCL
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's ARG to the stack
  @ARG
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's THIS to the stack
  @THIS
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's THAT to the stack
  @THAT
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// set the callee ARG to point at the first arg passed to the function
  @SP
  D=M
  @5
  D=D-A
  @12
  D=D-A
  @ARG
  M=D
// set the callee LCL point at the top of the stack
  @SP
  D=M
  @LCL
  M=D
// goto Output.create
  @Output.create
  0;JMP
// create return address label
(Output.create$ret.95)

// pop TEMP 0
  @5
  D=A
  @TEMP
  D=M+D
  @R13
  M=D
  @SP
  AM=M-1
  D=M
  @R13
  A=M
  M=D

// push constant 0
  @0
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// return
// Store the start of the local stack (i.e. 'frame') in a temp variable
  @LCL
  D=M
  @R13
  M=D
// Store the return address in a temp variable
  @5
  A=D-A
  D=M
  @R14
  M=D
// Store the return value in the first argument (i.e. top of caller stack)
  @SP
  AM=M-1
  D=M
  @ARG
  A=M
  M=D
// Restore the caller's stack pointer (one after the return value)
  @ARG
  D=M+1
  @SP
  M=D
// Restore the caller's THAT segment
  @R13
  AM=M-1
  D=M
  @THAT
  M=D
// Restore the caller's THIS segment
  @R13
  AM=M-1
  D=M
  @THIS
  M=D
// Restore the caller's ARG segment
  @R13
  AM=M-1
  D=M
  @ARG
  M=D
// Restore the caller's LCL segment
  @R13
  AM=M-1
  D=M
  @LCL
  M=D
// Jump to the return address
  @R14
  A=M
  0;JMP

// function Output.create 1
  (Output.create)
  @SP
  A=M
  M=0
  @SP
  M=M+1

// push constant 11
  @11
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// call Array.new 1
// push return address onto stack
  @Array.new$ret.3
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's LCL to the stack
  @LCL
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's ARG to the stack
  @ARG
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's THIS to the stack
  @THIS
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's THAT to the stack
  @THAT
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// set the callee ARG to point at the first arg passed to the function
  @SP
  D=M
  @5
  D=D-A
  @1
  D=D-A
  @ARG
  M=D
// set the callee LCL point at the top of the stack
  @SP
  D=M
  @LCL
  M=D
// goto Array.new
  @Array.new
  0;JMP
// create return address label
(Array.new$ret.3)

// pop LCL 0
  @0
  D=A
  @LCL
  D=M+D
  @R13
  M=D
  @SP
  AM=M-1
  D=M
  @R13
  A=M
  M=D

// push ARG 0
  @0
  D=A
  @ARG
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push static 5
  @Output.5
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// add
  @SP
  AM=M-1
  D=M
  A=A-1
  M=M+D

// push LCL 0
  @0
  D=A
  @LCL
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// pop TEMP 0
  @5
  D=A
  @TEMP
  D=M+D
  @R13
  M=D
  @SP
  AM=M-1
  D=M
  @R13
  A=M
  M=D

// pop pointer 1
  @SP
  AM=M-1
  D=M
  @THAT
  M=D

// push TEMP 0
  @5
  D=A
  @TEMP
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// pop THAT 0
  @0
  D=A
  @THAT
  D=M+D
  @R13
  M=D
  @SP
  AM=M-1
  D=M
  @R13
  A=M
  M=D

// push constant 0
  @0
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push LCL 0
  @0
  D=A
  @LCL
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// add
  @SP
  AM=M-1
  D=M
  A=A-1
  M=M+D

// push ARG 1
  @1
  D=A
  @ARG
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// pop TEMP 0
  @5
  D=A
  @TEMP
  D=M+D
  @R13
  M=D
  @SP
  AM=M-1
  D=M
  @R13
  A=M
  M=D

// pop pointer 1
  @SP
  AM=M-1
  D=M
  @THAT
  M=D

// push TEMP 0
  @5
  D=A
  @TEMP
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// pop THAT 0
  @0
  D=A
  @THAT
  D=M+D
  @R13
  M=D
  @SP
  AM=M-1
  D=M
  @R13
  A=M
  M=D

// push constant 1
  @1
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push LCL 0
  @0
  D=A
  @LCL
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// add
  @SP
  AM=M-1
  D=M
  A=A-1
  M=M+D

// push ARG 2
  @2
  D=A
  @ARG
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// pop TEMP 0
  @5
  D=A
  @TEMP
  D=M+D
  @R13
  M=D
  @SP
  AM=M-1
  D=M
  @R13
  A=M
  M=D

// pop pointer 1
  @SP
  AM=M-1
  D=M
  @THAT
  M=D

// push TEMP 0
  @5
  D=A
  @TEMP
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// pop THAT 0
  @0
  D=A
  @THAT
  D=M+D
  @R13
  M=D
  @SP
  AM=M-1
  D=M
  @R13
  A=M
  M=D

// push constant 2
  @2
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push LCL 0
  @0
  D=A
  @LCL
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// add
  @SP
  AM=M-1
  D=M
  A=A-1
  M=M+D

// push ARG 3
  @3
  D=A
  @ARG
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// pop TEMP 0
  @5
  D=A
  @TEMP
  D=M+D
  @R13
  M=D
  @SP
  AM=M-1
  D=M
  @R13
  A=M
  M=D

// pop pointer 1
  @SP
  AM=M-1
  D=M
  @THAT
  M=D

// push TEMP 0
  @5
  D=A
  @TEMP
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// pop THAT 0
  @0
  D=A
  @THAT
  D=M+D
  @R13
  M=D
  @SP
  AM=M-1
  D=M
  @R13
  A=M
  M=D

// push constant 3
  @3
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push LCL 0
  @0
  D=A
  @LCL
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// add
  @SP
  AM=M-1
  D=M
  A=A-1
  M=M+D

// push ARG 4
  @4
  D=A
  @ARG
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// pop TEMP 0
  @5
  D=A
  @TEMP
  D=M+D
  @R13
  M=D
  @SP
  AM=M-1
  D=M
  @R13
  A=M
  M=D

// pop pointer 1
  @SP
  AM=M-1
  D=M
  @THAT
  M=D

// push TEMP 0
  @5
  D=A
  @TEMP
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// pop THAT 0
  @0
  D=A
  @THAT
  D=M+D
  @R13
  M=D
  @SP
  AM=M-1
  D=M
  @R13
  A=M
  M=D

// push constant 4
  @4
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push LCL 0
  @0
  D=A
  @LCL
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// add
  @SP
  AM=M-1
  D=M
  A=A-1
  M=M+D

// push ARG 5
  @5
  D=A
  @ARG
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// pop TEMP 0
  @5
  D=A
  @TEMP
  D=M+D
  @R13
  M=D
  @SP
  AM=M-1
  D=M
  @R13
  A=M
  M=D

// pop pointer 1
  @SP
  AM=M-1
  D=M
  @THAT
  M=D

// push TEMP 0
  @5
  D=A
  @TEMP
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// pop THAT 0
  @0
  D=A
  @THAT
  D=M+D
  @R13
  M=D
  @SP
  AM=M-1
  D=M
  @R13
  A=M
  M=D

// push constant 5
  @5
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push LCL 0
  @0
  D=A
  @LCL
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// add
  @SP
  AM=M-1
  D=M
  A=A-1
  M=M+D

// push ARG 6
  @6
  D=A
  @ARG
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// pop TEMP 0
  @5
  D=A
  @TEMP
  D=M+D
  @R13
  M=D
  @SP
  AM=M-1
  D=M
  @R13
  A=M
  M=D

// pop pointer 1
  @SP
  AM=M-1
  D=M
  @THAT
  M=D

// push TEMP 0
  @5
  D=A
  @TEMP
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// pop THAT 0
  @0
  D=A
  @THAT
  D=M+D
  @R13
  M=D
  @SP
  AM=M-1
  D=M
  @R13
  A=M
  M=D

// push constant 6
  @6
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push LCL 0
  @0
  D=A
  @LCL
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// add
  @SP
  AM=M-1
  D=M
  A=A-1
  M=M+D

// push ARG 7
  @7
  D=A
  @ARG
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// pop TEMP 0
  @5
  D=A
  @TEMP
  D=M+D
  @R13
  M=D
  @SP
  AM=M-1
  D=M
  @R13
  A=M
  M=D

// pop pointer 1
  @SP
  AM=M-1
  D=M
  @THAT
  M=D

// push TEMP 0
  @5
  D=A
  @TEMP
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// pop THAT 0
  @0
  D=A
  @THAT
  D=M+D
  @R13
  M=D
  @SP
  AM=M-1
  D=M
  @R13
  A=M
  M=D

// push constant 7
  @7
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push LCL 0
  @0
  D=A
  @LCL
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// add
  @SP
  AM=M-1
  D=M
  A=A-1
  M=M+D

// push ARG 8
  @8
  D=A
  @ARG
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// pop TEMP 0
  @5
  D=A
  @TEMP
  D=M+D
  @R13
  M=D
  @SP
  AM=M-1
  D=M
  @R13
  A=M
  M=D

// pop pointer 1
  @SP
  AM=M-1
  D=M
  @THAT
  M=D

// push TEMP 0
  @5
  D=A
  @TEMP
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// pop THAT 0
  @0
  D=A
  @THAT
  D=M+D
  @R13
  M=D
  @SP
  AM=M-1
  D=M
  @R13
  A=M
  M=D

// push constant 8
  @8
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push LCL 0
  @0
  D=A
  @LCL
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// add
  @SP
  AM=M-1
  D=M
  A=A-1
  M=M+D

// push ARG 9
  @9
  D=A
  @ARG
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// pop TEMP 0
  @5
  D=A
  @TEMP
  D=M+D
  @R13
  M=D
  @SP
  AM=M-1
  D=M
  @R13
  A=M
  M=D

// pop pointer 1
  @SP
  AM=M-1
  D=M
  @THAT
  M=D

// push TEMP 0
  @5
  D=A
  @TEMP
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// pop THAT 0
  @0
  D=A
  @THAT
  D=M+D
  @R13
  M=D
  @SP
  AM=M-1
  D=M
  @R13
  A=M
  M=D

// push constant 9
  @9
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push LCL 0
  @0
  D=A
  @LCL
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// add
  @SP
  AM=M-1
  D=M
  A=A-1
  M=M+D

// push ARG 10
  @10
  D=A
  @ARG
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// pop TEMP 0
  @5
  D=A
  @TEMP
  D=M+D
  @R13
  M=D
  @SP
  AM=M-1
  D=M
  @R13
  A=M
  M=D

// pop pointer 1
  @SP
  AM=M-1
  D=M
  @THAT
  M=D

// push TEMP 0
  @5
  D=A
  @TEMP
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// pop THAT 0
  @0
  D=A
  @THAT
  D=M+D
  @R13
  M=D
  @SP
  AM=M-1
  D=M
  @R13
  A=M
  M=D

// push constant 10
  @10
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push LCL 0
  @0
  D=A
  @LCL
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// add
  @SP
  AM=M-1
  D=M
  A=A-1
  M=M+D

// push ARG 11
  @11
  D=A
  @ARG
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// pop TEMP 0
  @5
  D=A
  @TEMP
  D=M+D
  @R13
  M=D
  @SP
  AM=M-1
  D=M
  @R13
  A=M
  M=D

// pop pointer 1
  @SP
  AM=M-1
  D=M
  @THAT
  M=D

// push TEMP 0
  @5
  D=A
  @TEMP
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// pop THAT 0
  @0
  D=A
  @THAT
  D=M+D
  @R13
  M=D
  @SP
  AM=M-1
  D=M
  @R13
  A=M
  M=D

// push constant 0
  @0
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// return
// Store the start of the local stack (i.e. 'frame') in a temp variable
  @LCL
  D=M
  @R13
  M=D
// Store the return address in a temp variable
  @5
  A=D-A
  D=M
  @R14
  M=D
// Store the return value in the first argument (i.e. top of caller stack)
  @SP
  AM=M-1
  D=M
  @ARG
  A=M
  M=D
// Restore the caller's stack pointer (one after the return value)
  @ARG
  D=M+1
  @SP
  M=D
// Restore the caller's THAT segment
  @R13
  AM=M-1
  D=M
  @THAT
  M=D
// Restore the caller's THIS segment
  @R13
  AM=M-1
  D=M
  @THIS
  M=D
// Restore the caller's ARG segment
  @R13
  AM=M-1
  D=M
  @ARG
  M=D
// Restore the caller's LCL segment
  @R13
  AM=M-1
  D=M
  @LCL
  M=D
// Jump to the return address
  @R14
  A=M
  0;JMP

// function Output.createShiftedMap 4
  (Output.createShiftedMap)
  @SP
  A=M
  M=0
  @SP
  M=M+1
  @SP
  A=M
  M=0
  @SP
  M=M+1
  @SP
  A=M
  M=0
  @SP
  M=M+1
  @SP
  A=M
  M=0
  @SP
  M=M+1

// push constant 127
  @127
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// call Array.new 1
// push return address onto stack
  @Array.new$ret.4
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's LCL to the stack
  @LCL
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's ARG to the stack
  @ARG
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's THIS to the stack
  @THIS
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's THAT to the stack
  @THAT
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// set the callee ARG to point at the first arg passed to the function
  @SP
  D=M
  @5
  D=D-A
  @1
  D=D-A
  @ARG
  M=D
// set the callee LCL point at the top of the stack
  @SP
  D=M
  @LCL
  M=D
// goto Array.new
  @Array.new
  0;JMP
// create return address label
(Array.new$ret.4)

// pop static 6
  @SP
  AM=M-1
  D=M
  @Output.6
  M=D

// push constant 0
  @0
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// pop LCL 2
  @2
  D=A
  @LCL
  D=M+D
  @R13
  M=D
  @SP
  AM=M-1
  D=M
  @R13
  A=M
  M=D

// label WHILE_EXP0
  (WHILE_EXP0)

// push LCL 2
  @2
  D=A
  @LCL
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 127
  @127
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// lt
  @SP
  AM=M-1
  D=M
  A=A-1
  D=M-D
  @TRUE2422
  D;JLT
  @SP
  A=M-1
  M=0
  @CONTINUE2422
  0;JMP
(TRUE2422)
  @SP
  A=M-1
  M=-1
(CONTINUE2422)

// not
  @SP
  A=M-1
  M=!M

// if-goto WHILE_END0
  @SP
  AM=M-1
  D=M
  @WHILE_END0
  D;JNE

// push LCL 2
  @2
  D=A
  @LCL
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push static 5
  @Output.5
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// add
  @SP
  AM=M-1
  D=M
  A=A-1
  M=M+D

// pop pointer 1
  @SP
  AM=M-1
  D=M
  @THAT
  M=D

// push THAT 0
  @0
  D=A
  @THAT
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// pop LCL 0
  @0
  D=A
  @LCL
  D=M+D
  @R13
  M=D
  @SP
  AM=M-1
  D=M
  @R13
  A=M
  M=D

// push constant 11
  @11
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// call Array.new 1
// push return address onto stack
  @Array.new$ret.5
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's LCL to the stack
  @LCL
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's ARG to the stack
  @ARG
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's THIS to the stack
  @THIS
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's THAT to the stack
  @THAT
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// set the callee ARG to point at the first arg passed to the function
  @SP
  D=M
  @5
  D=D-A
  @1
  D=D-A
  @ARG
  M=D
// set the callee LCL point at the top of the stack
  @SP
  D=M
  @LCL
  M=D
// goto Array.new
  @Array.new
  0;JMP
// create return address label
(Array.new$ret.5)

// pop LCL 1
  @1
  D=A
  @LCL
  D=M+D
  @R13
  M=D
  @SP
  AM=M-1
  D=M
  @R13
  A=M
  M=D

// push LCL 2
  @2
  D=A
  @LCL
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push static 6
  @Output.6
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// add
  @SP
  AM=M-1
  D=M
  A=A-1
  M=M+D

// push LCL 1
  @1
  D=A
  @LCL
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// pop TEMP 0
  @5
  D=A
  @TEMP
  D=M+D
  @R13
  M=D
  @SP
  AM=M-1
  D=M
  @R13
  A=M
  M=D

// pop pointer 1
  @SP
  AM=M-1
  D=M
  @THAT
  M=D

// push TEMP 0
  @5
  D=A
  @TEMP
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// pop THAT 0
  @0
  D=A
  @THAT
  D=M+D
  @R13
  M=D
  @SP
  AM=M-1
  D=M
  @R13
  A=M
  M=D

// push constant 0
  @0
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// pop LCL 3
  @3
  D=A
  @LCL
  D=M+D
  @R13
  M=D
  @SP
  AM=M-1
  D=M
  @R13
  A=M
  M=D

// label WHILE_EXP1
  (WHILE_EXP1)

// push LCL 3
  @3
  D=A
  @LCL
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 11
  @11
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// lt
  @SP
  AM=M-1
  D=M
  A=A-1
  D=M-D
  @TRUE2447
  D;JLT
  @SP
  A=M-1
  M=0
  @CONTINUE2447
  0;JMP
(TRUE2447)
  @SP
  A=M-1
  M=-1
(CONTINUE2447)

// not
  @SP
  A=M-1
  M=!M

// if-goto WHILE_END1
  @SP
  AM=M-1
  D=M
  @WHILE_END1
  D;JNE

// push LCL 3
  @3
  D=A
  @LCL
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push LCL 1
  @1
  D=A
  @LCL
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// add
  @SP
  AM=M-1
  D=M
  A=A-1
  M=M+D

// push LCL 3
  @3
  D=A
  @LCL
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push LCL 0
  @0
  D=A
  @LCL
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// add
  @SP
  AM=M-1
  D=M
  A=A-1
  M=M+D

// pop pointer 1
  @SP
  AM=M-1
  D=M
  @THAT
  M=D

// push THAT 0
  @0
  D=A
  @THAT
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 256
  @256
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// call Math.multiply 2
// push return address onto stack
  @Math.multiply$ret.1
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's LCL to the stack
  @LCL
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's ARG to the stack
  @ARG
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's THIS to the stack
  @THIS
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's THAT to the stack
  @THAT
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// set the callee ARG to point at the first arg passed to the function
  @SP
  D=M
  @5
  D=D-A
  @2
  D=D-A
  @ARG
  M=D
// set the callee LCL point at the top of the stack
  @SP
  D=M
  @LCL
  M=D
// goto Math.multiply
  @Math.multiply
  0;JMP
// create return address label
(Math.multiply$ret.1)

// pop TEMP 0
  @5
  D=A
  @TEMP
  D=M+D
  @R13
  M=D
  @SP
  AM=M-1
  D=M
  @R13
  A=M
  M=D

// pop pointer 1
  @SP
  AM=M-1
  D=M
  @THAT
  M=D

// push TEMP 0
  @5
  D=A
  @TEMP
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// pop THAT 0
  @0
  D=A
  @THAT
  D=M+D
  @R13
  M=D
  @SP
  AM=M-1
  D=M
  @R13
  A=M
  M=D

// push LCL 3
  @3
  D=A
  @LCL
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 1
  @1
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// add
  @SP
  AM=M-1
  D=M
  A=A-1
  M=M+D

// pop LCL 3
  @3
  D=A
  @LCL
  D=M+D
  @R13
  M=D
  @SP
  AM=M-1
  D=M
  @R13
  A=M
  M=D

// goto WHILE_EXP1
  @WHILE_EXP1
  0;JMP

// label WHILE_END1
  (WHILE_END1)

// push LCL 2
  @2
  D=A
  @LCL
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 0
  @0
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// eq
  @SP
  AM=M-1
  D=M
  A=A-1
  D=M-D
  @TRUE2472
  D;JEQ
  @SP
  A=M-1
  M=0
  @CONTINUE2472
  0;JMP
(TRUE2472)
  @SP
  A=M-1
  M=-1
(CONTINUE2472)

// if-goto IF_TRUE0
  @SP
  AM=M-1
  D=M
  @IF_TRUE0
  D;JNE

// goto IF_FALSE0
  @IF_FALSE0
  0;JMP

// label IF_TRUE0
  (IF_TRUE0)

// push constant 32
  @32
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// pop LCL 2
  @2
  D=A
  @LCL
  D=M+D
  @R13
  M=D
  @SP
  AM=M-1
  D=M
  @R13
  A=M
  M=D

// goto IF_END0
  @IF_END0
  0;JMP

// label IF_FALSE0
  (IF_FALSE0)

// push LCL 2
  @2
  D=A
  @LCL
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 1
  @1
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// add
  @SP
  AM=M-1
  D=M
  A=A-1
  M=M+D

// pop LCL 2
  @2
  D=A
  @LCL
  D=M+D
  @R13
  M=D
  @SP
  AM=M-1
  D=M
  @R13
  A=M
  M=D

// label IF_END0
  (IF_END0)

// goto WHILE_EXP0
  @WHILE_EXP0
  0;JMP

// label WHILE_END0
  (WHILE_END0)

// push constant 0
  @0
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// return
// Store the start of the local stack (i.e. 'frame') in a temp variable
  @LCL
  D=M
  @R13
  M=D
// Store the return address in a temp variable
  @5
  A=D-A
  D=M
  @R14
  M=D
// Store the return value in the first argument (i.e. top of caller stack)
  @SP
  AM=M-1
  D=M
  @ARG
  A=M
  M=D
// Restore the caller's stack pointer (one after the return value)
  @ARG
  D=M+1
  @SP
  M=D
// Restore the caller's THAT segment
  @R13
  AM=M-1
  D=M
  @THAT
  M=D
// Restore the caller's THIS segment
  @R13
  AM=M-1
  D=M
  @THIS
  M=D
// Restore the caller's ARG segment
  @R13
  AM=M-1
  D=M
  @ARG
  M=D
// Restore the caller's LCL segment
  @R13
  AM=M-1
  D=M
  @LCL
  M=D
// Jump to the return address
  @R14
  A=M
  0;JMP

// function Output.getMap 1
  (Output.getMap)
  @SP
  A=M
  M=0
  @SP
  M=M+1

// push ARG 0
  @0
  D=A
  @ARG
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 32
  @32
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// lt
  @SP
  AM=M-1
  D=M
  A=A-1
  D=M-D
  @TRUE2492
  D;JLT
  @SP
  A=M-1
  M=0
  @CONTINUE2492
  0;JMP
(TRUE2492)
  @SP
  A=M-1
  M=-1
(CONTINUE2492)

// push ARG 0
  @0
  D=A
  @ARG
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 126
  @126
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// gt
  @SP
  AM=M-1
  D=M
  A=A-1
  D=M-D
  @TRUE2495
  D;JGT
  @SP
  A=M-1
  M=0
  @CONTINUE2495
  0;JMP
(TRUE2495)
  @SP
  A=M-1
  M=-1
(CONTINUE2495)

// or
  @SP
  AM=M-1
  D=M
  A=A-1
  M=M|D

// if-goto IF_TRUE0
  @SP
  AM=M-1
  D=M
  @IF_TRUE0
  D;JNE

// goto IF_FALSE0
  @IF_FALSE0
  0;JMP

// label IF_TRUE0
  (IF_TRUE0)

// push constant 0
  @0
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// pop ARG 0
  @0
  D=A
  @ARG
  D=M+D
  @R13
  M=D
  @SP
  AM=M-1
  D=M
  @R13
  A=M
  M=D

// label IF_FALSE0
  (IF_FALSE0)

// push static 2
  @Output.2
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// if-goto IF_TRUE1
  @SP
  AM=M-1
  D=M
  @IF_TRUE1
  D;JNE

// goto IF_FALSE1
  @IF_FALSE1
  0;JMP

// label IF_TRUE1
  (IF_TRUE1)

// push ARG 0
  @0
  D=A
  @ARG
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push static 5
  @Output.5
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// add
  @SP
  AM=M-1
  D=M
  A=A-1
  M=M+D

// pop pointer 1
  @SP
  AM=M-1
  D=M
  @THAT
  M=D

// push THAT 0
  @0
  D=A
  @THAT
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// pop LCL 0
  @0
  D=A
  @LCL
  D=M+D
  @R13
  M=D
  @SP
  AM=M-1
  D=M
  @R13
  A=M
  M=D

// goto IF_END1
  @IF_END1
  0;JMP

// label IF_FALSE1
  (IF_FALSE1)

// push ARG 0
  @0
  D=A
  @ARG
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push static 6
  @Output.6
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// add
  @SP
  AM=M-1
  D=M
  A=A-1
  M=M+D

// pop pointer 1
  @SP
  AM=M-1
  D=M
  @THAT
  M=D

// push THAT 0
  @0
  D=A
  @THAT
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// pop LCL 0
  @0
  D=A
  @LCL
  D=M+D
  @R13
  M=D
  @SP
  AM=M-1
  D=M
  @R13
  A=M
  M=D

// label IF_END1
  (IF_END1)

// push LCL 0
  @0
  D=A
  @LCL
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// return
// Store the start of the local stack (i.e. 'frame') in a temp variable
  @LCL
  D=M
  @R13
  M=D
// Store the return address in a temp variable
  @5
  A=D-A
  D=M
  @R14
  M=D
// Store the return value in the first argument (i.e. top of caller stack)
  @SP
  AM=M-1
  D=M
  @ARG
  A=M
  M=D
// Restore the caller's stack pointer (one after the return value)
  @ARG
  D=M+1
  @SP
  M=D
// Restore the caller's THAT segment
  @R13
  AM=M-1
  D=M
  @THAT
  M=D
// Restore the caller's THIS segment
  @R13
  AM=M-1
  D=M
  @THIS
  M=D
// Restore the caller's ARG segment
  @R13
  AM=M-1
  D=M
  @ARG
  M=D
// Restore the caller's LCL segment
  @R13
  AM=M-1
  D=M
  @LCL
  M=D
// Jump to the return address
  @R14
  A=M
  0;JMP

// function Output.drawChar 4
  (Output.drawChar)
  @SP
  A=M
  M=0
  @SP
  M=M+1
  @SP
  A=M
  M=0
  @SP
  M=M+1
  @SP
  A=M
  M=0
  @SP
  M=M+1
  @SP
  A=M
  M=0
  @SP
  M=M+1

// push ARG 0
  @0
  D=A
  @ARG
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// call Output.getMap 1
// push return address onto stack
  @Output.getMap$ret.0
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's LCL to the stack
  @LCL
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's ARG to the stack
  @ARG
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's THIS to the stack
  @THIS
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's THAT to the stack
  @THAT
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// set the callee ARG to point at the first arg passed to the function
  @SP
  D=M
  @5
  D=D-A
  @1
  D=D-A
  @ARG
  M=D
// set the callee LCL point at the top of the stack
  @SP
  D=M
  @LCL
  M=D
// goto Output.getMap
  @Output.getMap
  0;JMP
// create return address label
(Output.getMap$ret.0)

// pop LCL 2
  @2
  D=A
  @LCL
  D=M+D
  @R13
  M=D
  @SP
  AM=M-1
  D=M
  @R13
  A=M
  M=D

// push static 1
  @Output.1
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// pop LCL 0
  @0
  D=A
  @LCL
  D=M+D
  @R13
  M=D
  @SP
  AM=M-1
  D=M
  @R13
  A=M
  M=D

// label WHILE_EXP0
  (WHILE_EXP0)

// push LCL 1
  @1
  D=A
  @LCL
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 11
  @11
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// lt
  @SP
  AM=M-1
  D=M
  A=A-1
  D=M-D
  @TRUE2533
  D;JLT
  @SP
  A=M-1
  M=0
  @CONTINUE2533
  0;JMP
(TRUE2533)
  @SP
  A=M-1
  M=-1
(CONTINUE2533)

// not
  @SP
  A=M-1
  M=!M

// if-goto WHILE_END0
  @SP
  AM=M-1
  D=M
  @WHILE_END0
  D;JNE

// push static 2
  @Output.2
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// if-goto IF_TRUE0
  @SP
  AM=M-1
  D=M
  @IF_TRUE0
  D;JNE

// goto IF_FALSE0
  @IF_FALSE0
  0;JMP

// label IF_TRUE0
  (IF_TRUE0)

// push LCL 0
  @0
  D=A
  @LCL
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push static 4
  @Output.4
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// add
  @SP
  AM=M-1
  D=M
  A=A-1
  M=M+D

// pop pointer 1
  @SP
  AM=M-1
  D=M
  @THAT
  M=D

// push THAT 0
  @0
  D=A
  @THAT
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 256
  @256
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// neg
  @SP
  A=M-1
  M=-M

// and
  @SP
  AM=M-1
  D=M
  A=A-1
  M=M&D

// pop LCL 3
  @3
  D=A
  @LCL
  D=M+D
  @R13
  M=D
  @SP
  AM=M-1
  D=M
  @R13
  A=M
  M=D

// goto IF_END0
  @IF_END0
  0;JMP

// label IF_FALSE0
  (IF_FALSE0)

// push LCL 0
  @0
  D=A
  @LCL
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push static 4
  @Output.4
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// add
  @SP
  AM=M-1
  D=M
  A=A-1
  M=M+D

// pop pointer 1
  @SP
  AM=M-1
  D=M
  @THAT
  M=D

// push THAT 0
  @0
  D=A
  @THAT
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 255
  @255
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// and
  @SP
  AM=M-1
  D=M
  A=A-1
  M=M&D

// pop LCL 3
  @3
  D=A
  @LCL
  D=M+D
  @R13
  M=D
  @SP
  AM=M-1
  D=M
  @R13
  A=M
  M=D

// label IF_END0
  (IF_END0)

// push LCL 0
  @0
  D=A
  @LCL
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push static 4
  @Output.4
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// add
  @SP
  AM=M-1
  D=M
  A=A-1
  M=M+D

// push LCL 1
  @1
  D=A
  @LCL
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push LCL 2
  @2
  D=A
  @LCL
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// add
  @SP
  AM=M-1
  D=M
  A=A-1
  M=M+D

// pop pointer 1
  @SP
  AM=M-1
  D=M
  @THAT
  M=D

// push THAT 0
  @0
  D=A
  @THAT
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push LCL 3
  @3
  D=A
  @LCL
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// or
  @SP
  AM=M-1
  D=M
  A=A-1
  M=M|D

// pop TEMP 0
  @5
  D=A
  @TEMP
  D=M+D
  @R13
  M=D
  @SP
  AM=M-1
  D=M
  @R13
  A=M
  M=D

// pop pointer 1
  @SP
  AM=M-1
  D=M
  @THAT
  M=D

// push TEMP 0
  @5
  D=A
  @TEMP
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// pop THAT 0
  @0
  D=A
  @THAT
  D=M+D
  @R13
  M=D
  @SP
  AM=M-1
  D=M
  @R13
  A=M
  M=D

// push LCL 0
  @0
  D=A
  @LCL
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 32
  @32
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// add
  @SP
  AM=M-1
  D=M
  A=A-1
  M=M+D

// pop LCL 0
  @0
  D=A
  @LCL
  D=M+D
  @R13
  M=D
  @SP
  AM=M-1
  D=M
  @R13
  A=M
  M=D

// push LCL 1
  @1
  D=A
  @LCL
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 1
  @1
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// add
  @SP
  AM=M-1
  D=M
  A=A-1
  M=M+D

// pop LCL 1
  @1
  D=A
  @LCL
  D=M+D
  @R13
  M=D
  @SP
  AM=M-1
  D=M
  @R13
  A=M
  M=D

// goto WHILE_EXP0
  @WHILE_EXP0
  0;JMP

// label WHILE_END0
  (WHILE_END0)

// push constant 0
  @0
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// return
// Store the start of the local stack (i.e. 'frame') in a temp variable
  @LCL
  D=M
  @R13
  M=D
// Store the return address in a temp variable
  @5
  A=D-A
  D=M
  @R14
  M=D
// Store the return value in the first argument (i.e. top of caller stack)
  @SP
  AM=M-1
  D=M
  @ARG
  A=M
  M=D
// Restore the caller's stack pointer (one after the return value)
  @ARG
  D=M+1
  @SP
  M=D
// Restore the caller's THAT segment
  @R13
  AM=M-1
  D=M
  @THAT
  M=D
// Restore the caller's THIS segment
  @R13
  AM=M-1
  D=M
  @THIS
  M=D
// Restore the caller's ARG segment
  @R13
  AM=M-1
  D=M
  @ARG
  M=D
// Restore the caller's LCL segment
  @R13
  AM=M-1
  D=M
  @LCL
  M=D
// Jump to the return address
  @R14
  A=M
  0;JMP

// function Output.moveCursor 0
  (Output.moveCursor)

// push ARG 0
  @0
  D=A
  @ARG
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 0
  @0
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// lt
  @SP
  AM=M-1
  D=M
  A=A-1
  D=M-D
  @TRUE2589
  D;JLT
  @SP
  A=M-1
  M=0
  @CONTINUE2589
  0;JMP
(TRUE2589)
  @SP
  A=M-1
  M=-1
(CONTINUE2589)

// push ARG 0
  @0
  D=A
  @ARG
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 22
  @22
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// gt
  @SP
  AM=M-1
  D=M
  A=A-1
  D=M-D
  @TRUE2592
  D;JGT
  @SP
  A=M-1
  M=0
  @CONTINUE2592
  0;JMP
(TRUE2592)
  @SP
  A=M-1
  M=-1
(CONTINUE2592)

// or
  @SP
  AM=M-1
  D=M
  A=A-1
  M=M|D

// push ARG 1
  @1
  D=A
  @ARG
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 0
  @0
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// lt
  @SP
  AM=M-1
  D=M
  A=A-1
  D=M-D
  @TRUE2596
  D;JLT
  @SP
  A=M-1
  M=0
  @CONTINUE2596
  0;JMP
(TRUE2596)
  @SP
  A=M-1
  M=-1
(CONTINUE2596)

// or
  @SP
  AM=M-1
  D=M
  A=A-1
  M=M|D

// push ARG 1
  @1
  D=A
  @ARG
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 63
  @63
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// gt
  @SP
  AM=M-1
  D=M
  A=A-1
  D=M-D
  @TRUE2600
  D;JGT
  @SP
  A=M-1
  M=0
  @CONTINUE2600
  0;JMP
(TRUE2600)
  @SP
  A=M-1
  M=-1
(CONTINUE2600)

// or
  @SP
  AM=M-1
  D=M
  A=A-1
  M=M|D

// if-goto IF_TRUE0
  @SP
  AM=M-1
  D=M
  @IF_TRUE0
  D;JNE

// goto IF_FALSE0
  @IF_FALSE0
  0;JMP

// label IF_TRUE0
  (IF_TRUE0)

// push constant 20
  @20
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// call Sys.error 1
// push return address onto stack
  @Sys.error$ret.5
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's LCL to the stack
  @LCL
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's ARG to the stack
  @ARG
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's THIS to the stack
  @THIS
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's THAT to the stack
  @THAT
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// set the callee ARG to point at the first arg passed to the function
  @SP
  D=M
  @5
  D=D-A
  @1
  D=D-A
  @ARG
  M=D
// set the callee LCL point at the top of the stack
  @SP
  D=M
  @LCL
  M=D
// goto Sys.error
  @Sys.error
  0;JMP
// create return address label
(Sys.error$ret.5)

// pop TEMP 0
  @5
  D=A
  @TEMP
  D=M+D
  @R13
  M=D
  @SP
  AM=M-1
  D=M
  @R13
  A=M
  M=D

// label IF_FALSE0
  (IF_FALSE0)

// push ARG 1
  @1
  D=A
  @ARG
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 2
  @2
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// call Math.divide 2
// push return address onto stack
  @Math.divide$ret.0
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's LCL to the stack
  @LCL
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's ARG to the stack
  @ARG
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's THIS to the stack
  @THIS
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's THAT to the stack
  @THAT
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// set the callee ARG to point at the first arg passed to the function
  @SP
  D=M
  @5
  D=D-A
  @2
  D=D-A
  @ARG
  M=D
// set the callee LCL point at the top of the stack
  @SP
  D=M
  @LCL
  M=D
// goto Math.divide
  @Math.divide
  0;JMP
// create return address label
(Math.divide$ret.0)

// pop static 0
  @SP
  AM=M-1
  D=M
  @Output.0
  M=D

// push constant 32
  @32
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push ARG 0
  @0
  D=A
  @ARG
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 352
  @352
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// call Math.multiply 2
// push return address onto stack
  @Math.multiply$ret.2
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's LCL to the stack
  @LCL
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's ARG to the stack
  @ARG
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's THIS to the stack
  @THIS
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's THAT to the stack
  @THAT
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// set the callee ARG to point at the first arg passed to the function
  @SP
  D=M
  @5
  D=D-A
  @2
  D=D-A
  @ARG
  M=D
// set the callee LCL point at the top of the stack
  @SP
  D=M
  @LCL
  M=D
// goto Math.multiply
  @Math.multiply
  0;JMP
// create return address label
(Math.multiply$ret.2)

// add
  @SP
  AM=M-1
  D=M
  A=A-1
  M=M+D

// push static 0
  @Output.0
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// add
  @SP
  AM=M-1
  D=M
  A=A-1
  M=M+D

// pop static 1
  @SP
  AM=M-1
  D=M
  @Output.1
  M=D

// push ARG 1
  @1
  D=A
  @ARG
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push static 0
  @Output.0
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 2
  @2
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// call Math.multiply 2
// push return address onto stack
  @Math.multiply$ret.3
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's LCL to the stack
  @LCL
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's ARG to the stack
  @ARG
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's THIS to the stack
  @THIS
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's THAT to the stack
  @THAT
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// set the callee ARG to point at the first arg passed to the function
  @SP
  D=M
  @5
  D=D-A
  @2
  D=D-A
  @ARG
  M=D
// set the callee LCL point at the top of the stack
  @SP
  D=M
  @LCL
  M=D
// goto Math.multiply
  @Math.multiply
  0;JMP
// create return address label
(Math.multiply$ret.3)

// eq
  @SP
  AM=M-1
  D=M
  A=A-1
  D=M-D
  @TRUE2625
  D;JEQ
  @SP
  A=M-1
  M=0
  @CONTINUE2625
  0;JMP
(TRUE2625)
  @SP
  A=M-1
  M=-1
(CONTINUE2625)

// pop static 2
  @SP
  AM=M-1
  D=M
  @Output.2
  M=D

// push constant 32
  @32
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// call Output.drawChar 1
// push return address onto stack
  @Output.drawChar$ret.0
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's LCL to the stack
  @LCL
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's ARG to the stack
  @ARG
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's THIS to the stack
  @THIS
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's THAT to the stack
  @THAT
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// set the callee ARG to point at the first arg passed to the function
  @SP
  D=M
  @5
  D=D-A
  @1
  D=D-A
  @ARG
  M=D
// set the callee LCL point at the top of the stack
  @SP
  D=M
  @LCL
  M=D
// goto Output.drawChar
  @Output.drawChar
  0;JMP
// create return address label
(Output.drawChar$ret.0)

// pop TEMP 0
  @5
  D=A
  @TEMP
  D=M+D
  @R13
  M=D
  @SP
  AM=M-1
  D=M
  @R13
  A=M
  M=D

// push constant 0
  @0
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// return
// Store the start of the local stack (i.e. 'frame') in a temp variable
  @LCL
  D=M
  @R13
  M=D
// Store the return address in a temp variable
  @5
  A=D-A
  D=M
  @R14
  M=D
// Store the return value in the first argument (i.e. top of caller stack)
  @SP
  AM=M-1
  D=M
  @ARG
  A=M
  M=D
// Restore the caller's stack pointer (one after the return value)
  @ARG
  D=M+1
  @SP
  M=D
// Restore the caller's THAT segment
  @R13
  AM=M-1
  D=M
  @THAT
  M=D
// Restore the caller's THIS segment
  @R13
  AM=M-1
  D=M
  @THIS
  M=D
// Restore the caller's ARG segment
  @R13
  AM=M-1
  D=M
  @ARG
  M=D
// Restore the caller's LCL segment
  @R13
  AM=M-1
  D=M
  @LCL
  M=D
// Jump to the return address
  @R14
  A=M
  0;JMP

// function Output.printChar 0
  (Output.printChar)

// push ARG 0
  @0
  D=A
  @ARG
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// call String.newLine 0
// push return address onto stack
  @String.newLine$ret.1
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's LCL to the stack
  @LCL
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's ARG to the stack
  @ARG
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's THIS to the stack
  @THIS
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's THAT to the stack
  @THAT
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// set the callee ARG to point at the first arg passed to the function
  @SP
  D=M
  @5
  D=D-A
  @0
  D=D-A
  @ARG
  M=D
// set the callee LCL point at the top of the stack
  @SP
  D=M
  @LCL
  M=D
// goto String.newLine
  @String.newLine
  0;JMP
// create return address label
(String.newLine$ret.1)

// eq
  @SP
  AM=M-1
  D=M
  A=A-1
  D=M-D
  @TRUE2635
  D;JEQ
  @SP
  A=M-1
  M=0
  @CONTINUE2635
  0;JMP
(TRUE2635)
  @SP
  A=M-1
  M=-1
(CONTINUE2635)

// if-goto IF_TRUE0
  @SP
  AM=M-1
  D=M
  @IF_TRUE0
  D;JNE

// goto IF_FALSE0
  @IF_FALSE0
  0;JMP

// label IF_TRUE0
  (IF_TRUE0)

// call Output.println 0
// push return address onto stack
  @Output.println$ret.1
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's LCL to the stack
  @LCL
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's ARG to the stack
  @ARG
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's THIS to the stack
  @THIS
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's THAT to the stack
  @THAT
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// set the callee ARG to point at the first arg passed to the function
  @SP
  D=M
  @5
  D=D-A
  @0
  D=D-A
  @ARG
  M=D
// set the callee LCL point at the top of the stack
  @SP
  D=M
  @LCL
  M=D
// goto Output.println
  @Output.println
  0;JMP
// create return address label
(Output.println$ret.1)

// pop TEMP 0
  @5
  D=A
  @TEMP
  D=M+D
  @R13
  M=D
  @SP
  AM=M-1
  D=M
  @R13
  A=M
  M=D

// goto IF_END0
  @IF_END0
  0;JMP

// label IF_FALSE0
  (IF_FALSE0)

// push ARG 0
  @0
  D=A
  @ARG
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// call String.backSpace 0
// push return address onto stack
  @String.backSpace$ret.2
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's LCL to the stack
  @LCL
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's ARG to the stack
  @ARG
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's THIS to the stack
  @THIS
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's THAT to the stack
  @THAT
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// set the callee ARG to point at the first arg passed to the function
  @SP
  D=M
  @5
  D=D-A
  @0
  D=D-A
  @ARG
  M=D
// set the callee LCL point at the top of the stack
  @SP
  D=M
  @LCL
  M=D
// goto String.backSpace
  @String.backSpace
  0;JMP
// create return address label
(String.backSpace$ret.2)

// eq
  @SP
  AM=M-1
  D=M
  A=A-1
  D=M-D
  @TRUE2645
  D;JEQ
  @SP
  A=M-1
  M=0
  @CONTINUE2645
  0;JMP
(TRUE2645)
  @SP
  A=M-1
  M=-1
(CONTINUE2645)

// if-goto IF_TRUE1
  @SP
  AM=M-1
  D=M
  @IF_TRUE1
  D;JNE

// goto IF_FALSE1
  @IF_FALSE1
  0;JMP

// label IF_TRUE1
  (IF_TRUE1)

// call Output.backSpace 0
// push return address onto stack
  @Output.backSpace$ret.0
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's LCL to the stack
  @LCL
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's ARG to the stack
  @ARG
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's THIS to the stack
  @THIS
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's THAT to the stack
  @THAT
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// set the callee ARG to point at the first arg passed to the function
  @SP
  D=M
  @5
  D=D-A
  @0
  D=D-A
  @ARG
  M=D
// set the callee LCL point at the top of the stack
  @SP
  D=M
  @LCL
  M=D
// goto Output.backSpace
  @Output.backSpace
  0;JMP
// create return address label
(Output.backSpace$ret.0)

// pop TEMP 0
  @5
  D=A
  @TEMP
  D=M+D
  @R13
  M=D
  @SP
  AM=M-1
  D=M
  @R13
  A=M
  M=D

// goto IF_END1
  @IF_END1
  0;JMP

// label IF_FALSE1
  (IF_FALSE1)

// push ARG 0
  @0
  D=A
  @ARG
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// call Output.drawChar 1
// push return address onto stack
  @Output.drawChar$ret.1
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's LCL to the stack
  @LCL
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's ARG to the stack
  @ARG
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's THIS to the stack
  @THIS
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's THAT to the stack
  @THAT
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// set the callee ARG to point at the first arg passed to the function
  @SP
  D=M
  @5
  D=D-A
  @1
  D=D-A
  @ARG
  M=D
// set the callee LCL point at the top of the stack
  @SP
  D=M
  @LCL
  M=D
// goto Output.drawChar
  @Output.drawChar
  0;JMP
// create return address label
(Output.drawChar$ret.1)

// pop TEMP 0
  @5
  D=A
  @TEMP
  D=M+D
  @R13
  M=D
  @SP
  AM=M-1
  D=M
  @R13
  A=M
  M=D

// push static 2
  @Output.2
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// not
  @SP
  A=M-1
  M=!M

// if-goto IF_TRUE2
  @SP
  AM=M-1
  D=M
  @IF_TRUE2
  D;JNE

// goto IF_FALSE2
  @IF_FALSE2
  0;JMP

// label IF_TRUE2
  (IF_TRUE2)

// push static 0
  @Output.0
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 1
  @1
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// add
  @SP
  AM=M-1
  D=M
  A=A-1
  M=M+D

// pop static 0
  @SP
  AM=M-1
  D=M
  @Output.0
  M=D

// push static 1
  @Output.1
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 1
  @1
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// add
  @SP
  AM=M-1
  D=M
  A=A-1
  M=M+D

// pop static 1
  @SP
  AM=M-1
  D=M
  @Output.1
  M=D

// label IF_FALSE2
  (IF_FALSE2)

// push static 0
  @Output.0
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 32
  @32
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// eq
  @SP
  AM=M-1
  D=M
  A=A-1
  D=M-D
  @TRUE2672
  D;JEQ
  @SP
  A=M-1
  M=0
  @CONTINUE2672
  0;JMP
(TRUE2672)
  @SP
  A=M-1
  M=-1
(CONTINUE2672)

// if-goto IF_TRUE3
  @SP
  AM=M-1
  D=M
  @IF_TRUE3
  D;JNE

// goto IF_FALSE3
  @IF_FALSE3
  0;JMP

// label IF_TRUE3
  (IF_TRUE3)

// call Output.println 0
// push return address onto stack
  @Output.println$ret.2
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's LCL to the stack
  @LCL
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's ARG to the stack
  @ARG
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's THIS to the stack
  @THIS
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's THAT to the stack
  @THAT
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// set the callee ARG to point at the first arg passed to the function
  @SP
  D=M
  @5
  D=D-A
  @0
  D=D-A
  @ARG
  M=D
// set the callee LCL point at the top of the stack
  @SP
  D=M
  @LCL
  M=D
// goto Output.println
  @Output.println
  0;JMP
// create return address label
(Output.println$ret.2)

// pop TEMP 0
  @5
  D=A
  @TEMP
  D=M+D
  @R13
  M=D
  @SP
  AM=M-1
  D=M
  @R13
  A=M
  M=D

// goto IF_END3
  @IF_END3
  0;JMP

// label IF_FALSE3
  (IF_FALSE3)

// push static 2
  @Output.2
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// not
  @SP
  A=M-1
  M=!M

// pop static 2
  @SP
  AM=M-1
  D=M
  @Output.2
  M=D

// label IF_END3
  (IF_END3)

// label IF_END1
  (IF_END1)

// label IF_END0
  (IF_END0)

// push constant 0
  @0
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// return
// Store the start of the local stack (i.e. 'frame') in a temp variable
  @LCL
  D=M
  @R13
  M=D
// Store the return address in a temp variable
  @5
  A=D-A
  D=M
  @R14
  M=D
// Store the return value in the first argument (i.e. top of caller stack)
  @SP
  AM=M-1
  D=M
  @ARG
  A=M
  M=D
// Restore the caller's stack pointer (one after the return value)
  @ARG
  D=M+1
  @SP
  M=D
// Restore the caller's THAT segment
  @R13
  AM=M-1
  D=M
  @THAT
  M=D
// Restore the caller's THIS segment
  @R13
  AM=M-1
  D=M
  @THIS
  M=D
// Restore the caller's ARG segment
  @R13
  AM=M-1
  D=M
  @ARG
  M=D
// Restore the caller's LCL segment
  @R13
  AM=M-1
  D=M
  @LCL
  M=D
// Jump to the return address
  @R14
  A=M
  0;JMP

// function Output.printString 2
  (Output.printString)
  @SP
  A=M
  M=0
  @SP
  M=M+1
  @SP
  A=M
  M=0
  @SP
  M=M+1

// push ARG 0
  @0
  D=A
  @ARG
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// call String.length 1
// push return address onto stack
  @String.length$ret.0
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's LCL to the stack
  @LCL
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's ARG to the stack
  @ARG
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's THIS to the stack
  @THIS
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's THAT to the stack
  @THAT
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// set the callee ARG to point at the first arg passed to the function
  @SP
  D=M
  @5
  D=D-A
  @1
  D=D-A
  @ARG
  M=D
// set the callee LCL point at the top of the stack
  @SP
  D=M
  @LCL
  M=D
// goto String.length
  @String.length
  0;JMP
// create return address label
(String.length$ret.0)

// pop LCL 1
  @1
  D=A
  @LCL
  D=M+D
  @R13
  M=D
  @SP
  AM=M-1
  D=M
  @R13
  A=M
  M=D

// label WHILE_EXP0
  (WHILE_EXP0)

// push LCL 0
  @0
  D=A
  @LCL
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push LCL 1
  @1
  D=A
  @LCL
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// lt
  @SP
  AM=M-1
  D=M
  A=A-1
  D=M-D
  @TRUE2695
  D;JLT
  @SP
  A=M-1
  M=0
  @CONTINUE2695
  0;JMP
(TRUE2695)
  @SP
  A=M-1
  M=-1
(CONTINUE2695)

// not
  @SP
  A=M-1
  M=!M

// if-goto WHILE_END0
  @SP
  AM=M-1
  D=M
  @WHILE_END0
  D;JNE

// push ARG 0
  @0
  D=A
  @ARG
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push LCL 0
  @0
  D=A
  @LCL
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// call String.charAt 2
// push return address onto stack
  @String.charAt$ret.0
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's LCL to the stack
  @LCL
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's ARG to the stack
  @ARG
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's THIS to the stack
  @THIS
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's THAT to the stack
  @THAT
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// set the callee ARG to point at the first arg passed to the function
  @SP
  D=M
  @5
  D=D-A
  @2
  D=D-A
  @ARG
  M=D
// set the callee LCL point at the top of the stack
  @SP
  D=M
  @LCL
  M=D
// goto String.charAt
  @String.charAt
  0;JMP
// create return address label
(String.charAt$ret.0)

// call Output.printChar 1
// push return address onto stack
  @Output.printChar$ret.3
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's LCL to the stack
  @LCL
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's ARG to the stack
  @ARG
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's THIS to the stack
  @THIS
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's THAT to the stack
  @THAT
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// set the callee ARG to point at the first arg passed to the function
  @SP
  D=M
  @5
  D=D-A
  @1
  D=D-A
  @ARG
  M=D
// set the callee LCL point at the top of the stack
  @SP
  D=M
  @LCL
  M=D
// goto Output.printChar
  @Output.printChar
  0;JMP
// create return address label
(Output.printChar$ret.3)

// pop TEMP 0
  @5
  D=A
  @TEMP
  D=M+D
  @R13
  M=D
  @SP
  AM=M-1
  D=M
  @R13
  A=M
  M=D

// push LCL 0
  @0
  D=A
  @LCL
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 1
  @1
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// add
  @SP
  AM=M-1
  D=M
  A=A-1
  M=M+D

// pop LCL 0
  @0
  D=A
  @LCL
  D=M+D
  @R13
  M=D
  @SP
  AM=M-1
  D=M
  @R13
  A=M
  M=D

// goto WHILE_EXP0
  @WHILE_EXP0
  0;JMP

// label WHILE_END0
  (WHILE_END0)

// push constant 0
  @0
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// return
// Store the start of the local stack (i.e. 'frame') in a temp variable
  @LCL
  D=M
  @R13
  M=D
// Store the return address in a temp variable
  @5
  A=D-A
  D=M
  @R14
  M=D
// Store the return value in the first argument (i.e. top of caller stack)
  @SP
  AM=M-1
  D=M
  @ARG
  A=M
  M=D
// Restore the caller's stack pointer (one after the return value)
  @ARG
  D=M+1
  @SP
  M=D
// Restore the caller's THAT segment
  @R13
  AM=M-1
  D=M
  @THAT
  M=D
// Restore the caller's THIS segment
  @R13
  AM=M-1
  D=M
  @THIS
  M=D
// Restore the caller's ARG segment
  @R13
  AM=M-1
  D=M
  @ARG
  M=D
// Restore the caller's LCL segment
  @R13
  AM=M-1
  D=M
  @LCL
  M=D
// Jump to the return address
  @R14
  A=M
  0;JMP

// function Output.printInt 0
  (Output.printInt)

// push static 3
  @Output.3
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push ARG 0
  @0
  D=A
  @ARG
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// call String.setInt 2
// push return address onto stack
  @String.setInt$ret.0
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's LCL to the stack
  @LCL
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's ARG to the stack
  @ARG
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's THIS to the stack
  @THIS
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's THAT to the stack
  @THAT
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// set the callee ARG to point at the first arg passed to the function
  @SP
  D=M
  @5
  D=D-A
  @2
  D=D-A
  @ARG
  M=D
// set the callee LCL point at the top of the stack
  @SP
  D=M
  @LCL
  M=D
// goto String.setInt
  @String.setInt
  0;JMP
// create return address label
(String.setInt$ret.0)

// pop TEMP 0
  @5
  D=A
  @TEMP
  D=M+D
  @R13
  M=D
  @SP
  AM=M-1
  D=M
  @R13
  A=M
  M=D

// push static 3
  @Output.3
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// call Output.printString 1
// push return address onto stack
  @Output.printString$ret.2
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's LCL to the stack
  @LCL
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's ARG to the stack
  @ARG
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's THIS to the stack
  @THIS
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's THAT to the stack
  @THAT
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// set the callee ARG to point at the first arg passed to the function
  @SP
  D=M
  @5
  D=D-A
  @1
  D=D-A
  @ARG
  M=D
// set the callee LCL point at the top of the stack
  @SP
  D=M
  @LCL
  M=D
// goto Output.printString
  @Output.printString
  0;JMP
// create return address label
(Output.printString$ret.2)

// pop TEMP 0
  @5
  D=A
  @TEMP
  D=M+D
  @R13
  M=D
  @SP
  AM=M-1
  D=M
  @R13
  A=M
  M=D

// push constant 0
  @0
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// return
// Store the start of the local stack (i.e. 'frame') in a temp variable
  @LCL
  D=M
  @R13
  M=D
// Store the return address in a temp variable
  @5
  A=D-A
  D=M
  @R14
  M=D
// Store the return value in the first argument (i.e. top of caller stack)
  @SP
  AM=M-1
  D=M
  @ARG
  A=M
  M=D
// Restore the caller's stack pointer (one after the return value)
  @ARG
  D=M+1
  @SP
  M=D
// Restore the caller's THAT segment
  @R13
  AM=M-1
  D=M
  @THAT
  M=D
// Restore the caller's THIS segment
  @R13
  AM=M-1
  D=M
  @THIS
  M=D
// Restore the caller's ARG segment
  @R13
  AM=M-1
  D=M
  @ARG
  M=D
// Restore the caller's LCL segment
  @R13
  AM=M-1
  D=M
  @LCL
  M=D
// Jump to the return address
  @R14
  A=M
  0;JMP

// function Output.println 0
  (Output.println)

// push static 1
  @Output.1
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 352
  @352
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// add
  @SP
  AM=M-1
  D=M
  A=A-1
  M=M+D

// push static 0
  @Output.0
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// sub
  @SP
  AM=M-1
  D=M
  A=A-1
  M=M-D

// pop static 1
  @SP
  AM=M-1
  D=M
  @Output.1
  M=D

// push constant 0
  @0
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// pop static 0
  @SP
  AM=M-1
  D=M
  @Output.0
  M=D

// push constant 0
  @0
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// not
  @SP
  A=M-1
  M=!M

// pop static 2
  @SP
  AM=M-1
  D=M
  @Output.2
  M=D

// push static 1
  @Output.1
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 8128
  @8128
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// eq
  @SP
  AM=M-1
  D=M
  A=A-1
  D=M-D
  @TRUE2735
  D;JEQ
  @SP
  A=M-1
  M=0
  @CONTINUE2735
  0;JMP
(TRUE2735)
  @SP
  A=M-1
  M=-1
(CONTINUE2735)

// if-goto IF_TRUE0
  @SP
  AM=M-1
  D=M
  @IF_TRUE0
  D;JNE

// goto IF_FALSE0
  @IF_FALSE0
  0;JMP

// label IF_TRUE0
  (IF_TRUE0)

// push constant 32
  @32
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// pop static 1
  @SP
  AM=M-1
  D=M
  @Output.1
  M=D

// label IF_FALSE0
  (IF_FALSE0)

// push constant 0
  @0
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// return
// Store the start of the local stack (i.e. 'frame') in a temp variable
  @LCL
  D=M
  @R13
  M=D
// Store the return address in a temp variable
  @5
  A=D-A
  D=M
  @R14
  M=D
// Store the return value in the first argument (i.e. top of caller stack)
  @SP
  AM=M-1
  D=M
  @ARG
  A=M
  M=D
// Restore the caller's stack pointer (one after the return value)
  @ARG
  D=M+1
  @SP
  M=D
// Restore the caller's THAT segment
  @R13
  AM=M-1
  D=M
  @THAT
  M=D
// Restore the caller's THIS segment
  @R13
  AM=M-1
  D=M
  @THIS
  M=D
// Restore the caller's ARG segment
  @R13
  AM=M-1
  D=M
  @ARG
  M=D
// Restore the caller's LCL segment
  @R13
  AM=M-1
  D=M
  @LCL
  M=D
// Jump to the return address
  @R14
  A=M
  0;JMP

// function Output.backSpace 0
  (Output.backSpace)

// push static 2
  @Output.2
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// if-goto IF_TRUE0
  @SP
  AM=M-1
  D=M
  @IF_TRUE0
  D;JNE

// goto IF_FALSE0
  @IF_FALSE0
  0;JMP

// label IF_TRUE0
  (IF_TRUE0)

// push static 0
  @Output.0
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 0
  @0
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// gt
  @SP
  AM=M-1
  D=M
  A=A-1
  D=M-D
  @TRUE2751
  D;JGT
  @SP
  A=M-1
  M=0
  @CONTINUE2751
  0;JMP
(TRUE2751)
  @SP
  A=M-1
  M=-1
(CONTINUE2751)

// if-goto IF_TRUE1
  @SP
  AM=M-1
  D=M
  @IF_TRUE1
  D;JNE

// goto IF_FALSE1
  @IF_FALSE1
  0;JMP

// label IF_TRUE1
  (IF_TRUE1)

// push static 0
  @Output.0
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 1
  @1
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// sub
  @SP
  AM=M-1
  D=M
  A=A-1
  M=M-D

// pop static 0
  @SP
  AM=M-1
  D=M
  @Output.0
  M=D

// push static 1
  @Output.1
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 1
  @1
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// sub
  @SP
  AM=M-1
  D=M
  A=A-1
  M=M-D

// pop static 1
  @SP
  AM=M-1
  D=M
  @Output.1
  M=D

// goto IF_END1
  @IF_END1
  0;JMP

// label IF_FALSE1
  (IF_FALSE1)

// push constant 31
  @31
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// pop static 0
  @SP
  AM=M-1
  D=M
  @Output.0
  M=D

// push static 1
  @Output.1
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 32
  @32
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// eq
  @SP
  AM=M-1
  D=M
  A=A-1
  D=M-D
  @TRUE2769
  D;JEQ
  @SP
  A=M-1
  M=0
  @CONTINUE2769
  0;JMP
(TRUE2769)
  @SP
  A=M-1
  M=-1
(CONTINUE2769)

// if-goto IF_TRUE2
  @SP
  AM=M-1
  D=M
  @IF_TRUE2
  D;JNE

// goto IF_FALSE2
  @IF_FALSE2
  0;JMP

// label IF_TRUE2
  (IF_TRUE2)

// push constant 8128
  @8128
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// pop static 1
  @SP
  AM=M-1
  D=M
  @Output.1
  M=D

// label IF_FALSE2
  (IF_FALSE2)

// push static 1
  @Output.1
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 321
  @321
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// sub
  @SP
  AM=M-1
  D=M
  A=A-1
  M=M-D

// pop static 1
  @SP
  AM=M-1
  D=M
  @Output.1
  M=D

// label IF_END1
  (IF_END1)

// push constant 0
  @0
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// pop static 2
  @SP
  AM=M-1
  D=M
  @Output.2
  M=D

// goto IF_END0
  @IF_END0
  0;JMP

// label IF_FALSE0
  (IF_FALSE0)

// push constant 0
  @0
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// not
  @SP
  A=M-1
  M=!M

// pop static 2
  @SP
  AM=M-1
  D=M
  @Output.2
  M=D

// label IF_END0
  (IF_END0)

// push constant 32
  @32
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// call Output.drawChar 1
// push return address onto stack
  @Output.drawChar$ret.2
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's LCL to the stack
  @LCL
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's ARG to the stack
  @ARG
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's THIS to the stack
  @THIS
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's THAT to the stack
  @THAT
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// set the callee ARG to point at the first arg passed to the function
  @SP
  D=M
  @5
  D=D-A
  @1
  D=D-A
  @ARG
  M=D
// set the callee LCL point at the top of the stack
  @SP
  D=M
  @LCL
  M=D
// goto Output.drawChar
  @Output.drawChar
  0;JMP
// create return address label
(Output.drawChar$ret.2)

// pop TEMP 0
  @5
  D=A
  @TEMP
  D=M+D
  @R13
  M=D
  @SP
  AM=M-1
  D=M
  @R13
  A=M
  M=D

// push constant 0
  @0
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// return
// Store the start of the local stack (i.e. 'frame') in a temp variable
  @LCL
  D=M
  @R13
  M=D
// Store the return address in a temp variable
  @5
  A=D-A
  D=M
  @R14
  M=D
// Store the return value in the first argument (i.e. top of caller stack)
  @SP
  AM=M-1
  D=M
  @ARG
  A=M
  M=D
// Restore the caller's stack pointer (one after the return value)
  @ARG
  D=M+1
  @SP
  M=D
// Restore the caller's THAT segment
  @R13
  AM=M-1
  D=M
  @THAT
  M=D
// Restore the caller's THIS segment
  @R13
  AM=M-1
  D=M
  @THIS
  M=D
// Restore the caller's ARG segment
  @R13
  AM=M-1
  D=M
  @ARG
  M=D
// Restore the caller's LCL segment
  @R13
  AM=M-1
  D=M
  @LCL
  M=D
// Jump to the return address
  @R14
  A=M
  0;JMP

// function Screen.init 1
  (Screen.init)
  @SP
  A=M
  M=0
  @SP
  M=M+1

// push constant 16384
  @16384
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// pop static 1
  @SP
  AM=M-1
  D=M
  @Screen.1
  M=D

// push constant 0
  @0
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// not
  @SP
  A=M-1
  M=!M

// pop static 2
  @SP
  AM=M-1
  D=M
  @Screen.2
  M=D

// push constant 17
  @17
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// call Array.new 1
// push return address onto stack
  @Array.new$ret.6
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's LCL to the stack
  @LCL
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's ARG to the stack
  @ARG
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's THIS to the stack
  @THIS
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's THAT to the stack
  @THAT
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// set the callee ARG to point at the first arg passed to the function
  @SP
  D=M
  @5
  D=D-A
  @1
  D=D-A
  @ARG
  M=D
// set the callee LCL point at the top of the stack
  @SP
  D=M
  @LCL
  M=D
// goto Array.new
  @Array.new
  0;JMP
// create return address label
(Array.new$ret.6)

// pop static 0
  @SP
  AM=M-1
  D=M
  @Screen.0
  M=D

// push constant 0
  @0
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push static 0
  @Screen.0
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// add
  @SP
  AM=M-1
  D=M
  A=A-1
  M=M+D

// push constant 1
  @1
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// pop TEMP 0
  @5
  D=A
  @TEMP
  D=M+D
  @R13
  M=D
  @SP
  AM=M-1
  D=M
  @R13
  A=M
  M=D

// pop pointer 1
  @SP
  AM=M-1
  D=M
  @THAT
  M=D

// push TEMP 0
  @5
  D=A
  @TEMP
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// pop THAT 0
  @0
  D=A
  @THAT
  D=M+D
  @R13
  M=D
  @SP
  AM=M-1
  D=M
  @R13
  A=M
  M=D

// label WHILE_EXP0
  (WHILE_EXP0)

// push LCL 0
  @0
  D=A
  @LCL
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 16
  @16
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// lt
  @SP
  AM=M-1
  D=M
  A=A-1
  D=M-D
  @TRUE2814
  D;JLT
  @SP
  A=M-1
  M=0
  @CONTINUE2814
  0;JMP
(TRUE2814)
  @SP
  A=M-1
  M=-1
(CONTINUE2814)

// not
  @SP
  A=M-1
  M=!M

// if-goto WHILE_END0
  @SP
  AM=M-1
  D=M
  @WHILE_END0
  D;JNE

// push LCL 0
  @0
  D=A
  @LCL
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 1
  @1
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// add
  @SP
  AM=M-1
  D=M
  A=A-1
  M=M+D

// pop LCL 0
  @0
  D=A
  @LCL
  D=M+D
  @R13
  M=D
  @SP
  AM=M-1
  D=M
  @R13
  A=M
  M=D

// push LCL 0
  @0
  D=A
  @LCL
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push static 0
  @Screen.0
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// add
  @SP
  AM=M-1
  D=M
  A=A-1
  M=M+D

// push LCL 0
  @0
  D=A
  @LCL
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 1
  @1
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// sub
  @SP
  AM=M-1
  D=M
  A=A-1
  M=M-D

// push static 0
  @Screen.0
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// add
  @SP
  AM=M-1
  D=M
  A=A-1
  M=M+D

// pop pointer 1
  @SP
  AM=M-1
  D=M
  @THAT
  M=D

// push THAT 0
  @0
  D=A
  @THAT
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push LCL 0
  @0
  D=A
  @LCL
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 1
  @1
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// sub
  @SP
  AM=M-1
  D=M
  A=A-1
  M=M-D

// push static 0
  @Screen.0
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// add
  @SP
  AM=M-1
  D=M
  A=A-1
  M=M+D

// pop pointer 1
  @SP
  AM=M-1
  D=M
  @THAT
  M=D

// push THAT 0
  @0
  D=A
  @THAT
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// add
  @SP
  AM=M-1
  D=M
  A=A-1
  M=M+D

// pop TEMP 0
  @5
  D=A
  @TEMP
  D=M+D
  @R13
  M=D
  @SP
  AM=M-1
  D=M
  @R13
  A=M
  M=D

// pop pointer 1
  @SP
  AM=M-1
  D=M
  @THAT
  M=D

// push TEMP 0
  @5
  D=A
  @TEMP
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// pop THAT 0
  @0
  D=A
  @THAT
  D=M+D
  @R13
  M=D
  @SP
  AM=M-1
  D=M
  @R13
  A=M
  M=D

// goto WHILE_EXP0
  @WHILE_EXP0
  0;JMP

// label WHILE_END0
  (WHILE_END0)

// push constant 0
  @0
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// return
// Store the start of the local stack (i.e. 'frame') in a temp variable
  @LCL
  D=M
  @R13
  M=D
// Store the return address in a temp variable
  @5
  A=D-A
  D=M
  @R14
  M=D
// Store the return value in the first argument (i.e. top of caller stack)
  @SP
  AM=M-1
  D=M
  @ARG
  A=M
  M=D
// Restore the caller's stack pointer (one after the return value)
  @ARG
  D=M+1
  @SP
  M=D
// Restore the caller's THAT segment
  @R13
  AM=M-1
  D=M
  @THAT
  M=D
// Restore the caller's THIS segment
  @R13
  AM=M-1
  D=M
  @THIS
  M=D
// Restore the caller's ARG segment
  @R13
  AM=M-1
  D=M
  @ARG
  M=D
// Restore the caller's LCL segment
  @R13
  AM=M-1
  D=M
  @LCL
  M=D
// Jump to the return address
  @R14
  A=M
  0;JMP

// function Screen.clearScreen 1
  (Screen.clearScreen)
  @SP
  A=M
  M=0
  @SP
  M=M+1

// label WHILE_EXP0
  (WHILE_EXP0)

// push LCL 0
  @0
  D=A
  @LCL
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 8192
  @8192
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// lt
  @SP
  AM=M-1
  D=M
  A=A-1
  D=M-D
  @TRUE2851
  D;JLT
  @SP
  A=M-1
  M=0
  @CONTINUE2851
  0;JMP
(TRUE2851)
  @SP
  A=M-1
  M=-1
(CONTINUE2851)

// not
  @SP
  A=M-1
  M=!M

// if-goto WHILE_END0
  @SP
  AM=M-1
  D=M
  @WHILE_END0
  D;JNE

// push LCL 0
  @0
  D=A
  @LCL
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push static 1
  @Screen.1
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// add
  @SP
  AM=M-1
  D=M
  A=A-1
  M=M+D

// push constant 0
  @0
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// pop TEMP 0
  @5
  D=A
  @TEMP
  D=M+D
  @R13
  M=D
  @SP
  AM=M-1
  D=M
  @R13
  A=M
  M=D

// pop pointer 1
  @SP
  AM=M-1
  D=M
  @THAT
  M=D

// push TEMP 0
  @5
  D=A
  @TEMP
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// pop THAT 0
  @0
  D=A
  @THAT
  D=M+D
  @R13
  M=D
  @SP
  AM=M-1
  D=M
  @R13
  A=M
  M=D

// push LCL 0
  @0
  D=A
  @LCL
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 1
  @1
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// add
  @SP
  AM=M-1
  D=M
  A=A-1
  M=M+D

// pop LCL 0
  @0
  D=A
  @LCL
  D=M+D
  @R13
  M=D
  @SP
  AM=M-1
  D=M
  @R13
  A=M
  M=D

// goto WHILE_EXP0
  @WHILE_EXP0
  0;JMP

// label WHILE_END0
  (WHILE_END0)

// push constant 0
  @0
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// return
// Store the start of the local stack (i.e. 'frame') in a temp variable
  @LCL
  D=M
  @R13
  M=D
// Store the return address in a temp variable
  @5
  A=D-A
  D=M
  @R14
  M=D
// Store the return value in the first argument (i.e. top of caller stack)
  @SP
  AM=M-1
  D=M
  @ARG
  A=M
  M=D
// Restore the caller's stack pointer (one after the return value)
  @ARG
  D=M+1
  @SP
  M=D
// Restore the caller's THAT segment
  @R13
  AM=M-1
  D=M
  @THAT
  M=D
// Restore the caller's THIS segment
  @R13
  AM=M-1
  D=M
  @THIS
  M=D
// Restore the caller's ARG segment
  @R13
  AM=M-1
  D=M
  @ARG
  M=D
// Restore the caller's LCL segment
  @R13
  AM=M-1
  D=M
  @LCL
  M=D
// Jump to the return address
  @R14
  A=M
  0;JMP

// function Screen.updateLocation 0
  (Screen.updateLocation)

// push static 2
  @Screen.2
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// if-goto IF_TRUE0
  @SP
  AM=M-1
  D=M
  @IF_TRUE0
  D;JNE

// goto IF_FALSE0
  @IF_FALSE0
  0;JMP

// label IF_TRUE0
  (IF_TRUE0)

// push ARG 0
  @0
  D=A
  @ARG
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push static 1
  @Screen.1
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// add
  @SP
  AM=M-1
  D=M
  A=A-1
  M=M+D

// push ARG 0
  @0
  D=A
  @ARG
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push static 1
  @Screen.1
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// add
  @SP
  AM=M-1
  D=M
  A=A-1
  M=M+D

// pop pointer 1
  @SP
  AM=M-1
  D=M
  @THAT
  M=D

// push THAT 0
  @0
  D=A
  @THAT
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push ARG 1
  @1
  D=A
  @ARG
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// or
  @SP
  AM=M-1
  D=M
  A=A-1
  M=M|D

// pop TEMP 0
  @5
  D=A
  @TEMP
  D=M+D
  @R13
  M=D
  @SP
  AM=M-1
  D=M
  @R13
  A=M
  M=D

// pop pointer 1
  @SP
  AM=M-1
  D=M
  @THAT
  M=D

// push TEMP 0
  @5
  D=A
  @TEMP
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// pop THAT 0
  @0
  D=A
  @THAT
  D=M+D
  @R13
  M=D
  @SP
  AM=M-1
  D=M
  @R13
  A=M
  M=D

// goto IF_END0
  @IF_END0
  0;JMP

// label IF_FALSE0
  (IF_FALSE0)

// push ARG 0
  @0
  D=A
  @ARG
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push static 1
  @Screen.1
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// add
  @SP
  AM=M-1
  D=M
  A=A-1
  M=M+D

// push ARG 0
  @0
  D=A
  @ARG
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push static 1
  @Screen.1
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// add
  @SP
  AM=M-1
  D=M
  A=A-1
  M=M+D

// pop pointer 1
  @SP
  AM=M-1
  D=M
  @THAT
  M=D

// push THAT 0
  @0
  D=A
  @THAT
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push ARG 1
  @1
  D=A
  @ARG
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// not
  @SP
  A=M-1
  M=!M

// and
  @SP
  AM=M-1
  D=M
  A=A-1
  M=M&D

// pop TEMP 0
  @5
  D=A
  @TEMP
  D=M+D
  @R13
  M=D
  @SP
  AM=M-1
  D=M
  @R13
  A=M
  M=D

// pop pointer 1
  @SP
  AM=M-1
  D=M
  @THAT
  M=D

// push TEMP 0
  @5
  D=A
  @TEMP
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// pop THAT 0
  @0
  D=A
  @THAT
  D=M+D
  @R13
  M=D
  @SP
  AM=M-1
  D=M
  @R13
  A=M
  M=D

// label IF_END0
  (IF_END0)

// push constant 0
  @0
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// return
// Store the start of the local stack (i.e. 'frame') in a temp variable
  @LCL
  D=M
  @R13
  M=D
// Store the return address in a temp variable
  @5
  A=D-A
  D=M
  @R14
  M=D
// Store the return value in the first argument (i.e. top of caller stack)
  @SP
  AM=M-1
  D=M
  @ARG
  A=M
  M=D
// Restore the caller's stack pointer (one after the return value)
  @ARG
  D=M+1
  @SP
  M=D
// Restore the caller's THAT segment
  @R13
  AM=M-1
  D=M
  @THAT
  M=D
// Restore the caller's THIS segment
  @R13
  AM=M-1
  D=M
  @THIS
  M=D
// Restore the caller's ARG segment
  @R13
  AM=M-1
  D=M
  @ARG
  M=D
// Restore the caller's LCL segment
  @R13
  AM=M-1
  D=M
  @LCL
  M=D
// Jump to the return address
  @R14
  A=M
  0;JMP

// function Screen.setColor 0
  (Screen.setColor)

// push ARG 0
  @0
  D=A
  @ARG
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// pop static 2
  @SP
  AM=M-1
  D=M
  @Screen.2
  M=D

// push constant 0
  @0
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// return
// Store the start of the local stack (i.e. 'frame') in a temp variable
  @LCL
  D=M
  @R13
  M=D
// Store the return address in a temp variable
  @5
  A=D-A
  D=M
  @R14
  M=D
// Store the return value in the first argument (i.e. top of caller stack)
  @SP
  AM=M-1
  D=M
  @ARG
  A=M
  M=D
// Restore the caller's stack pointer (one after the return value)
  @ARG
  D=M+1
  @SP
  M=D
// Restore the caller's THAT segment
  @R13
  AM=M-1
  D=M
  @THAT
  M=D
// Restore the caller's THIS segment
  @R13
  AM=M-1
  D=M
  @THIS
  M=D
// Restore the caller's ARG segment
  @R13
  AM=M-1
  D=M
  @ARG
  M=D
// Restore the caller's LCL segment
  @R13
  AM=M-1
  D=M
  @LCL
  M=D
// Jump to the return address
  @R14
  A=M
  0;JMP

// function Screen.drawPixel 3
  (Screen.drawPixel)
  @SP
  A=M
  M=0
  @SP
  M=M+1
  @SP
  A=M
  M=0
  @SP
  M=M+1
  @SP
  A=M
  M=0
  @SP
  M=M+1

// push ARG 0
  @0
  D=A
  @ARG
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 0
  @0
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// lt
  @SP
  AM=M-1
  D=M
  A=A-1
  D=M-D
  @TRUE2917
  D;JLT
  @SP
  A=M-1
  M=0
  @CONTINUE2917
  0;JMP
(TRUE2917)
  @SP
  A=M-1
  M=-1
(CONTINUE2917)

// push ARG 0
  @0
  D=A
  @ARG
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 511
  @511
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// gt
  @SP
  AM=M-1
  D=M
  A=A-1
  D=M-D
  @TRUE2920
  D;JGT
  @SP
  A=M-1
  M=0
  @CONTINUE2920
  0;JMP
(TRUE2920)
  @SP
  A=M-1
  M=-1
(CONTINUE2920)

// or
  @SP
  AM=M-1
  D=M
  A=A-1
  M=M|D

// push ARG 1
  @1
  D=A
  @ARG
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 0
  @0
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// lt
  @SP
  AM=M-1
  D=M
  A=A-1
  D=M-D
  @TRUE2924
  D;JLT
  @SP
  A=M-1
  M=0
  @CONTINUE2924
  0;JMP
(TRUE2924)
  @SP
  A=M-1
  M=-1
(CONTINUE2924)

// or
  @SP
  AM=M-1
  D=M
  A=A-1
  M=M|D

// push ARG 1
  @1
  D=A
  @ARG
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 255
  @255
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// gt
  @SP
  AM=M-1
  D=M
  A=A-1
  D=M-D
  @TRUE2928
  D;JGT
  @SP
  A=M-1
  M=0
  @CONTINUE2928
  0;JMP
(TRUE2928)
  @SP
  A=M-1
  M=-1
(CONTINUE2928)

// or
  @SP
  AM=M-1
  D=M
  A=A-1
  M=M|D

// if-goto IF_TRUE0
  @SP
  AM=M-1
  D=M
  @IF_TRUE0
  D;JNE

// goto IF_FALSE0
  @IF_FALSE0
  0;JMP

// label IF_TRUE0
  (IF_TRUE0)

// push constant 7
  @7
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// call Sys.error 1
// push return address onto stack
  @Sys.error$ret.6
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's LCL to the stack
  @LCL
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's ARG to the stack
  @ARG
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's THIS to the stack
  @THIS
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's THAT to the stack
  @THAT
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// set the callee ARG to point at the first arg passed to the function
  @SP
  D=M
  @5
  D=D-A
  @1
  D=D-A
  @ARG
  M=D
// set the callee LCL point at the top of the stack
  @SP
  D=M
  @LCL
  M=D
// goto Sys.error
  @Sys.error
  0;JMP
// create return address label
(Sys.error$ret.6)

// pop TEMP 0
  @5
  D=A
  @TEMP
  D=M+D
  @R13
  M=D
  @SP
  AM=M-1
  D=M
  @R13
  A=M
  M=D

// label IF_FALSE0
  (IF_FALSE0)

// push ARG 0
  @0
  D=A
  @ARG
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 16
  @16
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// call Math.divide 2
// push return address onto stack
  @Math.divide$ret.1
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's LCL to the stack
  @LCL
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's ARG to the stack
  @ARG
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's THIS to the stack
  @THIS
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's THAT to the stack
  @THAT
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// set the callee ARG to point at the first arg passed to the function
  @SP
  D=M
  @5
  D=D-A
  @2
  D=D-A
  @ARG
  M=D
// set the callee LCL point at the top of the stack
  @SP
  D=M
  @LCL
  M=D
// goto Math.divide
  @Math.divide
  0;JMP
// create return address label
(Math.divide$ret.1)

// pop LCL 0
  @0
  D=A
  @LCL
  D=M+D
  @R13
  M=D
  @SP
  AM=M-1
  D=M
  @R13
  A=M
  M=D

// push ARG 0
  @0
  D=A
  @ARG
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push LCL 0
  @0
  D=A
  @LCL
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 16
  @16
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// call Math.multiply 2
// push return address onto stack
  @Math.multiply$ret.4
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's LCL to the stack
  @LCL
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's ARG to the stack
  @ARG
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's THIS to the stack
  @THIS
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's THAT to the stack
  @THAT
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// set the callee ARG to point at the first arg passed to the function
  @SP
  D=M
  @5
  D=D-A
  @2
  D=D-A
  @ARG
  M=D
// set the callee LCL point at the top of the stack
  @SP
  D=M
  @LCL
  M=D
// goto Math.multiply
  @Math.multiply
  0;JMP
// create return address label
(Math.multiply$ret.4)

// sub
  @SP
  AM=M-1
  D=M
  A=A-1
  M=M-D

// pop LCL 1
  @1
  D=A
  @LCL
  D=M+D
  @R13
  M=D
  @SP
  AM=M-1
  D=M
  @R13
  A=M
  M=D

// push ARG 1
  @1
  D=A
  @ARG
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 32
  @32
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// call Math.multiply 2
// push return address onto stack
  @Math.multiply$ret.5
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's LCL to the stack
  @LCL
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's ARG to the stack
  @ARG
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's THIS to the stack
  @THIS
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's THAT to the stack
  @THAT
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// set the callee ARG to point at the first arg passed to the function
  @SP
  D=M
  @5
  D=D-A
  @2
  D=D-A
  @ARG
  M=D
// set the callee LCL point at the top of the stack
  @SP
  D=M
  @LCL
  M=D
// goto Math.multiply
  @Math.multiply
  0;JMP
// create return address label
(Math.multiply$ret.5)

// push LCL 0
  @0
  D=A
  @LCL
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// add
  @SP
  AM=M-1
  D=M
  A=A-1
  M=M+D

// pop LCL 2
  @2
  D=A
  @LCL
  D=M+D
  @R13
  M=D
  @SP
  AM=M-1
  D=M
  @R13
  A=M
  M=D

// push LCL 2
  @2
  D=A
  @LCL
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push LCL 1
  @1
  D=A
  @LCL
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push static 0
  @Screen.0
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// add
  @SP
  AM=M-1
  D=M
  A=A-1
  M=M+D

// pop pointer 1
  @SP
  AM=M-1
  D=M
  @THAT
  M=D

// push THAT 0
  @0
  D=A
  @THAT
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// call Screen.updateLocation 2
// push return address onto stack
  @Screen.updateLocation$ret.0
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's LCL to the stack
  @LCL
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's ARG to the stack
  @ARG
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's THIS to the stack
  @THIS
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's THAT to the stack
  @THAT
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// set the callee ARG to point at the first arg passed to the function
  @SP
  D=M
  @5
  D=D-A
  @2
  D=D-A
  @ARG
  M=D
// set the callee LCL point at the top of the stack
  @SP
  D=M
  @LCL
  M=D
// goto Screen.updateLocation
  @Screen.updateLocation
  0;JMP
// create return address label
(Screen.updateLocation$ret.0)

// pop TEMP 0
  @5
  D=A
  @TEMP
  D=M+D
  @R13
  M=D
  @SP
  AM=M-1
  D=M
  @R13
  A=M
  M=D

// push constant 0
  @0
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// return
// Store the start of the local stack (i.e. 'frame') in a temp variable
  @LCL
  D=M
  @R13
  M=D
// Store the return address in a temp variable
  @5
  A=D-A
  D=M
  @R14
  M=D
// Store the return value in the first argument (i.e. top of caller stack)
  @SP
  AM=M-1
  D=M
  @ARG
  A=M
  M=D
// Restore the caller's stack pointer (one after the return value)
  @ARG
  D=M+1
  @SP
  M=D
// Restore the caller's THAT segment
  @R13
  AM=M-1
  D=M
  @THAT
  M=D
// Restore the caller's THIS segment
  @R13
  AM=M-1
  D=M
  @THIS
  M=D
// Restore the caller's ARG segment
  @R13
  AM=M-1
  D=M
  @ARG
  M=D
// Restore the caller's LCL segment
  @R13
  AM=M-1
  D=M
  @LCL
  M=D
// Jump to the return address
  @R14
  A=M
  0;JMP

// function Screen.drawConditional 0
  (Screen.drawConditional)

// push ARG 2
  @2
  D=A
  @ARG
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// if-goto IF_TRUE0
  @SP
  AM=M-1
  D=M
  @IF_TRUE0
  D;JNE

// goto IF_FALSE0
  @IF_FALSE0
  0;JMP

// label IF_TRUE0
  (IF_TRUE0)

// push ARG 1
  @1
  D=A
  @ARG
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push ARG 0
  @0
  D=A
  @ARG
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// call Screen.drawPixel 2
// push return address onto stack
  @Screen.drawPixel$ret.0
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's LCL to the stack
  @LCL
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's ARG to the stack
  @ARG
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's THIS to the stack
  @THIS
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's THAT to the stack
  @THAT
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// set the callee ARG to point at the first arg passed to the function
  @SP
  D=M
  @5
  D=D-A
  @2
  D=D-A
  @ARG
  M=D
// set the callee LCL point at the top of the stack
  @SP
  D=M
  @LCL
  M=D
// goto Screen.drawPixel
  @Screen.drawPixel
  0;JMP
// create return address label
(Screen.drawPixel$ret.0)

// pop TEMP 0
  @5
  D=A
  @TEMP
  D=M+D
  @R13
  M=D
  @SP
  AM=M-1
  D=M
  @R13
  A=M
  M=D

// goto IF_END0
  @IF_END0
  0;JMP

// label IF_FALSE0
  (IF_FALSE0)

// push ARG 0
  @0
  D=A
  @ARG
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push ARG 1
  @1
  D=A
  @ARG
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// call Screen.drawPixel 2
// push return address onto stack
  @Screen.drawPixel$ret.1
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's LCL to the stack
  @LCL
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's ARG to the stack
  @ARG
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's THIS to the stack
  @THIS
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's THAT to the stack
  @THAT
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// set the callee ARG to point at the first arg passed to the function
  @SP
  D=M
  @5
  D=D-A
  @2
  D=D-A
  @ARG
  M=D
// set the callee LCL point at the top of the stack
  @SP
  D=M
  @LCL
  M=D
// goto Screen.drawPixel
  @Screen.drawPixel
  0;JMP
// create return address label
(Screen.drawPixel$ret.1)

// pop TEMP 0
  @5
  D=A
  @TEMP
  D=M+D
  @R13
  M=D
  @SP
  AM=M-1
  D=M
  @R13
  A=M
  M=D

// label IF_END0
  (IF_END0)

// push constant 0
  @0
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// return
// Store the start of the local stack (i.e. 'frame') in a temp variable
  @LCL
  D=M
  @R13
  M=D
// Store the return address in a temp variable
  @5
  A=D-A
  D=M
  @R14
  M=D
// Store the return value in the first argument (i.e. top of caller stack)
  @SP
  AM=M-1
  D=M
  @ARG
  A=M
  M=D
// Restore the caller's stack pointer (one after the return value)
  @ARG
  D=M+1
  @SP
  M=D
// Restore the caller's THAT segment
  @R13
  AM=M-1
  D=M
  @THAT
  M=D
// Restore the caller's THIS segment
  @R13
  AM=M-1
  D=M
  @THIS
  M=D
// Restore the caller's ARG segment
  @R13
  AM=M-1
  D=M
  @ARG
  M=D
// Restore the caller's LCL segment
  @R13
  AM=M-1
  D=M
  @LCL
  M=D
// Jump to the return address
  @R14
  A=M
  0;JMP

// function Screen.drawLine 11
  (Screen.drawLine)
  @SP
  A=M
  M=0
  @SP
  M=M+1
  @SP
  A=M
  M=0
  @SP
  M=M+1
  @SP
  A=M
  M=0
  @SP
  M=M+1
  @SP
  A=M
  M=0
  @SP
  M=M+1
  @SP
  A=M
  M=0
  @SP
  M=M+1
  @SP
  A=M
  M=0
  @SP
  M=M+1
  @SP
  A=M
  M=0
  @SP
  M=M+1
  @SP
  A=M
  M=0
  @SP
  M=M+1
  @SP
  A=M
  M=0
  @SP
  M=M+1
  @SP
  A=M
  M=0
  @SP
  M=M+1
  @SP
  A=M
  M=0
  @SP
  M=M+1

// push ARG 0
  @0
  D=A
  @ARG
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 0
  @0
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// lt
  @SP
  AM=M-1
  D=M
  A=A-1
  D=M-D
  @TRUE2984
  D;JLT
  @SP
  A=M-1
  M=0
  @CONTINUE2984
  0;JMP
(TRUE2984)
  @SP
  A=M-1
  M=-1
(CONTINUE2984)

// push ARG 2
  @2
  D=A
  @ARG
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 511
  @511
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// gt
  @SP
  AM=M-1
  D=M
  A=A-1
  D=M-D
  @TRUE2987
  D;JGT
  @SP
  A=M-1
  M=0
  @CONTINUE2987
  0;JMP
(TRUE2987)
  @SP
  A=M-1
  M=-1
(CONTINUE2987)

// or
  @SP
  AM=M-1
  D=M
  A=A-1
  M=M|D

// push ARG 1
  @1
  D=A
  @ARG
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 0
  @0
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// lt
  @SP
  AM=M-1
  D=M
  A=A-1
  D=M-D
  @TRUE2991
  D;JLT
  @SP
  A=M-1
  M=0
  @CONTINUE2991
  0;JMP
(TRUE2991)
  @SP
  A=M-1
  M=-1
(CONTINUE2991)

// or
  @SP
  AM=M-1
  D=M
  A=A-1
  M=M|D

// push ARG 3
  @3
  D=A
  @ARG
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 255
  @255
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// gt
  @SP
  AM=M-1
  D=M
  A=A-1
  D=M-D
  @TRUE2995
  D;JGT
  @SP
  A=M-1
  M=0
  @CONTINUE2995
  0;JMP
(TRUE2995)
  @SP
  A=M-1
  M=-1
(CONTINUE2995)

// or
  @SP
  AM=M-1
  D=M
  A=A-1
  M=M|D

// if-goto IF_TRUE0
  @SP
  AM=M-1
  D=M
  @IF_TRUE0
  D;JNE

// goto IF_FALSE0
  @IF_FALSE0
  0;JMP

// label IF_TRUE0
  (IF_TRUE0)

// push constant 8
  @8
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// call Sys.error 1
// push return address onto stack
  @Sys.error$ret.7
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's LCL to the stack
  @LCL
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's ARG to the stack
  @ARG
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's THIS to the stack
  @THIS
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's THAT to the stack
  @THAT
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// set the callee ARG to point at the first arg passed to the function
  @SP
  D=M
  @5
  D=D-A
  @1
  D=D-A
  @ARG
  M=D
// set the callee LCL point at the top of the stack
  @SP
  D=M
  @LCL
  M=D
// goto Sys.error
  @Sys.error
  0;JMP
// create return address label
(Sys.error$ret.7)

// pop TEMP 0
  @5
  D=A
  @TEMP
  D=M+D
  @R13
  M=D
  @SP
  AM=M-1
  D=M
  @R13
  A=M
  M=D

// label IF_FALSE0
  (IF_FALSE0)

// push ARG 2
  @2
  D=A
  @ARG
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push ARG 0
  @0
  D=A
  @ARG
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// sub
  @SP
  AM=M-1
  D=M
  A=A-1
  M=M-D

// call Math.abs 1
// push return address onto stack
  @Math.abs$ret.4
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's LCL to the stack
  @LCL
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's ARG to the stack
  @ARG
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's THIS to the stack
  @THIS
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's THAT to the stack
  @THAT
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// set the callee ARG to point at the first arg passed to the function
  @SP
  D=M
  @5
  D=D-A
  @1
  D=D-A
  @ARG
  M=D
// set the callee LCL point at the top of the stack
  @SP
  D=M
  @LCL
  M=D
// goto Math.abs
  @Math.abs
  0;JMP
// create return address label
(Math.abs$ret.4)

// pop LCL 3
  @3
  D=A
  @LCL
  D=M+D
  @R13
  M=D
  @SP
  AM=M-1
  D=M
  @R13
  A=M
  M=D

// push ARG 3
  @3
  D=A
  @ARG
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push ARG 1
  @1
  D=A
  @ARG
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// sub
  @SP
  AM=M-1
  D=M
  A=A-1
  M=M-D

// call Math.abs 1
// push return address onto stack
  @Math.abs$ret.5
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's LCL to the stack
  @LCL
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's ARG to the stack
  @ARG
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's THIS to the stack
  @THIS
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's THAT to the stack
  @THAT
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// set the callee ARG to point at the first arg passed to the function
  @SP
  D=M
  @5
  D=D-A
  @1
  D=D-A
  @ARG
  M=D
// set the callee LCL point at the top of the stack
  @SP
  D=M
  @LCL
  M=D
// goto Math.abs
  @Math.abs
  0;JMP
// create return address label
(Math.abs$ret.5)

// pop LCL 2
  @2
  D=A
  @LCL
  D=M+D
  @R13
  M=D
  @SP
  AM=M-1
  D=M
  @R13
  A=M
  M=D

// push LCL 3
  @3
  D=A
  @LCL
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push LCL 2
  @2
  D=A
  @LCL
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// lt
  @SP
  AM=M-1
  D=M
  A=A-1
  D=M-D
  @TRUE3016
  D;JLT
  @SP
  A=M-1
  M=0
  @CONTINUE3016
  0;JMP
(TRUE3016)
  @SP
  A=M-1
  M=-1
(CONTINUE3016)

// pop LCL 6
  @6
  D=A
  @LCL
  D=M+D
  @R13
  M=D
  @SP
  AM=M-1
  D=M
  @R13
  A=M
  M=D

// push LCL 6
  @6
  D=A
  @LCL
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push ARG 3
  @3
  D=A
  @ARG
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push ARG 1
  @1
  D=A
  @ARG
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// lt
  @SP
  AM=M-1
  D=M
  A=A-1
  D=M-D
  @TRUE3021
  D;JLT
  @SP
  A=M-1
  M=0
  @CONTINUE3021
  0;JMP
(TRUE3021)
  @SP
  A=M-1
  M=-1
(CONTINUE3021)

// and
  @SP
  AM=M-1
  D=M
  A=A-1
  M=M&D

// push LCL 6
  @6
  D=A
  @LCL
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// not
  @SP
  A=M-1
  M=!M

// push ARG 2
  @2
  D=A
  @ARG
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push ARG 0
  @0
  D=A
  @ARG
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// lt
  @SP
  AM=M-1
  D=M
  A=A-1
  D=M-D
  @TRUE3027
  D;JLT
  @SP
  A=M-1
  M=0
  @CONTINUE3027
  0;JMP
(TRUE3027)
  @SP
  A=M-1
  M=-1
(CONTINUE3027)

// and
  @SP
  AM=M-1
  D=M
  A=A-1
  M=M&D

// or
  @SP
  AM=M-1
  D=M
  A=A-1
  M=M|D

// if-goto IF_TRUE1
  @SP
  AM=M-1
  D=M
  @IF_TRUE1
  D;JNE

// goto IF_FALSE1
  @IF_FALSE1
  0;JMP

// label IF_TRUE1
  (IF_TRUE1)

// push ARG 0
  @0
  D=A
  @ARG
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// pop LCL 4
  @4
  D=A
  @LCL
  D=M+D
  @R13
  M=D
  @SP
  AM=M-1
  D=M
  @R13
  A=M
  M=D

// push ARG 2
  @2
  D=A
  @ARG
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// pop ARG 0
  @0
  D=A
  @ARG
  D=M+D
  @R13
  M=D
  @SP
  AM=M-1
  D=M
  @R13
  A=M
  M=D

// push LCL 4
  @4
  D=A
  @LCL
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// pop ARG 2
  @2
  D=A
  @ARG
  D=M+D
  @R13
  M=D
  @SP
  AM=M-1
  D=M
  @R13
  A=M
  M=D

// push ARG 1
  @1
  D=A
  @ARG
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// pop LCL 4
  @4
  D=A
  @LCL
  D=M+D
  @R13
  M=D
  @SP
  AM=M-1
  D=M
  @R13
  A=M
  M=D

// push ARG 3
  @3
  D=A
  @ARG
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// pop ARG 1
  @1
  D=A
  @ARG
  D=M+D
  @R13
  M=D
  @SP
  AM=M-1
  D=M
  @R13
  A=M
  M=D

// push LCL 4
  @4
  D=A
  @LCL
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// pop ARG 3
  @3
  D=A
  @ARG
  D=M+D
  @R13
  M=D
  @SP
  AM=M-1
  D=M
  @R13
  A=M
  M=D

// label IF_FALSE1
  (IF_FALSE1)

// push LCL 6
  @6
  D=A
  @LCL
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// if-goto IF_TRUE2
  @SP
  AM=M-1
  D=M
  @IF_TRUE2
  D;JNE

// goto IF_FALSE2
  @IF_FALSE2
  0;JMP

// label IF_TRUE2
  (IF_TRUE2)

// push LCL 3
  @3
  D=A
  @LCL
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// pop LCL 4
  @4
  D=A
  @LCL
  D=M+D
  @R13
  M=D
  @SP
  AM=M-1
  D=M
  @R13
  A=M
  M=D

// push LCL 2
  @2
  D=A
  @LCL
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// pop LCL 3
  @3
  D=A
  @LCL
  D=M+D
  @R13
  M=D
  @SP
  AM=M-1
  D=M
  @R13
  A=M
  M=D

// push LCL 4
  @4
  D=A
  @LCL
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// pop LCL 2
  @2
  D=A
  @LCL
  D=M+D
  @R13
  M=D
  @SP
  AM=M-1
  D=M
  @R13
  A=M
  M=D

// push ARG 1
  @1
  D=A
  @ARG
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// pop LCL 1
  @1
  D=A
  @LCL
  D=M+D
  @R13
  M=D
  @SP
  AM=M-1
  D=M
  @R13
  A=M
  M=D

// push ARG 0
  @0
  D=A
  @ARG
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// pop LCL 0
  @0
  D=A
  @LCL
  D=M+D
  @R13
  M=D
  @SP
  AM=M-1
  D=M
  @R13
  A=M
  M=D

// push ARG 3
  @3
  D=A
  @ARG
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// pop LCL 8
  @8
  D=A
  @LCL
  D=M+D
  @R13
  M=D
  @SP
  AM=M-1
  D=M
  @R13
  A=M
  M=D

// push ARG 0
  @0
  D=A
  @ARG
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push ARG 2
  @2
  D=A
  @ARG
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// gt
  @SP
  AM=M-1
  D=M
  A=A-1
  D=M-D
  @TRUE3064
  D;JGT
  @SP
  A=M-1
  M=0
  @CONTINUE3064
  0;JMP
(TRUE3064)
  @SP
  A=M-1
  M=-1
(CONTINUE3064)

// pop LCL 7
  @7
  D=A
  @LCL
  D=M+D
  @R13
  M=D
  @SP
  AM=M-1
  D=M
  @R13
  A=M
  M=D

// goto IF_END2
  @IF_END2
  0;JMP

// label IF_FALSE2
  (IF_FALSE2)

// push ARG 0
  @0
  D=A
  @ARG
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// pop LCL 1
  @1
  D=A
  @LCL
  D=M+D
  @R13
  M=D
  @SP
  AM=M-1
  D=M
  @R13
  A=M
  M=D

// push ARG 1
  @1
  D=A
  @ARG
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// pop LCL 0
  @0
  D=A
  @LCL
  D=M+D
  @R13
  M=D
  @SP
  AM=M-1
  D=M
  @R13
  A=M
  M=D

// push ARG 2
  @2
  D=A
  @ARG
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// pop LCL 8
  @8
  D=A
  @LCL
  D=M+D
  @R13
  M=D
  @SP
  AM=M-1
  D=M
  @R13
  A=M
  M=D

// push ARG 1
  @1
  D=A
  @ARG
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push ARG 3
  @3
  D=A
  @ARG
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// gt
  @SP
  AM=M-1
  D=M
  A=A-1
  D=M-D
  @TRUE3076
  D;JGT
  @SP
  A=M-1
  M=0
  @CONTINUE3076
  0;JMP
(TRUE3076)
  @SP
  A=M-1
  M=-1
(CONTINUE3076)

// pop LCL 7
  @7
  D=A
  @LCL
  D=M+D
  @R13
  M=D
  @SP
  AM=M-1
  D=M
  @R13
  A=M
  M=D

// label IF_END2
  (IF_END2)

// push constant 2
  @2
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push LCL 2
  @2
  D=A
  @LCL
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// call Math.multiply 2
// push return address onto stack
  @Math.multiply$ret.6
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's LCL to the stack
  @LCL
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's ARG to the stack
  @ARG
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's THIS to the stack
  @THIS
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's THAT to the stack
  @THAT
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// set the callee ARG to point at the first arg passed to the function
  @SP
  D=M
  @5
  D=D-A
  @2
  D=D-A
  @ARG
  M=D
// set the callee LCL point at the top of the stack
  @SP
  D=M
  @LCL
  M=D
// goto Math.multiply
  @Math.multiply
  0;JMP
// create return address label
(Math.multiply$ret.6)

// push LCL 3
  @3
  D=A
  @LCL
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// sub
  @SP
  AM=M-1
  D=M
  A=A-1
  M=M-D

// pop LCL 5
  @5
  D=A
  @LCL
  D=M+D
  @R13
  M=D
  @SP
  AM=M-1
  D=M
  @R13
  A=M
  M=D

// push constant 2
  @2
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push LCL 2
  @2
  D=A
  @LCL
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// call Math.multiply 2
// push return address onto stack
  @Math.multiply$ret.7
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's LCL to the stack
  @LCL
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's ARG to the stack
  @ARG
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's THIS to the stack
  @THIS
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's THAT to the stack
  @THAT
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// set the callee ARG to point at the first arg passed to the function
  @SP
  D=M
  @5
  D=D-A
  @2
  D=D-A
  @ARG
  M=D
// set the callee LCL point at the top of the stack
  @SP
  D=M
  @LCL
  M=D
// goto Math.multiply
  @Math.multiply
  0;JMP
// create return address label
(Math.multiply$ret.7)

// pop LCL 9
  @9
  D=A
  @LCL
  D=M+D
  @R13
  M=D
  @SP
  AM=M-1
  D=M
  @R13
  A=M
  M=D

// push constant 2
  @2
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push LCL 2
  @2
  D=A
  @LCL
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push LCL 3
  @3
  D=A
  @LCL
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// sub
  @SP
  AM=M-1
  D=M
  A=A-1
  M=M-D

// call Math.multiply 2
// push return address onto stack
  @Math.multiply$ret.8
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's LCL to the stack
  @LCL
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's ARG to the stack
  @ARG
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's THIS to the stack
  @THIS
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's THAT to the stack
  @THAT
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// set the callee ARG to point at the first arg passed to the function
  @SP
  D=M
  @5
  D=D-A
  @2
  D=D-A
  @ARG
  M=D
// set the callee LCL point at the top of the stack
  @SP
  D=M
  @LCL
  M=D
// goto Math.multiply
  @Math.multiply
  0;JMP
// create return address label
(Math.multiply$ret.8)

// pop LCL 10
  @10
  D=A
  @LCL
  D=M+D
  @R13
  M=D
  @SP
  AM=M-1
  D=M
  @R13
  A=M
  M=D

// push LCL 1
  @1
  D=A
  @LCL
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push LCL 0
  @0
  D=A
  @LCL
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push LCL 6
  @6
  D=A
  @LCL
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// call Screen.drawConditional 3
// push return address onto stack
  @Screen.drawConditional$ret.0
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's LCL to the stack
  @LCL
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's ARG to the stack
  @ARG
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's THIS to the stack
  @THIS
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's THAT to the stack
  @THAT
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// set the callee ARG to point at the first arg passed to the function
  @SP
  D=M
  @5
  D=D-A
  @3
  D=D-A
  @ARG
  M=D
// set the callee LCL point at the top of the stack
  @SP
  D=M
  @LCL
  M=D
// goto Screen.drawConditional
  @Screen.drawConditional
  0;JMP
// create return address label
(Screen.drawConditional$ret.0)

// pop TEMP 0
  @5
  D=A
  @TEMP
  D=M+D
  @R13
  M=D
  @SP
  AM=M-1
  D=M
  @R13
  A=M
  M=D

// label WHILE_EXP0
  (WHILE_EXP0)

// push LCL 1
  @1
  D=A
  @LCL
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push LCL 8
  @8
  D=A
  @LCL
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// lt
  @SP
  AM=M-1
  D=M
  A=A-1
  D=M-D
  @TRUE3103
  D;JLT
  @SP
  A=M-1
  M=0
  @CONTINUE3103
  0;JMP
(TRUE3103)
  @SP
  A=M-1
  M=-1
(CONTINUE3103)

// not
  @SP
  A=M-1
  M=!M

// if-goto WHILE_END0
  @SP
  AM=M-1
  D=M
  @WHILE_END0
  D;JNE

// push LCL 5
  @5
  D=A
  @LCL
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 0
  @0
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// lt
  @SP
  AM=M-1
  D=M
  A=A-1
  D=M-D
  @TRUE3108
  D;JLT
  @SP
  A=M-1
  M=0
  @CONTINUE3108
  0;JMP
(TRUE3108)
  @SP
  A=M-1
  M=-1
(CONTINUE3108)

// if-goto IF_TRUE3
  @SP
  AM=M-1
  D=M
  @IF_TRUE3
  D;JNE

// goto IF_FALSE3
  @IF_FALSE3
  0;JMP

// label IF_TRUE3
  (IF_TRUE3)

// push LCL 5
  @5
  D=A
  @LCL
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push LCL 9
  @9
  D=A
  @LCL
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// add
  @SP
  AM=M-1
  D=M
  A=A-1
  M=M+D

// pop LCL 5
  @5
  D=A
  @LCL
  D=M+D
  @R13
  M=D
  @SP
  AM=M-1
  D=M
  @R13
  A=M
  M=D

// goto IF_END3
  @IF_END3
  0;JMP

// label IF_FALSE3
  (IF_FALSE3)

// push LCL 5
  @5
  D=A
  @LCL
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push LCL 10
  @10
  D=A
  @LCL
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// add
  @SP
  AM=M-1
  D=M
  A=A-1
  M=M+D

// pop LCL 5
  @5
  D=A
  @LCL
  D=M+D
  @R13
  M=D
  @SP
  AM=M-1
  D=M
  @R13
  A=M
  M=D

// push LCL 7
  @7
  D=A
  @LCL
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// if-goto IF_TRUE4
  @SP
  AM=M-1
  D=M
  @IF_TRUE4
  D;JNE

// goto IF_FALSE4
  @IF_FALSE4
  0;JMP

// label IF_TRUE4
  (IF_TRUE4)

// push LCL 0
  @0
  D=A
  @LCL
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 1
  @1
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// sub
  @SP
  AM=M-1
  D=M
  A=A-1
  M=M-D

// pop LCL 0
  @0
  D=A
  @LCL
  D=M+D
  @R13
  M=D
  @SP
  AM=M-1
  D=M
  @R13
  A=M
  M=D

// goto IF_END4
  @IF_END4
  0;JMP

// label IF_FALSE4
  (IF_FALSE4)

// push LCL 0
  @0
  D=A
  @LCL
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 1
  @1
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// add
  @SP
  AM=M-1
  D=M
  A=A-1
  M=M+D

// pop LCL 0
  @0
  D=A
  @LCL
  D=M+D
  @R13
  M=D
  @SP
  AM=M-1
  D=M
  @R13
  A=M
  M=D

// label IF_END4
  (IF_END4)

// label IF_END3
  (IF_END3)

// push LCL 1
  @1
  D=A
  @LCL
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 1
  @1
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// add
  @SP
  AM=M-1
  D=M
  A=A-1
  M=M+D

// pop LCL 1
  @1
  D=A
  @LCL
  D=M+D
  @R13
  M=D
  @SP
  AM=M-1
  D=M
  @R13
  A=M
  M=D

// push LCL 1
  @1
  D=A
  @LCL
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push LCL 0
  @0
  D=A
  @LCL
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push LCL 6
  @6
  D=A
  @LCL
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// call Screen.drawConditional 3
// push return address onto stack
  @Screen.drawConditional$ret.1
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's LCL to the stack
  @LCL
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's ARG to the stack
  @ARG
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's THIS to the stack
  @THIS
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's THAT to the stack
  @THAT
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// set the callee ARG to point at the first arg passed to the function
  @SP
  D=M
  @5
  D=D-A
  @3
  D=D-A
  @ARG
  M=D
// set the callee LCL point at the top of the stack
  @SP
  D=M
  @LCL
  M=D
// goto Screen.drawConditional
  @Screen.drawConditional
  0;JMP
// create return address label
(Screen.drawConditional$ret.1)

// pop TEMP 0
  @5
  D=A
  @TEMP
  D=M+D
  @R13
  M=D
  @SP
  AM=M-1
  D=M
  @R13
  A=M
  M=D

// goto WHILE_EXP0
  @WHILE_EXP0
  0;JMP

// label WHILE_END0
  (WHILE_END0)

// push constant 0
  @0
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// return
// Store the start of the local stack (i.e. 'frame') in a temp variable
  @LCL
  D=M
  @R13
  M=D
// Store the return address in a temp variable
  @5
  A=D-A
  D=M
  @R14
  M=D
// Store the return value in the first argument (i.e. top of caller stack)
  @SP
  AM=M-1
  D=M
  @ARG
  A=M
  M=D
// Restore the caller's stack pointer (one after the return value)
  @ARG
  D=M+1
  @SP
  M=D
// Restore the caller's THAT segment
  @R13
  AM=M-1
  D=M
  @THAT
  M=D
// Restore the caller's THIS segment
  @R13
  AM=M-1
  D=M
  @THIS
  M=D
// Restore the caller's ARG segment
  @R13
  AM=M-1
  D=M
  @ARG
  M=D
// Restore the caller's LCL segment
  @R13
  AM=M-1
  D=M
  @LCL
  M=D
// Jump to the return address
  @R14
  A=M
  0;JMP

// function Screen.drawRectangle 9
  (Screen.drawRectangle)
  @SP
  A=M
  M=0
  @SP
  M=M+1
  @SP
  A=M
  M=0
  @SP
  M=M+1
  @SP
  A=M
  M=0
  @SP
  M=M+1
  @SP
  A=M
  M=0
  @SP
  M=M+1
  @SP
  A=M
  M=0
  @SP
  M=M+1
  @SP
  A=M
  M=0
  @SP
  M=M+1
  @SP
  A=M
  M=0
  @SP
  M=M+1
  @SP
  A=M
  M=0
  @SP
  M=M+1
  @SP
  A=M
  M=0
  @SP
  M=M+1

// push ARG 0
  @0
  D=A
  @ARG
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push ARG 2
  @2
  D=A
  @ARG
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// gt
  @SP
  AM=M-1
  D=M
  A=A-1
  D=M-D
  @TRUE3154
  D;JGT
  @SP
  A=M-1
  M=0
  @CONTINUE3154
  0;JMP
(TRUE3154)
  @SP
  A=M-1
  M=-1
(CONTINUE3154)

// push ARG 1
  @1
  D=A
  @ARG
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push ARG 3
  @3
  D=A
  @ARG
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// gt
  @SP
  AM=M-1
  D=M
  A=A-1
  D=M-D
  @TRUE3157
  D;JGT
  @SP
  A=M-1
  M=0
  @CONTINUE3157
  0;JMP
(TRUE3157)
  @SP
  A=M-1
  M=-1
(CONTINUE3157)

// or
  @SP
  AM=M-1
  D=M
  A=A-1
  M=M|D

// push ARG 0
  @0
  D=A
  @ARG
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 0
  @0
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// lt
  @SP
  AM=M-1
  D=M
  A=A-1
  D=M-D
  @TRUE3161
  D;JLT
  @SP
  A=M-1
  M=0
  @CONTINUE3161
  0;JMP
(TRUE3161)
  @SP
  A=M-1
  M=-1
(CONTINUE3161)

// or
  @SP
  AM=M-1
  D=M
  A=A-1
  M=M|D

// push ARG 2
  @2
  D=A
  @ARG
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 511
  @511
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// gt
  @SP
  AM=M-1
  D=M
  A=A-1
  D=M-D
  @TRUE3165
  D;JGT
  @SP
  A=M-1
  M=0
  @CONTINUE3165
  0;JMP
(TRUE3165)
  @SP
  A=M-1
  M=-1
(CONTINUE3165)

// or
  @SP
  AM=M-1
  D=M
  A=A-1
  M=M|D

// push ARG 1
  @1
  D=A
  @ARG
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 0
  @0
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// lt
  @SP
  AM=M-1
  D=M
  A=A-1
  D=M-D
  @TRUE3169
  D;JLT
  @SP
  A=M-1
  M=0
  @CONTINUE3169
  0;JMP
(TRUE3169)
  @SP
  A=M-1
  M=-1
(CONTINUE3169)

// or
  @SP
  AM=M-1
  D=M
  A=A-1
  M=M|D

// push ARG 3
  @3
  D=A
  @ARG
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 255
  @255
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// gt
  @SP
  AM=M-1
  D=M
  A=A-1
  D=M-D
  @TRUE3173
  D;JGT
  @SP
  A=M-1
  M=0
  @CONTINUE3173
  0;JMP
(TRUE3173)
  @SP
  A=M-1
  M=-1
(CONTINUE3173)

// or
  @SP
  AM=M-1
  D=M
  A=A-1
  M=M|D

// if-goto IF_TRUE0
  @SP
  AM=M-1
  D=M
  @IF_TRUE0
  D;JNE

// goto IF_FALSE0
  @IF_FALSE0
  0;JMP

// label IF_TRUE0
  (IF_TRUE0)

// push constant 9
  @9
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// call Sys.error 1
// push return address onto stack
  @Sys.error$ret.8
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's LCL to the stack
  @LCL
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's ARG to the stack
  @ARG
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's THIS to the stack
  @THIS
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's THAT to the stack
  @THAT
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// set the callee ARG to point at the first arg passed to the function
  @SP
  D=M
  @5
  D=D-A
  @1
  D=D-A
  @ARG
  M=D
// set the callee LCL point at the top of the stack
  @SP
  D=M
  @LCL
  M=D
// goto Sys.error
  @Sys.error
  0;JMP
// create return address label
(Sys.error$ret.8)

// pop TEMP 0
  @5
  D=A
  @TEMP
  D=M+D
  @R13
  M=D
  @SP
  AM=M-1
  D=M
  @R13
  A=M
  M=D

// label IF_FALSE0
  (IF_FALSE0)

// push ARG 0
  @0
  D=A
  @ARG
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 16
  @16
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// call Math.divide 2
// push return address onto stack
  @Math.divide$ret.2
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's LCL to the stack
  @LCL
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's ARG to the stack
  @ARG
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's THIS to the stack
  @THIS
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's THAT to the stack
  @THAT
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// set the callee ARG to point at the first arg passed to the function
  @SP
  D=M
  @5
  D=D-A
  @2
  D=D-A
  @ARG
  M=D
// set the callee LCL point at the top of the stack
  @SP
  D=M
  @LCL
  M=D
// goto Math.divide
  @Math.divide
  0;JMP
// create return address label
(Math.divide$ret.2)

// pop LCL 3
  @3
  D=A
  @LCL
  D=M+D
  @R13
  M=D
  @SP
  AM=M-1
  D=M
  @R13
  A=M
  M=D

// push ARG 0
  @0
  D=A
  @ARG
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push LCL 3
  @3
  D=A
  @LCL
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 16
  @16
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// call Math.multiply 2
// push return address onto stack
  @Math.multiply$ret.9
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's LCL to the stack
  @LCL
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's ARG to the stack
  @ARG
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's THIS to the stack
  @THIS
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's THAT to the stack
  @THAT
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// set the callee ARG to point at the first arg passed to the function
  @SP
  D=M
  @5
  D=D-A
  @2
  D=D-A
  @ARG
  M=D
// set the callee LCL point at the top of the stack
  @SP
  D=M
  @LCL
  M=D
// goto Math.multiply
  @Math.multiply
  0;JMP
// create return address label
(Math.multiply$ret.9)

// sub
  @SP
  AM=M-1
  D=M
  A=A-1
  M=M-D

// pop LCL 7
  @7
  D=A
  @LCL
  D=M+D
  @R13
  M=D
  @SP
  AM=M-1
  D=M
  @R13
  A=M
  M=D

// push ARG 2
  @2
  D=A
  @ARG
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 16
  @16
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// call Math.divide 2
// push return address onto stack
  @Math.divide$ret.3
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's LCL to the stack
  @LCL
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's ARG to the stack
  @ARG
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's THIS to the stack
  @THIS
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's THAT to the stack
  @THAT
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// set the callee ARG to point at the first arg passed to the function
  @SP
  D=M
  @5
  D=D-A
  @2
  D=D-A
  @ARG
  M=D
// set the callee LCL point at the top of the stack
  @SP
  D=M
  @LCL
  M=D
// goto Math.divide
  @Math.divide
  0;JMP
// create return address label
(Math.divide$ret.3)

// pop LCL 4
  @4
  D=A
  @LCL
  D=M+D
  @R13
  M=D
  @SP
  AM=M-1
  D=M
  @R13
  A=M
  M=D

// push ARG 2
  @2
  D=A
  @ARG
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push LCL 4
  @4
  D=A
  @LCL
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 16
  @16
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// call Math.multiply 2
// push return address onto stack
  @Math.multiply$ret.10
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's LCL to the stack
  @LCL
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's ARG to the stack
  @ARG
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's THIS to the stack
  @THIS
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's THAT to the stack
  @THAT
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// set the callee ARG to point at the first arg passed to the function
  @SP
  D=M
  @5
  D=D-A
  @2
  D=D-A
  @ARG
  M=D
// set the callee LCL point at the top of the stack
  @SP
  D=M
  @LCL
  M=D
// goto Math.multiply
  @Math.multiply
  0;JMP
// create return address label
(Math.multiply$ret.10)

// sub
  @SP
  AM=M-1
  D=M
  A=A-1
  M=M-D

// pop LCL 8
  @8
  D=A
  @LCL
  D=M+D
  @R13
  M=D
  @SP
  AM=M-1
  D=M
  @R13
  A=M
  M=D

// push LCL 7
  @7
  D=A
  @LCL
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push static 0
  @Screen.0
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// add
  @SP
  AM=M-1
  D=M
  A=A-1
  M=M+D

// pop pointer 1
  @SP
  AM=M-1
  D=M
  @THAT
  M=D

// push THAT 0
  @0
  D=A
  @THAT
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 1
  @1
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// sub
  @SP
  AM=M-1
  D=M
  A=A-1
  M=M-D

// not
  @SP
  A=M-1
  M=!M

// pop LCL 6
  @6
  D=A
  @LCL
  D=M+D
  @R13
  M=D
  @SP
  AM=M-1
  D=M
  @R13
  A=M
  M=D

// push LCL 8
  @8
  D=A
  @LCL
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 1
  @1
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// add
  @SP
  AM=M-1
  D=M
  A=A-1
  M=M+D

// push static 0
  @Screen.0
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// add
  @SP
  AM=M-1
  D=M
  A=A-1
  M=M+D

// pop pointer 1
  @SP
  AM=M-1
  D=M
  @THAT
  M=D

// push THAT 0
  @0
  D=A
  @THAT
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 1
  @1
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// sub
  @SP
  AM=M-1
  D=M
  A=A-1
  M=M-D

// pop LCL 5
  @5
  D=A
  @LCL
  D=M+D
  @R13
  M=D
  @SP
  AM=M-1
  D=M
  @R13
  A=M
  M=D

// push ARG 1
  @1
  D=A
  @ARG
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 32
  @32
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// call Math.multiply 2
// push return address onto stack
  @Math.multiply$ret.11
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's LCL to the stack
  @LCL
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's ARG to the stack
  @ARG
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's THIS to the stack
  @THIS
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's THAT to the stack
  @THAT
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// set the callee ARG to point at the first arg passed to the function
  @SP
  D=M
  @5
  D=D-A
  @2
  D=D-A
  @ARG
  M=D
// set the callee LCL point at the top of the stack
  @SP
  D=M
  @LCL
  M=D
// goto Math.multiply
  @Math.multiply
  0;JMP
// create return address label
(Math.multiply$ret.11)

// push LCL 3
  @3
  D=A
  @LCL
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// add
  @SP
  AM=M-1
  D=M
  A=A-1
  M=M+D

// pop LCL 0
  @0
  D=A
  @LCL
  D=M+D
  @R13
  M=D
  @SP
  AM=M-1
  D=M
  @R13
  A=M
  M=D

// push LCL 4
  @4
  D=A
  @LCL
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push LCL 3
  @3
  D=A
  @LCL
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// sub
  @SP
  AM=M-1
  D=M
  A=A-1
  M=M-D

// pop LCL 2
  @2
  D=A
  @LCL
  D=M+D
  @R13
  M=D
  @SP
  AM=M-1
  D=M
  @R13
  A=M
  M=D

// label WHILE_EXP0
  (WHILE_EXP0)

// push ARG 1
  @1
  D=A
  @ARG
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push ARG 3
  @3
  D=A
  @ARG
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// gt
  @SP
  AM=M-1
  D=M
  A=A-1
  D=M-D
  @TRUE3234
  D;JGT
  @SP
  A=M-1
  M=0
  @CONTINUE3234
  0;JMP
(TRUE3234)
  @SP
  A=M-1
  M=-1
(CONTINUE3234)

// not
  @SP
  A=M-1
  M=!M

// not
  @SP
  A=M-1
  M=!M

// if-goto WHILE_END0
  @SP
  AM=M-1
  D=M
  @WHILE_END0
  D;JNE

// push LCL 0
  @0
  D=A
  @LCL
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push LCL 2
  @2
  D=A
  @LCL
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// add
  @SP
  AM=M-1
  D=M
  A=A-1
  M=M+D

// pop LCL 1
  @1
  D=A
  @LCL
  D=M+D
  @R13
  M=D
  @SP
  AM=M-1
  D=M
  @R13
  A=M
  M=D

// push LCL 2
  @2
  D=A
  @LCL
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 0
  @0
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// eq
  @SP
  AM=M-1
  D=M
  A=A-1
  D=M-D
  @TRUE3244
  D;JEQ
  @SP
  A=M-1
  M=0
  @CONTINUE3244
  0;JMP
(TRUE3244)
  @SP
  A=M-1
  M=-1
(CONTINUE3244)

// if-goto IF_TRUE1
  @SP
  AM=M-1
  D=M
  @IF_TRUE1
  D;JNE

// goto IF_FALSE1
  @IF_FALSE1
  0;JMP

// label IF_TRUE1
  (IF_TRUE1)

// push LCL 0
  @0
  D=A
  @LCL
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push LCL 5
  @5
  D=A
  @LCL
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push LCL 6
  @6
  D=A
  @LCL
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// and
  @SP
  AM=M-1
  D=M
  A=A-1
  M=M&D

// call Screen.updateLocation 2
// push return address onto stack
  @Screen.updateLocation$ret.1
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's LCL to the stack
  @LCL
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's ARG to the stack
  @ARG
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's THIS to the stack
  @THIS
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's THAT to the stack
  @THAT
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// set the callee ARG to point at the first arg passed to the function
  @SP
  D=M
  @5
  D=D-A
  @2
  D=D-A
  @ARG
  M=D
// set the callee LCL point at the top of the stack
  @SP
  D=M
  @LCL
  M=D
// goto Screen.updateLocation
  @Screen.updateLocation
  0;JMP
// create return address label
(Screen.updateLocation$ret.1)

// pop TEMP 0
  @5
  D=A
  @TEMP
  D=M+D
  @R13
  M=D
  @SP
  AM=M-1
  D=M
  @R13
  A=M
  M=D

// goto IF_END1
  @IF_END1
  0;JMP

// label IF_FALSE1
  (IF_FALSE1)

// push LCL 0
  @0
  D=A
  @LCL
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push LCL 6
  @6
  D=A
  @LCL
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// call Screen.updateLocation 2
// push return address onto stack
  @Screen.updateLocation$ret.2
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's LCL to the stack
  @LCL
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's ARG to the stack
  @ARG
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's THIS to the stack
  @THIS
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's THAT to the stack
  @THAT
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// set the callee ARG to point at the first arg passed to the function
  @SP
  D=M
  @5
  D=D-A
  @2
  D=D-A
  @ARG
  M=D
// set the callee LCL point at the top of the stack
  @SP
  D=M
  @LCL
  M=D
// goto Screen.updateLocation
  @Screen.updateLocation
  0;JMP
// create return address label
(Screen.updateLocation$ret.2)

// pop TEMP 0
  @5
  D=A
  @TEMP
  D=M+D
  @R13
  M=D
  @SP
  AM=M-1
  D=M
  @R13
  A=M
  M=D

// push LCL 0
  @0
  D=A
  @LCL
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 1
  @1
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// add
  @SP
  AM=M-1
  D=M
  A=A-1
  M=M+D

// pop LCL 0
  @0
  D=A
  @LCL
  D=M+D
  @R13
  M=D
  @SP
  AM=M-1
  D=M
  @R13
  A=M
  M=D

// label WHILE_EXP1
  (WHILE_EXP1)

// push LCL 0
  @0
  D=A
  @LCL
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push LCL 1
  @1
  D=A
  @LCL
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// lt
  @SP
  AM=M-1
  D=M
  A=A-1
  D=M-D
  @TRUE3267
  D;JLT
  @SP
  A=M-1
  M=0
  @CONTINUE3267
  0;JMP
(TRUE3267)
  @SP
  A=M-1
  M=-1
(CONTINUE3267)

// not
  @SP
  A=M-1
  M=!M

// if-goto WHILE_END1
  @SP
  AM=M-1
  D=M
  @WHILE_END1
  D;JNE

// push LCL 0
  @0
  D=A
  @LCL
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 1
  @1
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// neg
  @SP
  A=M-1
  M=-M

// call Screen.updateLocation 2
// push return address onto stack
  @Screen.updateLocation$ret.3
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's LCL to the stack
  @LCL
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's ARG to the stack
  @ARG
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's THIS to the stack
  @THIS
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's THAT to the stack
  @THAT
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// set the callee ARG to point at the first arg passed to the function
  @SP
  D=M
  @5
  D=D-A
  @2
  D=D-A
  @ARG
  M=D
// set the callee LCL point at the top of the stack
  @SP
  D=M
  @LCL
  M=D
// goto Screen.updateLocation
  @Screen.updateLocation
  0;JMP
// create return address label
(Screen.updateLocation$ret.3)

// pop TEMP 0
  @5
  D=A
  @TEMP
  D=M+D
  @R13
  M=D
  @SP
  AM=M-1
  D=M
  @R13
  A=M
  M=D

// push LCL 0
  @0
  D=A
  @LCL
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 1
  @1
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// add
  @SP
  AM=M-1
  D=M
  A=A-1
  M=M+D

// pop LCL 0
  @0
  D=A
  @LCL
  D=M+D
  @R13
  M=D
  @SP
  AM=M-1
  D=M
  @R13
  A=M
  M=D

// goto WHILE_EXP1
  @WHILE_EXP1
  0;JMP

// label WHILE_END1
  (WHILE_END1)

// push LCL 1
  @1
  D=A
  @LCL
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push LCL 5
  @5
  D=A
  @LCL
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// call Screen.updateLocation 2
// push return address onto stack
  @Screen.updateLocation$ret.4
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's LCL to the stack
  @LCL
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's ARG to the stack
  @ARG
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's THIS to the stack
  @THIS
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's THAT to the stack
  @THAT
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// set the callee ARG to point at the first arg passed to the function
  @SP
  D=M
  @5
  D=D-A
  @2
  D=D-A
  @ARG
  M=D
// set the callee LCL point at the top of the stack
  @SP
  D=M
  @LCL
  M=D
// goto Screen.updateLocation
  @Screen.updateLocation
  0;JMP
// create return address label
(Screen.updateLocation$ret.4)

// pop TEMP 0
  @5
  D=A
  @TEMP
  D=M+D
  @R13
  M=D
  @SP
  AM=M-1
  D=M
  @R13
  A=M
  M=D

// label IF_END1
  (IF_END1)

// push ARG 1
  @1
  D=A
  @ARG
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 1
  @1
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// add
  @SP
  AM=M-1
  D=M
  A=A-1
  M=M+D

// pop ARG 1
  @1
  D=A
  @ARG
  D=M+D
  @R13
  M=D
  @SP
  AM=M-1
  D=M
  @R13
  A=M
  M=D

// push LCL 1
  @1
  D=A
  @LCL
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 32
  @32
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// add
  @SP
  AM=M-1
  D=M
  A=A-1
  M=M+D

// push LCL 2
  @2
  D=A
  @LCL
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// sub
  @SP
  AM=M-1
  D=M
  A=A-1
  M=M-D

// pop LCL 0
  @0
  D=A
  @LCL
  D=M+D
  @R13
  M=D
  @SP
  AM=M-1
  D=M
  @R13
  A=M
  M=D

// goto WHILE_EXP0
  @WHILE_EXP0
  0;JMP

// label WHILE_END0
  (WHILE_END0)

// push constant 0
  @0
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// return
// Store the start of the local stack (i.e. 'frame') in a temp variable
  @LCL
  D=M
  @R13
  M=D
// Store the return address in a temp variable
  @5
  A=D-A
  D=M
  @R14
  M=D
// Store the return value in the first argument (i.e. top of caller stack)
  @SP
  AM=M-1
  D=M
  @ARG
  A=M
  M=D
// Restore the caller's stack pointer (one after the return value)
  @ARG
  D=M+1
  @SP
  M=D
// Restore the caller's THAT segment
  @R13
  AM=M-1
  D=M
  @THAT
  M=D
// Restore the caller's THIS segment
  @R13
  AM=M-1
  D=M
  @THIS
  M=D
// Restore the caller's ARG segment
  @R13
  AM=M-1
  D=M
  @ARG
  M=D
// Restore the caller's LCL segment
  @R13
  AM=M-1
  D=M
  @LCL
  M=D
// Jump to the return address
  @R14
  A=M
  0;JMP

// function Screen.drawHorizontal 11
  (Screen.drawHorizontal)
  @SP
  A=M
  M=0
  @SP
  M=M+1
  @SP
  A=M
  M=0
  @SP
  M=M+1
  @SP
  A=M
  M=0
  @SP
  M=M+1
  @SP
  A=M
  M=0
  @SP
  M=M+1
  @SP
  A=M
  M=0
  @SP
  M=M+1
  @SP
  A=M
  M=0
  @SP
  M=M+1
  @SP
  A=M
  M=0
  @SP
  M=M+1
  @SP
  A=M
  M=0
  @SP
  M=M+1
  @SP
  A=M
  M=0
  @SP
  M=M+1
  @SP
  A=M
  M=0
  @SP
  M=M+1
  @SP
  A=M
  M=0
  @SP
  M=M+1

// push ARG 1
  @1
  D=A
  @ARG
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push ARG 2
  @2
  D=A
  @ARG
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// call Math.min 2
// push return address onto stack
  @Math.min$ret.0
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's LCL to the stack
  @LCL
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's ARG to the stack
  @ARG
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's THIS to the stack
  @THIS
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's THAT to the stack
  @THAT
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// set the callee ARG to point at the first arg passed to the function
  @SP
  D=M
  @5
  D=D-A
  @2
  D=D-A
  @ARG
  M=D
// set the callee LCL point at the top of the stack
  @SP
  D=M
  @LCL
  M=D
// goto Math.min
  @Math.min
  0;JMP
// create return address label
(Math.min$ret.0)

// pop LCL 7
  @7
  D=A
  @LCL
  D=M+D
  @R13
  M=D
  @SP
  AM=M-1
  D=M
  @R13
  A=M
  M=D

// push ARG 1
  @1
  D=A
  @ARG
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push ARG 2
  @2
  D=A
  @ARG
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// call Math.max 2
// push return address onto stack
  @Math.max$ret.0
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's LCL to the stack
  @LCL
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's ARG to the stack
  @ARG
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's THIS to the stack
  @THIS
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's THAT to the stack
  @THAT
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// set the callee ARG to point at the first arg passed to the function
  @SP
  D=M
  @5
  D=D-A
  @2
  D=D-A
  @ARG
  M=D
// set the callee LCL point at the top of the stack
  @SP
  D=M
  @LCL
  M=D
// goto Math.max
  @Math.max
  0;JMP
// create return address label
(Math.max$ret.0)

// pop LCL 8
  @8
  D=A
  @LCL
  D=M+D
  @R13
  M=D
  @SP
  AM=M-1
  D=M
  @R13
  A=M
  M=D

// push ARG 0
  @0
  D=A
  @ARG
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 1
  @1
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// neg
  @SP
  A=M-1
  M=-M

// gt
  @SP
  AM=M-1
  D=M
  A=A-1
  D=M-D
  @TRUE3312
  D;JGT
  @SP
  A=M-1
  M=0
  @CONTINUE3312
  0;JMP
(TRUE3312)
  @SP
  A=M-1
  M=-1
(CONTINUE3312)

// push ARG 0
  @0
  D=A
  @ARG
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 256
  @256
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// lt
  @SP
  AM=M-1
  D=M
  A=A-1
  D=M-D
  @TRUE3315
  D;JLT
  @SP
  A=M-1
  M=0
  @CONTINUE3315
  0;JMP
(TRUE3315)
  @SP
  A=M-1
  M=-1
(CONTINUE3315)

// and
  @SP
  AM=M-1
  D=M
  A=A-1
  M=M&D

// push LCL 7
  @7
  D=A
  @LCL
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 512
  @512
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// lt
  @SP
  AM=M-1
  D=M
  A=A-1
  D=M-D
  @TRUE3319
  D;JLT
  @SP
  A=M-1
  M=0
  @CONTINUE3319
  0;JMP
(TRUE3319)
  @SP
  A=M-1
  M=-1
(CONTINUE3319)

// and
  @SP
  AM=M-1
  D=M
  A=A-1
  M=M&D

// push LCL 8
  @8
  D=A
  @LCL
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 1
  @1
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// neg
  @SP
  A=M-1
  M=-M

// gt
  @SP
  AM=M-1
  D=M
  A=A-1
  D=M-D
  @TRUE3324
  D;JGT
  @SP
  A=M-1
  M=0
  @CONTINUE3324
  0;JMP
(TRUE3324)
  @SP
  A=M-1
  M=-1
(CONTINUE3324)

// and
  @SP
  AM=M-1
  D=M
  A=A-1
  M=M&D

// if-goto IF_TRUE0
  @SP
  AM=M-1
  D=M
  @IF_TRUE0
  D;JNE

// goto IF_FALSE0
  @IF_FALSE0
  0;JMP

// label IF_TRUE0
  (IF_TRUE0)

// push LCL 7
  @7
  D=A
  @LCL
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 0
  @0
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// call Math.max 2
// push return address onto stack
  @Math.max$ret.1
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's LCL to the stack
  @LCL
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's ARG to the stack
  @ARG
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's THIS to the stack
  @THIS
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's THAT to the stack
  @THAT
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// set the callee ARG to point at the first arg passed to the function
  @SP
  D=M
  @5
  D=D-A
  @2
  D=D-A
  @ARG
  M=D
// set the callee LCL point at the top of the stack
  @SP
  D=M
  @LCL
  M=D
// goto Math.max
  @Math.max
  0;JMP
// create return address label
(Math.max$ret.1)

// pop LCL 7
  @7
  D=A
  @LCL
  D=M+D
  @R13
  M=D
  @SP
  AM=M-1
  D=M
  @R13
  A=M
  M=D

// push LCL 8
  @8
  D=A
  @LCL
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 511
  @511
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// call Math.min 2
// push return address onto stack
  @Math.min$ret.1
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's LCL to the stack
  @LCL
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's ARG to the stack
  @ARG
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's THIS to the stack
  @THIS
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's THAT to the stack
  @THAT
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// set the callee ARG to point at the first arg passed to the function
  @SP
  D=M
  @5
  D=D-A
  @2
  D=D-A
  @ARG
  M=D
// set the callee LCL point at the top of the stack
  @SP
  D=M
  @LCL
  M=D
// goto Math.min
  @Math.min
  0;JMP
// create return address label
(Math.min$ret.1)

// pop LCL 8
  @8
  D=A
  @LCL
  D=M+D
  @R13
  M=D
  @SP
  AM=M-1
  D=M
  @R13
  A=M
  M=D

// push LCL 7
  @7
  D=A
  @LCL
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 16
  @16
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// call Math.divide 2
// push return address onto stack
  @Math.divide$ret.4
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's LCL to the stack
  @LCL
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's ARG to the stack
  @ARG
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's THIS to the stack
  @THIS
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's THAT to the stack
  @THAT
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// set the callee ARG to point at the first arg passed to the function
  @SP
  D=M
  @5
  D=D-A
  @2
  D=D-A
  @ARG
  M=D
// set the callee LCL point at the top of the stack
  @SP
  D=M
  @LCL
  M=D
// goto Math.divide
  @Math.divide
  0;JMP
// create return address label
(Math.divide$ret.4)

// pop LCL 1
  @1
  D=A
  @LCL
  D=M+D
  @R13
  M=D
  @SP
  AM=M-1
  D=M
  @R13
  A=M
  M=D

// push LCL 7
  @7
  D=A
  @LCL
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push LCL 1
  @1
  D=A
  @LCL
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 16
  @16
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// call Math.multiply 2
// push return address onto stack
  @Math.multiply$ret.12
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's LCL to the stack
  @LCL
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's ARG to the stack
  @ARG
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's THIS to the stack
  @THIS
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's THAT to the stack
  @THAT
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// set the callee ARG to point at the first arg passed to the function
  @SP
  D=M
  @5
  D=D-A
  @2
  D=D-A
  @ARG
  M=D
// set the callee LCL point at the top of the stack
  @SP
  D=M
  @LCL
  M=D
// goto Math.multiply
  @Math.multiply
  0;JMP
// create return address label
(Math.multiply$ret.12)

// sub
  @SP
  AM=M-1
  D=M
  A=A-1
  M=M-D

// pop LCL 9
  @9
  D=A
  @LCL
  D=M+D
  @R13
  M=D
  @SP
  AM=M-1
  D=M
  @R13
  A=M
  M=D

// push LCL 8
  @8
  D=A
  @LCL
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 16
  @16
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// call Math.divide 2
// push return address onto stack
  @Math.divide$ret.5
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's LCL to the stack
  @LCL
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's ARG to the stack
  @ARG
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's THIS to the stack
  @THIS
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's THAT to the stack
  @THAT
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// set the callee ARG to point at the first arg passed to the function
  @SP
  D=M
  @5
  D=D-A
  @2
  D=D-A
  @ARG
  M=D
// set the callee LCL point at the top of the stack
  @SP
  D=M
  @LCL
  M=D
// goto Math.divide
  @Math.divide
  0;JMP
// create return address label
(Math.divide$ret.5)

// pop LCL 2
  @2
  D=A
  @LCL
  D=M+D
  @R13
  M=D
  @SP
  AM=M-1
  D=M
  @R13
  A=M
  M=D

// push LCL 8
  @8
  D=A
  @LCL
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push LCL 2
  @2
  D=A
  @LCL
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 16
  @16
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// call Math.multiply 2
// push return address onto stack
  @Math.multiply$ret.13
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's LCL to the stack
  @LCL
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's ARG to the stack
  @ARG
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's THIS to the stack
  @THIS
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's THAT to the stack
  @THAT
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// set the callee ARG to point at the first arg passed to the function
  @SP
  D=M
  @5
  D=D-A
  @2
  D=D-A
  @ARG
  M=D
// set the callee LCL point at the top of the stack
  @SP
  D=M
  @LCL
  M=D
// goto Math.multiply
  @Math.multiply
  0;JMP
// create return address label
(Math.multiply$ret.13)

// sub
  @SP
  AM=M-1
  D=M
  A=A-1
  M=M-D

// pop LCL 10
  @10
  D=A
  @LCL
  D=M+D
  @R13
  M=D
  @SP
  AM=M-1
  D=M
  @R13
  A=M
  M=D

// push LCL 9
  @9
  D=A
  @LCL
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push static 0
  @Screen.0
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// add
  @SP
  AM=M-1
  D=M
  A=A-1
  M=M+D

// pop pointer 1
  @SP
  AM=M-1
  D=M
  @THAT
  M=D

// push THAT 0
  @0
  D=A
  @THAT
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 1
  @1
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// sub
  @SP
  AM=M-1
  D=M
  A=A-1
  M=M-D

// not
  @SP
  A=M-1
  M=!M

// pop LCL 5
  @5
  D=A
  @LCL
  D=M+D
  @R13
  M=D
  @SP
  AM=M-1
  D=M
  @R13
  A=M
  M=D

// push LCL 10
  @10
  D=A
  @LCL
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 1
  @1
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// add
  @SP
  AM=M-1
  D=M
  A=A-1
  M=M+D

// push static 0
  @Screen.0
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// add
  @SP
  AM=M-1
  D=M
  A=A-1
  M=M+D

// pop pointer 1
  @SP
  AM=M-1
  D=M
  @THAT
  M=D

// push THAT 0
  @0
  D=A
  @THAT
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 1
  @1
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// sub
  @SP
  AM=M-1
  D=M
  A=A-1
  M=M-D

// pop LCL 4
  @4
  D=A
  @LCL
  D=M+D
  @R13
  M=D
  @SP
  AM=M-1
  D=M
  @R13
  A=M
  M=D

// push ARG 0
  @0
  D=A
  @ARG
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 32
  @32
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// call Math.multiply 2
// push return address onto stack
  @Math.multiply$ret.14
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's LCL to the stack
  @LCL
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's ARG to the stack
  @ARG
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's THIS to the stack
  @THIS
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's THAT to the stack
  @THAT
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// set the callee ARG to point at the first arg passed to the function
  @SP
  D=M
  @5
  D=D-A
  @2
  D=D-A
  @ARG
  M=D
// set the callee LCL point at the top of the stack
  @SP
  D=M
  @LCL
  M=D
// goto Math.multiply
  @Math.multiply
  0;JMP
// create return address label
(Math.multiply$ret.14)

// push LCL 1
  @1
  D=A
  @LCL
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// add
  @SP
  AM=M-1
  D=M
  A=A-1
  M=M+D

// pop LCL 0
  @0
  D=A
  @LCL
  D=M+D
  @R13
  M=D
  @SP
  AM=M-1
  D=M
  @R13
  A=M
  M=D

// push LCL 2
  @2
  D=A
  @LCL
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push LCL 1
  @1
  D=A
  @LCL
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// sub
  @SP
  AM=M-1
  D=M
  A=A-1
  M=M-D

// pop LCL 6
  @6
  D=A
  @LCL
  D=M+D
  @R13
  M=D
  @SP
  AM=M-1
  D=M
  @R13
  A=M
  M=D

// push LCL 0
  @0
  D=A
  @LCL
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push LCL 6
  @6
  D=A
  @LCL
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// add
  @SP
  AM=M-1
  D=M
  A=A-1
  M=M+D

// pop LCL 3
  @3
  D=A
  @LCL
  D=M+D
  @R13
  M=D
  @SP
  AM=M-1
  D=M
  @R13
  A=M
  M=D

// push LCL 6
  @6
  D=A
  @LCL
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 0
  @0
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// eq
  @SP
  AM=M-1
  D=M
  A=A-1
  D=M-D
  @TRUE3392
  D;JEQ
  @SP
  A=M-1
  M=0
  @CONTINUE3392
  0;JMP
(TRUE3392)
  @SP
  A=M-1
  M=-1
(CONTINUE3392)

// if-goto IF_TRUE1
  @SP
  AM=M-1
  D=M
  @IF_TRUE1
  D;JNE

// goto IF_FALSE1
  @IF_FALSE1
  0;JMP

// label IF_TRUE1
  (IF_TRUE1)

// push LCL 0
  @0
  D=A
  @LCL
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push LCL 4
  @4
  D=A
  @LCL
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push LCL 5
  @5
  D=A
  @LCL
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// and
  @SP
  AM=M-1
  D=M
  A=A-1
  M=M&D

// call Screen.updateLocation 2
// push return address onto stack
  @Screen.updateLocation$ret.5
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's LCL to the stack
  @LCL
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's ARG to the stack
  @ARG
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's THIS to the stack
  @THIS
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's THAT to the stack
  @THAT
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// set the callee ARG to point at the first arg passed to the function
  @SP
  D=M
  @5
  D=D-A
  @2
  D=D-A
  @ARG
  M=D
// set the callee LCL point at the top of the stack
  @SP
  D=M
  @LCL
  M=D
// goto Screen.updateLocation
  @Screen.updateLocation
  0;JMP
// create return address label
(Screen.updateLocation$ret.5)

// pop TEMP 0
  @5
  D=A
  @TEMP
  D=M+D
  @R13
  M=D
  @SP
  AM=M-1
  D=M
  @R13
  A=M
  M=D

// goto IF_END1
  @IF_END1
  0;JMP

// label IF_FALSE1
  (IF_FALSE1)

// push LCL 0
  @0
  D=A
  @LCL
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push LCL 5
  @5
  D=A
  @LCL
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// call Screen.updateLocation 2
// push return address onto stack
  @Screen.updateLocation$ret.6
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's LCL to the stack
  @LCL
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's ARG to the stack
  @ARG
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's THIS to the stack
  @THIS
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's THAT to the stack
  @THAT
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// set the callee ARG to point at the first arg passed to the function
  @SP
  D=M
  @5
  D=D-A
  @2
  D=D-A
  @ARG
  M=D
// set the callee LCL point at the top of the stack
  @SP
  D=M
  @LCL
  M=D
// goto Screen.updateLocation
  @Screen.updateLocation
  0;JMP
// create return address label
(Screen.updateLocation$ret.6)

// pop TEMP 0
  @5
  D=A
  @TEMP
  D=M+D
  @R13
  M=D
  @SP
  AM=M-1
  D=M
  @R13
  A=M
  M=D

// push LCL 0
  @0
  D=A
  @LCL
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 1
  @1
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// add
  @SP
  AM=M-1
  D=M
  A=A-1
  M=M+D

// pop LCL 0
  @0
  D=A
  @LCL
  D=M+D
  @R13
  M=D
  @SP
  AM=M-1
  D=M
  @R13
  A=M
  M=D

// label WHILE_EXP0
  (WHILE_EXP0)

// push LCL 0
  @0
  D=A
  @LCL
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push LCL 3
  @3
  D=A
  @LCL
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// lt
  @SP
  AM=M-1
  D=M
  A=A-1
  D=M-D
  @TRUE3415
  D;JLT
  @SP
  A=M-1
  M=0
  @CONTINUE3415
  0;JMP
(TRUE3415)
  @SP
  A=M-1
  M=-1
(CONTINUE3415)

// not
  @SP
  A=M-1
  M=!M

// if-goto WHILE_END0
  @SP
  AM=M-1
  D=M
  @WHILE_END0
  D;JNE

// push LCL 0
  @0
  D=A
  @LCL
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 1
  @1
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// neg
  @SP
  A=M-1
  M=-M

// call Screen.updateLocation 2
// push return address onto stack
  @Screen.updateLocation$ret.7
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's LCL to the stack
  @LCL
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's ARG to the stack
  @ARG
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's THIS to the stack
  @THIS
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's THAT to the stack
  @THAT
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// set the callee ARG to point at the first arg passed to the function
  @SP
  D=M
  @5
  D=D-A
  @2
  D=D-A
  @ARG
  M=D
// set the callee LCL point at the top of the stack
  @SP
  D=M
  @LCL
  M=D
// goto Screen.updateLocation
  @Screen.updateLocation
  0;JMP
// create return address label
(Screen.updateLocation$ret.7)

// pop TEMP 0
  @5
  D=A
  @TEMP
  D=M+D
  @R13
  M=D
  @SP
  AM=M-1
  D=M
  @R13
  A=M
  M=D

// push LCL 0
  @0
  D=A
  @LCL
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 1
  @1
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// add
  @SP
  AM=M-1
  D=M
  A=A-1
  M=M+D

// pop LCL 0
  @0
  D=A
  @LCL
  D=M+D
  @R13
  M=D
  @SP
  AM=M-1
  D=M
  @R13
  A=M
  M=D

// goto WHILE_EXP0
  @WHILE_EXP0
  0;JMP

// label WHILE_END0
  (WHILE_END0)

// push LCL 3
  @3
  D=A
  @LCL
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push LCL 4
  @4
  D=A
  @LCL
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// call Screen.updateLocation 2
// push return address onto stack
  @Screen.updateLocation$ret.8
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's LCL to the stack
  @LCL
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's ARG to the stack
  @ARG
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's THIS to the stack
  @THIS
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's THAT to the stack
  @THAT
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// set the callee ARG to point at the first arg passed to the function
  @SP
  D=M
  @5
  D=D-A
  @2
  D=D-A
  @ARG
  M=D
// set the callee LCL point at the top of the stack
  @SP
  D=M
  @LCL
  M=D
// goto Screen.updateLocation
  @Screen.updateLocation
  0;JMP
// create return address label
(Screen.updateLocation$ret.8)

// pop TEMP 0
  @5
  D=A
  @TEMP
  D=M+D
  @R13
  M=D
  @SP
  AM=M-1
  D=M
  @R13
  A=M
  M=D

// label IF_END1
  (IF_END1)

// label IF_FALSE0
  (IF_FALSE0)

// push constant 0
  @0
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// return
// Store the start of the local stack (i.e. 'frame') in a temp variable
  @LCL
  D=M
  @R13
  M=D
// Store the return address in a temp variable
  @5
  A=D-A
  D=M
  @R14
  M=D
// Store the return value in the first argument (i.e. top of caller stack)
  @SP
  AM=M-1
  D=M
  @ARG
  A=M
  M=D
// Restore the caller's stack pointer (one after the return value)
  @ARG
  D=M+1
  @SP
  M=D
// Restore the caller's THAT segment
  @R13
  AM=M-1
  D=M
  @THAT
  M=D
// Restore the caller's THIS segment
  @R13
  AM=M-1
  D=M
  @THIS
  M=D
// Restore the caller's ARG segment
  @R13
  AM=M-1
  D=M
  @ARG
  M=D
// Restore the caller's LCL segment
  @R13
  AM=M-1
  D=M
  @LCL
  M=D
// Jump to the return address
  @R14
  A=M
  0;JMP

// function Screen.drawSymetric 0
  (Screen.drawSymetric)

// push ARG 1
  @1
  D=A
  @ARG
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push ARG 3
  @3
  D=A
  @ARG
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// sub
  @SP
  AM=M-1
  D=M
  A=A-1
  M=M-D

// push ARG 0
  @0
  D=A
  @ARG
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push ARG 2
  @2
  D=A
  @ARG
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// add
  @SP
  AM=M-1
  D=M
  A=A-1
  M=M+D

// push ARG 0
  @0
  D=A
  @ARG
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push ARG 2
  @2
  D=A
  @ARG
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// sub
  @SP
  AM=M-1
  D=M
  A=A-1
  M=M-D

// call Screen.drawHorizontal 3
// push return address onto stack
  @Screen.drawHorizontal$ret.0
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's LCL to the stack
  @LCL
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's ARG to the stack
  @ARG
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's THIS to the stack
  @THIS
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's THAT to the stack
  @THAT
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// set the callee ARG to point at the first arg passed to the function
  @SP
  D=M
  @5
  D=D-A
  @3
  D=D-A
  @ARG
  M=D
// set the callee LCL point at the top of the stack
  @SP
  D=M
  @LCL
  M=D
// goto Screen.drawHorizontal
  @Screen.drawHorizontal
  0;JMP
// create return address label
(Screen.drawHorizontal$ret.0)

// pop TEMP 0
  @5
  D=A
  @TEMP
  D=M+D
  @R13
  M=D
  @SP
  AM=M-1
  D=M
  @R13
  A=M
  M=D

// push ARG 1
  @1
  D=A
  @ARG
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push ARG 3
  @3
  D=A
  @ARG
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// add
  @SP
  AM=M-1
  D=M
  A=A-1
  M=M+D

// push ARG 0
  @0
  D=A
  @ARG
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push ARG 2
  @2
  D=A
  @ARG
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// add
  @SP
  AM=M-1
  D=M
  A=A-1
  M=M+D

// push ARG 0
  @0
  D=A
  @ARG
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push ARG 2
  @2
  D=A
  @ARG
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// sub
  @SP
  AM=M-1
  D=M
  A=A-1
  M=M-D

// call Screen.drawHorizontal 3
// push return address onto stack
  @Screen.drawHorizontal$ret.1
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's LCL to the stack
  @LCL
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's ARG to the stack
  @ARG
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's THIS to the stack
  @THIS
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's THAT to the stack
  @THAT
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// set the callee ARG to point at the first arg passed to the function
  @SP
  D=M
  @5
  D=D-A
  @3
  D=D-A
  @ARG
  M=D
// set the callee LCL point at the top of the stack
  @SP
  D=M
  @LCL
  M=D
// goto Screen.drawHorizontal
  @Screen.drawHorizontal
  0;JMP
// create return address label
(Screen.drawHorizontal$ret.1)

// pop TEMP 0
  @5
  D=A
  @TEMP
  D=M+D
  @R13
  M=D
  @SP
  AM=M-1
  D=M
  @R13
  A=M
  M=D

// push ARG 1
  @1
  D=A
  @ARG
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push ARG 2
  @2
  D=A
  @ARG
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// sub
  @SP
  AM=M-1
  D=M
  A=A-1
  M=M-D

// push ARG 0
  @0
  D=A
  @ARG
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push ARG 3
  @3
  D=A
  @ARG
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// sub
  @SP
  AM=M-1
  D=M
  A=A-1
  M=M-D

// push ARG 0
  @0
  D=A
  @ARG
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push ARG 3
  @3
  D=A
  @ARG
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// add
  @SP
  AM=M-1
  D=M
  A=A-1
  M=M+D

// call Screen.drawHorizontal 3
// push return address onto stack
  @Screen.drawHorizontal$ret.2
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's LCL to the stack
  @LCL
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's ARG to the stack
  @ARG
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's THIS to the stack
  @THIS
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's THAT to the stack
  @THAT
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// set the callee ARG to point at the first arg passed to the function
  @SP
  D=M
  @5
  D=D-A
  @3
  D=D-A
  @ARG
  M=D
// set the callee LCL point at the top of the stack
  @SP
  D=M
  @LCL
  M=D
// goto Screen.drawHorizontal
  @Screen.drawHorizontal
  0;JMP
// create return address label
(Screen.drawHorizontal$ret.2)

// pop TEMP 0
  @5
  D=A
  @TEMP
  D=M+D
  @R13
  M=D
  @SP
  AM=M-1
  D=M
  @R13
  A=M
  M=D

// push ARG 1
  @1
  D=A
  @ARG
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push ARG 2
  @2
  D=A
  @ARG
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// add
  @SP
  AM=M-1
  D=M
  A=A-1
  M=M+D

// push ARG 0
  @0
  D=A
  @ARG
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push ARG 3
  @3
  D=A
  @ARG
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// sub
  @SP
  AM=M-1
  D=M
  A=A-1
  M=M-D

// push ARG 0
  @0
  D=A
  @ARG
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push ARG 3
  @3
  D=A
  @ARG
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// add
  @SP
  AM=M-1
  D=M
  A=A-1
  M=M+D

// call Screen.drawHorizontal 3
// push return address onto stack
  @Screen.drawHorizontal$ret.3
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's LCL to the stack
  @LCL
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's ARG to the stack
  @ARG
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's THIS to the stack
  @THIS
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's THAT to the stack
  @THAT
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// set the callee ARG to point at the first arg passed to the function
  @SP
  D=M
  @5
  D=D-A
  @3
  D=D-A
  @ARG
  M=D
// set the callee LCL point at the top of the stack
  @SP
  D=M
  @LCL
  M=D
// goto Screen.drawHorizontal
  @Screen.drawHorizontal
  0;JMP
// create return address label
(Screen.drawHorizontal$ret.3)

// pop TEMP 0
  @5
  D=A
  @TEMP
  D=M+D
  @R13
  M=D
  @SP
  AM=M-1
  D=M
  @R13
  A=M
  M=D

// push constant 0
  @0
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// return
// Store the start of the local stack (i.e. 'frame') in a temp variable
  @LCL
  D=M
  @R13
  M=D
// Store the return address in a temp variable
  @5
  A=D-A
  D=M
  @R14
  M=D
// Store the return value in the first argument (i.e. top of caller stack)
  @SP
  AM=M-1
  D=M
  @ARG
  A=M
  M=D
// Restore the caller's stack pointer (one after the return value)
  @ARG
  D=M+1
  @SP
  M=D
// Restore the caller's THAT segment
  @R13
  AM=M-1
  D=M
  @THAT
  M=D
// Restore the caller's THIS segment
  @R13
  AM=M-1
  D=M
  @THIS
  M=D
// Restore the caller's ARG segment
  @R13
  AM=M-1
  D=M
  @ARG
  M=D
// Restore the caller's LCL segment
  @R13
  AM=M-1
  D=M
  @LCL
  M=D
// Jump to the return address
  @R14
  A=M
  0;JMP

// function Screen.drawCircle 3
  (Screen.drawCircle)
  @SP
  A=M
  M=0
  @SP
  M=M+1
  @SP
  A=M
  M=0
  @SP
  M=M+1
  @SP
  A=M
  M=0
  @SP
  M=M+1

// push ARG 0
  @0
  D=A
  @ARG
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 0
  @0
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// lt
  @SP
  AM=M-1
  D=M
  A=A-1
  D=M-D
  @TRUE3487
  D;JLT
  @SP
  A=M-1
  M=0
  @CONTINUE3487
  0;JMP
(TRUE3487)
  @SP
  A=M-1
  M=-1
(CONTINUE3487)

// push ARG 0
  @0
  D=A
  @ARG
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 511
  @511
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// gt
  @SP
  AM=M-1
  D=M
  A=A-1
  D=M-D
  @TRUE3490
  D;JGT
  @SP
  A=M-1
  M=0
  @CONTINUE3490
  0;JMP
(TRUE3490)
  @SP
  A=M-1
  M=-1
(CONTINUE3490)

// or
  @SP
  AM=M-1
  D=M
  A=A-1
  M=M|D

// push ARG 1
  @1
  D=A
  @ARG
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 0
  @0
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// lt
  @SP
  AM=M-1
  D=M
  A=A-1
  D=M-D
  @TRUE3494
  D;JLT
  @SP
  A=M-1
  M=0
  @CONTINUE3494
  0;JMP
(TRUE3494)
  @SP
  A=M-1
  M=-1
(CONTINUE3494)

// or
  @SP
  AM=M-1
  D=M
  A=A-1
  M=M|D

// push ARG 1
  @1
  D=A
  @ARG
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 255
  @255
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// gt
  @SP
  AM=M-1
  D=M
  A=A-1
  D=M-D
  @TRUE3498
  D;JGT
  @SP
  A=M-1
  M=0
  @CONTINUE3498
  0;JMP
(TRUE3498)
  @SP
  A=M-1
  M=-1
(CONTINUE3498)

// or
  @SP
  AM=M-1
  D=M
  A=A-1
  M=M|D

// if-goto IF_TRUE0
  @SP
  AM=M-1
  D=M
  @IF_TRUE0
  D;JNE

// goto IF_FALSE0
  @IF_FALSE0
  0;JMP

// label IF_TRUE0
  (IF_TRUE0)

// push constant 12
  @12
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// call Sys.error 1
// push return address onto stack
  @Sys.error$ret.9
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's LCL to the stack
  @LCL
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's ARG to the stack
  @ARG
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's THIS to the stack
  @THIS
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's THAT to the stack
  @THAT
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// set the callee ARG to point at the first arg passed to the function
  @SP
  D=M
  @5
  D=D-A
  @1
  D=D-A
  @ARG
  M=D
// set the callee LCL point at the top of the stack
  @SP
  D=M
  @LCL
  M=D
// goto Sys.error
  @Sys.error
  0;JMP
// create return address label
(Sys.error$ret.9)

// pop TEMP 0
  @5
  D=A
  @TEMP
  D=M+D
  @R13
  M=D
  @SP
  AM=M-1
  D=M
  @R13
  A=M
  M=D

// label IF_FALSE0
  (IF_FALSE0)

// push ARG 0
  @0
  D=A
  @ARG
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push ARG 2
  @2
  D=A
  @ARG
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// sub
  @SP
  AM=M-1
  D=M
  A=A-1
  M=M-D

// push constant 0
  @0
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// lt
  @SP
  AM=M-1
  D=M
  A=A-1
  D=M-D
  @TRUE3511
  D;JLT
  @SP
  A=M-1
  M=0
  @CONTINUE3511
  0;JMP
(TRUE3511)
  @SP
  A=M-1
  M=-1
(CONTINUE3511)

// push ARG 0
  @0
  D=A
  @ARG
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push ARG 2
  @2
  D=A
  @ARG
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// add
  @SP
  AM=M-1
  D=M
  A=A-1
  M=M+D

// push constant 511
  @511
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// gt
  @SP
  AM=M-1
  D=M
  A=A-1
  D=M-D
  @TRUE3516
  D;JGT
  @SP
  A=M-1
  M=0
  @CONTINUE3516
  0;JMP
(TRUE3516)
  @SP
  A=M-1
  M=-1
(CONTINUE3516)

// or
  @SP
  AM=M-1
  D=M
  A=A-1
  M=M|D

// push ARG 1
  @1
  D=A
  @ARG
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push ARG 2
  @2
  D=A
  @ARG
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// sub
  @SP
  AM=M-1
  D=M
  A=A-1
  M=M-D

// push constant 0
  @0
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// lt
  @SP
  AM=M-1
  D=M
  A=A-1
  D=M-D
  @TRUE3522
  D;JLT
  @SP
  A=M-1
  M=0
  @CONTINUE3522
  0;JMP
(TRUE3522)
  @SP
  A=M-1
  M=-1
(CONTINUE3522)

// or
  @SP
  AM=M-1
  D=M
  A=A-1
  M=M|D

// push ARG 1
  @1
  D=A
  @ARG
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push ARG 2
  @2
  D=A
  @ARG
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// add
  @SP
  AM=M-1
  D=M
  A=A-1
  M=M+D

// push constant 255
  @255
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// gt
  @SP
  AM=M-1
  D=M
  A=A-1
  D=M-D
  @TRUE3528
  D;JGT
  @SP
  A=M-1
  M=0
  @CONTINUE3528
  0;JMP
(TRUE3528)
  @SP
  A=M-1
  M=-1
(CONTINUE3528)

// or
  @SP
  AM=M-1
  D=M
  A=A-1
  M=M|D

// if-goto IF_TRUE1
  @SP
  AM=M-1
  D=M
  @IF_TRUE1
  D;JNE

// goto IF_FALSE1
  @IF_FALSE1
  0;JMP

// label IF_TRUE1
  (IF_TRUE1)

// push constant 13
  @13
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// call Sys.error 1
// push return address onto stack
  @Sys.error$ret.10
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's LCL to the stack
  @LCL
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's ARG to the stack
  @ARG
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's THIS to the stack
  @THIS
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's THAT to the stack
  @THAT
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// set the callee ARG to point at the first arg passed to the function
  @SP
  D=M
  @5
  D=D-A
  @1
  D=D-A
  @ARG
  M=D
// set the callee LCL point at the top of the stack
  @SP
  D=M
  @LCL
  M=D
// goto Sys.error
  @Sys.error
  0;JMP
// create return address label
(Sys.error$ret.10)

// pop TEMP 0
  @5
  D=A
  @TEMP
  D=M+D
  @R13
  M=D
  @SP
  AM=M-1
  D=M
  @R13
  A=M
  M=D

// label IF_FALSE1
  (IF_FALSE1)

// push ARG 2
  @2
  D=A
  @ARG
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// pop LCL 1
  @1
  D=A
  @LCL
  D=M+D
  @R13
  M=D
  @SP
  AM=M-1
  D=M
  @R13
  A=M
  M=D

// push constant 1
  @1
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push ARG 2
  @2
  D=A
  @ARG
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// sub
  @SP
  AM=M-1
  D=M
  A=A-1
  M=M-D

// pop LCL 2
  @2
  D=A
  @LCL
  D=M+D
  @R13
  M=D
  @SP
  AM=M-1
  D=M
  @R13
  A=M
  M=D

// push ARG 0
  @0
  D=A
  @ARG
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push ARG 1
  @1
  D=A
  @ARG
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push LCL 0
  @0
  D=A
  @LCL
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push LCL 1
  @1
  D=A
  @LCL
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// call Screen.drawSymetric 4
// push return address onto stack
  @Screen.drawSymetric$ret.0
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's LCL to the stack
  @LCL
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's ARG to the stack
  @ARG
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's THIS to the stack
  @THIS
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's THAT to the stack
  @THAT
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// set the callee ARG to point at the first arg passed to the function
  @SP
  D=M
  @5
  D=D-A
  @4
  D=D-A
  @ARG
  M=D
// set the callee LCL point at the top of the stack
  @SP
  D=M
  @LCL
  M=D
// goto Screen.drawSymetric
  @Screen.drawSymetric
  0;JMP
// create return address label
(Screen.drawSymetric$ret.0)

// pop TEMP 0
  @5
  D=A
  @TEMP
  D=M+D
  @R13
  M=D
  @SP
  AM=M-1
  D=M
  @R13
  A=M
  M=D

// label WHILE_EXP0
  (WHILE_EXP0)

// push LCL 1
  @1
  D=A
  @LCL
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push LCL 0
  @0
  D=A
  @LCL
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// gt
  @SP
  AM=M-1
  D=M
  A=A-1
  D=M-D
  @TRUE3552
  D;JGT
  @SP
  A=M-1
  M=0
  @CONTINUE3552
  0;JMP
(TRUE3552)
  @SP
  A=M-1
  M=-1
(CONTINUE3552)

// not
  @SP
  A=M-1
  M=!M

// if-goto WHILE_END0
  @SP
  AM=M-1
  D=M
  @WHILE_END0
  D;JNE

// push LCL 2
  @2
  D=A
  @LCL
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 0
  @0
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// lt
  @SP
  AM=M-1
  D=M
  A=A-1
  D=M-D
  @TRUE3557
  D;JLT
  @SP
  A=M-1
  M=0
  @CONTINUE3557
  0;JMP
(TRUE3557)
  @SP
  A=M-1
  M=-1
(CONTINUE3557)

// if-goto IF_TRUE2
  @SP
  AM=M-1
  D=M
  @IF_TRUE2
  D;JNE

// goto IF_FALSE2
  @IF_FALSE2
  0;JMP

// label IF_TRUE2
  (IF_TRUE2)

// push LCL 2
  @2
  D=A
  @LCL
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 2
  @2
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push LCL 0
  @0
  D=A
  @LCL
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// call Math.multiply 2
// push return address onto stack
  @Math.multiply$ret.15
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's LCL to the stack
  @LCL
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's ARG to the stack
  @ARG
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's THIS to the stack
  @THIS
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's THAT to the stack
  @THAT
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// set the callee ARG to point at the first arg passed to the function
  @SP
  D=M
  @5
  D=D-A
  @2
  D=D-A
  @ARG
  M=D
// set the callee LCL point at the top of the stack
  @SP
  D=M
  @LCL
  M=D
// goto Math.multiply
  @Math.multiply
  0;JMP
// create return address label
(Math.multiply$ret.15)

// add
  @SP
  AM=M-1
  D=M
  A=A-1
  M=M+D

// push constant 3
  @3
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// add
  @SP
  AM=M-1
  D=M
  A=A-1
  M=M+D

// pop LCL 2
  @2
  D=A
  @LCL
  D=M+D
  @R13
  M=D
  @SP
  AM=M-1
  D=M
  @R13
  A=M
  M=D

// goto IF_END2
  @IF_END2
  0;JMP

// label IF_FALSE2
  (IF_FALSE2)

// push LCL 2
  @2
  D=A
  @LCL
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 2
  @2
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push LCL 0
  @0
  D=A
  @LCL
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push LCL 1
  @1
  D=A
  @LCL
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// sub
  @SP
  AM=M-1
  D=M
  A=A-1
  M=M-D

// call Math.multiply 2
// push return address onto stack
  @Math.multiply$ret.16
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's LCL to the stack
  @LCL
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's ARG to the stack
  @ARG
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's THIS to the stack
  @THIS
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's THAT to the stack
  @THAT
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// set the callee ARG to point at the first arg passed to the function
  @SP
  D=M
  @5
  D=D-A
  @2
  D=D-A
  @ARG
  M=D
// set the callee LCL point at the top of the stack
  @SP
  D=M
  @LCL
  M=D
// goto Math.multiply
  @Math.multiply
  0;JMP
// create return address label
(Math.multiply$ret.16)

// add
  @SP
  AM=M-1
  D=M
  A=A-1
  M=M+D

// push constant 5
  @5
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// add
  @SP
  AM=M-1
  D=M
  A=A-1
  M=M+D

// pop LCL 2
  @2
  D=A
  @LCL
  D=M+D
  @R13
  M=D
  @SP
  AM=M-1
  D=M
  @R13
  A=M
  M=D

// push LCL 1
  @1
  D=A
  @LCL
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 1
  @1
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// sub
  @SP
  AM=M-1
  D=M
  A=A-1
  M=M-D

// pop LCL 1
  @1
  D=A
  @LCL
  D=M+D
  @R13
  M=D
  @SP
  AM=M-1
  D=M
  @R13
  A=M
  M=D

// label IF_END2
  (IF_END2)

// push LCL 0
  @0
  D=A
  @LCL
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 1
  @1
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// add
  @SP
  AM=M-1
  D=M
  A=A-1
  M=M+D

// pop LCL 0
  @0
  D=A
  @LCL
  D=M+D
  @R13
  M=D
  @SP
  AM=M-1
  D=M
  @R13
  A=M
  M=D

// push ARG 0
  @0
  D=A
  @ARG
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push ARG 1
  @1
  D=A
  @ARG
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push LCL 0
  @0
  D=A
  @LCL
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push LCL 1
  @1
  D=A
  @LCL
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// call Screen.drawSymetric 4
// push return address onto stack
  @Screen.drawSymetric$ret.1
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's LCL to the stack
  @LCL
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's ARG to the stack
  @ARG
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's THIS to the stack
  @THIS
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's THAT to the stack
  @THAT
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// set the callee ARG to point at the first arg passed to the function
  @SP
  D=M
  @5
  D=D-A
  @4
  D=D-A
  @ARG
  M=D
// set the callee LCL point at the top of the stack
  @SP
  D=M
  @LCL
  M=D
// goto Screen.drawSymetric
  @Screen.drawSymetric
  0;JMP
// create return address label
(Screen.drawSymetric$ret.1)

// pop TEMP 0
  @5
  D=A
  @TEMP
  D=M+D
  @R13
  M=D
  @SP
  AM=M-1
  D=M
  @R13
  A=M
  M=D

// goto WHILE_EXP0
  @WHILE_EXP0
  0;JMP

// label WHILE_END0
  (WHILE_END0)

// push constant 0
  @0
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// return
// Store the start of the local stack (i.e. 'frame') in a temp variable
  @LCL
  D=M
  @R13
  M=D
// Store the return address in a temp variable
  @5
  A=D-A
  D=M
  @R14
  M=D
// Store the return value in the first argument (i.e. top of caller stack)
  @SP
  AM=M-1
  D=M
  @ARG
  A=M
  M=D
// Restore the caller's stack pointer (one after the return value)
  @ARG
  D=M+1
  @SP
  M=D
// Restore the caller's THAT segment
  @R13
  AM=M-1
  D=M
  @THAT
  M=D
// Restore the caller's THIS segment
  @R13
  AM=M-1
  D=M
  @THIS
  M=D
// Restore the caller's ARG segment
  @R13
  AM=M-1
  D=M
  @ARG
  M=D
// Restore the caller's LCL segment
  @R13
  AM=M-1
  D=M
  @LCL
  M=D
// Jump to the return address
  @R14
  A=M
  0;JMP

// function String.new 0
  (String.new)

// push constant 3
  @3
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// call Memory.alloc 1
// push return address onto stack
  @Memory.alloc$ret.1
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's LCL to the stack
  @LCL
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's ARG to the stack
  @ARG
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's THIS to the stack
  @THIS
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's THAT to the stack
  @THAT
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// set the callee ARG to point at the first arg passed to the function
  @SP
  D=M
  @5
  D=D-A
  @1
  D=D-A
  @ARG
  M=D
// set the callee LCL point at the top of the stack
  @SP
  D=M
  @LCL
  M=D
// goto Memory.alloc
  @Memory.alloc
  0;JMP
// create return address label
(Memory.alloc$ret.1)

// pop pointer 0
  @SP
  AM=M-1
  D=M
  @THIS
  M=D

// push ARG 0
  @0
  D=A
  @ARG
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 0
  @0
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// lt
  @SP
  AM=M-1
  D=M
  A=A-1
  D=M-D
  @TRUE3606
  D;JLT
  @SP
  A=M-1
  M=0
  @CONTINUE3606
  0;JMP
(TRUE3606)
  @SP
  A=M-1
  M=-1
(CONTINUE3606)

// if-goto IF_TRUE0
  @SP
  AM=M-1
  D=M
  @IF_TRUE0
  D;JNE

// goto IF_FALSE0
  @IF_FALSE0
  0;JMP

// label IF_TRUE0
  (IF_TRUE0)

// push constant 14
  @14
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// call Sys.error 1
// push return address onto stack
  @Sys.error$ret.11
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's LCL to the stack
  @LCL
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's ARG to the stack
  @ARG
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's THIS to the stack
  @THIS
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's THAT to the stack
  @THAT
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// set the callee ARG to point at the first arg passed to the function
  @SP
  D=M
  @5
  D=D-A
  @1
  D=D-A
  @ARG
  M=D
// set the callee LCL point at the top of the stack
  @SP
  D=M
  @LCL
  M=D
// goto Sys.error
  @Sys.error
  0;JMP
// create return address label
(Sys.error$ret.11)

// pop TEMP 0
  @5
  D=A
  @TEMP
  D=M+D
  @R13
  M=D
  @SP
  AM=M-1
  D=M
  @R13
  A=M
  M=D

// label IF_FALSE0
  (IF_FALSE0)

// push ARG 0
  @0
  D=A
  @ARG
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 0
  @0
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// gt
  @SP
  AM=M-1
  D=M
  A=A-1
  D=M-D
  @TRUE3616
  D;JGT
  @SP
  A=M-1
  M=0
  @CONTINUE3616
  0;JMP
(TRUE3616)
  @SP
  A=M-1
  M=-1
(CONTINUE3616)

// if-goto IF_TRUE1
  @SP
  AM=M-1
  D=M
  @IF_TRUE1
  D;JNE

// goto IF_FALSE1
  @IF_FALSE1
  0;JMP

// label IF_TRUE1
  (IF_TRUE1)

// push ARG 0
  @0
  D=A
  @ARG
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// call Array.new 1
// push return address onto stack
  @Array.new$ret.7
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's LCL to the stack
  @LCL
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's ARG to the stack
  @ARG
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's THIS to the stack
  @THIS
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's THAT to the stack
  @THAT
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// set the callee ARG to point at the first arg passed to the function
  @SP
  D=M
  @5
  D=D-A
  @1
  D=D-A
  @ARG
  M=D
// set the callee LCL point at the top of the stack
  @SP
  D=M
  @LCL
  M=D
// goto Array.new
  @Array.new
  0;JMP
// create return address label
(Array.new$ret.7)

// pop THIS 1
  @1
  D=A
  @THIS
  D=M+D
  @R13
  M=D
  @SP
  AM=M-1
  D=M
  @R13
  A=M
  M=D

// label IF_FALSE1
  (IF_FALSE1)

// push ARG 0
  @0
  D=A
  @ARG
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// pop THIS 0
  @0
  D=A
  @THIS
  D=M+D
  @R13
  M=D
  @SP
  AM=M-1
  D=M
  @R13
  A=M
  M=D

// push constant 0
  @0
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// pop THIS 2
  @2
  D=A
  @THIS
  D=M+D
  @R13
  M=D
  @SP
  AM=M-1
  D=M
  @R13
  A=M
  M=D

// push pointer 0
  @THIS
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// return
// Store the start of the local stack (i.e. 'frame') in a temp variable
  @LCL
  D=M
  @R13
  M=D
// Store the return address in a temp variable
  @5
  A=D-A
  D=M
  @R14
  M=D
// Store the return value in the first argument (i.e. top of caller stack)
  @SP
  AM=M-1
  D=M
  @ARG
  A=M
  M=D
// Restore the caller's stack pointer (one after the return value)
  @ARG
  D=M+1
  @SP
  M=D
// Restore the caller's THAT segment
  @R13
  AM=M-1
  D=M
  @THAT
  M=D
// Restore the caller's THIS segment
  @R13
  AM=M-1
  D=M
  @THIS
  M=D
// Restore the caller's ARG segment
  @R13
  AM=M-1
  D=M
  @ARG
  M=D
// Restore the caller's LCL segment
  @R13
  AM=M-1
  D=M
  @LCL
  M=D
// Jump to the return address
  @R14
  A=M
  0;JMP

// function String.dispose 0
  (String.dispose)

// push ARG 0
  @0
  D=A
  @ARG
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// pop pointer 0
  @SP
  AM=M-1
  D=M
  @THIS
  M=D

// push THIS 0
  @0
  D=A
  @THIS
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 0
  @0
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// gt
  @SP
  AM=M-1
  D=M
  A=A-1
  D=M-D
  @TRUE3635
  D;JGT
  @SP
  A=M-1
  M=0
  @CONTINUE3635
  0;JMP
(TRUE3635)
  @SP
  A=M-1
  M=-1
(CONTINUE3635)

// if-goto IF_TRUE0
  @SP
  AM=M-1
  D=M
  @IF_TRUE0
  D;JNE

// goto IF_FALSE0
  @IF_FALSE0
  0;JMP

// label IF_TRUE0
  (IF_TRUE0)

// push THIS 1
  @1
  D=A
  @THIS
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// call Array.dispose 1
// push return address onto stack
  @Array.dispose$ret.0
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's LCL to the stack
  @LCL
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's ARG to the stack
  @ARG
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's THIS to the stack
  @THIS
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's THAT to the stack
  @THAT
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// set the callee ARG to point at the first arg passed to the function
  @SP
  D=M
  @5
  D=D-A
  @1
  D=D-A
  @ARG
  M=D
// set the callee LCL point at the top of the stack
  @SP
  D=M
  @LCL
  M=D
// goto Array.dispose
  @Array.dispose
  0;JMP
// create return address label
(Array.dispose$ret.0)

// pop TEMP 0
  @5
  D=A
  @TEMP
  D=M+D
  @R13
  M=D
  @SP
  AM=M-1
  D=M
  @R13
  A=M
  M=D

// label IF_FALSE0
  (IF_FALSE0)

// push pointer 0
  @THIS
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// call Memory.deAlloc 1
// push return address onto stack
  @Memory.deAlloc$ret.1
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's LCL to the stack
  @LCL
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's ARG to the stack
  @ARG
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's THIS to the stack
  @THIS
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's THAT to the stack
  @THAT
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// set the callee ARG to point at the first arg passed to the function
  @SP
  D=M
  @5
  D=D-A
  @1
  D=D-A
  @ARG
  M=D
// set the callee LCL point at the top of the stack
  @SP
  D=M
  @LCL
  M=D
// goto Memory.deAlloc
  @Memory.deAlloc
  0;JMP
// create return address label
(Memory.deAlloc$ret.1)

// pop TEMP 0
  @5
  D=A
  @TEMP
  D=M+D
  @R13
  M=D
  @SP
  AM=M-1
  D=M
  @R13
  A=M
  M=D

// push constant 0
  @0
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// return
// Store the start of the local stack (i.e. 'frame') in a temp variable
  @LCL
  D=M
  @R13
  M=D
// Store the return address in a temp variable
  @5
  A=D-A
  D=M
  @R14
  M=D
// Store the return value in the first argument (i.e. top of caller stack)
  @SP
  AM=M-1
  D=M
  @ARG
  A=M
  M=D
// Restore the caller's stack pointer (one after the return value)
  @ARG
  D=M+1
  @SP
  M=D
// Restore the caller's THAT segment
  @R13
  AM=M-1
  D=M
  @THAT
  M=D
// Restore the caller's THIS segment
  @R13
  AM=M-1
  D=M
  @THIS
  M=D
// Restore the caller's ARG segment
  @R13
  AM=M-1
  D=M
  @ARG
  M=D
// Restore the caller's LCL segment
  @R13
  AM=M-1
  D=M
  @LCL
  M=D
// Jump to the return address
  @R14
  A=M
  0;JMP

// function String.length 0
  (String.length)

// push ARG 0
  @0
  D=A
  @ARG
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// pop pointer 0
  @SP
  AM=M-1
  D=M
  @THIS
  M=D

// push THIS 2
  @2
  D=A
  @THIS
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// return
// Store the start of the local stack (i.e. 'frame') in a temp variable
  @LCL
  D=M
  @R13
  M=D
// Store the return address in a temp variable
  @5
  A=D-A
  D=M
  @R14
  M=D
// Store the return value in the first argument (i.e. top of caller stack)
  @SP
  AM=M-1
  D=M
  @ARG
  A=M
  M=D
// Restore the caller's stack pointer (one after the return value)
  @ARG
  D=M+1
  @SP
  M=D
// Restore the caller's THAT segment
  @R13
  AM=M-1
  D=M
  @THAT
  M=D
// Restore the caller's THIS segment
  @R13
  AM=M-1
  D=M
  @THIS
  M=D
// Restore the caller's ARG segment
  @R13
  AM=M-1
  D=M
  @ARG
  M=D
// Restore the caller's LCL segment
  @R13
  AM=M-1
  D=M
  @LCL
  M=D
// Jump to the return address
  @R14
  A=M
  0;JMP

// function String.charAt 0
  (String.charAt)

// push ARG 0
  @0
  D=A
  @ARG
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// pop pointer 0
  @SP
  AM=M-1
  D=M
  @THIS
  M=D

// push ARG 1
  @1
  D=A
  @ARG
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 0
  @0
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// lt
  @SP
  AM=M-1
  D=M
  A=A-1
  D=M-D
  @TRUE3658
  D;JLT
  @SP
  A=M-1
  M=0
  @CONTINUE3658
  0;JMP
(TRUE3658)
  @SP
  A=M-1
  M=-1
(CONTINUE3658)

// push ARG 1
  @1
  D=A
  @ARG
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push THIS 2
  @2
  D=A
  @THIS
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// gt
  @SP
  AM=M-1
  D=M
  A=A-1
  D=M-D
  @TRUE3661
  D;JGT
  @SP
  A=M-1
  M=0
  @CONTINUE3661
  0;JMP
(TRUE3661)
  @SP
  A=M-1
  M=-1
(CONTINUE3661)

// or
  @SP
  AM=M-1
  D=M
  A=A-1
  M=M|D

// push ARG 1
  @1
  D=A
  @ARG
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push THIS 2
  @2
  D=A
  @THIS
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// eq
  @SP
  AM=M-1
  D=M
  A=A-1
  D=M-D
  @TRUE3665
  D;JEQ
  @SP
  A=M-1
  M=0
  @CONTINUE3665
  0;JMP
(TRUE3665)
  @SP
  A=M-1
  M=-1
(CONTINUE3665)

// or
  @SP
  AM=M-1
  D=M
  A=A-1
  M=M|D

// if-goto IF_TRUE0
  @SP
  AM=M-1
  D=M
  @IF_TRUE0
  D;JNE

// goto IF_FALSE0
  @IF_FALSE0
  0;JMP

// label IF_TRUE0
  (IF_TRUE0)

// push constant 15
  @15
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// call Sys.error 1
// push return address onto stack
  @Sys.error$ret.12
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's LCL to the stack
  @LCL
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's ARG to the stack
  @ARG
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's THIS to the stack
  @THIS
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's THAT to the stack
  @THAT
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// set the callee ARG to point at the first arg passed to the function
  @SP
  D=M
  @5
  D=D-A
  @1
  D=D-A
  @ARG
  M=D
// set the callee LCL point at the top of the stack
  @SP
  D=M
  @LCL
  M=D
// goto Sys.error
  @Sys.error
  0;JMP
// create return address label
(Sys.error$ret.12)

// pop TEMP 0
  @5
  D=A
  @TEMP
  D=M+D
  @R13
  M=D
  @SP
  AM=M-1
  D=M
  @R13
  A=M
  M=D

// label IF_FALSE0
  (IF_FALSE0)

// push ARG 1
  @1
  D=A
  @ARG
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push THIS 1
  @1
  D=A
  @THIS
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// add
  @SP
  AM=M-1
  D=M
  A=A-1
  M=M+D

// pop pointer 1
  @SP
  AM=M-1
  D=M
  @THAT
  M=D

// push THAT 0
  @0
  D=A
  @THAT
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// return
// Store the start of the local stack (i.e. 'frame') in a temp variable
  @LCL
  D=M
  @R13
  M=D
// Store the return address in a temp variable
  @5
  A=D-A
  D=M
  @R14
  M=D
// Store the return value in the first argument (i.e. top of caller stack)
  @SP
  AM=M-1
  D=M
  @ARG
  A=M
  M=D
// Restore the caller's stack pointer (one after the return value)
  @ARG
  D=M+1
  @SP
  M=D
// Restore the caller's THAT segment
  @R13
  AM=M-1
  D=M
  @THAT
  M=D
// Restore the caller's THIS segment
  @R13
  AM=M-1
  D=M
  @THIS
  M=D
// Restore the caller's ARG segment
  @R13
  AM=M-1
  D=M
  @ARG
  M=D
// Restore the caller's LCL segment
  @R13
  AM=M-1
  D=M
  @LCL
  M=D
// Jump to the return address
  @R14
  A=M
  0;JMP

// function String.setCharAt 0
  (String.setCharAt)

// push ARG 0
  @0
  D=A
  @ARG
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// pop pointer 0
  @SP
  AM=M-1
  D=M
  @THIS
  M=D

// push ARG 1
  @1
  D=A
  @ARG
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 0
  @0
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// lt
  @SP
  AM=M-1
  D=M
  A=A-1
  D=M-D
  @TRUE3685
  D;JLT
  @SP
  A=M-1
  M=0
  @CONTINUE3685
  0;JMP
(TRUE3685)
  @SP
  A=M-1
  M=-1
(CONTINUE3685)

// push ARG 1
  @1
  D=A
  @ARG
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push THIS 2
  @2
  D=A
  @THIS
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// gt
  @SP
  AM=M-1
  D=M
  A=A-1
  D=M-D
  @TRUE3688
  D;JGT
  @SP
  A=M-1
  M=0
  @CONTINUE3688
  0;JMP
(TRUE3688)
  @SP
  A=M-1
  M=-1
(CONTINUE3688)

// or
  @SP
  AM=M-1
  D=M
  A=A-1
  M=M|D

// push ARG 1
  @1
  D=A
  @ARG
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push THIS 2
  @2
  D=A
  @THIS
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// eq
  @SP
  AM=M-1
  D=M
  A=A-1
  D=M-D
  @TRUE3692
  D;JEQ
  @SP
  A=M-1
  M=0
  @CONTINUE3692
  0;JMP
(TRUE3692)
  @SP
  A=M-1
  M=-1
(CONTINUE3692)

// or
  @SP
  AM=M-1
  D=M
  A=A-1
  M=M|D

// if-goto IF_TRUE0
  @SP
  AM=M-1
  D=M
  @IF_TRUE0
  D;JNE

// goto IF_FALSE0
  @IF_FALSE0
  0;JMP

// label IF_TRUE0
  (IF_TRUE0)

// push constant 16
  @16
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// call Sys.error 1
// push return address onto stack
  @Sys.error$ret.13
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's LCL to the stack
  @LCL
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's ARG to the stack
  @ARG
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's THIS to the stack
  @THIS
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's THAT to the stack
  @THAT
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// set the callee ARG to point at the first arg passed to the function
  @SP
  D=M
  @5
  D=D-A
  @1
  D=D-A
  @ARG
  M=D
// set the callee LCL point at the top of the stack
  @SP
  D=M
  @LCL
  M=D
// goto Sys.error
  @Sys.error
  0;JMP
// create return address label
(Sys.error$ret.13)

// pop TEMP 0
  @5
  D=A
  @TEMP
  D=M+D
  @R13
  M=D
  @SP
  AM=M-1
  D=M
  @R13
  A=M
  M=D

// label IF_FALSE0
  (IF_FALSE0)

// push ARG 1
  @1
  D=A
  @ARG
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push THIS 1
  @1
  D=A
  @THIS
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// add
  @SP
  AM=M-1
  D=M
  A=A-1
  M=M+D

// push ARG 2
  @2
  D=A
  @ARG
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// pop TEMP 0
  @5
  D=A
  @TEMP
  D=M+D
  @R13
  M=D
  @SP
  AM=M-1
  D=M
  @R13
  A=M
  M=D

// pop pointer 1
  @SP
  AM=M-1
  D=M
  @THAT
  M=D

// push TEMP 0
  @5
  D=A
  @TEMP
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// pop THAT 0
  @0
  D=A
  @THAT
  D=M+D
  @R13
  M=D
  @SP
  AM=M-1
  D=M
  @R13
  A=M
  M=D

// push constant 0
  @0
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// return
// Store the start of the local stack (i.e. 'frame') in a temp variable
  @LCL
  D=M
  @R13
  M=D
// Store the return address in a temp variable
  @5
  A=D-A
  D=M
  @R14
  M=D
// Store the return value in the first argument (i.e. top of caller stack)
  @SP
  AM=M-1
  D=M
  @ARG
  A=M
  M=D
// Restore the caller's stack pointer (one after the return value)
  @ARG
  D=M+1
  @SP
  M=D
// Restore the caller's THAT segment
  @R13
  AM=M-1
  D=M
  @THAT
  M=D
// Restore the caller's THIS segment
  @R13
  AM=M-1
  D=M
  @THIS
  M=D
// Restore the caller's ARG segment
  @R13
  AM=M-1
  D=M
  @ARG
  M=D
// Restore the caller's LCL segment
  @R13
  AM=M-1
  D=M
  @LCL
  M=D
// Jump to the return address
  @R14
  A=M
  0;JMP

// function String.appendChar 0
  (String.appendChar)

// push ARG 0
  @0
  D=A
  @ARG
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// pop pointer 0
  @SP
  AM=M-1
  D=M
  @THIS
  M=D

// push THIS 2
  @2
  D=A
  @THIS
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push THIS 0
  @0
  D=A
  @THIS
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// eq
  @SP
  AM=M-1
  D=M
  A=A-1
  D=M-D
  @TRUE3716
  D;JEQ
  @SP
  A=M-1
  M=0
  @CONTINUE3716
  0;JMP
(TRUE3716)
  @SP
  A=M-1
  M=-1
(CONTINUE3716)

// if-goto IF_TRUE0
  @SP
  AM=M-1
  D=M
  @IF_TRUE0
  D;JNE

// goto IF_FALSE0
  @IF_FALSE0
  0;JMP

// label IF_TRUE0
  (IF_TRUE0)

// push constant 17
  @17
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// call Sys.error 1
// push return address onto stack
  @Sys.error$ret.14
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's LCL to the stack
  @LCL
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's ARG to the stack
  @ARG
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's THIS to the stack
  @THIS
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's THAT to the stack
  @THAT
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// set the callee ARG to point at the first arg passed to the function
  @SP
  D=M
  @5
  D=D-A
  @1
  D=D-A
  @ARG
  M=D
// set the callee LCL point at the top of the stack
  @SP
  D=M
  @LCL
  M=D
// goto Sys.error
  @Sys.error
  0;JMP
// create return address label
(Sys.error$ret.14)

// pop TEMP 0
  @5
  D=A
  @TEMP
  D=M+D
  @R13
  M=D
  @SP
  AM=M-1
  D=M
  @R13
  A=M
  M=D

// label IF_FALSE0
  (IF_FALSE0)

// push THIS 2
  @2
  D=A
  @THIS
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push THIS 1
  @1
  D=A
  @THIS
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// add
  @SP
  AM=M-1
  D=M
  A=A-1
  M=M+D

// push ARG 1
  @1
  D=A
  @ARG
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// pop TEMP 0
  @5
  D=A
  @TEMP
  D=M+D
  @R13
  M=D
  @SP
  AM=M-1
  D=M
  @R13
  A=M
  M=D

// pop pointer 1
  @SP
  AM=M-1
  D=M
  @THAT
  M=D

// push TEMP 0
  @5
  D=A
  @TEMP
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// pop THAT 0
  @0
  D=A
  @THAT
  D=M+D
  @R13
  M=D
  @SP
  AM=M-1
  D=M
  @R13
  A=M
  M=D

// push THIS 2
  @2
  D=A
  @THIS
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 1
  @1
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// add
  @SP
  AM=M-1
  D=M
  A=A-1
  M=M+D

// pop THIS 2
  @2
  D=A
  @THIS
  D=M+D
  @R13
  M=D
  @SP
  AM=M-1
  D=M
  @R13
  A=M
  M=D

// push pointer 0
  @THIS
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// return
// Store the start of the local stack (i.e. 'frame') in a temp variable
  @LCL
  D=M
  @R13
  M=D
// Store the return address in a temp variable
  @5
  A=D-A
  D=M
  @R14
  M=D
// Store the return value in the first argument (i.e. top of caller stack)
  @SP
  AM=M-1
  D=M
  @ARG
  A=M
  M=D
// Restore the caller's stack pointer (one after the return value)
  @ARG
  D=M+1
  @SP
  M=D
// Restore the caller's THAT segment
  @R13
  AM=M-1
  D=M
  @THAT
  M=D
// Restore the caller's THIS segment
  @R13
  AM=M-1
  D=M
  @THIS
  M=D
// Restore the caller's ARG segment
  @R13
  AM=M-1
  D=M
  @ARG
  M=D
// Restore the caller's LCL segment
  @R13
  AM=M-1
  D=M
  @LCL
  M=D
// Jump to the return address
  @R14
  A=M
  0;JMP

// function String.eraseLastChar 0
  (String.eraseLastChar)

// push ARG 0
  @0
  D=A
  @ARG
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// pop pointer 0
  @SP
  AM=M-1
  D=M
  @THIS
  M=D

// push THIS 2
  @2
  D=A
  @THIS
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 0
  @0
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// eq
  @SP
  AM=M-1
  D=M
  A=A-1
  D=M-D
  @TRUE3743
  D;JEQ
  @SP
  A=M-1
  M=0
  @CONTINUE3743
  0;JMP
(TRUE3743)
  @SP
  A=M-1
  M=-1
(CONTINUE3743)

// if-goto IF_TRUE0
  @SP
  AM=M-1
  D=M
  @IF_TRUE0
  D;JNE

// goto IF_FALSE0
  @IF_FALSE0
  0;JMP

// label IF_TRUE0
  (IF_TRUE0)

// push constant 18
  @18
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// call Sys.error 1
// push return address onto stack
  @Sys.error$ret.15
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's LCL to the stack
  @LCL
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's ARG to the stack
  @ARG
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's THIS to the stack
  @THIS
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's THAT to the stack
  @THAT
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// set the callee ARG to point at the first arg passed to the function
  @SP
  D=M
  @5
  D=D-A
  @1
  D=D-A
  @ARG
  M=D
// set the callee LCL point at the top of the stack
  @SP
  D=M
  @LCL
  M=D
// goto Sys.error
  @Sys.error
  0;JMP
// create return address label
(Sys.error$ret.15)

// pop TEMP 0
  @5
  D=A
  @TEMP
  D=M+D
  @R13
  M=D
  @SP
  AM=M-1
  D=M
  @R13
  A=M
  M=D

// label IF_FALSE0
  (IF_FALSE0)

// push THIS 2
  @2
  D=A
  @THIS
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 1
  @1
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// sub
  @SP
  AM=M-1
  D=M
  A=A-1
  M=M-D

// pop THIS 2
  @2
  D=A
  @THIS
  D=M+D
  @R13
  M=D
  @SP
  AM=M-1
  D=M
  @R13
  A=M
  M=D

// push constant 0
  @0
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// return
// Store the start of the local stack (i.e. 'frame') in a temp variable
  @LCL
  D=M
  @R13
  M=D
// Store the return address in a temp variable
  @5
  A=D-A
  D=M
  @R14
  M=D
// Store the return value in the first argument (i.e. top of caller stack)
  @SP
  AM=M-1
  D=M
  @ARG
  A=M
  M=D
// Restore the caller's stack pointer (one after the return value)
  @ARG
  D=M+1
  @SP
  M=D
// Restore the caller's THAT segment
  @R13
  AM=M-1
  D=M
  @THAT
  M=D
// Restore the caller's THIS segment
  @R13
  AM=M-1
  D=M
  @THIS
  M=D
// Restore the caller's ARG segment
  @R13
  AM=M-1
  D=M
  @ARG
  M=D
// Restore the caller's LCL segment
  @R13
  AM=M-1
  D=M
  @LCL
  M=D
// Jump to the return address
  @R14
  A=M
  0;JMP

// function String.intValue 5
  (String.intValue)
  @SP
  A=M
  M=0
  @SP
  M=M+1
  @SP
  A=M
  M=0
  @SP
  M=M+1
  @SP
  A=M
  M=0
  @SP
  M=M+1
  @SP
  A=M
  M=0
  @SP
  M=M+1
  @SP
  A=M
  M=0
  @SP
  M=M+1

// push ARG 0
  @0
  D=A
  @ARG
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// pop pointer 0
  @SP
  AM=M-1
  D=M
  @THIS
  M=D

// push THIS 2
  @2
  D=A
  @THIS
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 0
  @0
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// eq
  @SP
  AM=M-1
  D=M
  A=A-1
  D=M-D
  @TRUE3762
  D;JEQ
  @SP
  A=M-1
  M=0
  @CONTINUE3762
  0;JMP
(TRUE3762)
  @SP
  A=M-1
  M=-1
(CONTINUE3762)

// if-goto IF_TRUE0
  @SP
  AM=M-1
  D=M
  @IF_TRUE0
  D;JNE

// goto IF_FALSE0
  @IF_FALSE0
  0;JMP

// label IF_TRUE0
  (IF_TRUE0)

// push constant 0
  @0
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// return
// Store the start of the local stack (i.e. 'frame') in a temp variable
  @LCL
  D=M
  @R13
  M=D
// Store the return address in a temp variable
  @5
  A=D-A
  D=M
  @R14
  M=D
// Store the return value in the first argument (i.e. top of caller stack)
  @SP
  AM=M-1
  D=M
  @ARG
  A=M
  M=D
// Restore the caller's stack pointer (one after the return value)
  @ARG
  D=M+1
  @SP
  M=D
// Restore the caller's THAT segment
  @R13
  AM=M-1
  D=M
  @THAT
  M=D
// Restore the caller's THIS segment
  @R13
  AM=M-1
  D=M
  @THIS
  M=D
// Restore the caller's ARG segment
  @R13
  AM=M-1
  D=M
  @ARG
  M=D
// Restore the caller's LCL segment
  @R13
  AM=M-1
  D=M
  @LCL
  M=D
// Jump to the return address
  @R14
  A=M
  0;JMP

// label IF_FALSE0
  (IF_FALSE0)

// push constant 0
  @0
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// not
  @SP
  A=M-1
  M=!M

// pop LCL 3
  @3
  D=A
  @LCL
  D=M+D
  @R13
  M=D
  @SP
  AM=M-1
  D=M
  @R13
  A=M
  M=D

// push constant 0
  @0
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push THIS 1
  @1
  D=A
  @THIS
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// add
  @SP
  AM=M-1
  D=M
  A=A-1
  M=M+D

// pop pointer 1
  @SP
  AM=M-1
  D=M
  @THAT
  M=D

// push THAT 0
  @0
  D=A
  @THAT
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 45
  @45
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// eq
  @SP
  AM=M-1
  D=M
  A=A-1
  D=M-D
  @TRUE3778
  D;JEQ
  @SP
  A=M-1
  M=0
  @CONTINUE3778
  0;JMP
(TRUE3778)
  @SP
  A=M-1
  M=-1
(CONTINUE3778)

// if-goto IF_TRUE1
  @SP
  AM=M-1
  D=M
  @IF_TRUE1
  D;JNE

// goto IF_FALSE1
  @IF_FALSE1
  0;JMP

// label IF_TRUE1
  (IF_TRUE1)

// push constant 0
  @0
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// not
  @SP
  A=M-1
  M=!M

// pop LCL 4
  @4
  D=A
  @LCL
  D=M+D
  @R13
  M=D
  @SP
  AM=M-1
  D=M
  @R13
  A=M
  M=D

// push constant 1
  @1
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// pop LCL 0
  @0
  D=A
  @LCL
  D=M+D
  @R13
  M=D
  @SP
  AM=M-1
  D=M
  @R13
  A=M
  M=D

// label IF_FALSE1
  (IF_FALSE1)

// label WHILE_EXP0
  (WHILE_EXP0)

// push LCL 0
  @0
  D=A
  @LCL
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push THIS 2
  @2
  D=A
  @THIS
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// lt
  @SP
  AM=M-1
  D=M
  A=A-1
  D=M-D
  @TRUE3791
  D;JLT
  @SP
  A=M-1
  M=0
  @CONTINUE3791
  0;JMP
(TRUE3791)
  @SP
  A=M-1
  M=-1
(CONTINUE3791)

// push LCL 3
  @3
  D=A
  @LCL
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// and
  @SP
  AM=M-1
  D=M
  A=A-1
  M=M&D

// not
  @SP
  A=M-1
  M=!M

// if-goto WHILE_END0
  @SP
  AM=M-1
  D=M
  @WHILE_END0
  D;JNE

// push LCL 0
  @0
  D=A
  @LCL
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push THIS 1
  @1
  D=A
  @THIS
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// add
  @SP
  AM=M-1
  D=M
  A=A-1
  M=M+D

// pop pointer 1
  @SP
  AM=M-1
  D=M
  @THAT
  M=D

// push THAT 0
  @0
  D=A
  @THAT
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 48
  @48
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// sub
  @SP
  AM=M-1
  D=M
  A=A-1
  M=M-D

// pop LCL 2
  @2
  D=A
  @LCL
  D=M+D
  @R13
  M=D
  @SP
  AM=M-1
  D=M
  @R13
  A=M
  M=D

// push LCL 2
  @2
  D=A
  @LCL
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 0
  @0
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// lt
  @SP
  AM=M-1
  D=M
  A=A-1
  D=M-D
  @TRUE3806
  D;JLT
  @SP
  A=M-1
  M=0
  @CONTINUE3806
  0;JMP
(TRUE3806)
  @SP
  A=M-1
  M=-1
(CONTINUE3806)

// push LCL 2
  @2
  D=A
  @LCL
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 9
  @9
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// gt
  @SP
  AM=M-1
  D=M
  A=A-1
  D=M-D
  @TRUE3809
  D;JGT
  @SP
  A=M-1
  M=0
  @CONTINUE3809
  0;JMP
(TRUE3809)
  @SP
  A=M-1
  M=-1
(CONTINUE3809)

// or
  @SP
  AM=M-1
  D=M
  A=A-1
  M=M|D

// not
  @SP
  A=M-1
  M=!M

// pop LCL 3
  @3
  D=A
  @LCL
  D=M+D
  @R13
  M=D
  @SP
  AM=M-1
  D=M
  @R13
  A=M
  M=D

// push LCL 3
  @3
  D=A
  @LCL
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// if-goto IF_TRUE2
  @SP
  AM=M-1
  D=M
  @IF_TRUE2
  D;JNE

// goto IF_FALSE2
  @IF_FALSE2
  0;JMP

// label IF_TRUE2
  (IF_TRUE2)

// push LCL 1
  @1
  D=A
  @LCL
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 10
  @10
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// call Math.multiply 2
// push return address onto stack
  @Math.multiply$ret.17
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's LCL to the stack
  @LCL
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's ARG to the stack
  @ARG
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's THIS to the stack
  @THIS
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's THAT to the stack
  @THAT
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// set the callee ARG to point at the first arg passed to the function
  @SP
  D=M
  @5
  D=D-A
  @2
  D=D-A
  @ARG
  M=D
// set the callee LCL point at the top of the stack
  @SP
  D=M
  @LCL
  M=D
// goto Math.multiply
  @Math.multiply
  0;JMP
// create return address label
(Math.multiply$ret.17)

// push LCL 2
  @2
  D=A
  @LCL
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// add
  @SP
  AM=M-1
  D=M
  A=A-1
  M=M+D

// pop LCL 1
  @1
  D=A
  @LCL
  D=M+D
  @R13
  M=D
  @SP
  AM=M-1
  D=M
  @R13
  A=M
  M=D

// push LCL 0
  @0
  D=A
  @LCL
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 1
  @1
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// add
  @SP
  AM=M-1
  D=M
  A=A-1
  M=M+D

// pop LCL 0
  @0
  D=A
  @LCL
  D=M+D
  @R13
  M=D
  @SP
  AM=M-1
  D=M
  @R13
  A=M
  M=D

// label IF_FALSE2
  (IF_FALSE2)

// goto WHILE_EXP0
  @WHILE_EXP0
  0;JMP

// label WHILE_END0
  (WHILE_END0)

// push LCL 4
  @4
  D=A
  @LCL
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// if-goto IF_TRUE3
  @SP
  AM=M-1
  D=M
  @IF_TRUE3
  D;JNE

// goto IF_FALSE3
  @IF_FALSE3
  0;JMP

// label IF_TRUE3
  (IF_TRUE3)

// push LCL 1
  @1
  D=A
  @LCL
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// neg
  @SP
  A=M-1
  M=-M

// pop LCL 1
  @1
  D=A
  @LCL
  D=M+D
  @R13
  M=D
  @SP
  AM=M-1
  D=M
  @R13
  A=M
  M=D

// label IF_FALSE3
  (IF_FALSE3)

// push LCL 1
  @1
  D=A
  @LCL
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// return
// Store the start of the local stack (i.e. 'frame') in a temp variable
  @LCL
  D=M
  @R13
  M=D
// Store the return address in a temp variable
  @5
  A=D-A
  D=M
  @R14
  M=D
// Store the return value in the first argument (i.e. top of caller stack)
  @SP
  AM=M-1
  D=M
  @ARG
  A=M
  M=D
// Restore the caller's stack pointer (one after the return value)
  @ARG
  D=M+1
  @SP
  M=D
// Restore the caller's THAT segment
  @R13
  AM=M-1
  D=M
  @THAT
  M=D
// Restore the caller's THIS segment
  @R13
  AM=M-1
  D=M
  @THIS
  M=D
// Restore the caller's ARG segment
  @R13
  AM=M-1
  D=M
  @ARG
  M=D
// Restore the caller's LCL segment
  @R13
  AM=M-1
  D=M
  @LCL
  M=D
// Jump to the return address
  @R14
  A=M
  0;JMP

// function String.setInt 4
  (String.setInt)
  @SP
  A=M
  M=0
  @SP
  M=M+1
  @SP
  A=M
  M=0
  @SP
  M=M+1
  @SP
  A=M
  M=0
  @SP
  M=M+1
  @SP
  A=M
  M=0
  @SP
  M=M+1

// push ARG 0
  @0
  D=A
  @ARG
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// pop pointer 0
  @SP
  AM=M-1
  D=M
  @THIS
  M=D

// push THIS 0
  @0
  D=A
  @THIS
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 0
  @0
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// eq
  @SP
  AM=M-1
  D=M
  A=A-1
  D=M-D
  @TRUE3845
  D;JEQ
  @SP
  A=M-1
  M=0
  @CONTINUE3845
  0;JMP
(TRUE3845)
  @SP
  A=M-1
  M=-1
(CONTINUE3845)

// if-goto IF_TRUE0
  @SP
  AM=M-1
  D=M
  @IF_TRUE0
  D;JNE

// goto IF_FALSE0
  @IF_FALSE0
  0;JMP

// label IF_TRUE0
  (IF_TRUE0)

// push constant 19
  @19
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// call Sys.error 1
// push return address onto stack
  @Sys.error$ret.16
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's LCL to the stack
  @LCL
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's ARG to the stack
  @ARG
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's THIS to the stack
  @THIS
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's THAT to the stack
  @THAT
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// set the callee ARG to point at the first arg passed to the function
  @SP
  D=M
  @5
  D=D-A
  @1
  D=D-A
  @ARG
  M=D
// set the callee LCL point at the top of the stack
  @SP
  D=M
  @LCL
  M=D
// goto Sys.error
  @Sys.error
  0;JMP
// create return address label
(Sys.error$ret.16)

// pop TEMP 0
  @5
  D=A
  @TEMP
  D=M+D
  @R13
  M=D
  @SP
  AM=M-1
  D=M
  @R13
  A=M
  M=D

// label IF_FALSE0
  (IF_FALSE0)

// push constant 6
  @6
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// call Array.new 1
// push return address onto stack
  @Array.new$ret.8
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's LCL to the stack
  @LCL
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's ARG to the stack
  @ARG
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's THIS to the stack
  @THIS
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's THAT to the stack
  @THAT
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// set the callee ARG to point at the first arg passed to the function
  @SP
  D=M
  @5
  D=D-A
  @1
  D=D-A
  @ARG
  M=D
// set the callee LCL point at the top of the stack
  @SP
  D=M
  @LCL
  M=D
// goto Array.new
  @Array.new
  0;JMP
// create return address label
(Array.new$ret.8)

// pop LCL 2
  @2
  D=A
  @LCL
  D=M+D
  @R13
  M=D
  @SP
  AM=M-1
  D=M
  @R13
  A=M
  M=D

// push ARG 1
  @1
  D=A
  @ARG
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 0
  @0
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// lt
  @SP
  AM=M-1
  D=M
  A=A-1
  D=M-D
  @TRUE3858
  D;JLT
  @SP
  A=M-1
  M=0
  @CONTINUE3858
  0;JMP
(TRUE3858)
  @SP
  A=M-1
  M=-1
(CONTINUE3858)

// if-goto IF_TRUE1
  @SP
  AM=M-1
  D=M
  @IF_TRUE1
  D;JNE

// goto IF_FALSE1
  @IF_FALSE1
  0;JMP

// label IF_TRUE1
  (IF_TRUE1)

// push constant 0
  @0
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// not
  @SP
  A=M-1
  M=!M

// pop LCL 3
  @3
  D=A
  @LCL
  D=M+D
  @R13
  M=D
  @SP
  AM=M-1
  D=M
  @R13
  A=M
  M=D

// push ARG 1
  @1
  D=A
  @ARG
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// neg
  @SP
  A=M-1
  M=-M

// pop ARG 1
  @1
  D=A
  @ARG
  D=M+D
  @R13
  M=D
  @SP
  AM=M-1
  D=M
  @R13
  A=M
  M=D

// label IF_FALSE1
  (IF_FALSE1)

// push ARG 1
  @1
  D=A
  @ARG
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// pop LCL 1
  @1
  D=A
  @LCL
  D=M+D
  @R13
  M=D
  @SP
  AM=M-1
  D=M
  @R13
  A=M
  M=D

// label WHILE_EXP0
  (WHILE_EXP0)

// push LCL 1
  @1
  D=A
  @LCL
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 0
  @0
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// gt
  @SP
  AM=M-1
  D=M
  A=A-1
  D=M-D
  @TRUE3874
  D;JGT
  @SP
  A=M-1
  M=0
  @CONTINUE3874
  0;JMP
(TRUE3874)
  @SP
  A=M-1
  M=-1
(CONTINUE3874)

// not
  @SP
  A=M-1
  M=!M

// if-goto WHILE_END0
  @SP
  AM=M-1
  D=M
  @WHILE_END0
  D;JNE

// push ARG 1
  @1
  D=A
  @ARG
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 10
  @10
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// call Math.divide 2
// push return address onto stack
  @Math.divide$ret.6
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's LCL to the stack
  @LCL
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's ARG to the stack
  @ARG
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's THIS to the stack
  @THIS
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's THAT to the stack
  @THAT
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// set the callee ARG to point at the first arg passed to the function
  @SP
  D=M
  @5
  D=D-A
  @2
  D=D-A
  @ARG
  M=D
// set the callee LCL point at the top of the stack
  @SP
  D=M
  @LCL
  M=D
// goto Math.divide
  @Math.divide
  0;JMP
// create return address label
(Math.divide$ret.6)

// pop LCL 1
  @1
  D=A
  @LCL
  D=M+D
  @R13
  M=D
  @SP
  AM=M-1
  D=M
  @R13
  A=M
  M=D

// push LCL 0
  @0
  D=A
  @LCL
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push LCL 2
  @2
  D=A
  @LCL
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// add
  @SP
  AM=M-1
  D=M
  A=A-1
  M=M+D

// push constant 48
  @48
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push ARG 1
  @1
  D=A
  @ARG
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push LCL 1
  @1
  D=A
  @LCL
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 10
  @10
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// call Math.multiply 2
// push return address onto stack
  @Math.multiply$ret.18
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's LCL to the stack
  @LCL
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's ARG to the stack
  @ARG
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's THIS to the stack
  @THIS
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's THAT to the stack
  @THAT
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// set the callee ARG to point at the first arg passed to the function
  @SP
  D=M
  @5
  D=D-A
  @2
  D=D-A
  @ARG
  M=D
// set the callee LCL point at the top of the stack
  @SP
  D=M
  @LCL
  M=D
// goto Math.multiply
  @Math.multiply
  0;JMP
// create return address label
(Math.multiply$ret.18)

// sub
  @SP
  AM=M-1
  D=M
  A=A-1
  M=M-D

// add
  @SP
  AM=M-1
  D=M
  A=A-1
  M=M+D

// pop TEMP 0
  @5
  D=A
  @TEMP
  D=M+D
  @R13
  M=D
  @SP
  AM=M-1
  D=M
  @R13
  A=M
  M=D

// pop pointer 1
  @SP
  AM=M-1
  D=M
  @THAT
  M=D

// push TEMP 0
  @5
  D=A
  @TEMP
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// pop THAT 0
  @0
  D=A
  @THAT
  D=M+D
  @R13
  M=D
  @SP
  AM=M-1
  D=M
  @R13
  A=M
  M=D

// push LCL 0
  @0
  D=A
  @LCL
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 1
  @1
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// add
  @SP
  AM=M-1
  D=M
  A=A-1
  M=M+D

// pop LCL 0
  @0
  D=A
  @LCL
  D=M+D
  @R13
  M=D
  @SP
  AM=M-1
  D=M
  @R13
  A=M
  M=D

// push LCL 1
  @1
  D=A
  @LCL
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// pop ARG 1
  @1
  D=A
  @ARG
  D=M+D
  @R13
  M=D
  @SP
  AM=M-1
  D=M
  @R13
  A=M
  M=D

// goto WHILE_EXP0
  @WHILE_EXP0
  0;JMP

// label WHILE_END0
  (WHILE_END0)

// push LCL 3
  @3
  D=A
  @LCL
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// if-goto IF_TRUE2
  @SP
  AM=M-1
  D=M
  @IF_TRUE2
  D;JNE

// goto IF_FALSE2
  @IF_FALSE2
  0;JMP

// label IF_TRUE2
  (IF_TRUE2)

// push LCL 0
  @0
  D=A
  @LCL
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push LCL 2
  @2
  D=A
  @LCL
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// add
  @SP
  AM=M-1
  D=M
  A=A-1
  M=M+D

// push constant 45
  @45
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// pop TEMP 0
  @5
  D=A
  @TEMP
  D=M+D
  @R13
  M=D
  @SP
  AM=M-1
  D=M
  @R13
  A=M
  M=D

// pop pointer 1
  @SP
  AM=M-1
  D=M
  @THAT
  M=D

// push TEMP 0
  @5
  D=A
  @TEMP
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// pop THAT 0
  @0
  D=A
  @THAT
  D=M+D
  @R13
  M=D
  @SP
  AM=M-1
  D=M
  @R13
  A=M
  M=D

// push LCL 0
  @0
  D=A
  @LCL
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 1
  @1
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// add
  @SP
  AM=M-1
  D=M
  A=A-1
  M=M+D

// pop LCL 0
  @0
  D=A
  @LCL
  D=M+D
  @R13
  M=D
  @SP
  AM=M-1
  D=M
  @R13
  A=M
  M=D

// label IF_FALSE2
  (IF_FALSE2)

// push THIS 0
  @0
  D=A
  @THIS
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push LCL 0
  @0
  D=A
  @LCL
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// lt
  @SP
  AM=M-1
  D=M
  A=A-1
  D=M-D
  @TRUE3922
  D;JLT
  @SP
  A=M-1
  M=0
  @CONTINUE3922
  0;JMP
(TRUE3922)
  @SP
  A=M-1
  M=-1
(CONTINUE3922)

// if-goto IF_TRUE3
  @SP
  AM=M-1
  D=M
  @IF_TRUE3
  D;JNE

// goto IF_FALSE3
  @IF_FALSE3
  0;JMP

// label IF_TRUE3
  (IF_TRUE3)

// push constant 19
  @19
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// call Sys.error 1
// push return address onto stack
  @Sys.error$ret.17
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's LCL to the stack
  @LCL
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's ARG to the stack
  @ARG
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's THIS to the stack
  @THIS
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's THAT to the stack
  @THAT
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// set the callee ARG to point at the first arg passed to the function
  @SP
  D=M
  @5
  D=D-A
  @1
  D=D-A
  @ARG
  M=D
// set the callee LCL point at the top of the stack
  @SP
  D=M
  @LCL
  M=D
// goto Sys.error
  @Sys.error
  0;JMP
// create return address label
(Sys.error$ret.17)

// pop TEMP 0
  @5
  D=A
  @TEMP
  D=M+D
  @R13
  M=D
  @SP
  AM=M-1
  D=M
  @R13
  A=M
  M=D

// label IF_FALSE3
  (IF_FALSE3)

// push LCL 0
  @0
  D=A
  @LCL
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 0
  @0
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// eq
  @SP
  AM=M-1
  D=M
  A=A-1
  D=M-D
  @TRUE3932
  D;JEQ
  @SP
  A=M-1
  M=0
  @CONTINUE3932
  0;JMP
(TRUE3932)
  @SP
  A=M-1
  M=-1
(CONTINUE3932)

// if-goto IF_TRUE4
  @SP
  AM=M-1
  D=M
  @IF_TRUE4
  D;JNE

// goto IF_FALSE4
  @IF_FALSE4
  0;JMP

// label IF_TRUE4
  (IF_TRUE4)

// push constant 0
  @0
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push THIS 1
  @1
  D=A
  @THIS
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// add
  @SP
  AM=M-1
  D=M
  A=A-1
  M=M+D

// push constant 48
  @48
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// pop TEMP 0
  @5
  D=A
  @TEMP
  D=M+D
  @R13
  M=D
  @SP
  AM=M-1
  D=M
  @R13
  A=M
  M=D

// pop pointer 1
  @SP
  AM=M-1
  D=M
  @THAT
  M=D

// push TEMP 0
  @5
  D=A
  @TEMP
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// pop THAT 0
  @0
  D=A
  @THAT
  D=M+D
  @R13
  M=D
  @SP
  AM=M-1
  D=M
  @R13
  A=M
  M=D

// push constant 1
  @1
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// pop THIS 2
  @2
  D=A
  @THIS
  D=M+D
  @R13
  M=D
  @SP
  AM=M-1
  D=M
  @R13
  A=M
  M=D

// goto IF_END4
  @IF_END4
  0;JMP

// label IF_FALSE4
  (IF_FALSE4)

// push constant 0
  @0
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// pop THIS 2
  @2
  D=A
  @THIS
  D=M+D
  @R13
  M=D
  @SP
  AM=M-1
  D=M
  @R13
  A=M
  M=D

// label WHILE_EXP1
  (WHILE_EXP1)

// push THIS 2
  @2
  D=A
  @THIS
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push LCL 0
  @0
  D=A
  @LCL
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// lt
  @SP
  AM=M-1
  D=M
  A=A-1
  D=M-D
  @TRUE3953
  D;JLT
  @SP
  A=M-1
  M=0
  @CONTINUE3953
  0;JMP
(TRUE3953)
  @SP
  A=M-1
  M=-1
(CONTINUE3953)

// not
  @SP
  A=M-1
  M=!M

// if-goto WHILE_END1
  @SP
  AM=M-1
  D=M
  @WHILE_END1
  D;JNE

// push THIS 2
  @2
  D=A
  @THIS
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push THIS 1
  @1
  D=A
  @THIS
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// add
  @SP
  AM=M-1
  D=M
  A=A-1
  M=M+D

// push LCL 0
  @0
  D=A
  @LCL
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push THIS 2
  @2
  D=A
  @THIS
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 1
  @1
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// add
  @SP
  AM=M-1
  D=M
  A=A-1
  M=M+D

// sub
  @SP
  AM=M-1
  D=M
  A=A-1
  M=M-D

// push LCL 2
  @2
  D=A
  @LCL
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// add
  @SP
  AM=M-1
  D=M
  A=A-1
  M=M+D

// pop pointer 1
  @SP
  AM=M-1
  D=M
  @THAT
  M=D

// push THAT 0
  @0
  D=A
  @THAT
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// pop TEMP 0
  @5
  D=A
  @TEMP
  D=M+D
  @R13
  M=D
  @SP
  AM=M-1
  D=M
  @R13
  A=M
  M=D

// pop pointer 1
  @SP
  AM=M-1
  D=M
  @THAT
  M=D

// push TEMP 0
  @5
  D=A
  @TEMP
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// pop THAT 0
  @0
  D=A
  @THAT
  D=M+D
  @R13
  M=D
  @SP
  AM=M-1
  D=M
  @R13
  A=M
  M=D

// push THIS 2
  @2
  D=A
  @THIS
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 1
  @1
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// add
  @SP
  AM=M-1
  D=M
  A=A-1
  M=M+D

// pop THIS 2
  @2
  D=A
  @THIS
  D=M+D
  @R13
  M=D
  @SP
  AM=M-1
  D=M
  @R13
  A=M
  M=D

// goto WHILE_EXP1
  @WHILE_EXP1
  0;JMP

// label WHILE_END1
  (WHILE_END1)

// label IF_END4
  (IF_END4)

// push LCL 2
  @2
  D=A
  @LCL
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// call Array.dispose 1
// push return address onto stack
  @Array.dispose$ret.1
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's LCL to the stack
  @LCL
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's ARG to the stack
  @ARG
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's THIS to the stack
  @THIS
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's THAT to the stack
  @THAT
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// set the callee ARG to point at the first arg passed to the function
  @SP
  D=M
  @5
  D=D-A
  @1
  D=D-A
  @ARG
  M=D
// set the callee LCL point at the top of the stack
  @SP
  D=M
  @LCL
  M=D
// goto Array.dispose
  @Array.dispose
  0;JMP
// create return address label
(Array.dispose$ret.1)

// pop TEMP 0
  @5
  D=A
  @TEMP
  D=M+D
  @R13
  M=D
  @SP
  AM=M-1
  D=M
  @R13
  A=M
  M=D

// push constant 0
  @0
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// return
// Store the start of the local stack (i.e. 'frame') in a temp variable
  @LCL
  D=M
  @R13
  M=D
// Store the return address in a temp variable
  @5
  A=D-A
  D=M
  @R14
  M=D
// Store the return value in the first argument (i.e. top of caller stack)
  @SP
  AM=M-1
  D=M
  @ARG
  A=M
  M=D
// Restore the caller's stack pointer (one after the return value)
  @ARG
  D=M+1
  @SP
  M=D
// Restore the caller's THAT segment
  @R13
  AM=M-1
  D=M
  @THAT
  M=D
// Restore the caller's THIS segment
  @R13
  AM=M-1
  D=M
  @THIS
  M=D
// Restore the caller's ARG segment
  @R13
  AM=M-1
  D=M
  @ARG
  M=D
// Restore the caller's LCL segment
  @R13
  AM=M-1
  D=M
  @LCL
  M=D
// Jump to the return address
  @R14
  A=M
  0;JMP

// function String.newLine 0
  (String.newLine)

// push constant 128
  @128
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// return
// Store the start of the local stack (i.e. 'frame') in a temp variable
  @LCL
  D=M
  @R13
  M=D
// Store the return address in a temp variable
  @5
  A=D-A
  D=M
  @R14
  M=D
// Store the return value in the first argument (i.e. top of caller stack)
  @SP
  AM=M-1
  D=M
  @ARG
  A=M
  M=D
// Restore the caller's stack pointer (one after the return value)
  @ARG
  D=M+1
  @SP
  M=D
// Restore the caller's THAT segment
  @R13
  AM=M-1
  D=M
  @THAT
  M=D
// Restore the caller's THIS segment
  @R13
  AM=M-1
  D=M
  @THIS
  M=D
// Restore the caller's ARG segment
  @R13
  AM=M-1
  D=M
  @ARG
  M=D
// Restore the caller's LCL segment
  @R13
  AM=M-1
  D=M
  @LCL
  M=D
// Jump to the return address
  @R14
  A=M
  0;JMP

// function String.backSpace 0
  (String.backSpace)

// push constant 129
  @129
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// return
// Store the start of the local stack (i.e. 'frame') in a temp variable
  @LCL
  D=M
  @R13
  M=D
// Store the return address in a temp variable
  @5
  A=D-A
  D=M
  @R14
  M=D
// Store the return value in the first argument (i.e. top of caller stack)
  @SP
  AM=M-1
  D=M
  @ARG
  A=M
  M=D
// Restore the caller's stack pointer (one after the return value)
  @ARG
  D=M+1
  @SP
  M=D
// Restore the caller's THAT segment
  @R13
  AM=M-1
  D=M
  @THAT
  M=D
// Restore the caller's THIS segment
  @R13
  AM=M-1
  D=M
  @THIS
  M=D
// Restore the caller's ARG segment
  @R13
  AM=M-1
  D=M
  @ARG
  M=D
// Restore the caller's LCL segment
  @R13
  AM=M-1
  D=M
  @LCL
  M=D
// Jump to the return address
  @R14
  A=M
  0;JMP

// function String.doubleQuote 0
  (String.doubleQuote)

// push constant 34
  @34
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// return
// Store the start of the local stack (i.e. 'frame') in a temp variable
  @LCL
  D=M
  @R13
  M=D
// Store the return address in a temp variable
  @5
  A=D-A
  D=M
  @R14
  M=D
// Store the return value in the first argument (i.e. top of caller stack)
  @SP
  AM=M-1
  D=M
  @ARG
  A=M
  M=D
// Restore the caller's stack pointer (one after the return value)
  @ARG
  D=M+1
  @SP
  M=D
// Restore the caller's THAT segment
  @R13
  AM=M-1
  D=M
  @THAT
  M=D
// Restore the caller's THIS segment
  @R13
  AM=M-1
  D=M
  @THIS
  M=D
// Restore the caller's ARG segment
  @R13
  AM=M-1
  D=M
  @ARG
  M=D
// Restore the caller's LCL segment
  @R13
  AM=M-1
  D=M
  @LCL
  M=D
// Jump to the return address
  @R14
  A=M
  0;JMP

// function Sys.init 0
  (Sys.init)

// call Memory.init 0
// push return address onto stack
  @Memory.init$ret.0
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's LCL to the stack
  @LCL
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's ARG to the stack
  @ARG
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's THIS to the stack
  @THIS
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's THAT to the stack
  @THAT
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// set the callee ARG to point at the first arg passed to the function
  @SP
  D=M
  @5
  D=D-A
  @0
  D=D-A
  @ARG
  M=D
// set the callee LCL point at the top of the stack
  @SP
  D=M
  @LCL
  M=D
// goto Memory.init
  @Memory.init
  0;JMP
// create return address label
(Memory.init$ret.0)

// pop TEMP 0
  @5
  D=A
  @TEMP
  D=M+D
  @R13
  M=D
  @SP
  AM=M-1
  D=M
  @R13
  A=M
  M=D

// call Math.init 0
// push return address onto stack
  @Math.init$ret.0
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's LCL to the stack
  @LCL
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's ARG to the stack
  @ARG
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's THIS to the stack
  @THIS
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's THAT to the stack
  @THAT
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// set the callee ARG to point at the first arg passed to the function
  @SP
  D=M
  @5
  D=D-A
  @0
  D=D-A
  @ARG
  M=D
// set the callee LCL point at the top of the stack
  @SP
  D=M
  @LCL
  M=D
// goto Math.init
  @Math.init
  0;JMP
// create return address label
(Math.init$ret.0)

// pop TEMP 0
  @5
  D=A
  @TEMP
  D=M+D
  @R13
  M=D
  @SP
  AM=M-1
  D=M
  @R13
  A=M
  M=D

// call Screen.init 0
// push return address onto stack
  @Screen.init$ret.0
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's LCL to the stack
  @LCL
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's ARG to the stack
  @ARG
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's THIS to the stack
  @THIS
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's THAT to the stack
  @THAT
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// set the callee ARG to point at the first arg passed to the function
  @SP
  D=M
  @5
  D=D-A
  @0
  D=D-A
  @ARG
  M=D
// set the callee LCL point at the top of the stack
  @SP
  D=M
  @LCL
  M=D
// goto Screen.init
  @Screen.init
  0;JMP
// create return address label
(Screen.init$ret.0)

// pop TEMP 0
  @5
  D=A
  @TEMP
  D=M+D
  @R13
  M=D
  @SP
  AM=M-1
  D=M
  @R13
  A=M
  M=D

// call Output.init 0
// push return address onto stack
  @Output.init$ret.0
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's LCL to the stack
  @LCL
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's ARG to the stack
  @ARG
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's THIS to the stack
  @THIS
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's THAT to the stack
  @THAT
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// set the callee ARG to point at the first arg passed to the function
  @SP
  D=M
  @5
  D=D-A
  @0
  D=D-A
  @ARG
  M=D
// set the callee LCL point at the top of the stack
  @SP
  D=M
  @LCL
  M=D
// goto Output.init
  @Output.init
  0;JMP
// create return address label
(Output.init$ret.0)

// pop TEMP 0
  @5
  D=A
  @TEMP
  D=M+D
  @R13
  M=D
  @SP
  AM=M-1
  D=M
  @R13
  A=M
  M=D

// call Keyboard.init 0
// push return address onto stack
  @Keyboard.init$ret.0
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's LCL to the stack
  @LCL
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's ARG to the stack
  @ARG
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's THIS to the stack
  @THIS
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's THAT to the stack
  @THAT
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// set the callee ARG to point at the first arg passed to the function
  @SP
  D=M
  @5
  D=D-A
  @0
  D=D-A
  @ARG
  M=D
// set the callee LCL point at the top of the stack
  @SP
  D=M
  @LCL
  M=D
// goto Keyboard.init
  @Keyboard.init
  0;JMP
// create return address label
(Keyboard.init$ret.0)

// pop TEMP 0
  @5
  D=A
  @TEMP
  D=M+D
  @R13
  M=D
  @SP
  AM=M-1
  D=M
  @R13
  A=M
  M=D

// call Main.main 0
// push return address onto stack
  @Main.main$ret.0
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's LCL to the stack
  @LCL
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's ARG to the stack
  @ARG
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's THIS to the stack
  @THIS
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's THAT to the stack
  @THAT
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// set the callee ARG to point at the first arg passed to the function
  @SP
  D=M
  @5
  D=D-A
  @0
  D=D-A
  @ARG
  M=D
// set the callee LCL point at the top of the stack
  @SP
  D=M
  @LCL
  M=D
// goto Main.main
  @Main.main
  0;JMP
// create return address label
(Main.main$ret.0)

// pop TEMP 0
  @5
  D=A
  @TEMP
  D=M+D
  @R13
  M=D
  @SP
  AM=M-1
  D=M
  @R13
  A=M
  M=D

// call Sys.halt 0
// push return address onto stack
  @Sys.halt$ret.0
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's LCL to the stack
  @LCL
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's ARG to the stack
  @ARG
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's THIS to the stack
  @THIS
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's THAT to the stack
  @THAT
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// set the callee ARG to point at the first arg passed to the function
  @SP
  D=M
  @5
  D=D-A
  @0
  D=D-A
  @ARG
  M=D
// set the callee LCL point at the top of the stack
  @SP
  D=M
  @LCL
  M=D
// goto Sys.halt
  @Sys.halt
  0;JMP
// create return address label
(Sys.halt$ret.0)

// pop TEMP 0
  @5
  D=A
  @TEMP
  D=M+D
  @R13
  M=D
  @SP
  AM=M-1
  D=M
  @R13
  A=M
  M=D

// push constant 0
  @0
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// return
// Store the start of the local stack (i.e. 'frame') in a temp variable
  @LCL
  D=M
  @R13
  M=D
// Store the return address in a temp variable
  @5
  A=D-A
  D=M
  @R14
  M=D
// Store the return value in the first argument (i.e. top of caller stack)
  @SP
  AM=M-1
  D=M
  @ARG
  A=M
  M=D
// Restore the caller's stack pointer (one after the return value)
  @ARG
  D=M+1
  @SP
  M=D
// Restore the caller's THAT segment
  @R13
  AM=M-1
  D=M
  @THAT
  M=D
// Restore the caller's THIS segment
  @R13
  AM=M-1
  D=M
  @THIS
  M=D
// Restore the caller's ARG segment
  @R13
  AM=M-1
  D=M
  @ARG
  M=D
// Restore the caller's LCL segment
  @R13
  AM=M-1
  D=M
  @LCL
  M=D
// Jump to the return address
  @R14
  A=M
  0;JMP

// function Sys.halt 0
  (Sys.halt)

// label WHILE_EXP0
  (WHILE_EXP0)

// push constant 0
  @0
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// not
  @SP
  A=M-1
  M=!M

// not
  @SP
  A=M-1
  M=!M

// if-goto WHILE_END0
  @SP
  AM=M-1
  D=M
  @WHILE_END0
  D;JNE

// goto WHILE_EXP0
  @WHILE_EXP0
  0;JMP

// label WHILE_END0
  (WHILE_END0)

// push constant 0
  @0
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// return
// Store the start of the local stack (i.e. 'frame') in a temp variable
  @LCL
  D=M
  @R13
  M=D
// Store the return address in a temp variable
  @5
  A=D-A
  D=M
  @R14
  M=D
// Store the return value in the first argument (i.e. top of caller stack)
  @SP
  AM=M-1
  D=M
  @ARG
  A=M
  M=D
// Restore the caller's stack pointer (one after the return value)
  @ARG
  D=M+1
  @SP
  M=D
// Restore the caller's THAT segment
  @R13
  AM=M-1
  D=M
  @THAT
  M=D
// Restore the caller's THIS segment
  @R13
  AM=M-1
  D=M
  @THIS
  M=D
// Restore the caller's ARG segment
  @R13
  AM=M-1
  D=M
  @ARG
  M=D
// Restore the caller's LCL segment
  @R13
  AM=M-1
  D=M
  @LCL
  M=D
// Jump to the return address
  @R14
  A=M
  0;JMP

// function Sys.wait 1
  (Sys.wait)
  @SP
  A=M
  M=0
  @SP
  M=M+1

// push ARG 0
  @0
  D=A
  @ARG
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 0
  @0
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// lt
  @SP
  AM=M-1
  D=M
  A=A-1
  D=M-D
  @TRUE4023
  D;JLT
  @SP
  A=M-1
  M=0
  @CONTINUE4023
  0;JMP
(TRUE4023)
  @SP
  A=M-1
  M=-1
(CONTINUE4023)

// if-goto IF_TRUE0
  @SP
  AM=M-1
  D=M
  @IF_TRUE0
  D;JNE

// goto IF_FALSE0
  @IF_FALSE0
  0;JMP

// label IF_TRUE0
  (IF_TRUE0)

// push constant 1
  @1
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// call Sys.error 1
// push return address onto stack
  @Sys.error$ret.18
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's LCL to the stack
  @LCL
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's ARG to the stack
  @ARG
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's THIS to the stack
  @THIS
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's THAT to the stack
  @THAT
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// set the callee ARG to point at the first arg passed to the function
  @SP
  D=M
  @5
  D=D-A
  @1
  D=D-A
  @ARG
  M=D
// set the callee LCL point at the top of the stack
  @SP
  D=M
  @LCL
  M=D
// goto Sys.error
  @Sys.error
  0;JMP
// create return address label
(Sys.error$ret.18)

// pop TEMP 0
  @5
  D=A
  @TEMP
  D=M+D
  @R13
  M=D
  @SP
  AM=M-1
  D=M
  @R13
  A=M
  M=D

// label IF_FALSE0
  (IF_FALSE0)

// label WHILE_EXP0
  (WHILE_EXP0)

// push ARG 0
  @0
  D=A
  @ARG
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 0
  @0
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// gt
  @SP
  AM=M-1
  D=M
  A=A-1
  D=M-D
  @TRUE4034
  D;JGT
  @SP
  A=M-1
  M=0
  @CONTINUE4034
  0;JMP
(TRUE4034)
  @SP
  A=M-1
  M=-1
(CONTINUE4034)

// not
  @SP
  A=M-1
  M=!M

// if-goto WHILE_END0
  @SP
  AM=M-1
  D=M
  @WHILE_END0
  D;JNE

// push constant 50
  @50
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// pop LCL 0
  @0
  D=A
  @LCL
  D=M+D
  @R13
  M=D
  @SP
  AM=M-1
  D=M
  @R13
  A=M
  M=D

// label WHILE_EXP1
  (WHILE_EXP1)

// push LCL 0
  @0
  D=A
  @LCL
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 0
  @0
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// gt
  @SP
  AM=M-1
  D=M
  A=A-1
  D=M-D
  @TRUE4042
  D;JGT
  @SP
  A=M-1
  M=0
  @CONTINUE4042
  0;JMP
(TRUE4042)
  @SP
  A=M-1
  M=-1
(CONTINUE4042)

// not
  @SP
  A=M-1
  M=!M

// if-goto WHILE_END1
  @SP
  AM=M-1
  D=M
  @WHILE_END1
  D;JNE

// push LCL 0
  @0
  D=A
  @LCL
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 1
  @1
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// sub
  @SP
  AM=M-1
  D=M
  A=A-1
  M=M-D

// pop LCL 0
  @0
  D=A
  @LCL
  D=M+D
  @R13
  M=D
  @SP
  AM=M-1
  D=M
  @R13
  A=M
  M=D

// goto WHILE_EXP1
  @WHILE_EXP1
  0;JMP

// label WHILE_END1
  (WHILE_END1)

// push ARG 0
  @0
  D=A
  @ARG
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 1
  @1
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// sub
  @SP
  AM=M-1
  D=M
  A=A-1
  M=M-D

// pop ARG 0
  @0
  D=A
  @ARG
  D=M+D
  @R13
  M=D
  @SP
  AM=M-1
  D=M
  @R13
  A=M
  M=D

// goto WHILE_EXP0
  @WHILE_EXP0
  0;JMP

// label WHILE_END0
  (WHILE_END0)

// push constant 0
  @0
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// return
// Store the start of the local stack (i.e. 'frame') in a temp variable
  @LCL
  D=M
  @R13
  M=D
// Store the return address in a temp variable
  @5
  A=D-A
  D=M
  @R14
  M=D
// Store the return value in the first argument (i.e. top of caller stack)
  @SP
  AM=M-1
  D=M
  @ARG
  A=M
  M=D
// Restore the caller's stack pointer (one after the return value)
  @ARG
  D=M+1
  @SP
  M=D
// Restore the caller's THAT segment
  @R13
  AM=M-1
  D=M
  @THAT
  M=D
// Restore the caller's THIS segment
  @R13
  AM=M-1
  D=M
  @THIS
  M=D
// Restore the caller's ARG segment
  @R13
  AM=M-1
  D=M
  @ARG
  M=D
// Restore the caller's LCL segment
  @R13
  AM=M-1
  D=M
  @LCL
  M=D
// Jump to the return address
  @R14
  A=M
  0;JMP

// function Sys.error 0
  (Sys.error)

// push constant 69
  @69
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// call Output.printChar 1
// push return address onto stack
  @Output.printChar$ret.4
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's LCL to the stack
  @LCL
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's ARG to the stack
  @ARG
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's THIS to the stack
  @THIS
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's THAT to the stack
  @THAT
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// set the callee ARG to point at the first arg passed to the function
  @SP
  D=M
  @5
  D=D-A
  @1
  D=D-A
  @ARG
  M=D
// set the callee LCL point at the top of the stack
  @SP
  D=M
  @LCL
  M=D
// goto Output.printChar
  @Output.printChar
  0;JMP
// create return address label
(Output.printChar$ret.4)

// pop TEMP 0
  @5
  D=A
  @TEMP
  D=M+D
  @R13
  M=D
  @SP
  AM=M-1
  D=M
  @R13
  A=M
  M=D

// push constant 82
  @82
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// call Output.printChar 1
// push return address onto stack
  @Output.printChar$ret.5
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's LCL to the stack
  @LCL
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's ARG to the stack
  @ARG
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's THIS to the stack
  @THIS
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's THAT to the stack
  @THAT
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// set the callee ARG to point at the first arg passed to the function
  @SP
  D=M
  @5
  D=D-A
  @1
  D=D-A
  @ARG
  M=D
// set the callee LCL point at the top of the stack
  @SP
  D=M
  @LCL
  M=D
// goto Output.printChar
  @Output.printChar
  0;JMP
// create return address label
(Output.printChar$ret.5)

// pop TEMP 0
  @5
  D=A
  @TEMP
  D=M+D
  @R13
  M=D
  @SP
  AM=M-1
  D=M
  @R13
  A=M
  M=D

// push constant 82
  @82
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// call Output.printChar 1
// push return address onto stack
  @Output.printChar$ret.6
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's LCL to the stack
  @LCL
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's ARG to the stack
  @ARG
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's THIS to the stack
  @THIS
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's THAT to the stack
  @THAT
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// set the callee ARG to point at the first arg passed to the function
  @SP
  D=M
  @5
  D=D-A
  @1
  D=D-A
  @ARG
  M=D
// set the callee LCL point at the top of the stack
  @SP
  D=M
  @LCL
  M=D
// goto Output.printChar
  @Output.printChar
  0;JMP
// create return address label
(Output.printChar$ret.6)

// pop TEMP 0
  @5
  D=A
  @TEMP
  D=M+D
  @R13
  M=D
  @SP
  AM=M-1
  D=M
  @R13
  A=M
  M=D

// push ARG 0
  @0
  D=A
  @ARG
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// call Output.printInt 1
// push return address onto stack
  @Output.printInt$ret.0
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's LCL to the stack
  @LCL
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's ARG to the stack
  @ARG
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's THIS to the stack
  @THIS
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's THAT to the stack
  @THAT
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// set the callee ARG to point at the first arg passed to the function
  @SP
  D=M
  @5
  D=D-A
  @1
  D=D-A
  @ARG
  M=D
// set the callee LCL point at the top of the stack
  @SP
  D=M
  @LCL
  M=D
// goto Output.printInt
  @Output.printInt
  0;JMP
// create return address label
(Output.printInt$ret.0)

// pop TEMP 0
  @5
  D=A
  @TEMP
  D=M+D
  @R13
  M=D
  @SP
  AM=M-1
  D=M
  @R13
  A=M
  M=D

// call Sys.halt 0
// push return address onto stack
  @Sys.halt$ret.1
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's LCL to the stack
  @LCL
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's ARG to the stack
  @ARG
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's THIS to the stack
  @THIS
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// store the pointer to the caller's THAT to the stack
  @THAT
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1
// set the callee ARG to point at the first arg passed to the function
  @SP
  D=M
  @5
  D=D-A
  @0
  D=D-A
  @ARG
  M=D
// set the callee LCL point at the top of the stack
  @SP
  D=M
  @LCL
  M=D
// goto Sys.halt
  @Sys.halt
  0;JMP
// create return address label
(Sys.halt$ret.1)

// pop TEMP 0
  @5
  D=A
  @TEMP
  D=M+D
  @R13
  M=D
  @SP
  AM=M-1
  D=M
  @R13
  A=M
  M=D

// push constant 0
  @0
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// return
// Store the start of the local stack (i.e. 'frame') in a temp variable
  @LCL
  D=M
  @R13
  M=D
// Store the return address in a temp variable
  @5
  A=D-A
  D=M
  @R14
  M=D
// Store the return value in the first argument (i.e. top of caller stack)
  @SP
  AM=M-1
  D=M
  @ARG
  A=M
  M=D
// Restore the caller's stack pointer (one after the return value)
  @ARG
  D=M+1
  @SP
  M=D
// Restore the caller's THAT segment
  @R13
  AM=M-1
  D=M
  @THAT
  M=D
// Restore the caller's THIS segment
  @R13
  AM=M-1
  D=M
  @THIS
  M=D
// Restore the caller's ARG segment
  @R13
  AM=M-1
  D=M
  @ARG
  M=D
// Restore the caller's LCL segment
  @R13
  AM=M-1
  D=M
  @LCL
  M=D
// Jump to the return address
  @R14
  A=M
  0;JMP

// infinite loop
(END)
  @END
  0;JMP
