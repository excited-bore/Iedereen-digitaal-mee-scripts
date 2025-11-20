# 0 = Hide the search box/icon entirely
# 1 = Show the search icon only (magnifying glass)
# 2 = Show the full search box
Write-Host "Changing the taskbars' search box into a search icon (magnifying glass only)"
$key = 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Search'; 
Set-ItemProperty $key SearchboxTaskbarMode 1;