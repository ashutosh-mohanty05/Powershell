# task - to fetch the C drive size of all machine within the environment.
cls

$file = Get-Content .\comp.txt

Get-WmiObject -Class win32_logicaldisk -ComputerName $file | `
Where-Object deviceid -eq "C:" | `
Select-Object pscomputername,deviceid, `
@{l="FreeSpace(inGBs)" ; e={[math]::Round((($_.FreeSpace)/1GB),2)}}, `
@{l="Size(inGBs)" ; e={[math]::Round((($_.FreeSpace)/1GB),2)}} | `
Format-Table