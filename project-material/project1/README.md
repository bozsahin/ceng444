Project 1: Write an LL parser in antlr4 for XPLN language, with the following functionality.

<b>Due : November 27, in a single zip file, sent to me directly.</b>

Language spec is same for both projects, which is XPLN in the higher directory.

Your LL parser should take an XPLN program as input, print the parse tree in Lisp format if it is well-formed (using -tree option, rather than -gui).

If it is not well-formed, the errors produced by antlr4 suffice for the current project, and you can produce more for bonus.

There are some constraints in well-formed XPLN programs, which you can handle by tree-walking or some other means.
The tree-walking system of antlr4 is flexible enough so that you can override the parse-tree methods of only the nodes of your own choosing.

You are expected to implement just one condition for well-formed XPLN programs: The main body and every function defined
must have at least one <code>return</code> statement. It is not our present concern whether that <code>return</code> statement is reachable, because this requires flow analysis, which we will talk about later.

