
$edgePath = "$env:LOCALAPPDATA\Microsoft\Edge\User Data"

if (Test-Path $edgePath) {
    Write-Host "Closing Microsoft Edge if still running..."
    Get-Process msedge -ErrorAction SilentlyContinue | Stop-Process -Force

    Write-Host "Deleting all Edge user data..."
    try {
        Remove-Item -Path $edgePath -Recurse -Force -ErrorAction SilentlyContinue
    } catch {
        Remove-Item -Path $edgePath -Recurse -Force
    } 

    Write-Host "Microsoft Edge data has been wiped"
}