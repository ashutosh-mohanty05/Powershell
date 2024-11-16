<#
Task - ask user for a website name and check if it is pinging or not
#>
cls
$a= Read-Host "Enter a Site to check"
if(Test-Connection $a -Count 1 -ErrorAction SilentlyContinue){         <#The `-ErrorAction SilentlyContinue` parameter
                                                                             in PowerShell suppresses error messages and 
                                                                             allows the script to continue running 
                                                                             without interruption.#>
Write-Host "$a is pinging" -ForegroundColor Green
}else{
Write-Host "$a is not pinging" -ForegroundColor Red
}
