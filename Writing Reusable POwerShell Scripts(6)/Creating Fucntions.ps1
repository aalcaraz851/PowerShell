<#
What are Function?
1. Functions are the building Block of powershell scipts
2. Reuseable throughtout the script
3. Can Contain variables, parameters, statements and calls to other functions

Functions with argiments and Parameters

Arguments
Arguments are not specified withing a function
argumnets are populated by passing values as part of the execution
Values are retrieved by using ID

Parameter
A Parameters is variable defined in a function
Parameter value is populated when calling the function
Parameter have properties
Parameters can be mandatory or optional

CReating a basic powershell function
#creating a Function

Function Get-Answer()
{
$question = Read-Host "What is the Capital City in Australia"

if($question -eq "Canberra")
{
Write-Host "Correct!!" YOu entered $question" -ForgroundColor Green
}else {
Write-Host "Incorrect!! YOU entered $question" -ForgroundColor Green
}

}

Function Get-Answer()
{
$question = Read-Host "Hi,$($args[0])What is the Capital City in Australia"

if($question -eq "Canberra")
{
Write-Host "Correct!!" YOu entered $question" -ForgroundColor Green
}else {
Write-Host "Incorrect!! YOU entered $question" -ForgroundColor Green
}

}
Powershell fucntion with Variables
#CReate a function using Variables
Function Get-Answer($name)
{
$question = Read-Host "Hi $name, What is the Capital City in Australia"

if($question -eq "Canberra")
{
Write-Host "Correct!!" YOu entered $question" -ForgroundColor Green
}else {
Write-Host "Incorrect!! YOU entered $question" -ForgroundColor Green
}

}

#Create a function using Variables
Function Test-WhatIsCapitalCityofAustralia()
{
Param(
[Parameter(Mandatory=$true)]
[ValifdateSet("Canberra","Melbourne","Brisbane","Perth")]
[string]$city
)
if($city -eq "Canberra")
{
Write-Host "Correct!!" YOu entered $question" -ForgroundColor Green
}else {
Write-Host "Incorrect!! YOU entered $question" -ForgroundColor Green
}

}


Common Function Enhancements
Comments
Error Handling
Console MEsssage
Loop Statements
Flow Logic
Output Results


Function Get-Files()
{
Param(
[Parameter(Mandatory=$true)]
[string]$city
)

Get-ChildItem -Path "$path\*.$FileType" -Recurse -Force

}

BAsic Script - CReat Picker Value
#Create Class for autocomplete values
class Cities : System.Management.Automation.IValidateSetValuesGenerator
{
[string[]] GetValidValues()
{
$Cities = @('1.4 Million','750 Thousand','2 Million','500 Thousand')
return $Cities
}
}

#basic Script- Question Functions
Function Test-WhatIsCapitalCityofAustralia()
{
Param(
[Parameter(Mandatory=$true)]
[ValifdateSet([Cities])]
[string]$city
)
if($Answer -eq "1.4 Million")
{
Write-Host "Correct!!" -ForgroundColor Green
}else {
Write-Host "Incorrect!! -ForgroundColor Green
}

}

#define Math Operator VAlues
[ValidateSet("Add","Subtract","Multiply","Divide")]
#Check the operator and Perfom Specific Sun
if($mathoperstor -eq "Add"){
$answer = Invoke-AddNumbers $numberOne $numberTwo
}
elseif($mathoperstor -eq "Subtract"){
$answer = Invoke-SubtractNumbers $numberOne $numberTwo
}
elseif($mathoperstor -eq "Multiply"){
$answer = Invoke-MultiplyNumbers $numberOne $numberTwo
}
elseif($mathoperstor -eq "Divide"){
$answer = Invoke-DivideNumbers $numberOne $numberTwo
}


#>
#Create a Fucntion within a powershell
#Create a Function with Parameter within a PowerShell Script
#Create a Bsic SCript

$path = "C:\Users\andre\desktop\Trainer"
$outputPath = "C:\Trainer\Output"

function Begin{
Test-PopulationOfHawaii
Get-MathAnswer

}
Begin

#Iterate Files Function
Function Get-Files{
Param(
[Parameter(Mandatory=$true)]
[string]$FileType
)
Get-ChildItem -Path "$path\*.$FileType" -Recurse -Force
}



#CReate a function using Variables
Function Get-Answer()
{
$question = Read-Host "Hi $name, What is the Capital City in Australia"

if($question -eq "Canberra")
{
Write-Host "Correct!! YOu entered $question" -ForegroundColor Green
} else {

Write-Host "Incorrect!! YOU entered $question which incorrect, please try again" -ForegroundColor red
}

}
Get-Answer

Function Get-Answer()
{
$question = Read-Host "Hi,$($args[0])What is the Capital City in Australia"

if($question -eq "Canberra")
{
Write-Host "Correct!! YOu entered $question" -ForegroundColor Green
}else {
Write-Host "Incorrect!! YOU entered $question" -ForegroundColor Green
}
}
Get-Answer



#CReate a function using Variables
Function Get-Answer($name)
{
$question = Read-Host "Hi $name, What is the Capital City in Australia"

if($question -eq "Canberra")
{
Write-Host "Correct!! YOu entered $question" -ForegroundColor Green
}else {
Write-Host "Incorrect!! YOU entered $question" -ForegroundColor Red
}

}


Get-Answer -name "Andrew Alcaraz"


#Create a function using Variables
Function Test-WhatIsCapitalCityofAustralia()
{
Param(
[Parameter(Mandatory=$true)]
[ValidateSet("Canberra","Melbourne","Brisbane","Perth")]
[string]$city
)
if($city -eq "Canberra")
{
Write-Host "Correct!! You entered $question" -ForegroundColor Green
}else {
Write-Host "Incorrect!! You entered $question" -ForegroundColor Green
}

}
Test-WhatIsCapitalCityofAustralia -city Melbourne

Test-WhatIsCapitalCityofAustralia -city Canberra

#Create Class for autocomplete values
class Cities : System.Management.Automation.IValidateSetValuesGenerator
{
[string[]] GetValidValues()
{
$Cities = @('1.4 Million','750 Thousand','2 Million','500 Thousand')
return $Cities
}
}

#basic Script- Question Functions
Function Test-PopulationOfHawaii(){

param(
[parameter(Mandatory=$true)]
[ValifdateSet([Cities])]
[string]$city
)
if($Answer -eq "1.4 Million")
{
Write-Host "Correct!!" -ForgroundColor Green
}else {
Write-Host "Incorrect!!" -ForgroundColor Green
}

}

Function Get-MathAnswer{

param(
[int]$numberOne,
[int]$numberTwo,
#define Math Operator VAlues
[ValidateSet("Add","Subtract","Multiply","Divide")]
[string] $mathoperstor
)
[int]$answer =""
Write-Host "Math Operator = $mathoperator"


#Check the operator and Perfom Specific Sun

if($mathoperstor -eq "Add"){
$answer = Invoke-AddNumbers $numberOne $numberTwo
}
elseif($mathoperstor -eq "Subtract"){
$answer = Invoke-SubtractNumbers $numberOne $numberTwo
}
elseif($mathoperstor -eq "Multiply"){
$answer = Invoke-MultiplyNumbers $numberOne $numberTwo
}
elseif($mathoperstor -eq "Divide"){
$answer = Invoke-DivideNumbers $numberOne $numberTwo
}
return $answer
}
Function Invoke-AddNumbers ([int]$numberOne, $numberTwo){
return $numberOne + $numberTwo
}

Function Invoke-SubtractNumbers ([int]$numberOne, $numberTwo){
return $numberOne - $numberTwo
}
Function Invoke-MultiplyNumbers ([int]$numberOne, $numberTwo){
return $numberOne * $numberTwo
}
Function Invoke-DivideNumbers ([int]$numberOne, $numberTwo){
return $numberOne / $numberTwo
}
