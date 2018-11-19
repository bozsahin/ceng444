// This example shows that it's a bad idea not to issue
// a warning when the grammar is not LL.
// (antlr3 used to give a warning.)
// It produces a wrong tree for some examples, like data1 here,
//  but you can miss that because there is no warning it's not LL!
// -cem bozsahin

grammar l;

start: s '$';

s : def s
  | f
  ; 

def : PL '=' f;

f : t '=>' f
  | t
  ;

t : PL
  | '(' f ')'
  | '~' f
  | '0'
  | '1'
  ;


WS : [ \t\r\n]+ -> skip ;    // skip spaces, tabs, newlines
NEWLINE:'\r'? '\n' ;        // returns newline to parser
PL : [A-Za-z] ;             // proposition letters
