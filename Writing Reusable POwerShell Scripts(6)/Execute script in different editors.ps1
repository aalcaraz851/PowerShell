<#
Common Powershell Consoles
1. Windows Powershell Console
2. Windows Terminal 
3.Visual Studio Code
4. POwershell Intergrated Development Enviroment 

Excuting Scripts
1. Ensure the Excution Policy set as required
2. Type "&" following by the "Path to Script File(*.ps1)"
3. Press Enter and wait ot th script to complete

Excuting script withing visual studio code
Integrated console and editor
Press"F5" to excute Entire script
Easy Browse and Load Files
Select Specific Lines and Execute


USing the powershell IDe
1. Integrated COnsole and Editor
2. Press "F5" to execute the entire script
3.Select specific lines and execute

#>

Get-ChildItem
.\Users\andre\Desktop\Trainer\Script.ps1


Set-ExecutionPolicy
Get-ExecutionPolicy

function Test{
Write-Host "asdas" -ForegroundColor Red
}
Test

function Show-Message{
Write-Host "How are you doing" -ForegroundColor Red
}

Show-Message

