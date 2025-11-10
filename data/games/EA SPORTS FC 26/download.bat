@echo off
chcp 65001 > nul
color 0F
title EA SPORTS FC 26 - DepotDownloader
cls

echo ==============================================================================
echo                            EA SPORTS FC 26
echo ==============================================================================
echo ------------------------------------------------------------------------------
echo ------------------------------------------------------------------------------
echo Game: EA SPORTS FC 26
echo Language: English
echo App ID: 3405690
echo Generated: 2025-11-07 12:03:38
echo Depots to download: 1
echo ==============================================================================
echo                           STARTING DOWNLOAD...
echo ================================================================================

set "start_time=%time%"
set "total_depots=1"
set "current_depot=0"

echo ------------------------------------------------------------------------------
echo                           DOWNLOADING BASE GAME
echo ------------------------------------------------------------------------------

set /a current_depot+=1
echo [%current_depot%/%total_depots%] Downloading depot 3405691...
.\DepotDownloaderMod\DepotDownloadermod.exe -app 3405690 -depot 3405691 -manifest 4669931631181508382 -manifestfile ".\EA SPORTS FC 26 Manifests and Keys\3405691_4669931631181508382.manifest" -depotkeys ".\EA SPORTS FC 26 Manifests and Keys\3405690.key" -dir "." -max-downloads 256 -verify-all

echo ==============================================================================
echo                           DOWNLOAD COMPLETED!
echo ==============================================================================
echo All files downloaded to: "EA SPORTS FC 26" folder
echo Total depots processed: %total_depots%
echo ------------------------------------------------------------------------------
echo Download completed successfully! You can now close this window.
echo ------------------------------------------------------------------------------
pause