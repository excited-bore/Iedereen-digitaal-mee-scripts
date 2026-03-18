if (Get-Command "winget" -ErrorAction SilentlyContinue){
    Write-Host "Checking if Adobe Acrobat Reader is installed" 
    
    if ((winget list -q Adobe.Acrobat.Reader.64-bit --accept-source-agreements) -eq 'No installed package found matching input criteria.' ){
        Write-Host "Installing Adobe Acrobat Reader"
        winget install --id Adobe.Acrobat.Reader.64-bit --source winget --accept-package-agreements --accept-source-agreements
    }
   
    Write-Host "Checking if VLC is installed" 
    if ((winget list -q VideoLAN.VLC --accept-source-agreements) -eq 'No installed package found matching input criteria.' ){ 
        Write-Host "Installing VLC"
        winget install --id VideoLAN.VLC --source winget --accept-package-agreements --accept-source-agreements
    }

    Write-Host "Checking if Eid is installed" 
    if ((winget list -q BelgianGovernment.eIDViewer --accept-source-agreements) -eq 'No installed package found matching input criteria.' ){  
        Write-Host "Installing Eid middleware and Eid Viewer"
        winget install --id BelgianGovernment.eIDViewer --source winget --accept-package-agreements --accept-source-agreements
        winget install --id BelgianGovernment.eIDmiddleware --source winget ---accept-package-agreements --accept-source-agreements
    }
    
    Write-Host "Checking if LibreOffice is installed" 
    if ((winget list -q TheDocumentFoundation.LibreOffice --accept-source-agreements) -eq 'No installed package found matching input criteria.' ){   
        Write-Host "Installing LibreOffice"
        winget install --id TheDocumentFoundation.LibreOffice --source winget --accept-package-agreements --accept-source-agreements
    }
    
    Write-Host "Checking if Firefox is installed"
    if ((winget list -q Mozilla.Firefox.nl --accept-source-agreements) -eq 'No installed package found matching input criteria.' ){
        Write-Host "Installing Firefox"
        winget install --id Mozilla.Firefox.nl --source winget --accept-package-agreements --accept-source-agreements
    }
    # https://addons.mozilla.org/firefox/downloads/file/3736679/belgium_eid-1.0.32.xpi   

    Write-Host "Checking if Chrome is installed" 
    if ((winget list -q Google.Chrome --accept-source-agreements) -eq 'No installed package found matching input criteria.' ){ 
        Write-Host "Installing Chrome"
        try {
	     winget install --id Google.Chrome --source winget --accept-package-agreements --accept-source-agreements
	} catch {
	     Write-Host "Installing Google chrome .msi failed. Trying .exe..." -ForegroundColor Yellow
 	     winget install --id Google.Chrome.EXE --source winget --accept-package-agreements --accept-source-agreements
	}
    }
    #if ((winget list -q 7zip.7zip) -eq 'No installed package found matching input criteria.' ){ 
    #    Write-Host "Installing 7zip"
    #    winget install --id 7zip.7zip --accept-package-agreements --accept-source-agreements
    #}
}
