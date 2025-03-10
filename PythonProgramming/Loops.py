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

#While loop

i=1
while i<=10:
    print(i)
    i+=1

while i>=0:
    print(i)
    i-=1
    if i == 5 :
        break

for i in range (1,11):
    if (6*i)%10 == 0:
        continue
    print(6*i)