<#
   Task----

    create a powershell script that asks for a file
    name (with extension) and returns the file path. 
    also ensures that same file will be searched in all available partition
#>
cls

# Prompt the user for the file name
$fileName = Read-Host "Enter the file name (with extension)"

# Get all available partitions
$partitions = Get-PSDrive -PSProvider FileSystem

# Initialize a variable to store the file path
$filePath = $null

# Search for the file in each partition
foreach ($partition in $partitions) {
    $searchPath = "$($partition.Root)\$fileName"
    if (Test-Path $searchPath) {
        $filePath = $searchPath
        break
    }
}

# Output the result
if ($filePath) {
    Write-Output "File found: $filePath"
} else {
    Write-Output "File not found in any partition."
}
