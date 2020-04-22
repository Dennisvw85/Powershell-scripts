Connect-MicrosoftTeams
$TeamOwner = ""  #Email 
$TeamName = "" #Team name
$TeamVisability = "Private" #Public or Private
$TeamName = $TeamName + " leerlingen"
$teamsgroup = New-team -Template "EDU_Class" -DisplayName $TeamName -AllowGuestDeleteChannels $False -AllowStickersAndMemes $False -AllowUserDeleteMessages $False -AllowUserEditMessages $False -AllowGiphy $False
sleep 5
$teamsgroup = Get-team -Displayname $TeamName
Set-TeamPicture -GroupId $teamsgroup.GroupId -ImagePath c:\emjee\test.png
New-TeamChannel -GroupId $teamsgroup.GroupId -DisplayName "Instructietafel" -MembershipType Private
Add-TeamUser -GroupId $teamsgroup.GroupId -User $TeamOwner -Role "owner"
sleep 10
Add-TeamChannelUser -GroupId $teamsgroup.GroupId -DisplayName "Instructietafel" -User "$TeamOwner" 
sleep 10
Add-TeamChannelUser -GroupId $teamsgroup.GroupId -DisplayName "Instructietafel" -User "$TeamOwner" -Role Owner


