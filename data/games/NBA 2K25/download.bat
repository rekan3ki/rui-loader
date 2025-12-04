@echo off
chcp 65001 > nul
color 0F
title NBA 2K25 - DepotDownloader
cls

echo ==============================================================================
echo                            NBA 2K25
echo ==============================================================================
echo ------------------------------------------------------------------------------
echo ------------------------------------------------------------------------------
echo Game: NBA 2K25
echo Language: English
echo App ID: 2878980
echo Generated: 2025-11-07 12:10:28
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
echo [%current_depot%/%total_depots%] Downloading depot 2878981...
.\DepotDownloaderMod\DepotDownloadermod.exe -app 2878980 -depot 2878981 -manifest 1749668799585948014 -manifestfile ".\NBA 2K25 Manifests and Keys\2878981_1749668799585948014.manifest" -depotkeys ".\NBA 2K25 Manifests and Keys\2878980.key" -dir "." -max-downloads 256 -verify-all

set /a current_depot+=1
echo [%current_depot%/%total_depots%] Downloading depot 3107390...
.\DepotDownloaderMod\DepotDownloadermod.exe -app 3107390 -depot 3107390 -manifest 5851584071712106802 -manifestfile ".\NBA 2K25 Manifests and Keys\3107390_5851584071712106802.manifest" -depotkeys ".\NBA 2K25 Manifests and Keys\2878980.key" -dir "." -max-downloads 256 -verify-all

echo ==============================================================================
echo                           DOWNLOAD COMPLETED!
echo ==============================================================================
echo All files downloaded to: "NBA 2K25" folder
echo Total depots processed: %total_depots%
echo ------------------------------------------------------------------------------
echo Download completed successfully! You can now close this window.
echo ------------------------------------------------------------------------------
pause