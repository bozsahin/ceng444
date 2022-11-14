import sly
import lexer

class Parser(sly.Parser):
    tokens = lexer.Lexer.tokens
