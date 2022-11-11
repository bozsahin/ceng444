The language to be compiled will be the same for project 1 and project 2.

- Project 1 is about lexical analysis, syntactic analysis, AST generation, and a bit of error reporting.

PROJECT 1 DUE DATE: December 4, 23.59

- Project 2 is about code generation and execution. You can assume that the input is well-formed.

PROJECT 2 DUE DATE: Last day of classes, 23.59

This term's language is <code>Vox</code>, a modified version of <a href="https://github.com/Darksecond/lox">Lox</a>.

-1 Namely, Vox is Lox minus closures, libraries and OOP stuff (i.e. classes and dynamic objects).

-2 Vox is plus-Lox in data structures: We can have vectors of basic data types of Lox. 

-3 There are also some syntactic differences, for example in 
the multiple assignment statement, and the expression statement.
Boolean use of an identifier and function call is marked, etc.
Formal specification of Vox is given in this directory.

Why have we made the changes 1-2 to Lox in a compiler course? Because we want you
to go all the way down to a physical architecture, rather than settle for an interpreter.

This is probably the only compiler course you will take, and it is important
for a computer scientist to be left alone with the physical thing at least once. 

We will stay at the level of architecture for the real thing, looking at it
from the perspective of RISC-V.

VOX LEXICON:

- Keywords and identifiers are case-sensitive.

- Identifier convention is same as Lox.

VOX SYNTAX:

- Check out the formal specification of Vox grammar in this directory.

- Indenting is not significant.

- Comments start with // and end at the end of the same line.

VOX SEMANTICS:

- Vox programs commence execution by executing top-level statements in the order they are specified.

- Variables must be declared before use.  (Some say this is syntax; we'd say
                                                it's more about programmer's psychology.)

- Variables cannot be re-declared in the same block (ditto).

- Vectors are homogeneous.

- Vector indices start from 0. They are integers.

- To stay more or less compatible with Lox without libraries, we eschew the input statement.

Happy Voxing,


-Cem & Cem

November 2022
