

.data

B: .float 0.0
C: .float 0.0
t385: .float 0.0
t386: .float 0.0
t387: .float 0.0
E: .float 0.0
F: .float 0.0
t388: .float 0.0
t389: .float 0.0
t390: .float 0.0
A: .float 0.0
zzeerroo: .float 0.0

.text

main:
l.s $f0,C
li.s $f2,78.45
mul.s $f0,$f0,$f2
s.s $f0,t385
l.s $f0,B
l.s $f2,t385
add.s $f0,$f0,$f2
s.s $f0,t386
l.s $f2,E
#loading dummy zero float to $f0
l.s $f0,zzeerroo
sub.s $f0,$f0,$f2
s.s $f0,t387
l.s $f0,t387
l.s $f2,F
add.s $f0,$f0,$f2
s.s $f0,t388
l.s $f0,t388
li.s $f2,12.5
div.s $f0,$f0,$f2
s.s $f0,t389
l.s $f0,t386
l.s $f2,t389
sub.s $f0,$f0,$f2
s.s $f0,t390
l.s $f0,t390
s.s $f0,A
#MIPs termination protocol:
li $v0,10
syscall
.end main