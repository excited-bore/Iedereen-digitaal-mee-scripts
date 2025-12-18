$loc = Get-Location
Start-Process powershell -Verb RunAs -ArgumentList "-ExecutionPolicy Bypass -Command cd `"$loc\scripts`"; & `".\install_apps.ps1`""
