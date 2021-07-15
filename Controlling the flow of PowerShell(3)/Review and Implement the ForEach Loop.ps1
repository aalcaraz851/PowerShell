 #exmaple 1
 $collections = 1,2,3,4,5,6,7,8,9,10
 $collections

 Foreach ($number in $collections) {
 Write-Host "Current Number:" $number
 }

 #exmaple 2
 $collections = 1..20
 $collections

 Foreach ($number in $collections) {
 Write-Host "Current Number:" $number
 }

 #Example 3
 $collections = 'a','b','c','d'
 $collections

 Foreach ($letter in $collections) {
 Write-Host "Current letter is:" $letter
 }

 #Exmaple 4
 $collections = "Yes","No","Maybe"
 $collections

 Foreach ($letter in $collections) {
 Write-Host "Current letter is:" $letter
 }

 <#
 Manging the Flow Within PowerShell

 If statements can be nested to create complex execution paths
 Loop statements can e nested inside other loops, as well as within IF statements
 For Each is not only a function for enumeration, but is a property on specific objects as methods

 ALl compinations of IF,ELSEIF.ELSE.SWITCH,DO-WHILE.DO-UNTIL,WHILE, FOREACH AND SWITCH statements are
 supported within each other



 #>