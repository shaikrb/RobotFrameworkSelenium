try:
    user_input_1 = input("Enter first number: ")
    user_input_2 = input("Enter second number: ")
    c = int(user_input_1) + int(user_input_2)
except ValueError as e:
    print("Error", e)
    print("Your input is incorrect")
else:
    print(c)
finally:
    print("Thanks")
