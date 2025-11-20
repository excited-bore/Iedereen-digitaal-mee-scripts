Write-Host "Serialnumber:"
Get-CimInstance Win32_BIOS | Format-Table SerialNumber -HideTableHeader