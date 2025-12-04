@echo off
chcp 65001 > nul
color 0F
title Lost Judgment - DepotDownloader
cls

echo ==============================================================================
echo                            LOST JUDGMENT
echo ==============================================================================
echo ------------------------------------------------------------------------------
echo ------------------------------------------------------------------------------
echo Game: Lost Judgment
echo Language: English
echo App ID: 2058190
echo Generated: 2025-11-06 17:26:35
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
echo [%current_depot%/%total_depots%] Downloading depot 2058191...
.\DepotDownloaderMod\DepotDownloadermod.exe -app 2058190 -depot 2058191 -manifest 1108385733889662950 -manifestfile ".\Lost Judgment Manifests and Keys\2058191_1108385733889662950.manifest" -depotkeys ".\Lost Judgment Manifests and Keys\2058190.key" -dir "." -max-downloads 256 -verify-all

set /a current_depot+=1
echo [%current_depot%/%total_depots%] Downloading depot 2060280...
.\DepotDownloaderMod\DepotDownloadermod.exe -app 2058190 -depot 2060280 -manifest 4231231069023266225 -manifestfile ".\Lost Judgment Manifests and Keys\2060280_4231231069023266225.manifest" -depotkeys ".\Lost Judgment Manifests and Keys\2058190.key" -dir "." -max-downloads 256 -verify-all

echo ==============================================================================
echo                           DOWNLOAD COMPLETED!
echo ==============================================================================
echo All files downloaded to: "Lost Judgment" folder
echo Total depots processed: %total_depots%
echo ------------------------------------------------------------------------------
echo Download completed successfully! You can now close this window.
echo ------------------------------------------------------------------------------
pause