<#
Manipuating String Data
------------------------
Common String MAnipulation
1.replaing string values
2.Splitting string Values
3.Paddelingg string values

Using the replace operator
1.Input String
2.Replace
3.Matching Pattern
4.Replacement String

examples
#varuable for sentence
$variable1 = "the class instuctor asked for a volunteer for  DEMonstration"
$variable2 = "Jones Tom"

#Read Variable and Replace Value
$variable1 -replace "instrutor" , "teachers"

#Read Variable, Repalce Value and Load into new Vaiable 
$replacevariable = $variable -repalce "([a-z]+)\s([a-z]+)",'$2,$1'

#Using replace and RegEx to Remove Spaces
$variable1 -replace '[^a-z]'

Using the -Spilt Operator
Splits one or more strings into substrings
Default split delimiter is whitespace
Other delimiter are characters, strings, patterns, or script block
All sub string are returned by default

The - Split Operator syntax 
1. Delimiter
2. Number of SubStrings
3. Condition the Delimiter Matches

-Split <String>
-Spilt(<String[]>)
<String> -Split <Delimiter>[,<Max-substring>[,"<Options>"]]
<String> -Split {<ScriptBlock>} [,<Max-substring>]

Example
#Split String Value using Default dilimiter
-split "january, february march april may june"
#Split String Value using Comma dilimiter
"january, february march april may june" -split ","
#Split String Value into three using comma dilimiter
"january, february march april may june" -split ",",3
##Split Variable Value using Comma dilimiter
$variable = "january, february march april may june"
$variable = -spilt ","

Using the .Spilt() Function
Spilts input into multiple substrings based on the delimiters
Uses whitespace characters like space, tabs, and line-breaks as default delimiter
avaiables for all [String] type variables and values

Examples
#Split Variable Value using Comma Delimiter
$variable = "january, february march april may june"
$variable.Split(',')

#Nested Split Variable Value Using comman Delimiter
$variable = "january, february march april may june"
$variable.Split(',').Split(':')

Padding string values
Pad left
  -Add padding to th eleft of the value
  -Set the specified length
Pad Right
  -Add padding to the right of the value
  -Set the spcified length

  Padding String Values

  Variables/values                 Width:VAlue Length + Padding        Padding Character
  "Demonstration"                   13 + 1 = 14                              'A'
  "Sample"                          6 + 1 = 7                                'B'
  1                                 1 + 5 = 6                                'O'
  $variable                       $variable.Length + 5 = x                   'T'

  Example
  
  #Stardard Syntax
  .PadLeft([Int]Width[,Padding Character])
  .PadRight([Int]Width[,Padding Character])
  
  #Padding the Left of Value
  $variable ="Demontration"
  $variable.PadLeft(14,'A')

#>

$variable1 = $null
$variable2 = $null

$variable1 = "the class instuctor asked for a volunteer for a DEMonstration"
$variable2 = "Jones Tom"

#Read Variable and Replace Value
$variable1 -replace "instuctor" , "teacher"

#Read Variable, Repalce Value and Load into new Vaiable 
$replacevariable = $variable1 -replace "instuctor" , "teacher"

$variable2
$variable2 -replace "([a-z]+)\s([a-z]+)",'$2,$1'

#Using replace and RegEx to Remove Spaces
$variable2 -replace '[^a-z]'

#Split String Value using Default dilimiter
-split "january, february march april may june"
#Split String Value using Comma dilimiter
"january,february,march,april,may,june" -split ","
#Split String Value into three using comma dilimiter
"january,february,march,april,may,june" -split ",",3
##Split Variable Value using Comma dilimiter
$variablesplit = "january,february,march,april,may,june"
$variablesplit 

#Split Variable Value using Comma Delimiter
$variable = "january,february,march,april,may,june"
$variable.Split(',')

#Nested Split Variable Value Using comman Delimiter
$variable = "january,february,march;april;may;june"
$variable.Split(',').Split(':')

$pad1 = "Demontration"
$pad2 = "Demontration"
  $pad1.PadLeft(14,'A')
  $pad2.PadRight(14,'A')
