#list top 10 unique processes (name,cpu(in descending order)) 
# with high cpu utilization
cls
Get-Process | ` 
Sort-Object -Property CPU -Descending | `
Select-Object -First 10 -Property Name, `
@{l = "CPU(in%)" ; e={[math]::Round(($_.CPU),2)}} `
-Unique 


