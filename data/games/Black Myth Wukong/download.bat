@echo off
chcp 65001 > nul
color 0F
title Black Myth Wukong - DepotDownloader
cls

echo ==============================================================================
echo                            BLACK MYTH WUKONG
echo ==============================================================================
echo ------------------------------------------------------------------------------
echo ------------------------------------------------------------------------------
echo Game: Black Myth Wukong
echo Language: English
echo App ID: 2358720
echo Generated: 2025-11-06 17:20:14
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
echo [%current_depot%/%total_depots%] Downloading depot 2358721...
.\DepotDownloaderMod\DepotDownloadermod.exe -app 2358720 -depot 2358721 -manifest 143266280896848005 -manifestfile ".\Black Myth Wukong Manifests and Keys\2358721_143266280896848005.manifest" -depotkeys ".\Black Myth Wukong Manifests and Keys\2358720.key" -dir "." -max-downloads 256 -verify-all

set /a current_depot+=1
echo [%current_depot%/%total_depots%] Downloading depot 2672611...
.\DepotDownloaderMod\DepotDownloadermod.exe -app 2358720 -depot 2672611 -manifest 1995373587248188296 -manifestfile ".\Black Myth Wukong Manifests and Keys\2672611_1995373587248188296.manifest" -depotkeys ".\Black Myth Wukong Manifests and Keys\2358720.key" -dir "." -max-downloads 256 -verify-all

echo ==============================================================================
echo                           DOWNLOAD COMPLETED!
echo ==============================================================================
echo All files downloaded to: "Black Myth Wukong" folder
echo Total depots processed: %total_depots%
echo ------------------------------------------------------------------------------
echo Download completed successfully! You can now close this window.
echo ------------------------------------------------------------------------------
pause