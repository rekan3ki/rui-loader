@echo off
chcp 65001 > nul
color 0F
title SONIC X SHADOW GENERATIONS - DepotDownloader
cls

echo ==============================================================================
echo                            SONIC X SHADOW GENERATIONS
echo ==============================================================================
echo ------------------------------------------------------------------------------
echo ------------------------------------------------------------------------------
echo Game: SONIC X SHADOW GENERATIONS
echo Language: English
echo App ID: 2513280
echo Generated: 2025-11-06 17:38:03
echo Depots to download: 6
echo ==============================================================================
echo                           STARTING DOWNLOAD...
echo ================================================================================

set "start_time=%time%"
set "total_depots=6"
set "current_depot=0"

echo ------------------------------------------------------------------------------
echo                           DOWNLOADING BASE GAME
echo ------------------------------------------------------------------------------

set /a current_depot+=1
echo [%current_depot%/%total_depots%] Downloading depot 2513281...
.\DepotDownloaderMod\DepotDownloadermod.exe -app 2513280 -depot 2513281 -manifest 1703635842257284304 -manifestfile ".\SONIC X SHADOW GENERATIONS Manifests and Keys\2513281_1703635842257284304.manifest" -depotkeys ".\SONIC X SHADOW GENERATIONS Manifests and Keys\2513280.key" -dir "." -max-downloads 256 -verify-all

set /a current_depot+=1
echo [%current_depot%/%total_depots%] Downloading depot 2909780...
.\DepotDownloaderMod\DepotDownloadermod.exe -app 2513280 -depot 2909780 -manifest 285399313089519721 -manifestfile ".\SONIC X SHADOW GENERATIONS Manifests and Keys\2909780_285399313089519721.manifest" -depotkeys ".\SONIC X SHADOW GENERATIONS Manifests and Keys\2513280.key" -dir "." -max-downloads 256 -verify-all

set /a current_depot+=1
echo [%current_depot%/%total_depots%] Downloading depot 2909770...
.\DepotDownloaderMod\DepotDownloadermod.exe -app 2513280 -depot 2909770 -manifest 695039940894575473 -manifestfile ".\SONIC X SHADOW GENERATIONS Manifests and Keys\2909770_695039940894575473.manifest" -depotkeys ".\SONIC X SHADOW GENERATIONS Manifests and Keys\2513280.key" -dir "." -max-downloads 256 -verify-all

set /a current_depot+=1
echo [%current_depot%/%total_depots%] Downloading depot 2999160...
.\DepotDownloaderMod\DepotDownloadermod.exe -app 2513280 -depot 2999160 -manifest 2720286388307715047 -manifestfile ".\SONIC X SHADOW GENERATIONS Manifests and Keys\2999160_2720286388307715047.manifest" -depotkeys ".\SONIC X SHADOW GENERATIONS Manifests and Keys\2513280.key" -dir "." -max-downloads 256 -verify-all

set /a current_depot+=1
echo [%current_depot%/%total_depots%] Downloading depot 2983600...
.\DepotDownloaderMod\DepotDownloadermod.exe -app 2513280 -depot 2983600 -manifest 8754653703603695391 -manifestfile ".\SONIC X SHADOW GENERATIONS Manifests and Keys\2983600_8754653703603695391.manifest" -depotkeys ".\SONIC X SHADOW GENERATIONS Manifests and Keys\2513280.key" -dir "." -max-downloads 256 -verify-all

set /a current_depot+=1
echo [%current_depot%/%total_depots%] Downloading depot 2909790...
.\DepotDownloaderMod\DepotDownloadermod.exe -app 2513280 -depot 2909790 -manifest 811552346142850245 -manifestfile ".\SONIC X SHADOW GENERATIONS Manifests and Keys\2909790_811552346142850245.manifest" -depotkeys ".\SONIC X SHADOW GENERATIONS Manifests and Keys\2513280.key" -dir "." -max-downloads 256 -verify-all

echo ==============================================================================
echo                           DOWNLOAD COMPLETED!
echo ==============================================================================
echo All files downloaded to: "SONIC X SHADOW GENERATIONS" folder
echo Total depots processed: %total_depots%
echo ------------------------------------------------------------------------------
echo Download completed successfully! You can now close this window.
echo ------------------------------------------------------------------------------
pause