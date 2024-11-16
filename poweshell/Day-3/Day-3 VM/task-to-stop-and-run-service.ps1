<#
    Ask user to input a Service name (say BITS) and check it the service is running or stopped

    if the service is running ,then ask user to 
        1.stop the service
        2.exit(no changes)
    
    if the service is stopped, then ask user to
        1.start the service
        2.exit ( no changes )
#>
 
<# My Script #>


cls
$serviceName = Read-Host "Please enter the service name (e.g., BITS)"


$service = Get-Service -Name $serviceName -ErrorAction SilentlyContinue

if ($service -eq $null) {
    Write-Host "Service '$serviceName' not found." -ForegroundColor Red
} else {
    if ($service.Status -eq 'Running') {
        Write-Host "The service '$serviceName' is currently running."
        $choice = Read-Host "Do you want to (1) Stop the service or (2) Exit (no changes)? Enter 1 or 2"

        if ($choice -eq '1') {
            Stop-Service -Name $serviceName
            Write-Host "The service '$serviceName' has been stopped." -ForegroundColor DarkYellow
        } else {
            Write-Host "No changes made." -ForegroundColor Magenta
        }
    } elseif ($service.Status -eq 'Stopped') {
        Write-Host "The service '$serviceName' is currently stopped."
        $choice = Read-Host "Do you want to (1) Start the service or (2) Exit (no changes)? Enter 1 or 2"

        if ($choice -eq '1') {
            Start-Service -Name $serviceName
            Write-Host "The service '$serviceName' has been started." -ForegroundColor Green
        } else {
            Write-Host "No changes made." -ForegroundColor Magenta
        }
    }
}



<#  JEETU'S SCRIPT  


$servicename = Read-Host "Enter service name"
$svc = Get-Service -Name $servicename
if($svc.status -eq "running"){
    Write-Host "($svc.name) is $($svc.status)" -Foregroundcolor Green
    $ans = Read-Host "Do you want to stop the service (y | n)"
    switch ($ans){
      y{
        Stop-Service -Name $servicename
        Write-Host "current status: " (Get-Service -Name $servicename).Status
        }
        n{ Write-Host "Quitting console..."
            sleep 2}
        default{Write-Warning "Invalid Selection"}
    }
}else{
     Write-Host "$($svc.name) is $($svc.Status)" -ForegroundColor Red
     $ans = Read-Host "Do you want to START the service (y | n)"
     switch ($ans){
      y{
         Start-Service -Name $servicename
         Write-Host "Curent Status: " (Get-Service -Name $servicename).Status
        }
        n{ Write-Host "Quitting console..."
             sleep 2}
        default{Write-Warning "Invalid Selection"}
    }
}
has context menu

#>