@echo off

REM Apps installeren...
powershell -Command "Start-Process -Verb RunAs powershell '-ExecutionPolicy Bypass -Command "^"" cd \\"^""D:\Iedereen-digitaal-mee-scripts\scripts\\"^""; & \\"^"".\install_apps.ps1\\"^"" "^""'"
REM powershell -NoProfile -ExecutionPolicy Bypass -File ".\scripts\install_apps.ps1"

REM Setting file explorer options...
powershell -NoProfile -ExecutionPolicy Bypass -File ".\scripts\fileExplorer.ps1"

REM Setting keyboard...
powershell -NoProfile -ExecutionPolicy Bypass -File ".\scripts\qwerty_azerty.ps1"

REM Setting diagnostic feedback frequency...
powershell -NoProfile -ExecutionPolicy Bypass -File ".\scripts\feedback_never.ps1"

REM Disabling lockscreen notifications and notification sounds...
powershell -NoProfile -ExecutionPolicy Bypass -File ".\scripts\disable_sound_or_lockscreen_notifications.ps1"

REM Checking camera...
powershell -NoProfile -ExecutionPolicy Bypass -File ".\scripts\check_camera.ps1"

REM Checking microphone...
powershell -NoProfile -ExecutionPolicy Bypass -File ".\scripts\check_microphone.ps1"

REM Checking speakers...
powershell -NoProfile -ExecutionPolicy Bypass -File ".\scripts\check_sound.ps1"

REM Checking keyboard...
powershell -NoProfile -ExecutionPolicy Bypass -File ".\scripts\check_keyboard.ps1"

REM Disabling taskview and widgets...
powershell -NoProfile -ExecutionPolicy Bypass -File ".\scripts\disable_taskview_widgets.ps1"

REM Turn searchbar into search icon...
powershell -NoProfile -ExecutionPolicy Bypass -File ".\scripts\taskbar_search_icon.ps1"

REM Move onedrive to overflow menu...
powershell -NoProfile -ExecutionPolicy Bypass -File ".\scripts\onedrive_overflow.ps1"

REM Disable onedrive on startup...
powershell -NoProfile -ExecutionPolicy Bypass -File ".\scripts\disable_onedrive.ps1"

REM Remove copilot from taskbar...
powershell -NoProfile -ExecutionPolicy Bypass -File ".\scripts\disable_copilot_taskbar.ps1"

REM Set wallpaper to the default background...
powershell -NoProfile -ExecutionPolicy Bypass -File ".\scripts\default_wallpaper.ps1"

REM Disable windows spotlight on lockscreen...
powershell -NoProfile -ExecutionPolicy Bypass -File ".\scripts\disable_windows_spotlight.ps1"

REM Turning off 'fun facts, tips and tricks'...
powershell -NoProfile -ExecutionPolicy Bypass -File ".\scripts\disable_facts_tips_tricks.ps1"

REM Turning off suggestions for tips...
powershell -NoProfile -ExecutionPolicy Bypass -File ".\scripts\disable_tips_suggestions.ps1"

REM Turning off accountrelated notifications...
powershell -NoProfile -ExecutionPolicy Bypass -File ".\scripts\no_account_notifications.ps1"

REM Putting 'This PC' shortcut on desktop...
powershell -NoProfile -ExecutionPolicy Bypass -File ".\scripts\add_mypc_desktop_icon.ps1"

REM Restarting File explorer...
powershell -NoProfile -ExecutionPolicy Bypass -File ".\scripts\restart_explorer.ps1"

REM Drive storage
powershell -NoProfile -ExecutionPolicy Bypass -File ".\scripts\drive_space.ps1"

REM Ram Amount
powershell -NoProfile -ExecutionPolicy Bypass -File ".\scripts\ram_amount.ps1"

REM Processor
powershell -NoProfile -ExecutionPolicy Bypass -File ".\scripts\processor.ps1"

REM Windows Version
powershell -NoProfile -ExecutionPolicy Bypass -File ".\scripts\winversion.ps1"

REM Serial number
powershell -NoProfile -ExecutionPolicy Bypass -File ".\scripts\serialnumber.ps1"

pause

REM Cleanup
call "%~dp0cleanup.bat"
