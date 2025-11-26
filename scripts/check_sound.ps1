Write-Host "Playing chimes.wav to check speakers"
Add-Type -AssemblyName presentationCore
$mediaPlayer = New-Object system.windows.media.mediaplayer
$mediaPlayer.open('c:\windows\media\chimes.wav')
$mediaPlayer.Play()
# start c:\windows\media\chimes.wav
cmd.exe /c 'pause'