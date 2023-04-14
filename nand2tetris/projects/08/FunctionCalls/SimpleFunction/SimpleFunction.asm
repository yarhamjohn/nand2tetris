// function SimpleFunction.test 2
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

// add
  @SP
  AM=M-1
  D=M
  A=A-1
  M=M+D

// not
  @SP
  A=M-1
  M=!M

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
