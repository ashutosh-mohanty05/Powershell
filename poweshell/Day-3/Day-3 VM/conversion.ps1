# conversion

#listing all the commands for conversion
Get-Command -Verb convertto

#display all service full name that start with "a"
Get-Service -DisplayName a* |`
Select-Object DisplayName,Status,StartType | Out-GridView

# converting to html
Get-Service -DisplayName a* | `
Select-Object DisplayName,Status,StartType |`
ConvertTo-Html |`
Out-File a-services.html

.\a-services.html           # opens web browser



# converting to JSON
cls
Get-Service -DisplayName a* | `
Select-Object DisplayName,Status,StartType |`
ConvertTo-Json |`
Out-File a-services.json

.\a-services.json           # open in JSON App (VScode editor)


# converting to CSV
cls
Get-Service -DisplayName a* | `
Select-Object DisplayName,Status,StartType |`
ConvertTo-Csv |`
Out-File a-services.csv

.\a-services.csv            # opens EXCEL


<# If you want to show them in terminal then write without "Out-File" #>