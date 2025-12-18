Write-Host "Setting wallpaper to the default non-spotlight image"

# Path to the default Windows 11 wallpaper (Bloom)
$wallpaper = "C:\Windows\Web\Wallpaper\Windows\img0.jpg"

# Registry location for wallpaper settings
$regPath = "HKCU:\Control Panel\Desktop"

# Set wallpaper style (2 = Fill, 1 = Fit, 6 = Fit, etc.)
Set-ItemProperty -Path $regPath -Name WallpaperStyle -Value 2
Set-ItemProperty -Path $regPath -Name TileWallpaper -Value 0

# Apply the wallpaper
Set-ItemProperty -Path $regPath -Name Wallpaper -Value $wallpaper

# Refresh the desktop to apply changes immediately
Add-Type @"
using System;
using System.Runtime.InteropServices;

public class Wallpaper {
    [DllImport("user32.dll", SetLastError = true)]
    public static extern bool SystemParametersInfo(int uAction, int uParam, string lpvParam, int fuWinIni);
}
"@

# SPI_SETDESKWALLPAPER = 20 ; SPIF_UPDATEINIFILE = 1 ; SPIF_SENDWININICHANGE = 2
[Wallpaper]::SystemParametersInfo(20, 0, $wallpaper, 3) | Out-Null
