# decorator test: general case, any number of args -cem bozsahin 

# this is the decorator d, taking one function with many arguments
def d(fun):                  
    def inn(*args, **kwargs):
        print("here is the input to the decorator:",fun,*args,**kwargs)
        fun(*args, **kwargs)
        print("done")
    return inn             # a decorator must always return a function

@d
def f():
    print('f does this')

# this is equilavent to f=d(f)

@d
def h(x,y):
    return x+y

@d
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
    return  10

@d3
@d2
def k32():
    return  10

# try k23() and k32() fun calls

# the following will give syntax errors. Decorators work on named functions
# trying to decorate a nameless function
#@d
#(lambda x: lambda y: print(x+y))

# trying to decorate a nameless function
#@d
#w= (lambda x: lambda y: print(x+y))
