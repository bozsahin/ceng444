.data

B: .word 0
C: .word 0
D: .word 0
t362: .word 0
t363: .word 0
t364: .word 0
E: .word 0
F: .word 0
t365: .word 0
t366: .word 0
t367: .word 0
A: .word 0

.text

main:
lw $t0,C
lw $t1,D
mul $t0,$t0,$t1
sw $t0,t362
lw $t0,B
lw $t1,t362
add $t0,$t0,$t1
sw $t0,t363
lw $t1,E
sub $t0,$zero,$t1
sw $t0,t364
lw $t0,t364
lw $t1,F
add $t0,$t0,$t1
sw $t0,t365
lw $t0,t365
li $t1,5
div $t0,$t0,$t1
sw $t0,t366
lw $t0,t363
lw $t1,t366
sub $t0,$t0,$t1
sw $t0,t367
lw $t0,t367
sw $t0,A
