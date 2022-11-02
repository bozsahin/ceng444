

.data

B: .float 0.0
C: .float 0.0
E: .float 0.0
F: .float 0.0
t391: .float 0.0
t392: .float 0.0
t393: .float 0.0
t394: .float 0.0
t395: .float 0.0
t396: .float 0.0
A: .float 0.0
zzeerroo: .float 0.0

.text

main:
li.s $f0,10.0
s.s $f0,B
li.s $f0,12.0
s.s $f0,C
li.s $f0,14.0
s.s $f0,E
li.s $f0,16.2
s.s $f0,F
l.s $f0,C
li.s $f2,78.45
mul.s $f0,$f0,$f2
s.s $f0,t391
l.s $f0,B
l.s $f2,t391
add.s $f0,$f0,$f2
s.s $f0,t392
l.s $f2,E
#loading dummy zero float to $f0
l.s $f0,zzeerroo
sub.s $f0,$f0,$f2
s.s $f0,t393
l.s $f0,t393
l.s $f2,F
add.s $f0,$f0,$f2
s.s $f0,t394
l.s $f0,t394
li.s $f2,12.5
div.s $f0,$f0,$f2
s.s $f0,t395
l.s $f0,t392
l.s $f2,t395
sub.s $f0,$f0,$f2
s.s $f0,t396
l.s $f0,t396
s.s $f0,A
#MIPs termination protocol:
li $v0,10
syscall
.end main