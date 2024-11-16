# Nested if-else statement
cls

[int]$age = Read-Host "Enter your age"

if( $age -le 18 ){

    Write-Host "You Can't VOTE"

}elseif( $age -gt 60 ) -or ( $age -lt 100 ){
    Write-Host "Enough,take rest"

}else{
    Write-Warning "Invalid input"
}