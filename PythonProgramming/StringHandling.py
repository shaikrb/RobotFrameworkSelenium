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

space='   Hello world   '
print(len(space))
print(space.lstrip())
print(space.rstrip())
print(space.strip())

email = 'rshaik@gmail.com'
print(email.replace("gmail","yahoo"))
print(email.find("i"))
