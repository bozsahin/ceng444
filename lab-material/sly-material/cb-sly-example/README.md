YOU NEED:

- python3.8 or above
- pip3.8 or above
- You need to pip-install sly.py first. 

To use this code, do <code>(rlwrap) python main.py</code>

And follow the instructions there.

In the folder there are source files for a natural language grammar.

This grammar is parsed into IC code in the form of a python dict for source's AST.

Once parsed, the current IC code can generate target code in the form of Common Lisp expressions.

In main.py code you can see a fairly involved sly lexer and parser.

Sly is here: <a href="https://github.com/dabeaz/sly">sly repo</a>.

The .tc files are processable by <a href="https://github.com/bozsahin/ccglab">CCGlab</a>.

So, the TC is interpreted by Lisp.

enjoy.
-cemB

