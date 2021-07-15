<#Setting Exection Policies
1. Can be assigned to the default scope or specific scope
2.the default scope is localmachine, which affects everyone who uses the computer
3.Execution policies can be used for single PowerShell Session\

example 1
#retrieve the current execituon policy 
Get-ExecutionPolicy
#set thecurrent execution policy to unresticted
Set-ExecutionPolicy 

Set A Scoped Execution Policy

#Set an execution policy for the currentUSer Scope
Set-ExecutionPolicy
    -executionPolicy RemoteSigned
    -Scope Local Machine

#Set the execution policy from a remote computer to a local computer

Invoke-Command
    -ComputerName COmputer 
    -ScriptBlock {Get-ExecutionPolicy} | Set-ExecutionPolicy
    Set Execution Policy for Single Session

    Lanch Powershell using command line
    - pwsh.exe
    Utilize execution policy parameter
    - ExecitionPolicy Allsigned
    Does not save to the resgistry
    #>

    # Retrieve the surrent execution policy
    # Set the default execution policy
    #set a scoped execition polcy
    # LAnch a powershell session with execution policy