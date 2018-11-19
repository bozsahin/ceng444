// this one disambiguates start of formula by a dot
// -cem bozsahin

grammar l;

start: s '$';

s : def s
  | '.' f
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
