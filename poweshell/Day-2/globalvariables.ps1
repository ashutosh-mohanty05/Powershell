cls 
Get-Date
jeetu
hostname

$Error
$Error.Count
$Error[0]
hahaha
$Error[1]

cls
$profile

<#
    $profile
#>

Test-Path $profile

#create profile
New-Item -ItemType File -Path $profile -Force

notepad.exe $profile