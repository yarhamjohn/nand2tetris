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
// function Class1.set 0
  (Class1.set)

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

// pop static 0
  @SP
  AM=M-1
  D=M
  @Class1.0
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

// pop static 1
  @SP
  AM=M-1
  D=M
  @Class1.1
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

// function Class1.get 0
  (Class1.get)

// push static 0
  @Class1.0
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push static 1
  @Class1.1
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

// function Class2.set 0
  (Class2.set)

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

// pop static 0
  @SP
  AM=M-1
  D=M
  @Class2.0
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

// pop static 1
  @SP
  AM=M-1
  D=M
  @Class2.1
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

// function Class2.get 0
  (Class2.get)

// push static 0
  @Class2.0
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push static 1
  @Class2.1
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

// push constant 6
  @6
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

// call Class1.set 2
// push return address onto stack
  @Class1.set$ret.0
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
// goto Class1.set
  @Class1.set
  0;JMP
// create return address label
(Class1.set$ret.0)

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

// push constant 23
  @23
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

// call Class2.set 2
// push return address onto stack
  @Class2.set$ret.0
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
// goto Class2.set
  @Class2.set
  0;JMP
// create return address label
(Class2.set$ret.0)

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

// call Class1.get 0
// push return address onto stack
  @Class1.get$ret.0
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
// goto Class1.get
  @Class1.get
  0;JMP
// create return address label
(Class1.get$ret.0)

// call Class2.get 0
// push return address onto stack
  @Class2.get$ret.0
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
// goto Class2.get
  @Class2.get
  0;JMP
// create return address label
(Class2.get$ret.0)

// label WHILE
  (WHILE)

// goto WHILE
  @WHILE
  0;JMP

// infinite loop
(END)
  @END
  0;JMP
