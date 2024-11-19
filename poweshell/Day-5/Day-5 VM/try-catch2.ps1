function get-ping{
param(
[string]$site
)
    try{
    Test-Connection $site -Count 1 -ErrorAction Stop | `
    Select-Object Address, IPv4Address
    }catch{
        Write-Error $_          # Write-Warning
    }
}
cls
get-ping -site gooo0000000gle.com