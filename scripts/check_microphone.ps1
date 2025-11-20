# Start-Process "Microsoft.WindowsSoundRecorder"
# explorer.exe shell:appsFolder\Microsoft.WindowsSoundRecorder_8wekyb3d8bbwe!App
Write-Host "Check onder 'Invoer' voor microfoon detectie"
start ms-settings:sound
cmd.exe /c 'pause'