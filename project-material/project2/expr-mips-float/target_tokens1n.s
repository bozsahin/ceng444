

.data

B: .float 0.0
C: .float 0.0
D: .float 0.0
E: .float 0.0
F: .float 0.0
t362: .float 0.0
t363: .float 0.0
t364: .float 0.0
t365: .float 0.0
t366: .float 0.0
t367: .float 0.0
A: .float 0.0
zzeerroo: .float 0.0

.text

main:
li.s $f0,5.0
s.s $f0,B
li.s $f0,2.0
s.s $f0,C
li.s $f0,10.0
s.s $f0,D
li.s $f0,10.0
s.s $f0,E
li.s $f0,20.0
s.s $f0,F
l.s $f0,C
l.s $f2,D
mul.s $f0,$f0,$f2
s.s $f0,t362
l.s $f0,B
l.s $f2,t362
add.s $f0,$f0,$f2
s.s $f0,t363
l.s $f2,E
#loading dummy zero float to $f0
l.s $f0,zzeerroo
sub.s $f0,$f0,$f2
s.s $f0,t364
l.s $f0,t364
l.s $f2,F
add.s $f0,$f0,$f2
s.s $f0,t365
l.s $f0,t365
#converting to float
li $t0,5
mtc1 $t0,$f6
cvt.s.w $f2,$f6
#conversion done
div.s $f0,$f0,$f2
s.s $f0,t366
l.s $f0,t363
l.s $f2,t366
sub.s $f0,$f0,$f2
s.s $f0,t367
l.s $f0,t367
s.s $f0,A
#MIPs termination protocol:
li $v0,10
syscall
.end main
