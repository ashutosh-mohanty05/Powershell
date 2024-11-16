<#in powershell 
create below menubar using ps script
select any option from the following: 
1.open outlook
2.open chrome
3.open notepad
4.exit#>
cls
Write-Host "====================="
Write-Host " Menu"
Write-Host "====================="
Write-Host "1. Open Outlook"
Write-Host "2. Open Chrome"
Write-Host "3. Open Notepad"
Write-Host "4. Exit"

$choice = Read-Host "Select an option"

switch ($choice) {
    '1' { Start-Process "outlook.exe" }
    '2' { Start-Process "chrome.exe" }
    '3' { Start-Process "notepad.exe" }
    '4' { Write-Host "Exiting..." }
    default { Write-Host "Invalid option. Please try again." }
}
