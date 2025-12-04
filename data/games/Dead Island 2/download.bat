@echo off
chcp 65001 > nul
color 0F
title Dead Island 2 - DepotDownloader
cls

echo ==============================================================================
echo                            DEAD ISLAND 2
echo ==============================================================================
echo ------------------------------------------------------------------------------
echo ------------------------------------------------------------------------------
echo Game: Dead Island 2
echo Language: English
echo App ID: 934700
echo Generated: 2025-11-06 17:20:45
echo Depots to download: 3
echo ==============================================================================
echo                           STARTING DOWNLOAD...
echo ================================================================================

set "start_time=%time%"
set "total_depots=3"
set "current_depot=0"

echo ------------------------------------------------------------------------------
echo                           DOWNLOADING BASE GAME
echo ------------------------------------------------------------------------------

set /a current_depot+=1
echo [%current_depot%/%total_depots%] Downloading depot 934701...
.\DepotDownloaderMod\DepotDownloadermod.exe -app 934700 -depot 934701 -manifest 1106721445574208449 -manifestfile ".\Dead Island 2 Manifests and Keys\934701_1106721445574208449.manifest" -depotkeys ".\Dead Island 2 Manifests and Keys\934700.key" -dir "." -max-downloads 256 -verify-all

set /a current_depot+=1
echo [%current_depot%/%total_depots%] Downloading depot 934702...
.\DepotDownloaderMod\DepotDownloadermod.exe -app 934700 -depot 934702 -manifest 8002347731515535596 -manifestfile ".\Dead Island 2 Manifests and Keys\934702_8002347731515535596.manifest" -depotkeys ".\Dead Island 2 Manifests and Keys\934700.key" -dir "." -max-downloads 256 -verify-all

set /a current_depot+=1
echo [%current_depot%/%total_depots%] Downloading depot 934703...
.\DepotDownloaderMod\DepotDownloadermod.exe -app 934700 -depot 934703 -manifest 4895842858546976242 -manifestfile ".\Dead Island 2 Manifests and Keys\934703_4895842858546976242.manifest" -depotkeys ".\Dead Island 2 Manifests and Keys\934700.key" -dir "." -max-downloads 256 -verify-all

echo ==============================================================================
echo                           DOWNLOAD COMPLETED!
echo ==============================================================================
echo All files downloaded to: "Dead Island 2" folder
echo Total depots processed: %total_depots%
echo ------------------------------------------------------------------------------
echo Download completed successfully! You can now close this window.
echo ------------------------------------------------------------------------------
pause