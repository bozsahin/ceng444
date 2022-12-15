
from dataclasses import dataclass
from typing import List, Tuple, Union
import sly
from ast_tools import ABinary, AExpr, ALiteral, AUMinus, Assign, Block, Call, Comparison, ErrorStmt, Expr, ForLoop, FunDecl, GetVector, Identifier, IfElse, LBinary, LExpr, LLiteral, LNot, LPrimary, Print, Program, Return, SLiteral, SetVector, Stmt, VarDecl, Variable, WhileLoop
import lexer


class Parser(sly.Parser):
    tokens = lexer.Lexer.tokens
    debugfile = 'parser.out'

    @_('varDecls funDecls free_statements')
    def program(self, p) -> Program:
        return Program(p[0], p[1], p[2])

    @_('funDecls funDecl')
    def funDecls(self, p) -> List[FunDecl]:
        p[0].append(p[1])
        return p[0]

    @_('empty')
    def funDecls(self, p) -> List[FunDecl]:
        return []

    @_('free_statements free_statement')
    def free_statements(self, p) -> List[Stmt]:
        if p[1]:
            p[0].append(p[1])
        return p[0]

    @_('empty')
    def free_statements(self, p) -> List[Stmt]:
        return []

    @_('FUN function')
    def funDecl(self, p) -> FunDecl:
        return FunDecl(*p[1])

    @_('VAR identifier ";"')
    def varDecl(self, p) -> VarDecl:
        return VarDecl(p[1], None)

    @_('VAR identifier ASSIGN init ";"')
    def varDecl(self, p) -> VarDecl:
        return VarDecl(p[1], p.init)

    @_('simpleStmt ";"',
       'compoundStmt')
    def free_statement(self, p) -> List[Stmt]:
        return p[0]

    @_('error "}"',
       'error ";"')
    def free_statement(self, p) -> ErrorStmt:
        return ErrorStmt()

    @_('asgnStmt',
       'printStmt',
       'returnStmt')
    def simpleStmt(self, p) -> Stmt:
        return p[0]

    @_('ifStmt',
       'whileStmt',
       'forStmt')
    def compoundStmt(self, p) -> Stmt:
        return p[0]

    @_('free_statement')
    def statement(self, p) -> Union[Stmt, None]:
        return p[0]

    @_('block')
    def statement(self, p) -> Stmt:
        return p[0]

    @_('identifier ASSIGN expr')
    def asgnStmt(self, p) -> Assign:
        return Assign(p[0], p[2])

    @_('identifier "[" aexpr "]" ASSIGN expr')
    def asgnStmt(self, p) -> SetVector:
        return SetVector(p.identifier, p.aexpr, p.expr)

    @_('asgnStmt')
    def asgnStmt_opt(self, p) -> Union[Assign, None]:
        return p[0]

    @_('empty')
    def asgnStmt_opt(self, p) -> Union[Assign, None]:
        return None

    @_('lexpr')
    def lexpr_opt(self, p) -> Union[LExpr, None]:
        return p[0]

    @_('empty')
    def lexpr_opt(self, p) -> Union[LExpr, None]:
        return None

    @_('FOR "(" asgnStmt_opt ";" lexpr_opt ";" asgnStmt_opt ")" statement')
    def forStmt(self, p) -> ForLoop:
        return ForLoop(p.asgnStmt_opt0, p.lexpr_opt, p.asgnStmt_opt1, p.statement)

    @_('RETURN expr')
    def returnStmt(self, p) -> Return:
        return Return(p.expr)

    @_('WHILE lexpr statement')
    def whileStmt(self, p) -> WhileLoop:
        return WhileLoop(p.lexpr, p.statement)

    @_('varDecls varDecl')
    def varDecls(self, p) -> List[VarDecl]:
        p[0].append(p[1])
        return p[0]

    @_('empty')
    def varDecls(self, p) -> List[VarDecl]:
        return []

    @_('statements statement')
    def statements(self, p) -> List[Stmt]:
        p[0].append(p[1])
        return p[0]

    @_('empty')
    def statements(self, p) -> List[Stmt]:
        return []

    @_('"{" varDecls statements "}"')
    def block(self, p) -> Block:
        return Block(p.varDecls, p.statements)

    @_('PRINT expr')
    def printStmt(self, p) -> Print:
        return Print(p.expr)

    @_('IF lexpr statement')
    def ifStmt(self , p) -> IfElse:
        return IfElse(p.lexpr, p.statement, None)

    @_('IF lexpr statement ELSE statement')
    def ifStmt(self, p) -> IfElse:
        return IfElse(p.lexpr, p[2], p[4])

    @_('expr')
    def init(self, p) -> Union[Expr, List[Expr]]:
        return p[0]

    @_('"[" arguments "]"')
    def init(self, p) -> Union[Expr, List[Expr]]:
        return p[1]

    @_('lexpr', 'aexpr', 'sexpr')
    def expr(self, p) -> Expr:
        return p[0]

    @_('lexpr OR lterm')
    def lexpr(self, p) -> LBinary:
        return LBinary(p[1], p.lexpr, p.lterm)

    @_('lterm')
    def lexpr(self, p) -> LExpr:
        return p[0]

    @_('lterm AND lfact')
    def lterm(self, p) -> LBinary:
        return LBinary(p[1], p.lterm, p.lfact)

    @_('lfact')
    def lterm(self, p) -> LExpr:
        return p[0]

    @_('cexpr')
    def lfact(self, p) -> Comparison:
        return p[0]

    @_('TRUE', 'FALSE')
    def lfact(self, p):
        return LLiteral(p[0])

    @_('"#" call',
       '"#" getVector')
    def lfact(self, p) -> LPrimary:
        return LPrimary(p[1])
    
    @_('"#" identifier')
    def lfact(self, p) -> LPrimary:
        return LPrimary(Variable(p[1]))

    @_('NOT lfact')
    def lfact(self, p) -> LNot:
        return LNot(p[1])

    @_('"(" lexpr ")"')
    def lfact(self, p) -> LExpr:
        return p[1]

    @_('aexpr PLUS term',
       'aexpr MINUS term')
    def aexpr(self, p) -> ABinary:
        return ABinary(p[1], p[0], p[2])

    @_('term')
    def aexpr(self, p) -> AExpr:
        return p[0]

    @_('term TIMES fact',
       'term DIVIDE fact')
    def term(self, p) -> ABinary:
        return ABinary(p[1], p[0], p[2])

    @_('fact')
    def term(self, p) -> AExpr:
        return p[0]

    @_('MINUS fact')
    def fact(self, p) -> AUMinus:
        return AUMinus(p[1])

    @_('call')
    def fact(self, p) -> Call:
        return p[0]

    @_('NUMBER')
    def fact(self, p) -> ALiteral:
        return ALiteral(p[0])
    
    @_('identifier')
    def fact(self, p) -> Variable:
        return Variable(p[0])

    @_('getVector')
    def fact(self, p) -> GetVector:
        return p[0]

    @_('"(" aexpr ")"')
    def fact(self, p) -> AExpr:
        return p[1]

    @_('aexpr EQ aexpr',
       'aexpr LE aexpr',
       'aexpr GE aexpr',
       'aexpr NE aexpr',
       'aexpr LT aexpr',
       'aexpr GT aexpr')
    def cexpr(self, p) -> Comparison:
        return Comparison(p[1],p[0],p[2])

    @_('STRING')
    def sexpr(self, p) -> SLiteral:
        return SLiteral(p[0])

    @_('expr')
    def arguments(self, p) -> List[Expr]:
        return [p[0]]

    @_('arguments "," expr')
    def arguments(self, p) -> List[Expr]:
        p[0].append(p.expr)
        return p[0]

    @_('identifier')
    def parameters(self, p) -> List[Identifier]:
        return [p[0]]

    @_('parameters "," identifier')
    def parameters(self, p) -> List[Identifier]:
        p[0].append(p[2])
        return p[0]

    @_('identifier "(" ")" block')
    def function(self, p) -> Tuple[Identifier, List[Identifier], Block]:
        return (p[0], [], p.block)

    @_('identifier "(" parameters ")" block')
    def function(self, p) -> Tuple[Identifier, List[Identifier], Block]:
        return (p[0], p.parameters, p.block)

    @_('identifier "(" ")"')
    def call(self, p) -> Call:
        return Call(p.identifier, [])

    @_('identifier "(" arguments ")"')
    def call(self, p) -> Call:
        return Call(p.identifier, p.arguments)

    @_('identifier "[" aexpr "]"')
    def getVector(self, p) -> GetVector:
        return GetVector(p.identifier, p.aexpr)

    @_('ID')
    def identifier(self, p) -> Identifier:
        return Identifier(p[0], p.lineno, p.index)

    @_('')
    def empty(self, p):
        pass