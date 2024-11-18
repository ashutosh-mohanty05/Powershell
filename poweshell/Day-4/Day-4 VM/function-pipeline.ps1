# functions + pipeline + foreach

function get-ping{
    param([string]$sites)

        if(Test-Connection $sites -Count 1 -ErrorAction SilentlyContinue){
            Write-Host "$sites" -ForegroundColor Green
        }else{
            Write-Host "$sites" -ForegroundColor Red
        }
}
cls
$websites = Get-Content "C:\Users\Administrator\Desktop\vm poweshell\site.txt"
$websites | foreach{
    get-ping -sites $_
}