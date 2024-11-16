# write a function that prints "Hello <yourname>"

function get-message {
    param(
        [string]$whatisurname
    )
    Write-Host "hello $whatisurname"
}

cls

get-message -whatisurname "ashu"
get-message -whatisurname "amit"
get-message -whatisurname "soumya"


<# function Get-Name ( $nam ){
    Write-Host "Hello $nam"              THIS IS ANOTHER WAY
}
 
Get-Name -nam ashu
#>


# write a function that accepts username and prints "Hello <yourname>"
cls
function get-message1 {
    param(
        [Parameter(Mandatory=$true,HelpMessage="write your name")][string]$name
    )
    Write-Host "hello $name"
}

get-message1
