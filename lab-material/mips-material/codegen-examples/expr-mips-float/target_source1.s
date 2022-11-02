

.data

B: .float 0.0
C: .float 0.0
D: .float 0.0
t369: .float 0.0
t370: .float 0.0
t371: .float 0.0
E: .float 0.0
F: .float 0.0
t372: .float 0.0
t373: .float 0.0
t374: .float 0.0
A: .float 0.0
zzeerroo: .float 0.0

.text

main:
l.s $f0,C
l.s $f2,D
mul.s $f0,$f0,$f2
s.s $f0,t369
l.s $f0,B
l.s $f2,t369
add.s $f0,$f0,$f2
s.s $f0,t370
l.s $f2,E
#loading dummy zero float to $f0
l.s $f0,zzeerroo
sub.s $f0,$f0,$f2
s.s $f0,t371
l.s $f0,t371
l.s $f2,F
add.s $f0,$f0,$f2
s.s $f0,t372
l.s $f0,t372
#converting to float
li $t0,5
mtc1 $t0,$f6
cvt.s.w $f2,$f6
#conversion done
div.s $f0,$f0,$f2
s.s $f0,t373
l.s $f0,t370
l.s $f2,t373
sub.s $f0,$f0,$f2
s.s $f0,t374
l.s $f0,t374
s.s $f0,A
#MIPs termination protocol:
li $v0,10
syscall
.end main

.data

B: .float 0.0
C: .float 0.0
D: .float 0.0
t369: .float 0.0
t370: .float 0.0
t371: .float 0.0
E: .float 0.0
F: .float 0.0
t372: .float 0.0
t373: .float 0.0
t374: .float 0.0
A: .float 0.0
zzeerroo: .float 0.0

.text

main:
l.s $f0,C
l.s $f2,D
mul.s $f0,$f0,$f2
s.s $f0,t369
l.s $f0,B
l.s $f2,t369
add.s $f0,$f0,$f2
s.s $f0,t370
l.s $f2,E
#loading dummy zero float to $f0
l.s $f0,zzeerroo
sub.s $f0,$f0,$f2
s.s $f0,t371
l.s $f0,t371
l.s $f2,F
add.s $f0,$f0,$f2
s.s $f0,t372
l.s $f0,t372
#converting to float
li $t0,5
mtc1 $t0,$f6
cvt.s.w $f2,$f6
#conversion done
div.s $f0,$f0,$f2
s.s $f0,t373
l.s $f0,t370
l.s $f2,t373
sub.s $f0,$f0,$f2
s.s $f0,t374
l.s $f0,t374
s.s $f0,A
#MIPs termination protocol:
li $v0,10
syscall
.end main

.data

B: .float 0.0
C: .float 0.0
D: .float 0.0
t369: .float 0.0
t370: .float 0.0
t371: .float 0.0
E: .float 0.0
F: .float 0.0
t372: .float 0.0
t373: .float 0.0
t374: .float 0.0
A: .float 0.0
zzeerroo: .float 0.0

.text

main:
l.s $f0,C
l.s $f2,D
mul.s $f0,$f0,$f2
s.s $f0,t369
l.s $f0,B
l.s $f2,t369
add.s $f0,$f0,$f2
s.s $f0,t370
l.s $f2,E
#loading dummy zero float to $f0
l.s $f0,zzeerroo
sub.s $f0,$f0,$f2
s.s $f0,t371
l.s $f0,t371
l.s $f2,F
add.s $f0,$f0,$f2
s.s $f0,t372
l.s $f0,t372
#converting to float
li $t0,5
mtc1 $t0,$f6
cvt.s.w $f2,$f6
#conversion done
div.s $f0,$f0,$f2
s.s $f0,t373
l.s $f0,t370
l.s $f2,t373
sub.s $f0,$f0,$f2
s.s $f0,t374
l.s $f0,t374
s.s $f0,A
#MIPs termination protocol:
li $v0,10
syscall
.end main