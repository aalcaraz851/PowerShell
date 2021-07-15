#Example 1
$variable = "Value"
if($variable){
Write-Host " The $variable returns true"}
else{
Write-Host " The $variable check return false "}

#Example 2
$variable = null
if($variable){
Write-Host " The $variable return true"}
else{
Write-Host " The $variable check return false "}


#Example 3
$variable = 1
$variable2 = 2
if($variable) {
Write-Host " $variable "}
elseif($variable2) {
Write-Host "$variable2 "}
else {Write-Host "Anything"}

#Example 4
$variable =$null
if($variable) {
Write-Host " $variable "}
elseif($variable2) {
Write-Host "$variable2 "}
else {Write-Host "Anything"}

 #Example 5
 $variable = $null
 $variable2 = $null
if($variable) {
Write-Host " $variable "}
elseif($variable2) {
Write-Host "$variable2 "}
else {
Write-Host " Anything"}

#Example 6
$variable1 = 1
$variable2 = 3
if($variable1 -eq $variable2) {
Write-Host "They are the same" }

#Example 7
$variable1 = 1
$variable2 = 3
if($variable1 -lt $variable2) {
Write-Host "They are the same" }

#Example 8
$variable1 = 1
$variable2 = 3
if($variable1 -gt $variable2) {
Write-Host "They are the same" }

#Example 9
$array = 1..10
$array
$compare = 6
$compare
if($array -contains $compare ){Write-Host "Compared number"}

#Eaxmple 10
$array = 1..10
$array
$compare = 6
$compare
if($compare -in $array ){Write-Host "Compared number"}

#Eaxmple 11
$array = 1..10
$array
$compare = 6
$compare
if($array -gt $compare ){Write-Host "Compared number"}

#Example 12
$array = 1..10
$array
$compare = 6
$compare
if(($compare -in $array) -and ($compare -gt 4)) {Write-Host "Yes"}

#Example 13

$array = 1..10
$array
$compare = 6
$compare
if(($compare -in $array) -and ($compare -gt 8)) {Write-Host "Yes"}
else{Write-Host "No"}

#Example 14
$array = 1..10
$array
$compare = 6
$compare
if(($compare -in $array) -or ($compare -gt 8)) {Write-Host "Yes"}
else{Write-Host "No"}

#Example 15
$variable1 = 1
$variable2 = 5
if(($variable1 + $variable2) -gt 4){Write-Host "Yes"}

if(($variable1 * $variable2) -gt 4){Write-Host "Yes"}

#Example 16
$variable1 = 1
$variable2 = 3
($variable1 -eq $variable2) ? $true : $false