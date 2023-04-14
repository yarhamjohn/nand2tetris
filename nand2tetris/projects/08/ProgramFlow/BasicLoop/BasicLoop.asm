// push constant 0
  @0
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

// label LOOP_START
  (LOOP_START)

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

// if-goto LOOP_START
  @SP
  AM=M-1
  D=M
  @LOOP_START
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

// infinite loop
(END)
  @END
  0;JMP
