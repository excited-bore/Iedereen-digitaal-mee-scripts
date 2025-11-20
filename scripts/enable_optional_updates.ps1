Start-Process "UsoClient" -ArgumentList "StartInteractiveScan" -Wait  
Write-Host "Check off and update every optional update available"
start ms-settings:windowsupdate-optionalupdates
# powershell.exe -NoProfile -ExecutionPolicy Bypass -Command "Start-Process PowerShell -ArgumentList '-ExecutionPolicy Bypass','-Command','New-Item \"HKLM:\\SOFTWARE\\Policies\\Microsoft\\Windows\\WindowsUpdate\"-Name \"AU\"; Set-ItemProperty \"HKLM:\\SOFTWARE\\Policies\\Microsoft\\Windows\\WindowsUpdate\\AU\" NoAutoUpdate 0; Set-ItemProperty \"HKLM:\\SOFTWARE\\Policies\\Microsoft\\Windows\\WindowsUpdate\\AU\" AllowOptionalContent 2' -Verb RunAs"  
cmd /c 'pause'