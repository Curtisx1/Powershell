$RemoteComputerName = Read-Host "Enter the name of the remote PC"

# Prompt for the name of the publisher to uninstall
$PublisherName = Read-Host "Enter the name of the publisher you want to uninstall software from"

# Connect to the remote PC using the current user's credentials
$Connection = New-PSSession -ComputerName $RemoteComputerName

# Get a list of all installed programs published by the specified publisher
$Programs = Invoke-Command -Session $Connection -ScriptBlock { Get-WmiObject -Class Win32_Product | Where-Object { $_.Vendor -eq $using:PublisherName } }

# Uninstall each program found, and suppress any confirmation prompts
$Programs | ForEach-Object {
    Invoke-Command -Session $Connection -ScriptBlock { $_.Uninstall() }
}

# Find and delete any folders matching the specified publisher name
Invoke-Command -Session $Connection -ScriptBlock {
    # Get a list of all registry keys containing the specified publisher name
    $Keys = Get-ChildItem -Path "HKLM:\SOFTWARE\", "HKCU:\SOFTWARE\" -Recurse | Where-Object { $_.Name -like "*$using:PublisherName*" }
    
    # Delete each key found, and suppress any confirmation prompts
    $Keys | ForEach-Object {
        Remove-Item $_.PSPath -Recurse -Force
    }
}

# Close the remote session
Remove-PSSession $Connection
