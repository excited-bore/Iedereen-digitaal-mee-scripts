Start-Process powershell -Verb RunAs -ArgumentList "-ExecutionPolicy Bypass -Command & `"$PSScriptRoot\install_apps.ps1`"" -Wait

$extensionsFolder = "$env:APPDATA\Mozilla\Firefox\Profiles"
$profile = Get-ChildItem $extensionsFolder | Where-Object { $_.FullName -Like '*default-release' }
$destFolder = "$($profile.FullName)\extensions"

if (-not (Test-Path "$destFolder\belgiumeid@eid.belgium.be.xpi")){
    Start-Process powershell -ArgumentList "-ExecutionPolicy Bypass -Command & `"$PSScriptRoot\install_firefox_eid.ps1`""
}
