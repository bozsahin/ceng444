// A mini test grammar for balanced parentheses
// -cem bozsahin

grammar bp;

prog: start+;             // slightly cheating: a sequence of bps by iteration
                          // exercise: remove '+' and write recursively

start: '(' start ')' 
     | data
     | NEWLINE
     ;

data : NUM
     | OP
     | KEYWD
     | ID
     ;

WS : [ \t\r\n]+ -> skip ;    // skip spaces, tabs, newlines
OP : [+-/*] ;
NUM: [0-9]+ ;
ID : [A-Za-z]([A-Za-z]|NUM)* ;
KEYWD: '_'ID  ;             // use of pattern within pattern
NEWLINE:'\r'? '\n' ;        // returns newline to parser
