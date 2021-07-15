<#
Why digitally sign a powershell scripts
1. Separate custom develope tested and personal scripts
2. Ensure scripts are not malicious
3. Validate the the cscript is doing versus its intended purpose

UNerstanding Script Signing
Must sign s script with a code signing cerificate

Two types of cerificates are suirable for signing a script file: Public Certification Authority
    and Self-Signed
Use a self-signed certificate only to sign scripts that you write for personal use

Certificate type
1. Public Certification Authority
    Share the script with other computer as they trust the certification authority
2.Locally Created Self-Signed
    Self-Signed certification scripts will not execute on other computers, only locally, or computers that trust the self-signed certificate

Creating Self-signed Digital Certificate
#Set the Powershell Scripts Path
$script = "C:\Documents\Code\Script.ps1"

#Create Self-signed Code Signong Certicate
New-SelfSignedCertificate
    -DNSName "Script.company.com" '
    -CertStoreLocation Cert:\CurrentUser\My '
    -Type CodeSigningCert '
    -Subject "PowerShell CODe Signing Certificate"

#Retrieve the Code Signing Certificate
$certificate = (Get-ChildItem Cert:\CurrentUser\My - CodeSigningCert)[0]

#Set the Code Signing Certificate for the PowerSHell Script
Set-SuthenticodeSignature $script -Certificate $certificate

#>
#Demo HOw to Sign a PowerShell scripts
$script = "C:\Users\andre\Desktop\Trainer"
$script = "C:\Users\andre\Desktop\Trainer\Script.ps1"
Get-Content -Path $script

New-SelfSignedCertificate -DnsName "Script.company.com" -CertStoreLocation Cert:\CurrentUser\My -Type CodeSigningCert -Subject "PS Code Signing"

#Install-Module PKI

$certificate = (Get-ChildItem Cert:\CurrentUser\My -CodeSigningCert)[0]
$certificate

$script = "C:\Users\andre\Desktop\Trainer\Script.ps1"
Set-AuthenticodeSignature $script -Certificate $certificate



Get-AuthenticodeSignature $script | Format-Table -AutoSize 



