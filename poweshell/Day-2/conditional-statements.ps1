<#
    conditional statements
    -if
    -if-else
    -nested if-else
    -switch

#>

# if statement
cls
$a=100
if ($a -eq 10){
    Write-Host "$a is equal" -ForegroundColor Green
}
# if-else statement
cls
$a=10
if ($a -eq 10){
    Write-Host "$a is equal" -ForegroundColor Green
}
else{
    Write-Host "$a is not equal" -ForegroundColor Red
}
