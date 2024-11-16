Get-Process | Get-Member 

Get-Process | Select-Object ProcessName, ID

Test-Connection ultima.com
Test-Connection ultima.com | Select-Object Destination, IPV4Address
Test-Connection ultima.com | Select-Object Address, IPV4Address
Test-Connection ultima.com | Get-Member