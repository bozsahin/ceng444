.data

B: .word 0
C: .word 0
t370: .word 0
t371: .word 0
t372: .word 0
E: .word 0
F: .word 0
t373: .word 0
t374: .word 0
t375: .word 0
A: .word 0

.text

main:
lw $t0,C
li $t1,78.45
mul $t0,$t0,$t1
sw $t0,t370
lw $t0,B
lw $t1,t370
add $t0,$t0,$t1
sw $t0,t371
lw $t1,E
sub $t0,$zero,$t1
sw $t0,t372
lw $t0,t372
lw $t1,F
add $t0,$t0,$t1
sw $t0,t373
lw $t0,t373
li $t1,12.5
div $t0,$t0,$t1
sw $t0,t374
lw $t0,t371
lw $t1,t374
sub $t0,$t0,$t1
sw $t0,t375
lw $t0,t375
sw $t0,A
