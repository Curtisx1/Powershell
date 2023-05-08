$computername = Read-Host "Enter the name of the remote computer"
$computersystem = Get-WmiObject -Class Win32_ComputerSystem -ComputerName $computername
Write-Host "Computer Name: " $computersystem.Name
Write-Host "Username: " $computersystem.UserName
Write-Host "Date: " (Get-Date)

$software = Get-WmiObject -Class Win32_Product -ComputerName $computername | Select-Object -Property Name, Version, Vendor
Write-Host "Installed Software:"
$software | Format-Table -AutoSize
