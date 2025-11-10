@echo off
chcp 65001 > nul
color 0F
title Sid Meiers Civilization VII - DepotDownloader
cls

echo ==============================================================================
echo                            SID MEIERS CIVILIZATION VII
echo ==============================================================================
echo ------------------------------------------------------------------------------
echo ------------------------------------------------------------------------------
echo Game: Sid Meiers Civilization VII
echo Language: English
echo App ID: 1295660
echo Generated: 2025-11-07 11:49:21
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
echo [%current_depot%/%total_depots%] Downloading depot 1295661...
.\DepotDownloaderMod\DepotDownloadermod.exe -app 1295660 -depot 1295661 -manifest 3530980511854962355 -manifestfile ".\Sid Meiers Civilization VII Manifests and Keys\1295661_3530980511854962355.manifest" -depotkeys ".\Sid Meiers Civilization VII Manifests and Keys\1295660.key" -dir "." -max-downloads 256 -verify-all

set /a current_depot+=1
echo [%current_depot%/%total_depots%] Downloading depot 1295662...
.\DepotDownloaderMod\DepotDownloadermod.exe -app 1295660 -depot 1295662 -manifest 2533108998337644356 -manifestfile ".\Sid Meiers Civilization VII Manifests and Keys\1295662_2533108998337644356.manifest" -depotkeys ".\Sid Meiers Civilization VII Manifests and Keys\1295660.key" -dir "." -max-downloads 256 -verify-all

echo ==============================================================================
echo                           DOWNLOAD COMPLETED!
echo ==============================================================================
echo All files downloaded to: "Sid Meiers Civilization VII" folder
echo Total depots processed: %total_depots%
echo ------------------------------------------------------------------------------
echo Download completed successfully! You can now close this window.
echo ------------------------------------------------------------------------------
pause