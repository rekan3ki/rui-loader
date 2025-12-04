@echo off
chcp 65001 > nul
color 0F
title Assassins Creed Shadows - DepotDownloader
cls

echo ==============================================================================
echo                            ASSASSINS CREED SHADOWS
echo ==============================================================================
echo Game: Assassins Creed Shadows
echo Language: English
echo App ID: 3159330
echo Generated: 2025-11-06 17:18:27
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
echo [%current_depot%/%total_depots%] Downloading depot 3159331...
.\DepotDownloaderMod\DepotDownloadermod.exe -app 3159330 -depot 3159331 -manifest 967242306582424749 -manifestfile ".\Assassins Creed Shadows Manifests and Keys\3159331_967242306582424749.manifest" -depotkeys ".\Assassins Creed Shadows Manifests and Keys\3159330.key" -dir "." -max-downloads 256 -verify-all

set /a current_depot+=1
echo [%current_depot%/%total_depots%] Downloading depot 3159339...
.\DepotDownloaderMod\DepotDownloadermod.exe -app 3362550 -depot 3159339 -manifest 3308285352979351070 -manifestfile ".\Assassins Creed Shadows Manifests and Keys\3159339_3308285352979351070.manifest" -depotkeys ".\Assassins Creed Shadows Manifests and Keys\3159330.key" -dir "." -max-downloads 256 -verify-all

echo ==============================================================================
echo                           DOWNLOAD COMPLETED!
echo ==============================================================================
echo All files downloaded to: "Assassins Creed Shadows" folder
echo Total depots processed: %total_depots%
echo ------------------------------------------------------------------------------
echo Download completed successfully! You can now close this window.
echo ------------------------------------------------------------------------------
pause