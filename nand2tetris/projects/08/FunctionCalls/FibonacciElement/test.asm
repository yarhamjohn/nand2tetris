  @256
  D=A
  @SP
  M=D
  @50
  D=A
  @R15
  M=D
(CALL_FUNCTION)
  @R15
  M=D
  @R14
  D=M
  @SP
  A=M
  M=D
  @LCL
  D=M
  @SP
  AM=M+1
  M=D
  @ARG
  D=M
  @SP
  AM=M+1
  M=D
  @THIS
  D=M
  @SP
  AM=M+1
  M=D
  @THAT
  D=M
  @SP
  AM=M+1
  M=D
  @SP
  D=M
  @5
  D=D-A
  @R13
  D=D-M
  @ARG
  M=D
  @SP
  D=M
  @LCL
  M=D
  @R15
  A=M
  0;JMP
 @5
 D=A
  @LCL
  M=D
 @100
 D=A
 @0
 M=D
(FUNCTION_RETURN)
  @LCL
  D=M
  @13
  M=D
  @5
  A=D-A
  D=M
  @14
  M=D
  @SP
  AM=M-1
  D=M
  @ARG
  A=M
  M=D
  @ARG
  D=M+1
  @SP
  M=D
  @13
  AM=M-1
  D=M
  @THAT
  M=D
  @13
  AM=M-1
  D=M
  @THIS
  M=D
  @13
  AM=M-1
  D=M
  @ARG
  M=D
  @13
  AM=M-1
  D=M
  @LCL
  M=D
  @14
  A=M
  0;JMP
  @256
  D=A
  @SP
  M=D
  @0
  D=A
  @R13
  M=D
  @Sys.init$ret.0
  D=A
  @R14
  M=D
  @Sys.init
  D=A
  @CALL_FUNCTION
  0;JMP
(Sys.init$ret.0)
  (Main.fibonacci)
  @SP
  A=M
  @SP
  M=A
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
  @2
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1
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
  @SP
  AM=M-1
  D=M
  @IF_TRUE
  D;JNE
  @IF_FALSE
  0;JMP
  (IF_TRUE)
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
  @FUNCTION_RETURN
  0;JMP
  (IF_FALSE)
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
  @2
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1
  @SP
  AM=M-1
  D=M
  A=A-1
  M=M-D
  @1
  D=A
  @R13
  M=D
  @Main.fibonacci$ret.0
  D=A
  @R14
  M=D
  @Main.fibonacci
  D=A
  @CALL_FUNCTION
  0;JMP
(Main.fibonacci$ret.0)
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
  @1
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1
  @SP
  AM=M-1
  D=M
  A=A-1
  M=M-D
  @1
  D=A
  @R13
  M=D
  @Main.fibonacci$ret.1
  D=A
  @R14
  M=D
  @Main.fibonacci
  D=A
  @CALL_FUNCTION
  0;JMP
(Main.fibonacci$ret.1)
  @SP
  AM=M-1
  D=M
  A=A-1
  M=M+D
  @FUNCTION_RETURN
  0;JMP
  (Sys.init)
  @SP
  A=M
  @SP
  M=A
  @4
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1
  @1
  D=A
  @R13
  M=D
  @Main.fibonacci$ret.2
  D=A
  @R14
  M=D
  @Main.fibonacci
  D=A
  @CALL_FUNCTION
  0;JMP
(Main.fibonacci$ret.2)
  (WHILE)
  @WHILE
  0;JMP
(END)
  @END
  0;JMP
