function clock {
   cls
    $currentTime = Get-Date # -Format "HH:mm:ss"
    Write-Host $currentTime
    sleep 1
    clock
}
cls
clock
