# Get the path to the desktop
$DesktopPath = [Environment]::GetFolderPath("Desktop")

# Define the paths to the applications
$OutlookPath = "C:\Program Files\Microsoft Office\root\Office16\OUTLOOK.EXE"
$ExcelPath = "C:\Program Files\Microsoft Office\root\Office16\EXCEL.EXE"
$WordPath = "C:\Program Files\Microsoft Office\root\Office16\WINWORD.EXE"

# Create the shortcuts
$WshShell = New-Object -ComObject WScript.Shell

$Shortcut = $WshShell.CreateShortcut("$DesktopPath\Outlook.lnk")
$Shortcut.TargetPath = $OutlookPath
$Shortcut.Save()

$Shortcut = $WshShell.CreateShortcut("$DesktopPath\Excel.lnk")
$Shortcut.TargetPath = $ExcelPath
$Shortcut.Save()

$Shortcut = $WshShell.CreateShortcut("$DesktopPath\Word.lnk")
$Shortcut.TargetPath = $WordPath
$Shortcut.Save()