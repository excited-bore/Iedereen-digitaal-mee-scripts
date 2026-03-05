if ((winget list -q 9WZDNCRFJ4MV) -eq 'No installed package found matching input criteria.' ){
   
   Write-Host "Installing Lenovo Vantage..." 
     
   winget install --id 9WZDNCRFJ4MV --silent --accept-package-agreements --accept-source-agreements
}
