# Python Practicing
# Author: Allen George
# Python Scripting starts here

print("-------------------Python Variables-------------------")
a= 100
b=str(a)
print(b)
print(type(b))

print("-----------------Dynamic Input Varaibles--------------------")
num_1= int(input("enter 1st number:"))
num_2 =int(input("enter 2nd number:"))
print(num_1 + num_2)

#arithmatic operators
a=10
b=5
print("------------------Arithmetic Operators------------------------")
print("addition of 10 and 5:",a+b)
print("subtraction of 10 and 5:",a-b)
print("multiplication of 10 nd 5:",a*b)
print("division of 10 and 5:",a/b)
print("modulus of 10 and 5:",a%b)
print("power of 10 and 5:",a**b)
print("floor division of 10 and 5:",a//b)

#relational operators
print("------------------Relational Operators----------------------")
print("10 equal to 5:",a==b)
print("10 not equal to 5:",a!=b)
print("10 lesser than 5:",a<b)
print("10 greater than 5:",a>b)
print("10 lesser than or equal to 5:",a<=b)
print("10 greater then or equal to:",a>=b)

#assignment operators
print("------------------Assignment Operators------------------------")
a+=10
b-=5
print("new value of a is:",a)
print("new value of b is:",b)
c=20
d=30
e=40
c*=10
d/=10
e%=10
print("new value of c is:",c)
print("new value of d is:",d)
print("new value of e is:",e)

#logical operators
print("-------------------Logical Operators----------------------------")
print("and operator:",a<b and a!=b)
print("or operator:",a<b or a!=b)
print("not operator:",not a==b)

#bitwise operators
print("-------------------Bitwise Operators------------------------")
print("bitwise left shit operator")
number =10
print(10<<2)
print("bitwise right shit operator")
print(10>>2)

#membership operators
print("-------------------Membership Operators----------------------")
a,b,c,d = 10,20,30,40
print("value of c:",c)
print("value of a:",a,"value of b:",b,"value of c:","value of d:",d)

List= ['allen',10,'george',20]
print('allen' in List)
print("george" in List)
print(10 in List)
print(20 in List)
print("allen" not in List)
print("george" not in List)
print(10 not in List)
print(20 not in List)

#identity operators
print("-------------------Identity Operators----------------------")
x=5
print("x is not int",type(x) is not int)
print(type(x) is not str)
print(type(x) is not float)
print(type(x) is not bool)
print(type(x) is not int)
print(type(x) is not str)
print(type(x) is not float)
print(type(x) is not bool)

print("----------------Conditional Statements--------------------")
#if statements

print("-------------------if statements---------------------")
x=5
if(x==5):
    print("x is equal to 5")
print("more if statements")
value =int(input("enter a number:"))
if(value==1):
    print("value entered is 1")
if(value==2):
    print("value entered is 2")
if(value==3):
    print("value entered is 3")
print("done")

#if else statements
print("-----------------if else statements--------------------------")
number=int(input("enter a number:"))
if(number==1):
    print("value entered is 1")
else:
    print("incorrect value!!!")

#if elif statements
print("---------------if elif statements-----------------------")
if(value==1):
    print("value entered is 1")
elif(value==2):
    print("value entered is 2")
elif(value==3):
    print("value entered is 3")
else:
    print("incorrect number!!!")

#pass statements
print("---------------pass statements-----------------------")
x=5
if(x==5):
    pass
else:
    print("hello")

#nested ifs
print("-------------nested if--------------------------")
x=10
if(x==10):
    if(x<20):
        if(x>5):
            print("perfect number!!!")
#Conditional statements
print("-------------Conditional statements-----------------")
num=[1,2,3,4,5,6,7,8,9]
print("numbers from 1 to 10:")
for i in num:
    print(i)

print("even odd numbers")
for i in num:
    if(i%2 == 0):
        print(i, "even number")
    else:
        print(i,"odd number")
print("range method")
print(range(5))

genre =['pop','rock','jazzz']
for i in genre:
    print (i)
genre =['pop','rock','jazzz']
for i in range(len(genre)):
    print("i like",genre[i])

for i in range(0,5):
    print(i)
for i in range(0,2):
    print(i)
print("even numbers")
for i in range(0,10,2):
    print(i)
print("odd numbers")
for i in range(1,11,2):
    print(i)