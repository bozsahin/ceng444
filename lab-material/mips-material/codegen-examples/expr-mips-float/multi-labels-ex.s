# this example compiles OK by MIPS assembler; multiple labels on same instruction is allowed
# -cem bozsahin
.data
t368: .word 0
t369: .word 0
F: .word 0
B: .word 0
.text
lw $t1,F
l1:
l2:
sub $t0,$zero,$t1
sw $t0,t368
lw $t0,t368
l3:
l4:
l5:
li $t1,5
div $t0,$t0,$t1
sw $t0,t369
lw $t0,t369
sw $t0,B
