<#

Using TRY/CATCH/FINALLY Statement
1.TRY/CATCH- Try a section of code and if it throws an error, catch it
2.TRY/CATCH-Dont ahndle the rror, simply execute code if an excepting occurs
3.TRY/CATCH/FINALLY-Combination of both throwing errors, and executing

Generate an Error using "throw"
Function New-Error
{
Throw "This is an Error"
}

#Use TRy/Catch to Capture th Error and raise an exception
try{
New-Error
} catch {

Write-host "An Execption was Generated"

}

Using try/catch/fianlly

#Use Try/Fianlly to capture the error and continue code execution
try{
New-Message
} Fianlly {
Write-Output "Continue execution"
}
#Use try/catch to capture the error and raise an exception
try{
New-Message
} catch {
Write-Output "An Exception was generated"

} finally {
Write-Output "Continue Execution"
}


Typed exception Handling 
1. Exception have type. YOu can specify the type of exception you nedd to catch
2.Catch multiple exception types woth a single try/catch statement
Handling Typed Execptions
$path = "C:\Documents\Code"
try {
New-Error -Path $path -ErrorAction Stop

}
Catch[System.IO.IOException]{
Write-Output "Error within the selected File:[$path]"
}


Demo
Use the TYP/CATCCH Syntax to capture rrors and exceptions

Use TRY/CATCH/FINALLY Syntax to capture Errors and Exceptions

#>


Function New-Error
{
Throw "New Error"
}

New-Error


try{
New-Error
} catch {

Write-Host "An Error Occured"

}

function New-Error {
throw [System.IO.FileNotFoundException] "File not found"
}

New-Error

try{New-Error} 
catch 
{

Write-Host $_ 
$_.GetType().FullName
$_.Exception
$_.Exception.GetType().FullName
$_.Exception.Message

}

try{New-Error}
catch [System.IO.FileNotFoundException]{
Write-Host "Catch"
    catch [System.IO.IOException]{
    Write-Host "Test"
    }
}

function New-Error([string]$type){
switch ($type){
A {throw [System.IO.FileNotFoundException] "File not Found Exception" }
B {throw [System.IO.IOException]"IO Exception" }
C {throw [System.SystemException] "System Exception " }
default {throw [System.Exception] "Standard error" }
}
}

New-Error -type A
New-Error -type B
New-Error -type C

try{New-Error A}
catch [System.IO.FileNotFoundException] {"Got it: File not Found Exception" }
catch [System.IO.IOException]{"Got It: IO Exception" }
catch [System.SystemException] {"Got It:System Exception " }
catch [System.Exception] {"GOt It: Standard error" }
finally {"finsihed"}


try{New-Error B}
catch [System.IO.FileNotFoundException] {"Got it: File not Found Exception" }
catch [System.IO.IOException]{"Got It: IO Exception" }
catch [System.SystemException] {"Got It:System Exception " }
catch [System.Exception] {"GOt It: Standard error" }
finally {"finsihed"}

try{New-Error C}
catch [System.IO.FileNotFoundException] {"Got it: File not Found Exception" }
catch [System.IO.IOException]{"Got It: IO Exception" }
catch [System.SystemException] {"Got It:System Exception " }
catch [System.Exception] {"GOt It: Standard error" }
finally {"finsihed"}

<#
Summary
1. Looked at how Errors and Exceptions work
2. Reviewed the difference between Errors
and exceptions
3.Using Try,catch, and Fianlly Statement within Funtions
#>