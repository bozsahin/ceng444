// A simple LL(2) language
// antlr4 wont complain or warn you about k=2.
// antlr3 would complain about this grammar, because it is not LL(1).
// And, that is the right thing to do.
// antlr4 gave up on table-driven LL, whether language is LL or not.
// Think of it this way: If you intended your grammar to be LL, and made
//    a mistake, how can you find out unless you spot a wrong parse tree?
// -cem bozsahin

grammar l;

start: s '$';

s : def s
  | e
  ; 

def : PL '=' e;

e : f '=>' e 
  | t
  ;

t : f
  ;

f : PL
  | '(' e ')'
  | '~' f
  | '0'
  | '1'
  ;


WS : [ \t\r\n]+ -> skip ;    // skip spaces, tabs, newlines
NEWLINE:'\r'? '\n' ;        // returns newline to parser
PL : [A-Za-z] ;             // proposition letters
