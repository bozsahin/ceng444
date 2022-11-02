# this code is meant for syntax checking only
# no MIPS manual addresses the problem!
# -cem bozsahin

.data

local: .word 4  # to check if spim allows x(y) kind of access
t632: .float 0.0
F: .float 0.0
t633: .float 0.0
B: .float 0.0
zzeerroo: .float 0.0

.text

main:
l.s $f2,local($sp)  # intended use: access 4 bytes off the stack top
l.s $f2,F
#loading dummy zero float to $f0
l.s $f0,zzeerroo
sub.s $f0,$f0,$f2
s.s $f0,t632
l.s $f0,t632
#converting to float
li $t0,5
mtc1 $t0,$f6
cvt.s.w $f2,$f6
#conversion done
div.s $f0,$f0,$f2
s.s $f0,t633
l.s $f0,t633
s.s $f0,B
#MIPs termination protocol:
li $v0,10
syscall
.end main
