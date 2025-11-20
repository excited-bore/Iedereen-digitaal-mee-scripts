Write-Host "Turning off windows spotlight for lockscreen"

Start-Process PowerShell -ArgumentList '-ExecutionPolicy Bypass','-Command','Set-ItemProperty "HKCU:\Software\Policies\Microsoft\Windows\CloudContent" DisableSpotlightCollectionOnDesktop 1' -Verb RunAs