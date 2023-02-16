# Prompt the user to enter the name of the remote computer
$computerName = Read-Host "Enter the name of the remote computer"

# Get the list of currently logged on users on the remote computer
$logonSessions = (quser /server:$computerName)

# Display the list of logged on users
Write-Host "Logged on users on ${computerName}:"
$logonSessions | Select-Object -Skip 1 | ForEach-Object {
    $user = $_.Trim() -split "\s+"
    Write-Host $user[0]
}

# Prompt the user to enter the name of the user they want to log off
$userToLogoff = Read-Host "Enter the name of the user you want to log off"

# Log off the specified user, if they are currently logged on
$logonSession = ($logonSessions | Select-Object -Skip 1 | Where-Object { $_ -match $userToLogoff })
if ($logonSession) {
    $sessionId = $logonSession[1].Trim() -as [int]
    Write-Host "Logging off user $userToLogoff..."
    logoff $sessionId /server:$computerName
} else {
    Write-Host "User $userToLogoff is not logged on to $computerName."
}
