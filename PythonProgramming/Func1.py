def testing():
    print("Hello")
    print('World')

def multiply(a, b):
    return a*b

def add(a, b=10):
    return a+b

testing()
print(add(multiply(10,3),5))
print(add(50))
print(add(b=100,a=90))