$key = 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Run'
if (Get-ItemProperty -Path $key -Name 'OneDrive' -ErrorAction SilentlyContinue){
    Write-Host "Disabling onedrive on startup"
    Remove-ItemProperty -Path $key -Name 'OneDrive' -Force
}