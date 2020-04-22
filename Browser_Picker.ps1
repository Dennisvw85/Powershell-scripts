$urls = @("https://google.com")
foreach ($url in $urls)
{
Start-Process Chrome.exe $url
}


$urls = @("https://bing.com")
foreach ($url in $urls)
{
Start-Process MicrosoftEdge.exe $url
}