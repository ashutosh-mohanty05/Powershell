cls
Write-Host "hello bhai"

$name = Read-Host "Enter username:"
Write-Host "Welcome mr, "-NoNewline
write-host $name -ForegroundColor Yellow -BackgroundColor Black
$v1