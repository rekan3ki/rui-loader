@echo off
chcp 65001 > nul
color 0F
title Persona 3 Reload - DepotDownloader
cls

echo ==============================================================================
echo                            PERSONA 3 RELOAD
echo ==============================================================================
echo ------------------------------------------------------------------------------
echo ------------------------------------------------------------------------------
echo Game: Persona 3 Reload
echo Language: English
echo App ID: 2161700
echo Generated: 2025-11-07 12:07:01
echo Depots to download: 3
echo ==============================================================================
echo                           STARTING DOWNLOAD...
echo ================================================================================

set "start_time=%time%"
set "total_depots=3"
set "current_depot=0"

echo ------------------------------------------------------------------------------
echo                           DOWNLOADING BASE GAME
echo ------------------------------------------------------------------------------

set /a current_depot+=1
echo [%current_depot%/%total_depots%] Downloading depot 2161701...
.\DepotDownloaderMod\DepotDownloadermod.exe -app 2161700 -depot 2161701 -manifest 4936421241860440773 -manifestfile ".\Persona 3 Reload Manifests and Keys\2161701_4936421241860440773.manifest" -depotkeys ".\Persona 3 Reload Manifests and Keys\2161700.key" -dir "." -max-downloads 256 -verify-all

set /a current_depot+=1
echo [%current_depot%/%total_depots%] Downloading depot 2517301...
.\DepotDownloaderMod\DepotDownloadermod.exe -app 2161700 -depot 2517301 -manifest 3773053318858649709 -manifestfile ".\Persona 3 Reload Manifests and Keys\2517301_3773053318858649709.manifest" -depotkeys ".\Persona 3 Reload Manifests and Keys\2161700.key" -dir "." -max-downloads 256 -verify-all

set /a current_depot+=1
echo [%current_depot%/%total_depots%] Downloading depot 2517311...
.\DepotDownloaderMod\DepotDownloadermod.exe -app 2161700 -depot 2517311 -manifest 1834178036232257674 -manifestfile ".\Persona 3 Reload Manifests and Keys\2517311_1834178036232257674.manifest" -depotkeys ".\Persona 3 Reload Manifests and Keys\2161700.key" -dir "." -max-downloads 256 -verify-all

echo ==============================================================================
echo                           DOWNLOAD COMPLETED!
echo ==============================================================================
echo All files downloaded to: "Persona 3 Reload" folder
echo Total depots processed: %total_depots%
echo ------------------------------------------------------------------------------
echo Download completed successfully! You can now close this window.
echo ------------------------------------------------------------------------------
pause