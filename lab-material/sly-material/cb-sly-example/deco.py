# Decorator demo: general case (any number of args), 
#   composition, and fixpoint -cem bozsahin 

# this is the decorator d1, taking one function with many arguments
def d1(fun):                  
    def inn(*args, **kwargs):
        print("here is the input to the decorator:",fun,*args,**kwargs)
        fun(*args, **kwargs)
        print("done")
    return inn             # a decorator must always return a function

@d1
def f():
    print('f does this')

# That is equilavent to f=d1(f)

@d1
def h(x,y):
    return x+y

# That is equivalent to h=d1(h), i.e. same as 0-argument function above.

@d1
def g(x,y,z):
    print(x+y-z)

# try fun calls such as f(), h(2,3), g(4,5,7)

# these are decorators d2 and d3, for chaining, i.e. composition
def d2(f):
    def inn():
        v=f()
        return v * v 
    return inn

def d3(f):
    def inn():
        v=f()
        return -v
    return inn

@d2
@d3
def k23():
    return 5

@d3
@d2
def k32():
    return 5

# Try k23() and k32() function calls for composing squaring with negation
#   or negation with squaring.

# d4 is an example of a decorator with an argument. 
#  It is the fixpoint of the factorial function.
def d4(n):
    def inn(f):
        def inn2():
            if n > 0:
                return n * f(n-1)
            else:
                return 1
            return f
    return inn

@d4(n)
def fact(n):
    if n > 0:
        return n * fact(n-1)
    else:
        return 1

# The following will give syntax errors if uncommented. 
# Decorators work on named functions
#@d1
#(lambda x: lambda y: print(x+y))

#@d1
#w= (lambda x: lambda y: print(x+y))
