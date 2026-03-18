Write-Host "Installing eid extension for firefox" -ForegroundColor Cyan

Get-Process firefox -ErrorAction SilentlyContinue | Stop-Process -Force

$url = "https://addons.mozilla.org/firefox/downloads/latest/belgium-eid/addon-3736679-latest.xpi" 
$xpiPath = "$env:TEMP\eid.xpi"
$extensionId = 'belgiumeid@eid.belgium.be'
Invoke-WebRequest -Uri $url -OutFile $xpiPath

$extensionsFolder = "$env:APPDATA\Mozilla\Firefox\Profiles"
$profile = Get-ChildItem $extensionsFolder | Where-Object { $_.FullName -Like '*default-release' }
$destFolder = "$($profile.FullName)\extensions"

New-Item -ItemType Directory -Force -Path $destFolder | Out-Null
Copy-Item $xpiPath "$destFolder\$extensionId.xpi"