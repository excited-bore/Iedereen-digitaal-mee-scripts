Write-Host "Windows version:"
(Get-Item 'HKLM:SOFTWARE\Microsoft\Windows NT\CurrentVersion').GetValue('DisplayVersion')
Write-Host ""