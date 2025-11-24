$manufacturer = Get-CimInstance -Classname Win32_ComputerSystem | Select-Object -Property Manufacturer -ExpandProperty Manufacturer

if ( $manufacturer -eq 'Dell Inc.'){
    
    Write-Host "Dell System detected. Installing Dell Commandline"
    
    .\scripts\dellupdate.ps1 
    
    # Now dellsupportassist 
    
    Write-Host "Installing DellSupportAssistant" 

    .\scripts\dellsupportassist.ps1 
    
} elseif ( ( $manufacturer -eq 'HP' ) -or ( $manufacturer -eq 'Hewlett-Packard' )){
    Write-Host "HP system detected. Installing HP ImageAssistant..."
    
    .\scripts\hpupdates.ps1
    
    # Now hpsupportassist 
    
    Write-Host "Installing HPSupportAssist..." 

    .\scripts\hpsupportassist.ps1

} elseif ( $manufacturer -eq 'LENOVO' ){
    Write-Host "Lenovo system detected. Installing Lenovo Update..."
    
    .\scripts\lenovoupdate.ps1
    
    # Now lenovo vantage 
    
    Write-Host "Installing Lenovo Vantage..." 

    .\scripts\lenovovantage.ps1

} elseif ( $manufacturer -eq "ASUSTeK COMPUTER INC." ) {
    Write-Host "This is an ASUS system."
} elseif ( $manufacturer -eq 'Acer' ) {
    Write-Host "This is an Acer system."
} elseif ( $manufacturer -eq "Gigabyte Technology Co., Ltd." ){
    Write-Host "This is a Gigabyte system."
} else {
    Write-Host "Unknown system."
}
