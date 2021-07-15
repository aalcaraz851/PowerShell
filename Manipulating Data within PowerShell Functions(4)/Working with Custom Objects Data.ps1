<#
Working with Custom Objects Data

Csutomer Oject Data
1.Arrays
2.Has Tables
3.Customer Object

What are Arrays?
An Array is list or collection of values of objects.
Array only contain values not properties.

Creating Arrays
1.Empty arrays can be created by using "@()"
2.Comma seoareted lists can also create arrays
3.The "Write-Output" command can create strings Arrays

Creating an arrays
#Create empty arrays
$variable = @()
#Create arrays with text values
$variable = @('January','February','March','April','May','June')
#Create arrays with text values not using "@()"
$variable = 'January','February','March','April','May','June'
#Create arrays with text values not using "@()"
$variable = Write-Output'January','February','March','April','May','June'


#Create arrays with text values
$variable = @('January','February','March','April','May','June')

#Access Array Item using Offset
$variable[0]

#Access Array Item using Multiple Offset
$variable[0,1,4]

#Access Array Item using Range Operator as Offset
$variable[2..5]

Iterating Arrays Items
#Create arrays with text values
$variable = @('January','February','March','April','May','June')

#Access Array Item using pipeline with ForEach-Object Loop
$variable | ForEach-Object {"The month is: $PSItem"}

#Access Array item using a For Each Loop
foreach ($item in $variable) {"The month is: $PSItem"}
#Access Array item using a For Each Method
$variable.ForEach({"The month is: $PSItem"})
#Access Array item using For Each 
for ($item = 0; $item -lt $variable.count; $item++){
"This month is: {0}" =f $variable[$item];
Write-Host "Current Postion: $item"

Whats are Hashtables?
A hashtable is data structure like an array, except you store every alue (object) using key.
Hashtables only contain values not properties. They are basic key/value
stores

1.Also known as a dictionary or associative array 
2.Data structure that stores one or more key/value pairs
3. Keys and value in hash tables are .NET objects
4.Efficient for finding and retreving data 

Creating Hashtables
Start the has table wit an atsign(@)
wrap the hash table in braces({})
Use an equal sign (=) to separate each key from its value
use a semicolon(;) or line break to separate th ekey/value pairs

#creating a empty Hashtable
$variable = @{}

#Create a hashtable with keys and values
$variable = @{Month= 5; Name = "May"; Season = "Spring"}

#Create an ordered hashtable with keys and values
$variable =[ordered] @{Month= 5; Name = "May"; Season = "Spring"}

Dispaly Value from Hashtables
Store Hashtable in variable
 -Type $variable name, press Enter
Use the "," notation to display all the keys or all the values
 -type $variable.keys, press Enter
 -type $variable.values, press Enter
Each key name is also a property
 -type $variable.Month, press Enter
 -type $variable["Month"], press Enter


 Iterating a hashtable
 #create acountry population hashtable
 $variable = @{
  China = 12345678;
  India =23456789;
  America = 3456789;
  Spain = 4567890;
 }

 #Iterate all Keys and values using ForEach-Object Loop
 $variable.keys | ForEach-Object{
 $output = '{0} has a population of {1}' -f $_, $variable[$_];
 Write-Output $output
 }

  #Iterate all Keys and values using For Loop
  for each($key in $variable.keys){
  $output = '{0} has a population of {1}' -f $key, $variable[$_];
 Write-Output $output

 What are PSCutomer Objects???
 PSCustom object's are simple way to creat structured data. A PSCustomObject is compreosed of 
    properties and values.

PSCustomObjects
1. Like hashtables execpt stongly typed as "PSCustomObjects"
2. Properties are ordered by default
3. PSCustomObject contains "NoteProperty", the same common Powershell Objects

Creating a PSCustom Object
#Create an Empty PSCustomObjet
$variable = [PSCustome]@{}

#Create an Empty PSCustomObject
$variable = New-Object -TypeName PSObject

#Create and Populate a PSCustomObject
$Variable = [PSCustomObject]@{

}

#Add Item to PSCustomerObject
$variable = [PSCustomerObject]@{
  'China' = '12345678';
  'India' = '23456789;
  'America' = '3456789';
  'Spain' = '4567890';
 }

$Add Items to PSCustomObject
$variable | Add-Member =MemberType NoteProperty -Name 'Russia' -Value '145934462'
$variable | Add-Member =MemberType NoteProperty -Name 'Russia' -Value '5421241'


Retriveing PSCustomObject Properties and Values

# Create and Populate a PSCustomObject
$variable = [PSCustomerObject]@{
  'China' = '12345678';
  'India' = '23456789;
  'America' = '3456789';
  'Spain' = '4567890';
 }

 #Return all PSCsutomObject Key/Value Pairs
 
 #Return Spain PSCustomObject
 $variable.Spain


 Testing PSCustomObject
 1 -is Operatot
 2 -isNOT 

 $variable1 = 10
 $variable1 = "10"
  $variable1 -is $variable2.GetType()
  $variable1 -isnot [Int]
  $variable1 -isnot $variable2.GetType()


#>

#Demo
#Create Custom Data Objects
#Retrieve data from Custome Objects
# -Load and Reuse Custom Object
# -Test Object using -IS operator



#Create empty arrays
$variable = @()
#Create arrays with text values
$variable = @('January','February','March','April','May','June')
$variable
$variable[0]
$variable[0,1,3]
$variable[0..3]
$variable | ForEach-Object {Write-Host "The month is: $PSItem"}
foreach ($item in $variable) {"The month is: $item"}

$variableh =@{ Month=5; Name="May"; Season = "Spring"}
$variableh
$variableh.Values
$variableh.Keys

# Create and Populate using foreach
$variable = @{
  China = 12345678;
  India = 23456789;
  America = 3456789;
  Spain = 4567890;
 }
 $variable
 
 $variable.keys
 foreach ($key in $variable.Keys) {
 $output = '{0} has population pf {1}' -f $key,$variable[$key]
 Write-Host $output
 }


$variable | ForEach-Object{
$output = '{0} has its you  {1}' -f $_,$variable[$_]
 Write-Host $output
}
$variable.keys | ForEach-Object{
$output = '{0} has its you  {1}' -f $_,$variable[$_]
 Write-Host $output
}

# Create and Populate a PSCustomObject
$variable = [PSCustomObject]@{
  'China' = '12345678';
  'India' = '23456789';
  'America' = '3456789';
  'Spain' = '4567890' ;
 }
$variable
#$Add Items to PSCustomObject
$variable | Add-Member -MemberType NoteProperty -Name 'Russia' -Value '145934462'
$variable | Add-Member -MemberType NoteProperty -Name 'Norway' -Value '5421241'
$variable

$variable.China
$variable.America