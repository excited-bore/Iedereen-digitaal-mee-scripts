Write-Host "Removing copilot from taskbar"

$key = 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced'; 
Set-ItemProperty $key ShowCopilotButton 0;