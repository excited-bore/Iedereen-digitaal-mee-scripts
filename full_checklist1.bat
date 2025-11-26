@echo off

echo Synchronise clock before resuming to update Windows / drivers.
pause

REM Optional Updates
powershell -NoProfile -ExecutionPolicy Bypass -File ".\scripts\enable_optional_updates.ps1"

REM Windows Update
powershell -NoProfile -ExecutionPolicy Bypass -File ".\scripts\windows_update.ps1"

REM Turn off password for user
powershell -NoProfile -ExecutionPolicy Bypass -File ".\scripts\no_password.ps1"

REM Check if winget is installed. If not, try and fix
powershell -NoProfile -ExecutionPolicy Bypass -File ".\scripts\check_winget.ps1"

REM Try and install updaters and support assisters
powershell -NoProfile -ExecutionPolicy Bypass -File ".\scripts\update-drivers.ps1"

echo Done!
pause
