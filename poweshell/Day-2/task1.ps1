<#
Task
-----
    go to documents folder and remove WindowsPowershell directory Manually.
    Write a PS Script to create $PROFILE, if it doesn't exists.
#>

cls
$a= Test-Path $profile
if ($a -eq $true){                                           #we can directly put "Test-Path $profile" without creating variable
    Write-Host "Profile is available" -ForegroundColor Green
}
else{
    Write-Host "Profile is not available" -ForegroundColor Red
    Write-Host "Creating profile now.." -ForegroundColor Yellow
    sleep 2
    New-Item -ItemType File -Path $profile -Force
    Write-Host "Creation done.." -ForegroundColor Cyan
}



