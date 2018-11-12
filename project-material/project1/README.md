<b>Project 1:</b> Write an LL parser in antlr4 for XPLN language, with the following functionality.

<b>Due : November 27, in a single zip file, sent to me directly.</b>

<ol>
  
<li>Each project is individual work, and meant to be original effort. Sorry we cannot accept group projects.
  
<li> Language spec is same for both projects, which is XPLN in the upper directory.

<li>Your LL parser should take an XPLN program as input, print the parse tree in Lisp format if it is well-formed (using -tree option, rather than -gui).

<li>Therefore your LL parser must contain a fragment of rules in your antlr'd XPLN grammar for lexical analysis for all
legitimate tokens of XPLN.

<li>It is up to you whether to remove left-recursion in the cover grammar of XPLN given in the specs, because
  antlr4 (but not antlr3) can handle DIRECT left recursion. However, you are responsible for your design
  decisions and adhering to intended functionality in the project.

Note: A <b>cover grammar</b> shows the string set of the language, and it is usually meant to be descriptive.
They can differ from the grammar that actually does the computation.

<li>If the input XPLN program is not well-formed, the errors produced by antlr4 suffice for the current project, and you can produce more for bonus.

<li>For testing, make up some XPLN examples of your own, good ones and bad ones, including programs with good tokens and
bad tokens, and programs with good tokens but ill-formed structure, and include their output in your zip file.
Write a README to help the evaluator check how these examples can be tested independently.

<li>There are some constraints in well-formed XPLN programs, which you can handle by tree-walking or some other means.
The tree-walking system of antlr4 is flexible enough so that you can override the parse-tree methods of only the nodes of your own choosing. This is explained in lab-material section of this repo, under antlr. Google it to find more examples. Parr's book on antlr includes some real-life examples too.

<li>In project 1, you are expected to implement just one condition for well-formed XPLN programs: The main body and every function defined
must have at least one <code>return</code> statement. It is not our present concern whether that <code>return</code> statement is reachable, because this requires flow analysis, which we will talk about later.

<li>To check this functionality, include in your examples well-formed XPLN programs that violate this constraint, and some that does not violate it. Make them part of the bundle, including their output.

<li>Bundle your files, including README and antlr/java code, examples, and their output on your side, in the zip file, so that we can
run the code and compare the output with yours.
  
<li>I will ask some good solutions to send me a <code>pull request</code> if they wish to be included in this repo.
  If you want to make a separate repo on your own, this is fine too.
</ol>

All best.

-cemB
