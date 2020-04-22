Install-Module PSWindowsUpdate
$registry = [Microsoft.Win32.RegistryKey]::OpenRemoteBaseKey("LocalMachine",$dnsHostname)
$key = $registry.OpenSubKey("SOFTWARE\Microsoft\Windows NT\CurrentVersion")
$releaseID = $key.GetValue("ReleaseID")
$releaseID

 


if ($releaseID -le 1903)    
{
Uninstall-WindowsFeature - Name NET-Framework-Core -Restart
Install-Module PSWindowsUpdate
Get-WindowsUpdate
Install-WindowsUpdate

}
elseif ($releaseID -ge 1909){
Enable-WindowsOptionalFeature -Online -FeatureName "NetFx3"
}