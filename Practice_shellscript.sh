#!/bin/bash
#shell script practice
#author: Allen George

#---------------variables in Shell Scripting--------------
echo "--------variables---------"
allen=10
echo $allen

name="allen"
echo $name

#---------------Dynamic Input variables---------------
echo "---------Dynamic Input Variables-----------"
read -p "Enter a number:" num
echo "Entered number is: $num"

#--------------Special Variables----------------
echo "--------Special variables-------------"
echo "filename: $o"
echo "first parameters/arguments: $1"
echo "second parameter: $2"
echo "Quoted values: $@"
echo "Quoted valus: $*"
echo "Total number of parameters: $#"

#--------------Arithematic Operator-------------
echo "--------------Addition---------------"
num1=20
num2=40
sum=`expr $num1 + $num2`
echo "sum of $num1 and $num2 is: $sum"

#--------------Multiplication----------------
echo "----------multiplication-------------"
x=20
y=30
pro=`expr $x \* $y`
echo "product of $x and $y is: $pro"

#----------------Modulus operator------------
echo "-----------modulus---------------"
a=20
b=7
mod=`expr $a % $b`
echo "modulus of $a and $b is: $mod"

#-------------division---------------
echo "----------Division-------------"
c=30
d=7
div=`expr $c / $d`
echo "Division of $c and $d is: $div"

#-------------subtraction--------------
echo "---------subtraction-----------"
num3=30
num4=10
sub=`expr $num3 - $num4`
echo "subtraction of $num3 and $num4 is: $sub"

#-------------Relational Operators-------------
echo "-----------Relational Operators-----------"
m=20
n=30
if [ $m -eq $n ]
then
        echo "$m is equal to $n"
fi
if [ $m -ne $n ]
then
        echo "$m is not equal to $n"
fi
if [ $m -gt $n ]
then 
        echo "$m is greater than $n"
fi
if [ $m -lt $n ]
then
        echo "$m is lesser than $n"
fi
if [ $m -ge $n ]
then
        echo "$m is greater than or equal to $n"
fi
if [ $m -le $n ]
then
        echo "$m is lesser than or equal to $n"
fi

#---------------Boolean Operations------------------
echo "-------------Boolean Operations--------------"
p=10
q=20
r=30
if [ $p != $q ]
then
	echo "$p is not equal to $q"
else
	echo "$p is equal to $q"
fi
if [ $p -lt $q -a $p -lt $q ]
then
	echo "$p is lesser than $q and $r"
fi
if [ $p -lt $q -o $p -eq $q ]
then
	echo "one condition is true"
fi

#----------------Decision Statements--------------------
echo "-------------Decision Statements------------------"
echo "-------------if statement------------------"
e=10
f=20
if [ $e < $f ]
then
	echo "$e is lesser than $f"
fi
echo "------------if-elif statement--------------"
if [ $e < $f ]
then
	echo "$e is lesser than $f"
elif [ $e -eq $f ]
then
	echo "$e is equal to $f"
elif [ $e > $f ]
then
	echo "$e is greater then $f"
fi
echo "--------------if-else statements------------"
if [ $((e%2)) -eq 0 ]
then
	echo "$e is even number"
else
	echo "$e is odd number"
fi

#---------------for loop------------------------
echo "--------------for loops-----------------"
for var in 0,1,2,3,4,5,6,7,8,9
do
	echo -ne $var " "
done
echo
for((i=0;i<10;i++))
do
	echo -ne $i " "
done
echo

#--------------while loops---------------------
echo "-------------while loops-------------------"
fruits=("mango" "apple" "banana" "orange" "grape")
echo "all elements of array using while loop"
i=0
while [ $i -lt ${#fruits[@]} ]
do
	echo ${fruits[$i]}
	let i++
done

#------------Switch Statements-------------------
echo "----------Switch statements--------------"
read -p "enter a day:" day
case $day in
	1) echo "day is sunday" ;;
	2) echo "day is monday";;
	3) echo "day is tuesday";;
	4) echo "day is wednesday";;
	5) echo "day is thursday";;
	6) echo "day is friday";;
	7) echo "day is saturday";;
	*) echo "Wrong day!!!!!!"
esac
read -p "Enter a name:" name
case $name in
	"allen") echo "Hi Allen, welcome to shell scripting";;
	"Sachin") echo "Hi sachin, Welcome to shell scripting";;
	"neha") echo "Hi Neha, Welcome to shell scripting";;
	*) echo "Sorry. no name found!!!!"
esac

#--------------Creating an employee file------------------
echo "------------Employee file-------------------"
while [ true ]
do
	read -p "enter employee no:" empno
	read -p "enter employee name:" empname
	read -p "enter employee salary:" empsal
	read -p "enter employee city:" empcity
	echo "$empno:$empname:$empsal:$empcity">>employee.txt
	echo "file created and record saved successfully"
	read -p "Do you want to insert another record[y/n]:" option
	case $option in
	[yY]|[yY][eE][sS]) continue
	;;
	[nN]|[nN][oO]) break
	;;
	*) echo "Record saved "
	esac
done

read -p "enter a single character:" n
case $n in
	[A-Z]) echo "its an Uppercase Alphabet";;
	[a-z]) echo "its a lowercase alphabet" ;;
	[0-9]) echo "its a digit" ;;
	[^A-Za-z0-9]) echo "Special character";;
	*) echo "enter only a single character"
esac

#-----------------------functions----------------------
echo "-----------------functions----------------------"
function1()
{
	echo "hello"
}
function1

function2()
{
	echo "Hello world $1 $2 $3"
}
function2 allen from earth

function3()
{
	echo "hello $1 $2 $3"
	return 10
}
function3 from planet earth
result=$?
echo "Return value is: $result"

#---------------------calculator------------------
echo "----------------calculator----------------------"
read -p "Enter first number:" num
read -p "Enter second number:" numb
echo "1--> add" "2--> Subtraction" "3--> Multiplication" "4--> Division" "5-->Modulus"
read -p "Enter your choice " choose
case $choose in
	1) 
	echo "$num + $numb = $((num+numb))"
	;;
	2)
	echo "$num - $numb = $((num-numb))"
	;;
	3)
	echo "$num * $numb = $((num*numb))"
	;;
	4)
	echo "$num / $numb = $((num/numb))"
	;;
	5)
	echo "$num % $numb = $((num%numb))"
	;;
	*)
	echo "Wrong choice "
esac

#----------------multiplication table----------------
echo "-----------multiplication table-----------------"
read -p "Enter a number whose table you want to print:" tabl
for ((i=1; i<11; i++))
do
	res=`expr $tabl \* $i`
	echo "$tabl X $i= " $res
done

#------------file test operator-------------------------
echo "----------------file test operator----------------"
file="allen.sh"
echo $file
if [ -r $file ]
then
	echo "File has read access"
else
	echo "File does not have a read access"
fi

if [ -w $file ]
then
	echo "File is writable"
else
	echo "File is not writable"
fi

if [ -s $file ]
then
	echo "File has size greater than 0 kB"
else
	echo "File does not has size greater than 0 kB"
fi

if [ -x $file ]
then
	echo "File is executable"
else
	echo "File is not executable"
fi

if [ -d $file ]
then
	echo "file is a directrory"
else
	echo "File is not directory"
fi

if [ -c $file ]
then
	echo "file is a character special file"
else
	echo "file is not a character special file"
fi
