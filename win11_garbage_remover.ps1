# Delete Packages-Garbage listed below
Get-AppxPackage -AllUsers | where-object {$_.Name -like "*Microsoft.ScreenSketch*" -or $_.Name -like "*Microsoft.ZuneMusic*" -or $_.Name -like "*Microsoft.BingNews*" -or $_.Name -like "*Microsoft.BingWeather*" -or $_.Name -like "*Microsoft.GamingApp*" -or $_.Name -like "*Microsoft.MicrosoftSolitaireCollection*" -or $_.Name -like "*Microsoft.WindowsFeedbackHub*" -or $_.Name -like "*Microsoft.XboxIdentityProvider*" -or $_.Name -like "*Microsoft.XboxSpeechToTextOverlay*" -or $_.Name -like "*Microsoft.XboxGamingOverlay*" -or $_.Name -like "*Microsoft.Xbox.TCUI*" -or $_.Name -like "*Microsoft.XboxGameCallableUI*"} | Remove-AppxPackage


# Get all AppxPackages
$appxPackages = Get-AppxPackage

# Export to CSV file
$appxPackages | Export-Csv -Path "C:\install\programs.csv" -NoTypeInformation
