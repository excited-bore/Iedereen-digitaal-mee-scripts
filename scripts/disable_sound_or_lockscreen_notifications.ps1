Write-Host "Turning off:"
Write-Host "    - Lockscreen notifications (even when it's a reminder or a voicecall)" 
Write-Host "    - Notification sounds"

$key = 'HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Notifications\Settings'; 
Set-ItemProperty $key NOC_GLOBAL_SETTING_ALLOW_TOASTS_ABOVE_LOCK 0; 
Set-ItemProperty $key NOC_GLOBAL_SETTING_ALLOW_CRITICAL_TOASTS_ABOVE_LOCK 0; 
Set-ItemProperty $key NOC_GLOBAL_SETTING_ALLOW_NOTIFICATION_SOUND 0;