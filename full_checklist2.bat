@echo off

REM Apps installeren...
call "%~dp0install_apps.bat"

REM Setting file explorer options...
call "%~dp0fileExplorer.bat"

REM Setting keyboard...
call "%~dp0qwerty_azerty.bat"

REM Setting diagnostic feedback frequency...
call "%~dp0feedback_never.bat"

REM Disabling lockscreen notifications and notification sounds...
call "%~dp0disable_sound_or_lockscreen_notifications.bat"

REM Checking camera...
call "%~dp0check_camera.bat"

REM Checking microphone...
call "%~dp0check_microphone.bat"

REM Checking speakers...
call "%~dp0check_sound.bat"

REM Checking keyboard...
call "%~dp0check_keyboard.bat"

REM Disabling taskview and widgets...
call "%~dp0disable_taskview_widgets.bat"

REM Turn searchbar into search icon...
call "%~dp0taskbar_search_icon.bat"

REM Remove copilot from taskbar...
call "%~dp0disable_copilot_taskbar.bat"

REM Disable windows spotlight on lockscreen...
call "%~dp0disable_windows_spotlight.bat"

REM Turning off 'fun facts, tips and tricks'...
call "%~dp0disable_facts_tips_tricks.bat"

REM Turning off suggestions for tips...
call "%~dp0disable_tips_suggestions.bat"

REM Turning off accountrelated notifications...
call "%~dp0no_account_notifications.bat"

REM Putting 'This PC' shortcut on desktop...
call "%~dp0add_mypc_desktop_icon.bat"


REM Drive storage
call "%~dp0drive_space.bat"

REM Ram Amount
call "%~dp0ram_amount.bat"

REM Processor
call "%~dp0processor.bat"

REM Windows Version
call "%~dp0winversion.bat"

REM Serial number
call "%~dp0serialnumber.bat"

