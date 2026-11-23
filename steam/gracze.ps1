
$ErrorActionPreference = "Stop"
$appid = 570
$response = Invoke-RestMethod -Uri "https://api.steampowered.com/ISteamUserStats/GetNumberOfCurrentPlayers/v1/?appid=$appid" -UseBasicParsing -TimeoutSec 20
Write-Host "Dota 2 (AppID: $appid) - gracze online: $($response.response.player_count)"
