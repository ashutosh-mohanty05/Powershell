$passwd = Read-Host "Enter ur pwd"
$passwd

$pwd2 = Get-Credential
$pwd2

$pwd3=Get-Credential -UserName ashu -Message "Type only ur Pwd"
$pwd3