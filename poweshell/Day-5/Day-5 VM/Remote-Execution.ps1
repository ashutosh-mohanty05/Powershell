<#
    Remoting (Remote execution)
        - accessing a remote system to perform task(s)
        - can be done in 2 ways
            1. Non-persistent remoting
                - connection is for limited time.
                - 1-to-many connection
                - upto 64 systems can be connected
                - cmdlet
                    # Invoke-Command
            
            2. Persistent remoting
                - 1-to-1 connection
                - cmdlet: Get-Command -Noun pssession
#>

# Non-persistent remoting
# notepad.exe .\comp.txt
cls
$file = Get-Content .\comp.txt
Invoke-Command -ComputerName $file -ScriptBlock{
    New-Item -ItemType Directory -Path c:\ -Name "Ashutosh" -Force
    New-Item -ItemType File -Path c:\Ashutosh -Name "file1.txt" -Force
    Set-Content -Path "c:\Ashutosh\file1.txt" -Value "hii ashu" -Force
}


# Persistent remoting
Get-Command -Noun pssession
Get-PSSession
New-PSSession -ComputerName comp2 -Name "comp2"
Enter-PSSession -ComputerName comp2

New-Item -ItemType File -Path c:\ -Name "RemoteFile.txt" -Force
Set-Content -Path c:\RemoteFile.txt -Value "hahahaha" -Force

Exit-PSSession
Get-PSSession
Remove-PSSession -Name comp2