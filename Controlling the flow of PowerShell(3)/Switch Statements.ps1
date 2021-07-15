#Example 1
$number = 3

Switch($number){
5{Write-Host "5"}
10{Write-Host "10"}
20{Write-Host "20"}
}
#Example 2
$number = 3

Switch($number){
5{Write-Host "5"}
10{Write-Host "10"}
20{Write-Host "20"}
Default {Write-Host "Not equal to 5,10,20"}
}

#Example 3
$number1 = 5
$number2 = 11
Switch($number1,$number2){
5{Write-Host "5"}
10{Write-Host "10"}
20{Write-Host "20"}
Default {Write-Host "Not equal to 5,10,20"}
}

#Example 4

$number1 = 5
$number2 = 11
$number3 = 20
Switch($number1,$number2, $number3){
5{Write-Host "5"}
10{Write-Host "10"}
20{Write-Host "20"}
Default {Write-Host "Not equal to 5,10,20"}
}