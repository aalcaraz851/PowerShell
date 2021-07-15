<#
Loading and Iterating XML and JSON

Common Commands
1. convertto=xml
2.ConvertFrom-json
3.convertto-Json

loading XML

Simplest approach to use SELECT-XML Command

Uses XPAth queries to search for text in XML Strings and documents

Requires the Path  of the XML File and the XPATH within the XML document to search


Loading XML Data
#Define Variables
$path = "C:\Document\Data\Countries.xml"
$xpath = "/Countries/Country/Name"

#Load XML
$xml = Select-Xml -Path $path -Xpath $xpath

#Iterting and Retrieving XML Data
Define Variables
$path = "C:\Document\Data\Countries\Countries-with-Attributes.xml"
$xpath = "/Countries/Country"

#Load XML
$xml = Select-Xml -Path $path -Xpath $xpath

#Loop through Xml Property Values
$xml | ForEach-Object {$_.Node.name}

#Create Xml Variable and Load Data, then Retrieve Value
[xml]$xml = Get-Content -Path $path
$xml.Countries.Countries.Country.Name
$xml.Countries.Countries.Country.Population

Steps for iterating through XML Data
1.Read File Cast to XML Object
2.Iterate through XML Data
3.Return Results

Examples Script
# Define Variables
$path = "$path = "C:\Document\Data\Countries\Countries-Checked.xml"


#Load XML
[xml]$xml = Get-Content - Path $path
$xml.Countries.Country | Where-Object Validated -eq 'True' | 
FroEach-Object  {
 [PSObject]@{
        Name = $_.Name
        Population = $_.Population
        Checked = $_.Validated


  }
}

Import, export and Test JSOn
#Variables
$path = "C:\Document\Data\Countries\Countries.json

#Import JSON File
$json = Get-ContentTo-JSON | Out-File $path

#Export Json File
$json | Get-ContentTo-JSON | Out-File $path

#Test Json File
Get-Content -Path $path -Raw | Test-JSON


Iterating and Retrieving JSON data
#Variables
$path = "C:\Document\Data\Countries\Countries.json

#Load JSON File
$JSON = (Get-Content - Path $path) | ConvertFrom-JSON
$json.Countries

#Loop JSON Data
ForEach ($item in $json)
{

$item.Countries.Country | Select-Object Name, Population

}
#Loop JSON Data using expand
ForEach ($item in $json)
{

$item.Countries | Select-Object -ExpandProperty Country | 
Select-Object Name, Population

}


Retrieveing JSON from restful API
#Variables
$uri = "https://swapi.dev/api/people/"
#Load JSON File
$json = Invoke-RestMethod -Uri $uri
#LOOP JSON Data
Foreach ($item in $json.results)
{

$item | Select-Object Name, Height, Gender

}
#>

#Load Xml Data
# Laod JSON Data
# Iterate XML and Json Data


$path = "C:\Users\Trainer\Data"
$xml = Get-Content -Path $path\Module-4.xml
$xml

$xpath = "/Countries/Country"