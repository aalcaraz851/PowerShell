<#
Determine the editor

1.Windows PowerShell Console
2.Windows Terminal
3.Visual Studio Code

script structure
1. define an required modules or snap-ins
2.DEclare any avariables
3. define functions

Creating a powerShell Script
1. Lanch selected editor
2.add powershell code
3.digitally sign. if distributing or for secuirty
4. save the file{name}.ps1

Comment PowerShell Scripts
1. Single-Line PowerSHell Comments
    Begin with the number/has character(#). Everything onthe same line after it is ignored PowerShell
2.Block comments/Multiline Comments
    Comment black in POwerShell begin with"< and end with >"
3.Comment-Based Help
    Collection of keywords and string value wrapped within a black comment

#sigle LIne Commenting
#this function returesn a simple string
funtion Invoke-Message() {Write-Host"Some Text"}

#Block Comments/ muliline comments
<
This funciton returns a simple string
The String will be display in red
>
function Invoke-Message(){Write-Host"Some Text" -ForegroundColor Red}

#Commenting-out Exixting Code
#function Invoke-Message(){Write-Host"Some Text" -ForegroundColor Red}



#>

