@echo off
chcp 65001 > nul
color 0F
title EA SPORTS FC 25 - DepotDownloader
cls

echo ==============================================================================
echo                            EA SPORTS FC 25
echo ==============================================================================
echo ------------------------------------------------------------------------------
echo ------------------------------------------------------------------------------
echo Game: EA SPORTS FC 25
echo Language: English
echo App ID: 2669320
echo Generated: 2025-11-06 17:23:39
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
echo [%current_depot%/%total_depots%] Downloading depot 2669321...
.\DepotDownloaderMod\DepotDownloadermod.exe -app 2669320 -depot 2669321 -manifest 6209528222614290632 -manifestfile ".\EA SPORTS FC 25 Manifests and Keys\2669321_6209528222614290632.manifest" -depotkeys ".\EA SPORTS FC 25 Manifests and Keys\2669320.key" -dir "." -max-downloads 256 -verify-all

echo ==============================================================================
echo                           DOWNLOAD COMPLETED!
echo ==============================================================================
echo All files downloaded to: "EA SPORTS FC 25" folder
echo Total depots processed: %total_depots%
echo ------------------------------------------------------------------------------
echo Download completed successfully! You can now close this window.
echo ------------------------------------------------------------------------------
pause