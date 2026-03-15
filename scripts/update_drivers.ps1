$manufacturer = Get-CimInstance -Classname Win32_ComputerSystem | Select-Object -Property Manufacturer -ExpandProperty Manufacturer

if ( $manufacturer -eq 'Dell Inc.'){
    
    Write-Host "Dell System detected." -ForegroundColor Cyan

    # Check if Dell Commandline is installed; if not, install 

    if (( -Not (Test-Path -Path "C:\Program Files (x86)\Dell\CommandUpdate\dcu-cli.exe")) -and ( -Not (Test-Path -Path "C:\Program Files\Dell\CommandUpdate\dcu-cli.exe"))) {
    
    	Write-Host "Installing and running Dell Commandline for updates..." -ForegroundColor Yellow
    
    	& "$PSScriptRoot\dellupdate.ps1"
    }

    # Same for Dell Supportassist
	
    if ( -not ( Test-Path -Path "C:\Program Files\Dell\SupportAssistAgent\bin\SupportAssistAgent.exe")){
	
	Write-Host "Installing Dell SupportAssist..." -ForegroundColor Yellow
    
    	& "$PSScriptRoot\dellupdate.ps1"
    }
    
    
} elseif ( ( $manufacturer -eq 'HP' ) -or ( $manufacturer -eq 'Hewlett-Packard' )){
    
    Write-Host "HP system detected." -ForegroundColor Cyan
    
    # Check if HPsupportassist is installed; if not, install 

    if ( -Not (Test-Path -Path 'C:\Program Files (x86)\HP\HP Support Framework\HPSupportAssistant.dll' )){
		
	Write-Host "Installing HP Support Assistant..." -ForegroundColor Yellow

	& "$PSScriptRoot\hpsupportassist.ps1"
    }    

    # Same for HP Image assistant. This will also update

    if ( -not (Test-Path -Path 'C:\SWSetup\HPImageAssistant\HPImageAssistant.exe' )){
	
	Write-Host "Installing and running HP Image assistant for updates..." -ForegroundColor Yellow
	
	& "$PSScriptRoot\hpupdates.ps1"
    }
    	
} elseif ( $manufacturer -eq 'LENOVO' ){
    
    Write-Host "Lenovo system detected." -ForegroundColor Cyan
    
    # Now lenovo vantage which is a microsoft store exclusive app, so we can only check if it's installed with winget 
    # (since msstore installation folder 'C:\Program Files\WindowsApps' has TrustedInstaller privileges, we - Administrators - dont even have read permissions for it)
    
    if ((winget list -q 9WZDNCRFJ4MV --accept-source-agreements) -eq 'No installed package found matching input criteria.' ){
    
	Write-Host "Installing Lenovo Vantage..." -ForegroundColor Yellow

    	& "$PSScriptRoot\lenovovantage.ps1"
    }

    if ( -not (Test-Path -Path 'C:\Program Files (x86)\Lenovo\System Update\tvsu.exe')) {
    
	Write-Host "Installing Lenovo Update..." -ForegroundColor Yellow
	
	& "$PSScriptRoot\lenovoupdate.ps1"
    }

} elseif ( $manufacturer -eq "ASUSTeK COMPUTER INC." ) {
    Write-Host "This is an ASUS system."
} elseif ( $manufacturer -eq 'Acer' ) {
    Write-Host "This is an Acer system."
} elseif ( $manufacturer -eq "Gigabyte Technology Co., Ltd." ){
    Write-Host "This is a Gigabyte system."
} else {
    Write-Host "Unknown system."
}