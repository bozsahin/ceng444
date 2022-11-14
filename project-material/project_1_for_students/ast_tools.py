from __future__ import annotations
from dataclasses import dataclass
from abc import ABC, abstractmethod
from typing import List, Union

@dataclass(frozen=True)
class ASTNode:
    pass

@dataclass(frozen=True)
class Expr(ASTNode):
    '''expressions. some of the the parse tree components are not explicitly represented (such as parantheses to increase precedence)'''
    pass

@dataclass(frozen=True)
class LExpr(Expr):
    '''logical expressions. conditions of if/while/for stmts, operands of logical operators, and primaries prepended with # are members.'''
    pass

@dataclass(frozen=True)
class AExpr(Expr):
    '''arithmetic expressions.'''
    pass

@dataclass(frozen=True)
class SLiteral(Expr):
    '''string literal. the grammar makes them unusable in arithmetic/logical ops when they are expressed as naked string literals.'''
    value: str 

@dataclass(frozen=True)
class Stmt(ASTNode):
    '''statements. middle classes of statements (simpleStmt/free-statement etc.) are not explicitly represented.'''
    pass

@dataclass(frozen=True)
class ErrorStmt(Stmt):
    '''this node should correspond to an error during parsing that is resolved with character re-synchronization.'''
    pass

@dataclass(frozen=True)
class Decl(ASTNode):
    '''declarations.'''
    pass

@dataclass(frozen=True)
class Identifier:
    '''represents an identifier token. lineno and index fields are added to help with error reporting.'''
    name: str
    lineno: int
    index: int

@dataclass(frozen=True)
class VarDecl(Decl):
    '''variable declaration. the initilializer attribute is None if the variable is not initialized to any value,
    it is a list if the variable is initialized as a vector, and and Expr if it is initialized as a non-vector.'''
    identifier: Identifier
    initializer: Union[Expr, List[Expr], None]

@dataclass(frozen=True)
class FunDecl(Decl):
    '''function declaration. as in fun identifier(params...) body'''
    identifier: Identifier
    params: List[Identifier]
    body: Block

@dataclass(frozen=True)
class Program(ASTNode):
    '''the root node of the AST.'''
    var_decls: List[VarDecl]
    fun_decls: List[FunDecl]
    statements: List[Stmt]

@dataclass(frozen=True)
class Assign(Stmt):
    '''assignments to a variable in the form identifier = expr'''
    identifier: Identifier
    expr: Expr

@dataclass(frozen=True)
class SetVector(Stmt):
    '''assignments to a member of vector in the form identifier[vector_index] = expr'''
    identifier: Identifier
    vector_index: AExpr
    expr: Expr

@dataclass(frozen=True)
class ForLoop(Stmt):
    '''a for loop. If any of the fields are left empty, such as in for(;;){}, set them as None.'''
    initializer: Union[Assign, None]
    condition: Union[LExpr, None]
    increment: Union[Assign, None]
    body: Stmt

@dataclass(frozen=True)
class Return(Stmt):
    expr: Expr

@dataclass(frozen=True)
class WhileLoop(Stmt):
    condition: LExpr
    body: Stmt

@dataclass(frozen=True)
class Block(Stmt):
    var_decls: List[VarDecl]
    statements: List[Stmt]

@dataclass(frozen=True)
class Print(Stmt):
    expr: Expr

@dataclass(frozen=True)
class IfElse(Stmt):
    '''an if-else statement. If there is no else corresponding to this if, set else_branch as None.'''
    condition: LExpr
    if_branch: Stmt
    else_branch: Union[Stmt, None]

@dataclass(frozen=True)
class LBinary(LExpr):
    '''logical binary operations and and or. Set op as "and"/"or".'''
    op: str
    left: LExpr
    right: LExpr

@dataclass(frozen=True)
class Comparison(LExpr):
    '''comparison operations <,>,==,!=,<=,>=. Set op as "<"/">"/"=="/"!="/"<="/">=".'''
    op: str
    left: AExpr
    right: AExpr

@dataclass(frozen=True)
class LLiteral(LExpr):
    '''logical literals (TRUE/FALSE tokens).'''
    value: bool

@dataclass(frozen=True)
class LPrimary(LExpr):
    '''# operator on primaries: function calls(# fizzbuzz()), vector accesses(# foo[0]) or variables (# bar) to cast them explicitly as logical.'''
    primary: Union[Call, GetVector, Variable]

@dataclass(frozen=True)
class GetVector(AExpr):
    '''vector access as an expression, as in foo = identifier[vector_index]'''
    identifier: Identifier
    vector_index: AExpr

@dataclass(frozen=True)
class Variable(AExpr):
    '''variable access as an expression, as in foo = identifier'''
    identifier: Identifier

@dataclass(frozen=True)
class LNot(LExpr):
    '''! operation.'''
    right: LExpr

@dataclass(frozen=True)
class ABinary(AExpr):
    '''arithmetic binary operations +,-,* or /. Set op as "+"/"-"/"*" or "/"'''
    op: str
    left: AExpr
    right: AExpr

@dataclass(frozen=True)
class AUMinus(AExpr):
    '''unary minus operation'''
    right: AExpr

@dataclass(frozen=True)
class ALiteral(AExpr):
    '''arithmetic literals (Number)'''
    value: float

@dataclass(frozen=True)
class Call(AExpr):
    '''function call as an expression, as in foo = callee(arguments...)'''
    callee: Identifier
    arguments: List[Expr]

#https://stackoverflow.com/questions/11154668/is-the-visitor-pattern-useful-for-dynamically-typed-languages
class ASTNodeVisitor(ABC):
    def __init__(self):
        self.ASTNodes = {
            SLiteral: self.visit_SLiteral,
            Program : self.visit_Program,
            ErrorStmt: self.visit_ErrorStmt,
            VarDecl: self.visit_VarDecl,
            FunDecl: self.visit_FunDecl,
            Assign: self.visit_Assign,
            SetVector: self.visit_SetVector,
            ForLoop: self.visit_ForLoop,
            Return: self.visit_Return,
            WhileLoop: self.visit_WhileLoop,
            Block: self.visit_Block,
            Print: self.visit_Print,
            IfElse: self.visit_IfElse,
            LBinary: self.visit_LBinary,
            Comparison: self.visit_Comparison,
            LLiteral: self.visit_LLiteral,
            LPrimary: self.visit_LPrimary,
            GetVector: self.visit_GetVector,
            Variable: self.visit_Variable,
            LNot: self.visit_LNot,
            ABinary: self.visit_ABinary,
            AUMinus: self.visit_AUMinus,
            ALiteral: self.visit_ALiteral,
            Call: self.visit_Call
        }

    def visit(self, ast_node: ASTNode):
        return self.ASTNodes[type(ast_node)](ast_node)

    @abstractmethod
    def visit_SLiteral(self, sliteral: SLiteral):
        pass

    @abstractmethod
    def visit_Program(self, program: Program):
        pass

    @abstractmethod
    def visit_ErrorStmt(self, errorstmt: ErrorStmt):
        pass

    @abstractmethod
    def visit_VarDecl(self, vardecl: VarDecl):
        pass

    @abstractmethod
    def visit_FunDecl(self, fundecl: FunDecl):
        pass

    @abstractmethod
    def visit_Assign(self, assign: Assign):
        pass

    @abstractmethod
    def visit_SetVector(self, setvector: SetVector):
        pass

    @abstractmethod
    def visit_ForLoop(self, forloop: ForLoop):
        pass

    @abstractmethod
    def visit_Return(self, returnn: Return):
        pass

    @abstractmethod
    def visit_WhileLoop(self, whileloop: WhileLoop):
        pass

    @abstractmethod
    def visit_Block(self, block: Block):
        pass

    @abstractmethod
    def visit_Print(self, printt: Print):
        pass

    @abstractmethod
    def visit_IfElse(self, ifelse: IfElse):
        pass

    @abstractmethod
    def visit_LBinary(self, lbinary: LBinary):
        pass

    @abstractmethod
    def visit_Comparison(self, comparison: Comparison):
        pass

    @abstractmethod
    def visit_LLiteral(self, lliteral: LLiteral):
        pass

    @abstractmethod
    def visit_LPrimary(self, lprimary: LPrimary):
        pass

    @abstractmethod
    def visit_GetVector(self, getvector: GetVector):
        pass

    @abstractmethod
    def visit_Variable(self, variable: Variable):
        pass

    @abstractmethod
    def visit_LNot(self, lnot: LNot):
        pass

    @abstractmethod
    def visit_ABinary(self, abinary: ABinary):
        pass

    @abstractmethod
    def visit_AUMinus(self, auminus: AUMinus):
        pass

    @abstractmethod
    def visit_ALiteral(self, aliteral: ALiteral):
        pass

    @abstractmethod
    def visit_Call(self, calll: Call):
        pass

class PrintVisitor(ASTNodeVisitor):
    def indent(self, strr):
        return '\n'.join(['    '+elem for elem in strr.split('\n')])

    def visit_SLiteral(self, sliteral: SLiteral):
        return f'"{sliteral.value}"'

    def visit_Program(self, program: Program):
        return '\n'.join(["TOP_LVL VAR_DECLS:",
                '\n'.join([self.visit(elem) for elem in program.var_decls]),
                "TOP_LVL FUN_DECLS:",
                '\n'.join([self.visit(elem) for elem in program.fun_decls]),
                "TOP_LVL STMTS:",
                '\n'.join([self.visit(elem) for elem in program.statements])])

    def visit_ErrorStmt(self, errorstmt: ErrorStmt):
        return 'ERROR_STMT;'

    def visit_VarDecl(self, vardecl: VarDecl):
        if vardecl.initializer is None:
            return f"var {vardecl.identifier.name};"
        elif type(vardecl.initializer) == list:
            return f"var {vardecl.identifier.name} = [{', '.join([self.visit(elem) for elem in vardecl.initializer])}];"
        else:
            return f"var {vardecl.identifier.name} = {self.visit(vardecl.initializer)};"

    def visit_FunDecl(self, fundecl: FunDecl):
        return f"fun {fundecl.identifier.name}({', '.join([elem.name for elem in fundecl.params])}){self.visit(fundecl.body)}"

    def visit_Assign(self, assign: Assign):
        return f"{assign.identifier.name} = {self.visit(assign.expr)};"

    def visit_SetVector(self, setvector: SetVector):
        return f"{setvector.identifier.name}[{self.visit(setvector.vector_index)}] = {self.visit(setvector.expr)};"

    def visit_ForLoop(self, forloop: ForLoop):
        initializer = '' if forloop.initializer is None else self.visit(forloop.initializer)[:-1]
        condition = '' if forloop.condition is None else self.visit(forloop.condition)
        increment = '' if forloop.increment is None else self.visit(forloop.increment)[:-1]
        return f"for ({initializer};{condition};{increment}) {self.visit(forloop.body)}"

    def visit_Return(self, returnn: Return):
        return f"return {self.visit(returnn.expr)};"

    def visit_WhileLoop(self, whileloop: WhileLoop):
        return f"while {self.visit(whileloop.condition)} {self.visit(whileloop.body)}"

    def visit_Block(self, block: Block):
        return '\n'.join(['{',
                '  VAR_DECLS:',
                '\n'.join(["    "+self.visit(elem) for elem in block.var_decls]),
                '  STMTS:',
                '\n'.join([self.indent(self.visit(elem)) for elem in block.statements]),
                '}'])

    def visit_Print(self, printt: Print):
        return f"print {self.visit(printt.expr)};"

    def visit_IfElse(self, ifelse: IfElse):
        else_branch = '' if ifelse.else_branch is None else f" else {self.visit(ifelse.else_branch)}"
        return f"if {self.visit(ifelse.condition)} {self.visit(ifelse.if_branch)}{else_branch} endif"

    def visit_LBinary(self, lbinary: LBinary):
        return f"(L{lbinary.op} {self.visit(lbinary.left)} {self.visit(lbinary.right)})"

    def visit_Comparison(self, comparison: Comparison):
        return f"(Lc{comparison.op} {self.visit(comparison.left)} {self.visit(comparison.right)})"

    def visit_LLiteral(self, lliteral: LLiteral):
        return f"{lliteral.value}"

    def visit_LPrimary(self, lprimary: LPrimary):
        return f"#{self.visit(lprimary.primary)}"

    def visit_GetVector(self, getvector: GetVector):
        return f"{getvector.identifier.name}[{self.visit(getvector.vector_index)}]"

    def visit_Variable(self, variable: Variable):
        return f"{variable.identifier.name}"

    def visit_LNot(self, lnot: LNot):
        return f"!{self.visit(lnot.right)}"

    def visit_ABinary(self, abinary: ABinary):
        return f"(A{abinary.op} {self.visit(abinary.left)} {self.visit(abinary.right)})"

    def visit_AUMinus(self, auminus: AUMinus):
        return f"Au-{self.visit(auminus.right)}"

    def visit_ALiteral(self, aliteral: ALiteral):
        return f"{aliteral.value}"

    def visit_Call(self, call: Call):
        return f"{call.callee.name}({', '.join([self.visit(elem) for elem in call.arguments])})"