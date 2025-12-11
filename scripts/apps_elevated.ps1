$loc = Get-Location
Start-Process powershell -Verb RunAs -ArgumentList "-ExecutionPolicy Bypass -NoExit -Command cd `"$loc\scripts`"; & `".\install_apps.ps1`""