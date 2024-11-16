# task - list all the running services names in green color and stopped in red color

$services = Get-Service

foreach ($service in $services) {
    if ($service.Status -eq 'Running') {
        Write-Host $service.Name "is runnig" -ForegroundColor Green
    } else {
        Write-Host $service.Name "is stopped" -ForegroundColor Red
    }
}

