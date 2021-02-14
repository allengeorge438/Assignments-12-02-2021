#commenting-statement
#practice: powershell 
#Author: Allen George
#platform: Powershell powerded by Windows 10
#-----------Shell Scripting starts from here------------

#--------------------Example of Powershell varaiables---------------------
echo "---------------Powershell Variables---------------"
$allen=6
Echo allen
Echo $allen
Clear-Variable -name allen
Echo $allen

$Industry = "datascience"
Echo $Industry

#-------------------Powershell hashtables-----------------
echo "--------------Powershell Hashtables---------------"
$employee = @{name="allen";designation="Engineer";pin=123456}
Echo $employee
Echo $employee.Keys
Echo $employee.Values
Echo $employee.name
Echo $employee.designation
Echo $employee.Count
Echo $employee.IsFixedSize
Echo $employee.IsReadOnly
Echo $employee.IsSynchronized

$Engineer =[ordered]@{name="allen";designation="Software Engineer";pin=123456}
Echo $Engineer
Echo $employee.Keys
Echo $employee.Values
Echo $employee.name
Echo $employee.designation
Echo $employee.Count
Echo $employee.IsFixedSize
Echo $employee.IsReadOnly
Echo $Engineer.IsSynchronized


#--------------------Example of arithmatic operators--------------------
Echo "---------------Arithmatic Operators---------------------------"
$a=10
$b=20
$c=$a + $b
write-host $c

$word="power"
$anotherword="shell"
$concatinate= $word+$anotherword
write-host $concatinate

$c=20
$d=10
$sub=$c-$d
write-host $sub

$div= $c/$d
write-host $div

$mod=$c% $d
write-host $mod

$numbers = 1,2,3
$letters = 'a','b','c'
$sum= $numbers + $letters
Echo $sum

#-------------------example of assignment operator-----------------------------------------------
Echo "---------------Assignment Operators----------------------"
$country ="India"
$country+= " is an asian continent"
Echo $country

$k =10,20,30
$k[1]-=10
Echo $k

$name ="allen"
$name*=2
Echo $name

$currency =10
$rupees =$currency++
Echo "value of currency is " $currency
Echo "value of rupees is " $rupees

$c= 10
$r = ++$c
Echo "value of c is " $c
Echo "value of r is " $r

#-----------------------example of comparison operators---------------------------------------------------------
Echo "-------------------Comparison Operators------------------------"
$a1= 10
$a2= 10
Echo ($a1 -eq $a2)

Echo ($a2 -ne $a2)

Echo ($a1 -gt $a2)

Echo ($a1 -ge $a2)

Echo ($a1 -lt $a2) 

Echo ($a1 -like $a2)
Echo ($a1 -notlike $a2)
Echo ($a1 -match $a2)
Echo ($a1 -notmatch $a2)
Echo ($a1 -contains $a2)

$word1 = "power"
$word2 = "powershell"
echo ($word1 -in $word2)

$hello = "windows and linux operating systems"
$hello -replace "linux","macos"
echo $hello

#-------------------example of logical operators----------------------------
echo "--------------Logical Operators--------------------------------"

$a = 10
$b = 20
Echo (($a -lt $b) -and ($a -ne $b))

Echo (($a -lt $b) -or ($a -ne $b))

Echo (-not($a -lt $b))

Echo (($a -lt $b)-xor ($a -ne $b))

Echo (!($a -ne $b))

#------------------Redirectional Operators---------------------
echo "-------------Redirectional Operators----------------------"
get-childitem > hello123.txt
get-help >> hello123.txt
&{Write-warning "hello"} 3>&1 > hello124.txt

#--------------------Split and Join Operators------------------------
echo "----------------Split & Join Operators-------------------"

$string = "WIND","S P","ERSHELL"
$string -join "OW"

$a = "Windows"," Operating"," system"
-join $a

-split "A L L E N"
-split "A,L,L,E,N"
-split "A, L, L, E, N"
$a= "a=b=c=d=e=f"
$a -split "="

$a= "a=b=c=d=e=f"
$a -split "=",4

$name= "allen"
$name -split " "


$a= "a=b=c=d=e=f"
$a -split ($_ -eq "a" -or $_ -eq "f")

#-----------------------------if statements---------------------------------------------------------------
echo "--------------if statements----------------------"
$number = 17
if($number%2 -eq 0)
{
    Echo  $number "number is even"

}
if($number%2 -ne 0)
{
    Echo $number "number is odd"
}

#---------------------------if-else statements------------------------------------------------

echo "------------if-else Statements------------------------"
$number =14
if($number%2 -eq 0 )
{
    Echo "number is even"
}
else
{
    Echo "number is odd"
}

$currency = "dollar"
if($currency -eq "dollar")
{
    Echo "currency is dollar"
}
else
{
    Echo "Currency is not in dollar"
}

#--------------------------if-else-if statements---------------------------------------------

echo "-------------if-else-if statements-------------------------"
[int] $number = Read-Host -Prompt "enter the number"
if($number -eq 14 )
{
    Echo "number is 14"
}
elseif($number -lt 14)
{
    Echo "number is less than 14"
}
elseif($number -gt 14)
{
    Echo "number is greater than 14"
}


#---------------------------Switch-statements---------------------------------------------

Echo "---------------------------------------------------------------------------------------"
Echo "----------------------switch-statements--------------------------"

[int] $day =Read-Host -Prompt "enter a day"
switch($day)
{
    1{Echo "day is sunday"}
    2{Echo "day is monday";break;}
    3{Echo "day is tuesday";break;}
    4{Echo "day is wednesday";break;}
    5{Echo "day is thursday";break;}
    6{Echo "day is friday";break;}
    7{Echo "day is saturday"}
    default{Echo "wrong date!!!"}
}

#----------------------Do-While loop statements-----------------------------------------

Echo "-----------------------------------------------------------------------------------"
Echo "-------------------------Do-while statements-----------------------------------------"

$i=1
do
{
    Echo $i
    $i=$i+1
}while($i -le 5)

$j = "1 2 3 4 5 6"
$k =0
do
{
    echo $j[$k]
    $k=$k +1
}while($k -le $j.Length)

Echo "-----------------------Multiplication table-----------------------------"

$table =14
$r=1
$result =0
echo "table of 14"
do 
{
    $result = $table * $r
    echo " $table * $r = $result"
    $r =$r+1
    
}while($r -le 10)

#----------------------for-loop Statements--------------------------
Echo "--------------------for-loop Statements------------------------------------"
for ($i=1;$i -le 10; $i++)
{
    Echo $i
}


for ($i=1;$i -le 10; $i=$i+1)
{
    Echo $i
}

$colors ="red","white","orange","blue","pink","green"
for($i=0;$i -le $colors.Length;$i++)
{
    echo $colors[$i]
}

$i=5
$b=1

for($a=1;$a -le 10;$a++)
{
    $b=$a * $i
    echo $b
}

#---------------------foreach Statements----------------------------
echo "----------------foreach statements-------------------------------"

$array =1,2,3,4,5,6,7,8,9
foreach($number in $array)
{
    echo $number
}

$array ="apple","orange","banana","plum"
foreach($friuts in $array)
{
    echo $friuts
}

foreach($file in Get-ChildItem)
{
    echo $file
} 

$friuts = [ordered]@{
            'mango'= 'yellow'
            'apple' ='yellow'
            'jackfruit' ='green'
            'grapes' = 'violet'
            'orange' ='orange'
            }
foreach($fruit in $friuts)
{
    echo $fruit
    echo $fruit.keys
    echo $fruit.count
    echo $fruit.Values
}

#----------------------while statements---------------------------------
echo "-----------------while statements-----------------------------------------------"
$i=1
while($i -le 5)
{
    echo $i
    $i= $i + 1
}

#--------------------break Statements---------------------------------
echo "---------------break statements--------------------------------------------------"

for(;;)
{
    echo "infinite loop"
    break;
}

$m=0
while($true)
{
    $m++
    write-host "loop has to run $m infinte times"
    break;
}

#-----------------continue statements--------------------------
echo "------------continue statements--------------------------------------"

$array ="windows","apple","linux","macros"
foreach($os in $array)
{
    if($os -eq "linux")
    {
        continue
    }
    echo $os
}

#--------------functions---------------------
echo "---------functions---------------------"
function write_command
{
    echo "windows operating system"
}
write_command

function add
{
    [int]$one= Read-Host -Prompt "enter first number"
    [int]$two = Read-Host -Prompt "enter second number"
    $res = $one + $two
    echo "sum is $res"
}
add




















#-----------Shell scripting ends here-------------------
