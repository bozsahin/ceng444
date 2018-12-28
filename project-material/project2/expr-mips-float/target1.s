.data

B: .float 0.0
C: .float 0.0
D: .float 0.0
t626: .float 0.0
t627: .float 0.0
t628: .float 0.0
E: .float 0.0
F: .float 0.0
t629: .float 0.0
t630: .float 0.0
t631: .float 0.0
A: .float 0.0
zzeerroo: .float 0.0

.text

main:
l.s $f0,C
l.s $f2,D
mul.s $f0,$f0,$f2
s.s $f0,t626
l.s $f0,B
l.s $f2,t626
add.s $f0,$f0,$f2
s.s $f0,t627
l.s $f2,E
#loading dummy zero float to $f0
l.s $f0,zzeerroo
sub.s $f0,$f0,$f2
s.s $f0,t628
l.s $f0,t628
l.s $f2,F
add.s $f0,$f0,$f2
s.s $f0,t629
l.s $f0,t629
#converting to float
li $t0,5
mtc1 $t0,$f6
cvt.s.w $f2,$f6
#conversion done
div.s $f0,$f0,$f2
s.s $f0,t630
l.s $f0,t627
l.s $f2,t630
sub.s $f0,$f0,$f2
s.s $f0,t631
l.s $f0,t631
s.s $f0,A
#MIPs termination protocol:
li $v0,10
syscall
.end main
