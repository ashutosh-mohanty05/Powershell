<#
    windows registry keys
     are the database for your OS.
#>

# HKCU - Hash Key Current User
# HKLM - Hash Key Local Machine

# shows the poweshell Drives
Get-PSDrive

# list registry provider
Get-PSDrive -PSProvider Registry

# to access the reg key of HKCU
Get-ChildItem hkcu:\

#for GUI Windows+R --> regedit   ,click on view and keep refreshing it to see update

# to create a registry key
New-Item -Path hkcu:\ -Name "Harida" -Force

# creating reg key
New-ItemProperty -Path HKCU:\Harida -Name "Batch371" -Value "2nd last day of torture" -Force

# modify the reg key value
Set-ItemProperty -Path HKCU:\Harida -Name "Batch371" -Value "powershell zindabad" -Force

# remove the key
Remove-ItemProperty -Path HKCU:\Harida -Name "Batch371" -Force

# remove the folder
Remove-Item -Path HKCU:\Harida -Force