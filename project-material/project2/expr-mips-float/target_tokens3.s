

.data

B: .float 0.0
C: .float 0.0
t634: .float 0.0
t635: .float 0.0
t636: .float 0.0
E: .float 0.0
F: .float 0.0
t637: .float 0.0
t638: .float 0.0
t639: .float 0.0
A: .float 0.0
zzeerroo: .float 0.0

.text

main:
l.s $f0,C
li.s $f2,78.45
mul.s $f0,$f0,$f2
s.s $f0,t634
l.s $f0,B
l.s $f2,t634
add.s $f0,$f0,$f2
s.s $f0,t635
l.s $f2,E
#loading dummy zero float to $f0
l.s $f0,zzeerroo
sub.s $f0,$f0,$f2
s.s $f0,t636
l.s $f0,t636
l.s $f2,F
add.s $f0,$f0,$f2
s.s $f0,t637
l.s $f0,t637
li.s $f2,12.5
div.s $f0,$f0,$f2
s.s $f0,t638
l.s $f0,t635
l.s $f2,t638
sub.s $f0,$f0,$f2
s.s $f0,t639
l.s $f0,t639
s.s $f0,A
#MIPs termination protocol:
li $v0,10
syscall
.end main