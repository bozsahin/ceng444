<b>Project 1:</b> Write an LL parser in antlr4 for XPLN language, with the following functionality.

<b>Due : November 27, in a single zip file, sent to me directly.</b>

<ol>
<li> Language spec is same for both projects, which is XPLN in the higher directory.

<li>Your LL parser should take an XPLN program as input, print the parse tree in Lisp format if it is well-formed (using -tree option, rather than -gui).

<li>Therefore your LL parser must contain a fragment of rules in your antlr'd XPLN grammar for lexical analysis for all
legitimate tokens of XPLN.

<li>If the input XPLN program is not well-formed, the errors produced by antlr4 suffice for the current project, and you can produce more for bonus.

<li>For testing, make up some XPLN examples of your own, good ones and bad ones, including programs with good tokens and
bad tokens, and programs with good tokens but ill-formed structure, and include their output in your zip file.
Write a README to help the evaluator check how these examples can be tested independently.

<li>There are some constraints in well-formed XPLN programs, which you can handle by tree-walking or some other means.
The tree-walking system of antlr4 is flexible enough so that you can override the parse-tree methods of only the nodes of your own choosing. This is explained in lab-material section of this repo, under antlr. Google it to find more examples. Parr's book on antlr includes some real-life examples too.

<li>In project 1, you are expected to implement just one condition for well-formed XPLN programs: The main body and every function defined
must have at least one <code>return</code> statement. It is not our present concern whether that <code>return</code> statement is reachable, because this requires flow analysis, which we will talk about later.

<li>Bundle your files, including README and antlr/java code, and their output on your side, in the zip file, so that we can
run the code and compare the output with yours.
</ol>

All best.

-cemB
