Get-Command -Noun progress
help Write-Progress -Online

for($i = 1; $i -le 100; $i++){
    Write-Progress -Activity "Search in Progress" -Status "$i% complete:" -PercentComplete $i
    Start-Sleep -Milliseconds 250
}