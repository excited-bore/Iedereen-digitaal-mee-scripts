# Doesn't work, even when running as Administrator
# Start-Process powershell -Verb RunAs -ArgumentList '-NoProfile','-ExecutionPolicy','Bypass','-Command','New-ItemProperty -Path "HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced" -Name "TaskbarDa" -PropertyType DWord -Value 0 -Force' -Wait
# If we'd be running this under HKEY_LOCAL_MACHINE it does work, but the user cant enable it again without editing registry editor
# So, we just open the settings page
#
Write-Host "To disable widgets, turn off 'Widgets' under 'taskbar'" -ForegroundColor Cyan
Start-Process "ms-settings:taskbar"

# Checking if Windows is activate (Status 1 == Licensed)
if ((Get-CimInstance SoftwareLicensingProduct -Filter "Name like 'Windows%'" | where { $_.PartialProductKey } | Select-Object -ExpandProperty LicenseStatus) -eq 1){
	
    # If so, disable lockscreen widgets
    # If not licensed, already set to 'none'
    Write-Host "Disabling lockscreen widgets" 
	$path = "HKCU:\Software\Microsoft\Windows\CurrentVersion\Lock Screen"
	New-ItemProperty -Path "$path" -Name "LockScreenWidgetsEnabled" -PropertyType DWord -Value 0 -Force
}

cmd.exe /c 'pause'
