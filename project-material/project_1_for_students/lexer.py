import sly

class Lexer(sly.Lexer):
    tokens = { NUMBER, ID, WHILE, IF, ELSE, PRINT,
               PLUS, MINUS, TIMES, DIVIDE, ASSIGN,
               EQ, LT, LE, GT, GE, NE, AND,
               FALSE, TRUE, FUN, FOR, OR,
               RETURN, VAR, STRING, NOT}

    #LE := <=
    #EQ := ==
    #LT := <
    #GT := >
    #GE := >=
    #NE := !=

    #Sanitize your tokens for the literals in the language (not token literals)!
    #each token t for NUMBER should have type(t.value) == float
    #each token t for STRING should have type(t.value) == str (remove the quotes!)
    #each token t for TRUE/FALSE should have type(t.value) == bool

    literals = { '(', ')', '{', '}', '[', ']', ';' , ',', '#'}

    #Do not modify the sets Lexer.literals and Lexer.tokens!