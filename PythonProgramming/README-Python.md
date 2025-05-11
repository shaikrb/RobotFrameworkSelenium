<h1 align="center">Python programming</h1>

---

## Python Basics

\# is used to give the comments in python code

```
# This is comment
```

### Print statements:

To print anything on the console, we use print statement

```python
print("Hello world")
```
Here ; is not mandatory.

Indentation is important when writing python files

We can run a python file from terminal using below command

```commandline
python filename.py
```

Unlike other OOP languages like Java, we do not have to write the statements in a class or method

### Take input from users & variables:

You do not have to define the datatype of the variable when declaring the variable

We can use "input" keyword to take input from user

```python
# Take input from the user
time = input("Please enter what time: ")
print("It is "+time+" now")
```

In python, each line is considered as one statement. For any reasons like readability, if we want to split the statement to multiple lines, we need to use continuation symbol(\\)

```python
time = \
    input("Please enter what time: ")
```

Similarly, we cna have more than one statement in single line also separated by semicolon

```python
# Take input from the user
time = input("Please enter what time: "); print("It is "+time+" now")
```

### String concatenation

Multiple strings can be concatenated using +

```python
print("It is "+time+" now")
firstName = "Rasool"
lastName = "Shaik"
fullName = firstName + " " + lastName
```

### Declare and use variable:

Apart from regular variable declaration and assignment as above, we can define multiple variables in single statement

```python
a,b,c = 10, "Hello", 20     # Same as a=10; b="Hello"; c=20
x = y = z = 30              # Same as x=30; y=30; z=30
```
Type cast from string to int - int(str)

Type cast from int to str - str(int)

### Standard datatypes:

int\
float\
String\
list\
tuple - A tuple is a collection which is ordered and unchangeable.

Tuples are unchangeable, meaning that we cannot change, add or remove items after the tuple has been created.

Lists are used to store multiple items in a single variable.

List items are ordered, changeable, and allow duplicate values.

li = [1, 'Hello', 1.23] \
tu = (1, 'Hello', 1.23)

Set - A set is a collection which is unordered, unchangeable*, and unindexed.

myset = {"apple", "banana", "cherry"}

You cannot access items in a set by referring to an index or a key.

Dictionaries are written with curly brackets, and have keys and values

A dictionary is a collection which is ordered*, changeable and do not allow duplicates

thisdict =	{\
  "brand": "Ford",\
  "model": "Mustang",\
  "year": 1964\
}

print(thisdict["brand"])

### Condition handling:

```python
a = 33
b = 200
if b > a:
  print("b is greater than a")
```
Indentation is important in python

```python
a = 33
b = 200
if b > a:
print("b is greater than a") # you will get an error 
```

```python
a = 200
b = 33
if b > a:
  print("b is greater than a")
elif a == b:
  print("a and b are equal")
else:
  print("a is greater than b")
```

```python
a = 200
b = 33
if b > a:
  print("b is greater than a")
else:
  print("b is not greater than a")
```

Logical AND and Logical OR:

Logical OR - Execute the code if any of the given conditions is true
Logical AND - Execute the code if all the given conditions are true

```python
marks = int(input("Enter marks: "))

if marks > 100 or marks < 0:
    print("Invalid marks")
if marks >= 0 and marks <= 100:
    print("Valid marks")
```

### Loops:

For loop:

```python
# For loop with a final range. Here it takes 0 as starting point. Last index is excluded
# If no condition is given, it takes increment by 1 as default condition in number types

for i in range (10):
    print(i)

# For loop with start and final range

for i in range (1,10):
    print(i)

# For loop with increment/decrement. 3rd argument is increment/decrement step

for i in range (2,31,2):
    print(i)

for i in range (30,1,-2):
    print(i)

# For loop with list

myList = ["apples", "bananas", "oranges"]

for fruit in myList:
    print(fruit)
```

While loop:

```python
#While loop

i=1
while i<=10:
    print(i)
    i+=1

while i>=0:
    print(i)
    i-=1
```

### Break statement:

Come out of the loop at any given condition

```python
while i>=0:
    print(i)
    i-=1
    if i == 5 :
        break       # exits the loop when i is 5
```

### Continue statement:

Skip the remaining part of the loop for a iteration when condition is met

```python
for i in range (1,11):
    if (6*i)%10 == 0:
        continue            #skips print statement when 6*i is multiple of 10
    print(6*i)
```

### Else in loops:

Else can be used with loops to execute a block of code after the loop is ended


```python
for i in range (1,11):
    if (6*i)%10 == 0:
        continue            #skips print statement when 6*i is multiple of 10
    print(6*i)
else:
    print("Loop ended")
```

## Strings

---

We can define strings in multiple ways

```python
t1='Hello'
t2="Hi"
t3='''
    Multi
    Line
    String
    '''
```

If we want to concatenate strings, we can use +

If we want to repeat a string multiple times, we can use *

```python
t1='Hello'
t2="Hi"*3
t3='''Multi
Line
String'''
print(t1)
print(t2)
print(t3)
```

### Substring:

Any string is internally converted to array of characters. We can directly access the characters using the index of the char

```python
message='hello'
print(message[4]) # prints o. it is 0 indexed
```

Substrings can be fetched in multiple ways

```python
address = "Hyderabad"

print(address[0:4]) # end index is excluded

print(address[3:]) # Only start index till end

print(address[:6]) # STart to end index excluded
```

Commonly used string functions

```python
t1='Hello'
t2="Hi"*3
t3='''Multi
Line
String'''
print(t1)
print(t2)
print(t3)

address = "Hyderabad"

lower = 'abhgi'

upper = 'AHSJS'

print(address[0:4]) # end index is excluded

print(address[3:]) # Only start index till end

print(address[:6]) # STart to end index excluded

print(len(address)) # prints length of string
print(lower.capitalize()) # Capitalize the first char of the string
print(upper.lower()) # Convert string to lower case
print(lower.upper()) # Convert String to upper case
```

lstrip - remove leading spaces\
rstrip - remove trailing spaces\
strip - removes leading and trailing spaces

```python
space='   Hello world   '
print(len(space))
print(space.lstrip())
print(space.rstrip())
print(space.strip())
```

replace - replace a part of string with given string\
split - Split with the delimiter provided\
find - find the lowest index of occurrences of a pattern

<u>List:</u>

- List can hold multiple data of different data types\
- List is defined in square brackets

List items are zero indexed

<h2>Tuple:</h2>

- Tuples are also similar to list.
- Placed in () separated by ,
- We cannot increase or decrease the size of tuple
- We cannot change any value of tuple

```python
tuple1 = (1,"Hello",23.45)
print(tuple1[1])
tuple2=(1,1,2,4,1)
print(tuple2.count(1))  #Give the count of number of occurrences of the given element
print(tuple2.index(2))  # Gives the first index of the value
print(tuple2.index(1))
#print(tuple2.index(3))

print(tuple1+tuple2) # Concatenates 2 tuples
```

<h2>Dictionary</h2>

- Values are stored as Key:Value pairs
- Key and value can be of any datatype
- Keys must be always unique
- If we define a new value with same key, the old value will be overridden

Common methods

keys - returns the list of all keys\
values - returns all the values\
items - returns all keys and values\
len - returns length of dictionary

## Functions

---

```python
def testing():
    print("Hello")
    print('World')

testing()
```

Functions can take arguments as input and return an output

```python
def testing():
    print("Hello")
    print('World')

def multiply(a, b):
    return a*b

def add(a, b):
    return a+b

testing()
print(add(multiply(10,3),5))
```

Different types of arguments:
- Required arguments
- Keyword arguments
- Default arguments

```python

def testing():
    print("Hello")
    print('World')

def multiply(a, b):
    return a*b

def add(a, b=10): #We can define default value of arguments in the function def. We cannot have non-default arguments following the default arguments
    return a+b

testing()
print(add(multiply(10,3),5))
print(add(50))
print(add(b=100,a=90))  #You can pass arguments in any order when you map it to argument
```

## Classes

Python is OOP language\
We can put our methods, variables in the classes

It is not mandatory for the filename and classname to match\
We can access the class members (variables and functions) using object reference

```python
class A:

    def welcome(self):
        print("This is a class")

obj=A()
obj.welcome()
```

First argument of any function would be 'self' and it will be auto set

### Constructors

Constructors are used as initializers

The name of constructor is always '\__init()__' and the first argument is always self

This is automatically called when the object is created for the class

It can have other arguments but not mandatory

Constructors do not return any value

```python
class A:
    def __init__(self):
        print('This is constructor')
    def welcome(self):
        print("This is a class")

obj=A()
obj.welcome()
```

In the above code, the code in \_\_init__ is called i.e. This is constructor is printed first