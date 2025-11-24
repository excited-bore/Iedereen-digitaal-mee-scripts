if (Get-Command "winget" -ErrorAction SilentlyContinue){
    Write-Host "Checking if Adobe Acrobat Reader is installed" 
    
    if ((winget list -q Adobe.Acrobat.Reader.64-bit) -eq 'No installed package found matching input criteria.' ){
        Write-Host "Installing Adobe Acrobat Reader"
        winget install --id Adobe.Acrobat.Reader.64-bit --accept-package-agreements --accept-source-agreements
    }
   
    Write-Host "Checking if VLC is installed" 
    if ((winget list -q VideoLAN.VLC) -eq 'No installed package found matching input criteria.' ){ 
        Write-Host "Installing VLC"
        winget install --id VideoLAN.VLC --accept-package-agreements --accept-source-agreements
    }

    Write-Host "Checking if Eid is installed" 
    if ((winget list -q BelgianGovernment.eIDViewer) -eq 'No installed package found matching input criteria.' ){  
        Write-Host "Installing Eid middleware and Eid Viewer"
        winget install --id BelgianGovernment.eIDViewer --accept-package-agreements --accept-source-agreements
        winget install --id BelgianGovernment.eIDmiddleware --accept-package-agreements --accept-source-agreements
    }
    
    Write-Host "Checking if LibreOffice is installed" 
    if ((winget list -q TheDocumentFoundation.LibreOffice) -eq 'No installed package found matching input criteria.' ){   
        Write-Host "Installing LibreOffice"
        winget install --id TheDocumentFoundation.LibreOffice --accept-package-agreements --accept-source-agreements
    }
    
    Write-Host "Checking if Firefox is installed"
    if ((winget list -q Mozilla.Firefox.nl) -eq 'No installed package found matching input criteria.' ){
        Write-Host "Installing Firefox"
        winget install --id Mozilla.Firefox.nl --accept-package-agreements --accept-source-agreements
    }
    
    Write-Host "Checking if Chrome is installed" 
    if ((winget list -q Google.Chrome) -eq 'No installed package found matching input criteria.' ){ 
        Write-Host "Installing Chrome"
        winget install --id Google.Chrome --accept-package-agreements --accept-source-agreements
    }
    #if ((winget list -q 7zip.7zip) -eq 'No installed package found matching input criteria.' ){ 
    #    Write-Host "Installing 7zip"
    #    winget install --id 7zip.7zip --accept-package-agreements --accept-source-agreements
    #}
}
