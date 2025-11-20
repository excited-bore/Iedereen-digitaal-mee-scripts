Write-Host "Turning off accountrelated notifications"

$key = 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced'; 
Set-ItemProperty $key Start_AccountNotifications 0;