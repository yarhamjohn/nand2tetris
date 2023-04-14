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

// pop pointer 1
  @SP
  AM=M-1
  D=M
  @THAT
  M=D

// push constant 0
  @0
  D=A
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

// pop THAT 1
  @1
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

// label MAIN_LOOP_START
  (MAIN_LOOP_START)

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

// if-goto COMPUTE_ELEMENT
  @SP
  AM=M-1
  D=M
  @COMPUTE_ELEMENT
  D;JNE

// goto END_PROGRAM
  @END_PROGRAM
  0;JMP

// label COMPUTE_ELEMENT
  (COMPUTE_ELEMENT)

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

// push THAT 1
  @1
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

// pop THAT 2
  @2
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

// push pointer 1
  @THAT
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

// goto MAIN_LOOP_START
  @MAIN_LOOP_START
  0;JMP

// label END_PROGRAM
  (END_PROGRAM)

// infinite loop
(END)
  @END
  0;JMP
