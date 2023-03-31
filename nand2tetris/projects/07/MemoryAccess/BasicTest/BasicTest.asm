// push constant 10
  @10
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

// push constant 21
  @21
  D=A
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

// push constant 36
  @36
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// pop THIS 6
  @6
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

// push constant 42
  @42
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

// pop THAT 5
  @5
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

// push constant 510
  @510
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// pop temp 6
  @6
  D=A
  @temp
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

// push THAT 5
  @5
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

// push THIS 6
  @6
  D=A
  @THIS
  A=M+D
  D=M
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push THIS 6
  @6
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

// sub
  @SP
  AM=M-1
  D=M
  A=A-1
  M=M-D

// push temp 6
  @6
  D=A
  @temp
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

// infinite loop
(END)
  @END
  0;JMP
