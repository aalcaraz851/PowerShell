<#
What are PowershellShell Execution Policies??
Ther all 5 executions policies
1.There are three things there policies do
2.Safety features to control the conditions a script can run
3.prevent execution of malicious scripts
Scope execution of scripts to specific sessions



It looks at the process first thne current user then local machine or else restricted.
Retrieve all the execution policites and display them in precendence order
"Get-ExecutionPolicy"


get-executionPolicy -list
Set-executionPolicy Restriced its
locks the loacl mahcine account


Setting Execution policies
Can be assigned to the default scope or a specific scop
The default scope is LocalMachine, which affects everyone who uses the computer
Execution policies can be used for a single PowerShell session
Retrieve the current execution policy
Get-ExecutionPolicy

Example 1
Set-ExecutionPolicy Unrestricted
ExecutionPolicy Remote Signed
Scope Local mahcine

Example 2
Set-ExecutionPolicy Unrestricted
ExecutionPolicy AllSigned
Scope current user

example 3
Invoke-command()
-ComputerName Computer
-ScriptBlock {Get-executionPolicy} | Set-ExecutionPolicy Black

how to set for single
lanch pwsh.exe that launches powershell


PowerShell execution pilicies
all signed-
bypass - for confiurations
remote signed
restricted - by defualt it block individual commands but does not all scripts
unresticked - unsigned scripts can execute

#>

<#
Understanding Powershell Scopes
1.execution policies can be set at the current user and local machine levels which are then stored in the registry(process-current user-local-machine)
2.Process: affects only the cirrent powershell session
3.Current User: Policy affects only the current user
Local Machine: Affects all users on the current computer
Gruoup policy based scorpes(
machine policy(current computer)- 
user policy{affects all users in the comuter})



#>

<#
Execution policy Precedence
Process- CUrrent USer-local Mahcine - Restricted

get-executionPolicy -list
Set-executionPolicy Restriced its
locks the loacl mahcine account
#>

#Demo Review Powershell Execution policy Presendece
#checking all Policy's
Get-ExecutionPolicy -List

#Change the Policy to either resticted-unrestrickted-remotesigne-bypass-allsigned, you can also hit tab

Set-ExecutionPolicy AllSigned
Set-ExecutionPolicy Restricted
Set-ExecutionPolicy Bypass
Set-ExecutionPolicy RemoteSigned
Set-ExecutionPolicy Unrestricted