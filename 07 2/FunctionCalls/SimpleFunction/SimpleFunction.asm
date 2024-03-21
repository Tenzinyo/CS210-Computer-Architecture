    // This file is part of www.nand2tetris.org
    // and the book "The Elements of Computing Systems"
    // by Nisan and Schocken, MIT Press.
    // File name: projects/08/FunctionCalls/SimpleFunction/SimpleFunction.vm
    // Performs a simple calculation and returns the result.
    // function SimpleFunction.test 2
(SimpleFunction.test)
D=0
@SP
A=M
M=D
@SP
M=M+1
D=0
@SP
A=M
M=D
@SP
M=M+1
    // push local 0
@R1
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
    // push local 1
@R1
D=M
@1
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
    // add
@SP
M=M-1
A=M
D=M
@temp
M=D
@SP
M=M-1
A=M
D=M
@temp
D=D+M
@SP
A=M
M=D
@SP
M=M+1
    // not
@SP
M=M-1
A=M
D=M
D=!D
@SP
A=M
M=D
@SP
M=M+1
    // push argument 0
@R2
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
    // add
@SP
M=M-1
A=M
D=M
@temp
M=D
@SP
M=M-1
A=M
D=M
@temp
D=D+M
@SP
A=M
M=D
@SP
M=M+1
    // push argument 1
@R2
D=M
@1
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
    // sub
@SP
M=M-1
A=M
D=M
@temp
M=D
@SP
M=M-1
A=M
D=M
@temp
D=D-M
@SP
A=M
M=D
@SP
M=M+1
    // return
@LCL
D=M
@R14
M=D
@R14
D=M
@5
A=D-A
D=M
@R15
M=D
@SP
M=M-1
A=M
D=M
@ARG
A=M
M=D
@ARG
D=M+1
@SP
M=D
@R14
D=M
D=D-1
A=D
D=M
@THAT
M=D
@R14
D=M
@2
D=D-A
A=D
D=M
@THIS
M=D
@R14
D=M
@3
D=D-A
A=D
D=M
@ARG
M=D
@R14
D=M
@4
D=D-A
A=D
D=M
@LCL
M=D
@R15
A=M
0;JMP
    // Infinite loop
(label5)
@label5
0;JMP
