# ceng444: Language processors
Middle East Technical University CENG introductory compiler course

This is the website of the course when I teach it. 

<b>Term</b>: Fall 2022 (for the academic year 2022-2023)

<b>Instructor</b>: Cem Bozsahin (Cogsci).  TA: Cem Onem (CEng).

<b>Office hours</b>: Open door except lecture days (my office is B-209 at Informatics, tel: 7758)

<b>Course hours</b>: TBA (CENG building)
<br> We will actually do 75 minutes without break each day. The course is not 200 minutes!

<b>Textbook</b>: Compilers: Principles, Techniques and Tools. Aho, Lam, Sethi, Ullman (2007). Addison-Wesley/Pearson.
2nd Edition of the Dragon Book.

The first edition was a classic in CS, and 2nd edition adds more to the legend.


<b>Catalog description</b>: Formal description and classification of programming languages. Syntactic specification. The parsing problem. Top-down and bottom-up parsing. Attaching semantics to syntax. Translator writing systems. Translator writing case study.

<b>Course objectives</b>: Assuming familiarity with formal grammars, i.e., Ceng280 material, we emphasize modern tools and techniques for compiler construction, which can be used for any task of mapping from one formal representation to another.

<b>Course prerequisite</b>: Officially, none, according to METU catalog. Unofficially, you need to feel comfortable with
 programming, data structures, and formal languages. 3rd-year standing in CS, or CENG280 in the bag, or
 COGS501 *and* COGS502 will suffice. 
 
 *Informatics Students*: Please contact me DURING REGISTRATION so that I can
 tell you whether you are eligible for the course, and to inform CENG department in time for them to open
 a quota for you.

<b>Course outline</b>

<ol>
<li> Introduction: a walk through all stages of compiling (1 week)
<li> Scanning (lexical analysis) (1)
<li> Parsing (syntactic analysis) (3)
<li> Intermediate code (1)
<li> Virtual machines (1)
<li> Code generation (syntax-directed derivation/description---SDD) (1)
<li> Scope handling and run-time (1)
<li> A preview of compiling functional languages (2)
</ol>

<b>Course conduct</b>: 11 weeks of lecture, 2 weeks of in-class labs; 1 week in-class exam; 2 programming projects; no extra homework.

<p>We will use TWO tools for compiler design: (1) <code>sly.py</code> (which is lex and yacc in python)
 (2) <code>Spike</code> for RISC-V code generation.

 
<p>In-class labs introduce sly.py and RISC-V.

<p> The second project includes code generation and execution, in
RISC-V, using <a href="https://github.com/riscv/riscv-isa-sim">Spike</a>.

<b>Grading</b>:
<ol>
 <li> Mid-term exam: %20 (<b> in class</b>)
<li> mini-project 1 (lex analysis and parsing into abstract syntax trees): %25
<li> mini-project 2 (code generation and execution): %35
<li> Final exam: %20
 <li><b>Gazozuna Kompaylır Ödülü</b> : priceless!!
  <br> Highest honour we give out to best successful completion of the second project.
  <br> It is, ehm, <a href="https://www.linkedin.com/in/merihakar">officially recognized</a>, 
  <br> and those who are in the know reading your CV at least in Turkey would know what you achieved.
  <br>Usually handed by the end of first spring term after completion, with a ceremony!
  <br>You will be a proud owner of 4 bottles of a yerli ve milli soft drink,
  <br>with a certificate in a low-budget print, namely my handwriting.
  <br> And, since you asked, we can't afford 444 bottles; or 44, in fact.
</ol>

<b>2019-2020 Gazozuna Kompaylir odulleri:</b>
<ul>
<li>Yunus Can Cakir: bison/flex -> LLVM
<li>Emre Gullu: yalalr -> MIPS
<li>Ozan Akin : rust -> x64
</ul>

tebrix!

Developer GOODIES:

- Default python interpreters are SLOW. You may want to try <code><a href="https://pypy.org">pypy</a></code>.
 
- If you do make the switch, change <code>pip install sly</code> for sly install
to <code>pip_pypy3 install sly</code>.

- And when you want to call <code>python</code>, change it to <code>pypy3</code> call.

- Command recall: In lunix/macosphere, you can recall earlier commands by installing <code>rlwrap</code>.
