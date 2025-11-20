Write-Host "Moving onedrive to overflow menu"

$fpath = "C:\Users\$env:USERNAME\AppData\Local\Microsoft\OneDrive\OneDrive.exe"

$spath = "HKCU:\Control Panel\NotifyIconSettings"

$subkeys = Get-ChildItem -Path $spath -ErrorAction SilentlyContinue

foreach ($key in $subkeys) {

    # Try to read the ExecutablePath value, skip if not present
    $exePath = (Get-ItemProperty -Path $key.PSPath -ErrorAction SilentlyContinue).ExecutablePath
    
    if ($exePath -and ($exePath -ieq $fpath)) {
        $spath1 = "$spath\" + $key.PSChildName   
        Set-ItemProperty $spath1 -Name "IsPromoted" 0; 
    }
}

