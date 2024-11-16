<#
Data Structure
    -variables
    -array
    -hashtable
#>
cls
#Variables
$v1=20          # this is an integer
                # this is to show the data type of the variable
$v1.GetType()

$v2=Get-Date    #this is to show the date type of the variable
$v2.GetType()

$v3=Get-Command #this is to show the object type of the variable
$v3.GetType()

$v1=20.24
$v1.GetType()

$v1=$null       #assign with no value 