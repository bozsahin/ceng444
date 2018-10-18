// this is what i did to get it up and running -cemB
antlr4 bp.g4
javac bp*.java
grun bp prog -gui data2
grun bp prog -tokens data2   // shows the tokens. nice for debugging (if token is not what you think, look at internal match)
grun bp prog -tree data2     // shows the parse tree, and in Lisp format! how convenient
