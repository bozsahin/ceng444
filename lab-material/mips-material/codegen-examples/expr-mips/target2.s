.data

t368: .word 0
F: .word 0
t369: .word 0
B: .word 0

.text

main:
lw $t1,F
sub $t0,$zero,$t1
sw $t0,t368
lw $t0,t368
li $t1,5
div $t0,$t0,$t1
sw $t0,t369
lw $t0,t369
sw $t0,B
