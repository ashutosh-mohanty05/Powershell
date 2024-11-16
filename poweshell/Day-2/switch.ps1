# Switch statement
function myip{
(Get-NetIPAddress | Where-Object {$_.prefixorigin -eq "DHCP"}).IPAddress 
}
function ping-addr{
    Test-Connection ultima.com -Count 1 -ea SilentlyContinue
}
function host-name{
    HOSTNAME.EXE
}
function today-date{
    Get-Date -Format "dddd MM/dd/yyyy HH:mm"
}
cls
$ans = Read-Host "
Select option from following:
    1.check IP address
    2.ping ultima.com
    3.List hostname
    4.display today's date & time
    5.exit
"

switch( $ans ){
    1 { myip }
    2 { ping-addr  }
    3 { host-name }
    4 { Get-Date }
    5 { today-date }
    default { Write-Warning "Invalid selection!!!" }
}