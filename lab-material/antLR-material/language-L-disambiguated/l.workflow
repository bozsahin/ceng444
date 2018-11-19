// this is what i did to get it up and running -cemB
antlr4 l.g4
javac l*.java
grun bp prog -gui data1  // LL-ness test
grun bp prog -gui data2  // associativity check
grun bp prog -gui data3  // precedence check
