Write-Host "Turning off suggestions for tips in startmenu"

Start-Process PowerShell -ArgumentList '-ExecutionPolicy Bypass','-Command','Set-ItemProperty "HKCU:\SOFTWARE\Policies\Microsoft\Windows\CloudContent" DisableSoftLanding 1' -Verb RunAs