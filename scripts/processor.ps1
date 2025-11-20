Write-Host "Processor:"
Get-CimInstance Win32_Processor | Format-Table Name -HideTableHeader