#task - access all the site names from a text file and ping them.

cls 
#notepad.exe site.txt
$websites = Get-Content "C:\Users\10821521\OneDrive - LTIMindtree\Documents\site.txt"

foreach($w in $websites){
    
    if(Test-Connection $w -Count 1 -ErrorAction SilentlyContinue){

        Write-Host "$w is pinging" -ForegroundColor Green
    }else{
        Write-Host "$w is not pinging" -ForegroundColor Red
    }
}