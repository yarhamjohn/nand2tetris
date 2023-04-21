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
// function Sys.init 0
  (Sys.init)

// push constant 4000
  @4000
  D=A
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

// push constant 5000
  @5000
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// pop pointer 1
  @SP
  AM=M-1
  D=M
  @THAT
  M=D

// call Sys.main 0
// push return address onto stack
  @Sys.main$ret.0
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
// goto Sys.main
  @Sys.main
  0;JMP
// create return address label
(Sys.main$ret.0)

// pop TEMP 1
  @6
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

// label LOOP
  (LOOP)

// goto LOOP
  @LOOP
  0;JMP

// function Sys.main 5
  (Sys.main)
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

// push constant 4001
  @4001
  D=A
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

// push constant 5001
  @5001
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// pop pointer 1
  @SP
  AM=M-1
  D=M
  @THAT
  M=D

// push constant 200
  @200
  D=A
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

// push constant 40
  @40
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

// push constant 6
  @6
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

// push constant 123
  @123
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// call Sys.add12 1
// push return address onto stack
  @Sys.add12$ret.0
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
// goto Sys.add12
  @Sys.add12
  0;JMP
// create return address label
(Sys.add12$ret.0)

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

// add
  @SP
  AM=M-1
  D=M
  A=A-1
  M=M+D

// add
  @SP
  AM=M-1
  D=M
  A=A-1
  M=M+D

// add
  @SP
  AM=M-1
  D=M
  A=A-1
  M=M+D

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

// function Sys.add12 0
  (Sys.add12)

// push constant 4002
  @4002
  D=A
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

// push constant 5002
  @5002
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// pop pointer 1
  @SP
  AM=M-1
  D=M
  @THAT
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

// push constant 12
  @12
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

// infinite loop
(END)
  @END
  0;JMP
