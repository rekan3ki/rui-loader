@echo off
chcp 65001 > nul
color 0F
title Hi-Fi RUSH - DepotDownloader
cls

echo ==============================================================================
echo                            HI-FI RUSH
echo ==============================================================================
echo ------------------------------------------------------------------------------
echo ------------------------------------------------------------------------------
echo Game: Hi-Fi RUSH
echo Language: English
echo App ID: 1817230
echo Generated: 2025-11-06 17:25:29
echo Depots to download: 2
echo ==============================================================================
echo                           STARTING DOWNLOAD...
echo ================================================================================

set "start_time=%time%"
set "total_depots=2"
set "current_depot=0"

echo ------------------------------------------------------------------------------
echo                           DOWNLOADING BASE GAME
echo ------------------------------------------------------------------------------

set /a current_depot+=1
echo [%current_depot%/%total_depots%] Downloading depot 1817231...
.\DepotDownloaderMod\DepotDownloadermod.exe -app 1817230 -depot 1817231 -manifest 2352550391294550783 -manifestfile ".\Hi-Fi RUSH Manifests and Keys\1817231_2352550391294550783.manifest" -depotkeys ".\Hi-Fi RUSH Manifests and Keys\1817230.key" -dir "." -max-downloads 256 -verify-all

set /a current_depot+=1
echo [%current_depot%/%total_depots%] Downloading depot 1817232...
.\DepotDownloaderMod\DepotDownloadermod.exe -app 1817230 -depot 1817232 -manifest 2782758537428965591 -manifestfile ".\Hi-Fi RUSH Manifests and Keys\1817232_2782758537428965591.manifest" -depotkeys ".\Hi-Fi RUSH Manifests and Keys\1817230.key" -dir "." -max-downloads 256 -verify-all

echo ==============================================================================
echo                           DOWNLOAD COMPLETED!
echo ==============================================================================
echo All files downloaded to: "Hi-Fi RUSH" folder
echo Total depots processed: %total_depots%
echo ------------------------------------------------------------------------------
echo Download completed successfully! You can now close this window.
echo ------------------------------------------------------------------------------
pause