Write-Host "Ram:`n"

# Get physical memory info, group by size, and output "Count X SizeGB"
Get-CimInstance Win32_PhysicalMemory |
    ForEach-Object { $_.Capacity / 1GB } |
    Group-Object |
    ForEach-Object {
        "{0} X {1}GB" -f $_.Count, [int]$_.Name
    }
Write-Host ""
