
$ErrorActionPreference = "Stop"
$appid = 570

$url = "https://api.steampowered.com/ISteamNews/GetNewsForApp/v2/?appid=$appid&count=1&maxlength=300&feeds=steam_community_announcements"

$response = Invoke-RestMethod -Uri $url -UseBasicParsing -TimeoutSec 20

$news = $response.appnews.newsitems[0]

Write-Host "Najnowsza wiadomość Dota 2:"
Write-Host "Tytuł: $($news.title)"
Write-Host "Link: $($news.url)"
