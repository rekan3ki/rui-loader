@echo off
chcp 65001 > nul
color 0F
title Mountain - DepotDownloader
cls

echo ==============================================================================
echo                            MOUNTAIN
echo ==============================================================================
echo ------------------------------------------------------------------------------
echo ------------------------------------------------------------------------------
echo Game: Mountain
echo Language: English
echo App ID: 313340
echo Generated: 2025-12-04 01:39:12
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
echo [%current_depot%/%total_depots%] Downloading depot 313341...
.\DepotDownloaderMod\DepotDownloadermod.exe -app 313340 -depot 313341 -manifest 6605867348333059476 -manifestfile ".\Mountain Manifests and Keys\313341_6605867348333059476.manifest" -depotkeys ".\Mountain Manifests and Keys\313340.key" -dir "." -max-downloads 256 -verify-all

echo ==============================================================================
echo                           DOWNLOAD COMPLETED!
echo ==============================================================================
echo All files downloaded to: "Mountain" folder
echo Total depots processed: %total_depots%
echo ------------------------------------------------------------------------------
echo Download completed successfully! You can now close this window.
echo Created by Solus Bot in Morrenus Games - https://discord.gg/morrenusgames
echo ------------------------------------------------------------------------------
pause