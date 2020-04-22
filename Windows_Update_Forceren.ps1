Install-Module -Name PSWindowsUpdate
Save-Module -Name PSWindowsUpdate -Path # als je module wilt opslaan , alleen Path veranderen
Get-WindowsUpdate
Get-WindowsUpdate -install -acceptall -autoreboot -NoRestart  #autoreboot of norestart weghalen
Get-WindowsUpdate -Atrikel id  -Install # Deze gebruiken bij maar 1 ding updaten
