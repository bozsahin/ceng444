import sly

class Lexer(sly.Lexer):

    def __init__(self):
        super().__init__()
        self.keywords = {'if', 'else', 'while', 'print', 'and', 'fun', 'for', 'or', 'return', 'var'}

    tokens = { NUMBER, ID, WHILE, IF, ELSE, PRINT,
               PLUS, MINUS, TIMES, DIVIDE, ASSIGN,
               EQ, LT, LE, GT, GE, NE, AND,
               FALSE, TRUE, FUN, FOR, OR,
               RETURN, VAR, STRING, NOT}

    literals = { '(', ')', '{', '}', '[', ']', ';' , ',', '#'}

    ignore = ' \t\r\f\v'

    ignore_comment = r'//.*'

    EQ      = r'=='
    LE      = r'<='
    GE      = r'>='
    NE      = r'!='

    ASSIGN  = r'='
    LT      = r'<'
    GT      = r'>'
    NOT     = r'!'

    PLUS    = r'\+'
    MINUS   = r'-'
    TIMES   = r'\*'
    DIVIDE  = r'/'

    @_(r'"[^"]*"')
    def STRING(self, t):
        t.value = t.value[1:-1]
        return t

    @_(r'\d+(\.\d+)?')
    def NUMBER(self, t):
        t.value = float(t.value)
        return t

    @_(r'[a-zA-Z_][a-zA-Z0-9_]*')
    def ID(self, t):
        if t.value in self.keywords:
            t.type = t.value.upper()
        if t.value == 'true':
            t.value = True
            t.type = 'TRUE'
        elif t.value == 'false':
            t.value = False
            t.type = 'FALSE'
        return t

    @_(r'\n+')
    def ignore_newline(self, t):
        self.lineno += t.value.count('\n')

    def error(self, t):
        print('Line %d: Bad character %r' % (self.lineno, t.value[0]))
        self.index += 1
        t.value = t.value[0]
        return t
