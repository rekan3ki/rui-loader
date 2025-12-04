@echo off
chcp 65001 > nul
color 0F
title Persona 5 Royal - DepotDownloader
cls

echo ==============================================================================
echo                            PERSONA 5 ROYAL
echo ==============================================================================
echo ------------------------------------------------------------------------------
echo ------------------------------------------------------------------------------
echo Game: Persona 5 Royal
echo Language: English
echo App ID: 1687950
echo Generated: 2025-11-06 17:36:16
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
echo [%current_depot%/%total_depots%] Downloading depot 1687951...
.\DepotDownloaderMod\DepotDownloadermod.exe -app 1687950 -depot 1687951 -manifest 179949564195054526 -manifestfile ".\Persona 5 Royal Manifests and Keys\1687951_179949564195054526.manifest" -depotkeys ".\Persona 5 Royal Manifests and Keys\1687950.key" -dir "." -max-downloads 256 -verify-all

echo ==============================================================================
echo                           DOWNLOAD COMPLETED!
echo ==============================================================================
echo All files downloaded to: "Persona 5 Royal" folder
echo Total depots processed: %total_depots%
echo ------------------------------------------------------------------------------
echo Download completed successfully! You can now close this window.
echo ------------------------------------------------------------------------------
pause