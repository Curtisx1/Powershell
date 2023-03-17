
Function start-day{
    start-process "C:\Users\auphoff\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\MHCProd.lnk"
    Start-sleep -s 20
    Start-Process "C:\Program Files (x86)\Microsoft\Edge\Application\msedge.exe" -ArgumentList '--new-window https://mhcworkflow.atlassian.net/jira/dashboards/14601'
    Start-Process -FilePath "C:\Users\auphoff\OneDrive - MHC\UserDrive\MyDocs\Tools\xntimer.exe" -ArgumentList "-f C:\Users\auphoff\OneDrive - MHC\UserDrive\MyDocs\Tools\xntimer.ini" 
    start-sleep -s 3
    Switch-Desktop -Desktop 1
    Start-Process "C:\Program Files (x86)\Microsoft\Edge\Application\msedge.exe" -ArgumentList '--new-window https://mhcworkflow.atlassian.net/jira/dashboards/14601'
    Start-Process -FilePath "C:\Users\auphoff\OneDrive - MHC\UserDrive\MyDocs\Tools\xntimer.exe" -ArgumentList "-f C:\Users\auphoff\OneDrive - MHC\UserDrive\MyDocs\Tools\xntimer.ini" 
    start-sleep -s 3
    switch-desktop -Desktop 2
    Start-Process "C:\Program Files (x86)\Microsoft\Edge\Application\msedge.exe" -ArgumentList '--new-window https://mhcworkflow.atlassian.net/jira/dashboards/14601'
    Start-Process -FilePath "C:\Users\auphoff\OneDrive - MHC\UserDrive\MyDocs\Tools\xntimer.exe" -ArgumentList "-f C:\Users\auphoff\OneDrive - MHC\UserDrive\MyDocs\Tools\xntimer.ini"
    start-sleep -s 3
    switch-desktop -Desktop 3
    Start-Process "C:\Program Files (x86)\Microsoft\Edge\Application\msedge.exe" -ArgumentList '--new-window https://mhcworkflow.atlassian.net/jira/dashboards/14601'
    Start-Process -FilePath "C:\Users\auphoff\OneDrive - MHC\UserDrive\MyDocs\Tools\xntimer.exe" -ArgumentList "-f C:\Users\auphoff\OneDrive - MHC\UserDrive\MyDocs\Tools\xntimer.ini" 
    start-sleep -s 3
    switch-desktop -Desktop 4
    Start-Process "C:\Program Files (x86)\Microsoft\Edge\Application\msedge.exe" -ArgumentList '--new-window https://mhcworkflow.atlassian.net/jira/dashboards/14601'
    Start-Process -FilePath "C:\Users\auphoff\OneDrive - MHC\UserDrive\MyDocs\Tools\xntimer.exe" -ArgumentList "-f C:\Users\auphoff\OneDrive - MHC\UserDrive\MyDocs\Tools\xntimer.ini" 
    Start-Sleep -s 3
    Switch-Desktop -Desktop 0
    Start-Process "C:\Program Files (x86)\Microsoft\Edge\Application\msedge.exe" -ArgumentList '--new-window https://cc01.mhc.trk:8445/desktop/container/landing.jsp?locale=en_US'
    Start-Process "C:\Program Files (x86)\Microsoft Endpoint Manager\AdminConsole\bin\Microsoft.ConfigurationManagement.exe" -Verb runas
    Start-Process "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\Cisco IP Communicator\Cisco IP Communicator.lnk"
    Start-Process "C:\Program Files\Microsoft Office\root\Office16\OUTLOOK.EXE"
    Start-Process "C:\Users\auphoff\OneDrive - MHC\UserDrive\MyDocs\Tools\AD.msc"  -Verb runas
    Start-Process "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\Administrative Tools\Active Directory Administrative Center.lnk" -Verb runas
    start-process -FilePath "C:\Users\auphoff\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\RemoteConnectGui.lnk" -Verb runas
}

start-day







