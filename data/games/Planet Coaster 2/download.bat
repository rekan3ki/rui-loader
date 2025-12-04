@echo off
chcp 65001 > nul
color 0F
title Planet Coaster 2 - DepotDownloader
cls

echo ==============================================================================
echo                            PLANET COASTER 2
echo ==============================================================================
echo ------------------------------------------------------------------------------
echo ------------------------------------------------------------------------------
echo Game: Planet Coaster 2
echo Language: English
echo App ID: 2688950
echo Generated: 2025-12-04 11:50:44
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
echo [%current_depot%/%total_depots%] Downloading depot 2688951...
.\DepotDownloaderMod\DepotDownloadermod.exe -app 2688950 -depot 2688951 -manifest 4717148583546527591 -manifestfile ".\Planet Coaster 2 Manifests and Keys\2688951_4717148583546527591.manifest" -depotkeys ".\Planet Coaster 2 Manifests and Keys\2688950.key" -dir "." -max-downloads 256 -verify-all

echo ==============================================================================
echo                           DOWNLOAD COMPLETED!
echo ==============================================================================
echo All files downloaded to: "Planet Coaster 2" folder
echo Total depots processed: %total_depots%
echo ------------------------------------------------------------------------------
echo Download completed successfully! You can now close this window.
echo Created by Solus Bot in Morrenus Games - https://discord.gg/morrenusgames
echo ------------------------------------------------------------------------------
pause