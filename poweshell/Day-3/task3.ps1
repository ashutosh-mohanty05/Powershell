<# task -
    add 2 number and display the total of it 
    using function by passing integers as argument
#>

function get-addnums{
    param(
    [Parameter(Mandatory=$true)][int]$a,
    [Parameter(Mandatory=$true)][int]$b
    )
$c=$a+$b
Write-Host "Total of $a & $b is $c"
}

cls
get-addnums