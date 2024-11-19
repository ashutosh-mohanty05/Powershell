<# 
CIM
   - common information model
   - open source
   - it fetches the information of local machine & remote machine too
   - information like:
        - hardware info
        - software info
        - process info
        - firmware info
        
WMI
    - Windows Management Instrumentation   
    - it fetches the information of local machine & remote machine too
    - information like:
        - hardware info
        - software info
        - process info
        - firmware info 
        
  cmdlet: # Get-WMIObject
  Alias:  # gwmi
  Classes:
    -bios
    -operatingsystem
    -physicalmemeory
    -logicaldisk
    -computersystem 
    
#>

# listing all classes
Get-WmiObject -List
Get-WmiObject -List | Measure-Object

# listing win32_ classes
Get-WmiObject -List | Where-Object {$_.Name -match '^win32_'}
Get-WmiObject -List | Where-Object {$_.Name -match '^win32_'} | Measure-Object

#WMI Classes
Get-WmiObject -Class win32_bios
Get-WmiObject -Class win32_computersystem
Get-WmiObject -Class win32_operatingsystem
Get-WmiObject -Class win32_logicaldisk
Get-WmiObject -Class win32_logicaldisk | Format-Table
Get-WmiObject -Class win32_NetworkAdapter | Format-Table

#notepad.exe comp.txt
$file= Get-Content .\comp.txt
Get-WmiObject -Class win32_computersystem -ComputerName $file | Format-Table

#Getting Member info
Get-WmiObject -Class win32_logicaldisk | Get-Member

# listing selective objects
Get-WmiObject -Class win32_logicaldisk -ComputerName $file | Select-Object pscomputername ,deviceid, freespace, size
