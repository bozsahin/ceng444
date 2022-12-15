from re import A
from ast_tools import *
from typing import List

from parser import Parser
from lexer import Lexer

def process(source):
    return Parser().parse(Lexer().tokenize(source))

def generate_ast(intermediate) -> Program:
    return intermediate

def undeclared_vars(intermediate) -> List[Identifier]:
    varVisitor = VarVisitor()
    varVisitor.visit(intermediate)
    return varVisitor.undeclared_vars

def multiple_var_declarations(intermediate) -> List[Identifier]:
    varVisitor = VarVisitor()
    varVisitor.visit(intermediate)
    return varVisitor.multiple_decls


class Environment:
    def __init__(self, prev = None):
        self.prev = prev
        self.table = set()
    
    def member(self, elem):
        return elem in self.table
    
    def recursive_member(self, elem):
        if elem in self.table:
            return True
        elif self.prev is not None:
            return self.prev.recursive_member(elem)

        return False
    
    def add(self, elem):
        self.table.add(elem)

class VarVisitor(ASTNodeVisitor):
    def __init__(self):
        super().__init__()
        self.top_environment = Environment()
        self.current_environment = self.top_environment
        self.multiple_decls = []
        self.undeclared_vars = []
    
    def add_to_current_env(self, identifier: Identifier):
        if self.current_environment.member(identifier.name):
            self.multiple_decls.append(identifier)
        else:
            self.current_environment.add(identifier.name)
    
    def get_identifier(self, identifier: Identifier):
        if not self.current_environment.recursive_member(identifier.name):
            self.undeclared_vars.append(identifier)
    
    def visit_nonscoped_body(self, body: Block):
        for elem in body.var_decls:
            self.visit(elem)
        for elem in body.statements:
            self.visit(elem)

    def visit_SLiteral(self, sliteral: SLiteral):
        pass

    def visit_Program(self, program: Program):
        for elem in program.var_decls:
            self.visit(elem)
        for elem in program.fun_decls:
            self.visit(elem)
        for elem in program.statements:
            self.visit(elem)

    def visit_ErrorStmt(self, errorstmt: ErrorStmt):
        pass

    def visit_VarDecl(self, vardecl: VarDecl):
        self.add_to_current_env(vardecl.identifier)
        if vardecl.initializer is not None:
            if type(vardecl.initializer) == list:
                for elem in vardecl.initializer:
                    self.visit(elem)
            else:
                self.visit(vardecl.initializer)


    def visit_FunDecl(self, fundecl: FunDecl):
        self.current_environment = Environment(self.current_environment)
        for elem in fundecl.params:
            self.add_to_current_env(elem)
        #self.visit_nonscoped_body(fundecl.body) <- uncomment this and comment other for implementation that regards formal parameters as variable decls
        self.visit(fundecl.body) # comment this for the above
        self.current_environment = self.current_environment.prev
            
    def visit_Assign(self, assign: Assign):
        self.get_identifier(assign.identifier)
        self.visit(assign.expr)

    def visit_SetVector(self, setvector: SetVector):
        self.get_identifier(setvector.identifier)
        self.visit(setvector.vector_index)
        self.visit(setvector.expr)

    def visit_ForLoop(self, forloop: ForLoop):
        if not forloop.initializer is None:
            self.visit(forloop.initializer)
        if not forloop.condition is None:
            self.visit(forloop.condition)
        if not forloop.increment is None:
            self.visit(forloop.increment)
        self.visit(forloop.body)

    def visit_Return(self, returnn: Return):
        self.visit(returnn.expr)

    def visit_WhileLoop(self, whileloop: WhileLoop):
        self.visit(whileloop.condition)
        self.visit(whileloop.body)

    def visit_Block(self, block: Block):
        self.current_environment = Environment(self.current_environment)
        self.visit_nonscoped_body(block)
        self.current_environment = self.current_environment.prev

    def visit_Print(self, print: Print):
        self.visit(print.expr)

    def visit_IfElse(self, ifelse: IfElse):
        self.visit(ifelse.condition)
        self.visit(ifelse.if_branch)
        if ifelse.else_branch:
            self.visit(ifelse.else_branch)

    def visit_LBinary(self, lbinary: LBinary):
        self.visit(lbinary.left)
        self.visit(lbinary.right)

    def visit_Comparison(self, comparison: Comparison):
        self.visit(comparison.left)
        self.visit(comparison.right)

    def visit_LLiteral(self, lliteral: LLiteral):
        pass

    def visit_LPrimary(self, lprimary: LPrimary):
        self.visit(lprimary.primary)

    def visit_GetVector(self, getvector: GetVector):
        self.get_identifier(getvector.identifier)
        self.visit(getvector.vector_index)

    def visit_Variable(self, variable: Variable):
        self.get_identifier(variable.identifier)

    def visit_LNot(self, lnot: LNot):
        self.visit(lnot.right)

    def visit_ABinary(self, abinary: ABinary):
        self.visit(abinary.left)
        self.visit(abinary.right)

    def visit_AUMinus(self, auminus: AUMinus):
        self.visit(auminus.right)

    def visit_ALiteral(self, aliteral: ALiteral):
        pass

    def visit_Call(self, call: Call):
        for elem in call.arguments:
            self.visit(elem)