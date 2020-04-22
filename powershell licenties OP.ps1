connect-msolservice 

 

Get-MsolAccountSku

 


$teamgroep = Get-MsolGroup -SearchString "KenK - team"

 


$gebruikers = Get-MsolGroupMember -GroupObjectId $teamgroep.ObjectID

 

 

foreach ($gebruiker in $gebruikers){

 

 

Set-MsolUser -UserPrincipalName $gebruiker.emailaddress -Department "KenK"

 


}


