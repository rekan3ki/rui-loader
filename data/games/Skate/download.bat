@echo off
chcp 437 > nul
color 0F
title skate
cls

echo ==============================================================================
echo                            SKATE
echo ==============================================================================
echo Game: skate
echo Language: English
echo App ID: 3354750
echo Generated: 2025-10-17 14:50:37
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
echo [%current_depot%/%total_depots%] Downloading depot 3354751...
.\DepotDownloaderMod\DepotDownloadermod.exe -app 3354750 -depot 3354751 -manifest 9169438965736773521 -manifestfile ".\skate Manifests and Keys\3354751_9169438965736773521.manifest" -depotkeys ".\skate Manifests and Keys\3354750.key" -dir "." -max-downloads 256 -verify-all

echo ==============================================================================
echo                           DOWNLOAD COMPLETED!
echo ==============================================================================
echo All files downloaded to: "skate" folder
echo Total depots processed: %total_depots%
echo ------------------------------------------------------------------------------
echo Download completed successfully! You can now close this window.
echo ------------------------------------------------------------------------------
pause