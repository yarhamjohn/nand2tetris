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
// function Main.fibonacci 0
  (Main.fibonacci)

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

// lt
  @SP
  AM=M-1
  D=M
  A=A-1
  D=M-D
  @TRUE3
  D;JLT
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

// if-goto IF_TRUE
  @SP
  AM=M-1
  D=M
  @IF_TRUE
  D;JNE

// goto IF_FALSE
  @IF_FALSE
  0;JMP

// label IF_TRUE
  (IF_TRUE)

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

// label IF_FALSE
  (IF_FALSE)

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

// call Main.fibonacci 1
// push return address onto stack
  @Main.fibonacci$ret.0
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
// goto Main.fibonacci
  @Main.fibonacci
  0;JMP
// create return address label
(Main.fibonacci$ret.0)

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

// call Main.fibonacci 1
// push return address onto stack
  @Main.fibonacci$ret.1
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
// goto Main.fibonacci
  @Main.fibonacci
  0;JMP
// create return address label
(Main.fibonacci$ret.1)

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

// function Sys.init 0
  (Sys.init)

// push constant 4
  @4
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// call Main.fibonacci 1
// push return address onto stack
  @Main.fibonacci$ret.2
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
// goto Main.fibonacci
  @Main.fibonacci
  0;JMP
// create return address label
(Main.fibonacci$ret.2)

// label WHILE
  (WHILE)

// goto WHILE
  @WHILE
  0;JMP

// infinite loop
(END)
  @END
  0;JMP
