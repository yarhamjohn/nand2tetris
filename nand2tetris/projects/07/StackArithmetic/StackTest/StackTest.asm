// push constant 17
  @17
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 17
  @17
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
  @TRUE2
  D;JEQ
  @SP
  A=M-1
  M=0
  @CONTINUE2
  0;JMP
(TRUE2)
  @SP
  A=M-1
  M=-1
(CONTINUE2)

// push constant 17
  @17
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

// eq
  @SP
  AM=M-1
  D=M
  A=A-1
  D=M-D
  @TRUE5
  D;JEQ
  @SP
  A=M-1
  M=0
  @CONTINUE5
  0;JMP
(TRUE5)
  @SP
  A=M-1
  M=-1
(CONTINUE5)

// push constant 16
  @16
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 17
  @17
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
  @TRUE8
  D;JEQ
  @SP
  A=M-1
  M=0
  @CONTINUE8
  0;JMP
(TRUE8)
  @SP
  A=M-1
  M=-1
(CONTINUE8)

// push constant 892
  @892
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 891
  @891
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
  @TRUE11
  D;JLT
  @SP
  A=M-1
  M=0
  @CONTINUE11
  0;JMP
(TRUE11)
  @SP
  A=M-1
  M=-1
(CONTINUE11)

// push constant 891
  @891
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 892
  @892
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
  @TRUE14
  D;JLT
  @SP
  A=M-1
  M=0
  @CONTINUE14
  0;JMP
(TRUE14)
  @SP
  A=M-1
  M=-1
(CONTINUE14)

// push constant 891
  @891
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 891
  @891
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
  @TRUE17
  D;JLT
  @SP
  A=M-1
  M=0
  @CONTINUE17
  0;JMP
(TRUE17)
  @SP
  A=M-1
  M=-1
(CONTINUE17)

// push constant 32767
  @32767
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 32766
  @32766
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
  @TRUE20
  D;JGT
  @SP
  A=M-1
  M=0
  @CONTINUE20
  0;JMP
(TRUE20)
  @SP
  A=M-1
  M=-1
(CONTINUE20)

// push constant 32766
  @32766
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 32767
  @32767
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
  @TRUE23
  D;JGT
  @SP
  A=M-1
  M=0
  @CONTINUE23
  0;JMP
(TRUE23)
  @SP
  A=M-1
  M=-1
(CONTINUE23)

// push constant 32766
  @32766
  D=A
  @SP
  A=M
  M=D
  @SP
  M=M+1

// push constant 32766
  @32766
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
  @TRUE26
  D;JGT
  @SP
  A=M-1
  M=0
  @CONTINUE26
  0;JMP
(TRUE26)
  @SP
  A=M-1
  M=-1
(CONTINUE26)

// push constant 57
  @57
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

// push constant 53
  @53
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

// push constant 112
  @112
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

// push constant 82
  @82
  D=A
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

// not
  @SP
  A=M-1
  M=!M

// infinite loop
(END)
  @END
  0;JMP
