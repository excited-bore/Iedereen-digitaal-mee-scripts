Write-Host "Turning off suggestions for tips in startmenu"
Start-Process PowerShell -ArgumentList '-ExecutionPolicy Bypass','-Command','Set-ItemProperty "HKCU:\SOFTWARE\Policies\Microsoft\Windows\CloudContent" DisableSoftLanding 1' -Verb RunAs

Write-Host "Disabling notifications for tips and suggestions while using windows"
Set-ItemProperty -Path "HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" -Name "SubscribedContent-338389Enabled" -Value 0
