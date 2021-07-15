<# Overview
Converting and Formatting Data Values
Manipulating String Data
Working with Custom Object Data
Loading and itrating XML and JSON

------------------------------------------------------
Converting and Formatting Data Values

Type of Variables
Loosley typed : hen a vaule is assigned to an indefined type of variable 
Strongly typed : type of assigned to variable

:Using Variables to store Data :
Can store all type of values in Powershell Variabes
A vaiables is a unit of memory in which values are stored 
You delcare variables by using a dollar sign ($) before the name 
Variable names aren't case-sensitive, and can include spaces and special characters
*keep without spaces

Vaiables types
user-created variables: User-creayed variables are created and maintained by the user. 
    the variables are created within Powershellcommand-line exit only while the powershell windows is open.
Automatic Vaiables: Automatic variables store the state of powershell. Powershell creates these variables
    and changes their values as required to maintain their accuracy.
Preference Variables: Perference variables store user preferences for PowerShell. These variables
    are created by powershell and populated with defauts values.

CREATING USER VARIABLES
#Create a basic variable
$variable1 = 1,2,3
$variable2 = "C:\Documents\"
$variable3 = "January 1, 2021"

#Create a typed variable
[Int]$variable = 10
[DateTime]$variable2 = "January 1, 2021"


Common Variable Data Types
Boolen
Date Time
Pwershell Objects
Script Block 
String
Array

Casting Data Values
Converting one object type to another
Not all objects can be cast
Cast Variables and Values

#VARiables
$variable1 = 1
$variable2 = "01/01/2021"

#COnverting String Variables to Integer
[Int]$variable1
#COnverting String Variables to Date
[DateTime]$variable2
#COnverting String Variables to Integer
[int]$false

-When a VALUE is cast to a particular datatype, it is a one-time change -
-When a variable is cast to a particular datatype it stays unless it is updated-

Casting using the -AS Operator
Use to test a conversion
Define the type after the variable
Can have unexpected results

Syntax
#Variable

$variable1 = 1
$variable2 = "01/01/2021"

#COnverting String Variables to Integer
$variable1 -as [Int]
#COnverting String Variables to Date
$variable2 -as [DateTime]
#COnverting String Variables to Integer
[int] -as $false

Using the -F Operator
Used to format a string exoression
Support complex formatting
Begin statement with selected format

Formtting data Value useing -Foperator
Syntax
#Variable

$variable1 = 1
$variable2 = "01/01/2021"

#Display only three decimal Places
"{0:n3}" -f $variable1

#Add spaces for Phone Number
"{0:###-###-####}" -f $variable2

#Display Year Only from Date
"{0:yyyy}" -f (Get-Date)
#>

#Demo to COnvert and format Values
#Formating values
#Cast Values to a different Type
#Cast using the -AS Operator

$variable1 = 1,2,3,4,5
$variable1

$variable2 = "C:\Documents\"
$variable2
[int]$variable3 = "101"
$variable3

[int]$variable3 = 101
$variable3

[int]$variable3 = "101"
$variable3

[int]$variable4 = "10"
$variable4

[string]$variable4 = "Testing Value"
$variable4

[string]$variable4 = "10"
$variable4

[string]$variable4 = $true
$variable4

$variable3.GetType().Name
$variable4.GetType().Name

$variable3 + $variable4

[int]$num1 = 23
[int]$num2 = 45
$num1 + $num2 


$var1 = "01/01/2021"
$var1 

[DateTime]$var1
$var1
$var1 -as [DateTime]

$var2 = 1.2
$var2
[int]$var2
[boolean]$var2
[String]$var2
[datetime]$var2