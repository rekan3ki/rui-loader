@echo off
chcp 437 > nul
color 0F
title Mafia The Old Country
cls

echo ==============================================================================
echo                            MAFIA THE OLD COUNTRY
echo ==============================================================================
echo Game: Mafia The Old Country
echo Language: English
echo App ID: 1941540
echo Generated: 2025-10-17 14:50:05
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
echo [%current_depot%/%total_depots%] Downloading depot 1941541...
.\DepotDownloaderMod\DepotDownloadermod.exe -app 1941540 -depot 1941541 -manifest 2418164848459704247 -manifestfile ".\Mafia The Old Country Manifests and Keys\1941541_2418164848459704247.manifest" -depotkeys ".\Mafia The Old Country Manifests and Keys\1941540.key" -dir "." -max-downloads 256 -verify-all

echo ==============================================================================
echo                           DOWNLOAD COMPLETED!
echo ==============================================================================
echo All files downloaded to: "Mafia The Old Country" folder
echo Total depots processed: %total_depots%
echo ------------------------------------------------------------------------------
echo Download completed successfully! You can now close this window.
echo ------------------------------------------------------------------------------
pause