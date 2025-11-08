@echo off
powershell.exe -NoProfile -ExecutionPolicy Bypass -Command "$key = 'HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Notifications\Settings'; Set-ItemProperty $key NOC_GLOBAL_SETTING_ALLOW_TOASTS_ABOVE_LOCK 0; Set-ItemProperty $key NOC_GLOBAL_SETTING_ALLOW_CRITICAL_TOASTS_ABOVE_LOCK 0; Set-ItemProperty $key NOC_GLOBAL_SETTING_ALLOW_NOTIFICATION_SOUND 0"
