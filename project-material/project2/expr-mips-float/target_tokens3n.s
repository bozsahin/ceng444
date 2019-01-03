

.data

B: .float 0.0
C: .float 0.0
E: .float 0.0
F: .float 0.0
t370: .float 0.0
t371: .float 0.0
t372: .float 0.0
t373: .float 0.0
t374: .float 0.0
t375: .float 0.0
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
s.s $f0,t370
l.s $f0,B
l.s $f2,t370
add.s $f0,$f0,$f2
s.s $f0,t371
l.s $f2,E
#loading dummy zero float to $f0
l.s $f0,zzeerroo
sub.s $f0,$f0,$f2
s.s $f0,t372
l.s $f0,t372
l.s $f2,F
add.s $f0,$f0,$f2
s.s $f0,t373
l.s $f0,t373
li.s $f2,12.5
div.s $f0,$f0,$f2
s.s $f0,t374
l.s $f0,t371
l.s $f2,t374
sub.s $f0,$f0,$f2
s.s $f0,t375
l.s $f0,t375
s.s $f0,A
#MIPs termination protocol:
li $v0,10
syscall
.end main