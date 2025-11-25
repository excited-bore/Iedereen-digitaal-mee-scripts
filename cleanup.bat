REM Empty Terminal history
powershell -NoProfile -ExecutionPolicy Bypass -File ".\scripts\cleanhistory.ps1"

REM Empty Userfolders
powershell -NoProfile -ExecutionPolicy Bypass -File ".\scripts\clean_userfolders.ps1"

REM Clean edge data
powershell -NoProfile -ExecutionPolicy Bypass -File ".\scripts\clean_edge.ps1"

REM Empty Trash
powershell -NoProfile -ExecutionPolicy Bypass -File ".\scripts\clean_trash.ps1"