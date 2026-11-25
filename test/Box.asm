// Box.asm - K = 97 (VR Adikrishna, Roll No: 2501730397)
// K mod 4 = 1 -> width = 16 * (1 + 1) = 32 pixels (2 words)
// Start row = K = 97 (rows 97..116, 20 rows tall)
// Start address = SCREEN + 32*97 = 16384 + 3104 = 19488

(START)
    @color
    M=0
    @KBD
    D=M
    @DRAW
    D;JEQ
    @color
    M=-1

(DRAW)
    @19488
    D=A
    @addr
    M=D
    @20
    D=A
    @count
    M=D

(ROW)
    @color
    D=M
    @addr
    A=M
    M=D
    A=A+1
    M=D

    @32
    D=A
    @addr
    M=D+M

    @count
    MD=M-1
    @ROW
    D;JGT

    @START
    0;JMP
