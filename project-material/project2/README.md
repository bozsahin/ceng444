<b>Project 2:</b> Write an LALR-based code  generator for XPLN language, with the following functionality.

<b>Due : January 4, 2019, in a single zip file, sent to me directly.</b>

<ol>
  
<li>Each project is individual work, and meant to be original effort. Sorry we cannot accept group projects.
  
<li>Language spec is same for both projects, which is XPLN in the upper directory.

<li>Your code generator should take an XPLN program as input, display the IC code for it, and the MIPS code (if IC is different then MIPS assembler).

<li>Use yalalr system for LALR parsing and code generation. If you want to use something else, you're own your own and I can't help you if something goes wrong.

<li>Yalalr repo contains examples of TAC and ZAC (zero address code) generation for a small fragment of a language similar to XPLN. You can use that to get going.

<li>the expr-tac subdir contains very simple TAC templates. You can replace them with real MIPS instructions, or take the result in TAC and add another
stage to map them to MIPS. It's up to you.

<li>You may assume now that the input is well-formed since we dealt with that in the first project.

<li>You should be able to execute the target code for some meaningful programs to check the output.

<li>For testing, make up some XPLN examples of your own.
Write a README to help the evaluator check how these examples can be tested independently.

<li>Bundle your files, including README and all other code and data.
  
<li>I will ask some good solutions to send me a <code>pull request</code> if they wish to be included in this repo.
  If you want to make a separate repo on your own, this is fine too.
</ol>

All best.

-cemB
