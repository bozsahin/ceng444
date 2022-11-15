# decorator test-- general case, any number of args -cb

def d(fun):
    def inn(*args, **kwargs):
        print("here is the input to the decorator:",fun,*args,**kwargs)
        fun(*args, **kwargs)
        print("done")
    return inn             # must always return an abstracted function

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

# the following will give syntax errors. Decorators work on named functions
# trying to decorate a nameless function
#@d
#(lambda x: lambda y: print(x+y))

# trying to decorate a nameless function
#@d
#w= (lambda x: lambda y: print(x+y))
