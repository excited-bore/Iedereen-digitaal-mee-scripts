Write-Host "Turning off password for $env:USERNAME"
Start-Process PowerShell -ArgumentList '-ExecutionPolicy Bypass','-Command','net user $env:USERNAME ""' -Verb RunAs
