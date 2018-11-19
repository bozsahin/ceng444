// A simple LL(2) language
// antlr wont complain or warn you about k=2
// because it tries other alternatives
// -cem bozsahin

grammar l;

start: s '$';

s : def s
  | f
  ; 

def : PL '=' f;

f : t                       // rule reordering gives different parse tree for same data
  | t '=>' f
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
