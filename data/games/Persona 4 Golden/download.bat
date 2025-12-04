@echo off
chcp 65001 > nul
color 0F
title Persona 4 Golden - DepotDownloader
cls

echo ==============================================================================
echo                            PERSONA 4 GOLDEN
echo ==============================================================================
echo ------------------------------------------------------------------------------
echo ------------------------------------------------------------------------------
echo Game: Persona 4 Golden
echo Language: English
echo App ID: 1113000
echo Generated: 2025-11-06 17:35:49
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
echo [%current_depot%/%total_depots%] Downloading depot 1113001...
.\DepotDownloaderMod\DepotDownloadermod.exe -app 1113000 -depot 1113001 -manifest 4737529339202475845 -manifestfile ".\Persona 4 Golden Manifests and Keys\1113001_4737529339202475845.manifest" -depotkeys ".\Persona 4 Golden Manifests and Keys\1113000.key" -dir "." -max-downloads 256 -verify-all

set /a current_depot+=1
echo [%current_depot%/%total_depots%] Downloading depot 1113002...
.\DepotDownloaderMod\DepotDownloadermod.exe -app 1113000 -depot 1113002 -manifest 2520901896865483548 -manifestfile ".\Persona 4 Golden Manifests and Keys\1113002_2520901896865483548.manifest" -depotkeys ".\Persona 4 Golden Manifests and Keys\1113000.key" -dir "." -max-downloads 256 -verify-all

echo ==============================================================================
echo                           DOWNLOAD COMPLETED!
echo ==============================================================================
echo All files downloaded to: "Persona 4 Golden" folder
echo Total depots processed: %total_depots%
echo ------------------------------------------------------------------------------
echo Download completed successfully! You can now close this window.
echo ------------------------------------------------------------------------------
pause