@echo off

where winget >nul 2>&1 || (
    echo "Installing winget (App Installer) from Microsoft Store..."
    powershell -NoProfile -ExecutionPolicy Bypass -Command "Get-AppxPackage -Name 'Microsoft.DesktopAppInstaller' -AllUsers | Out-Null; if (-not $?) {Start-Process 'ms-windows-store://pdp/?productid=9NBLGGH4NNS1'} else {Write-Host 'Already installed.'}"
)

where wget >nul 2>&1 || (
    set "INS_WGET=1" 
    echo Installing wget 
    winget install --id JernejSimoncic.Wget --silent --accept-package-agreements --accept-source-agreements
) 

mkdir %TEMP%\DellSupport\
cd %TEMP%\DellSupport
wget -nv --https-only --show-progress https://downloads.dell.com/serviceability/catalog/SupportAssistinstaller.exe
powershell -NoProfile -ExecutionPolicy Bypass -Command "%TEMP%\DellSupport\SupportAssistinstaller.exe"

if defined INS_WGET (
    winget remove --id JernejSimoncic.Wget --silent --accept-package-agreements --accept-source-agreements
)
