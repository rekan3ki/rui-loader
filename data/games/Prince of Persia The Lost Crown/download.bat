@echo off
chcp 65001 > nul
color 0F
title Prince of Persia The Lost Crown - DepotDownloader
cls

echo ==============================================================================
echo                            PRINCE OF PERSIA THE LOST CROWN
echo ==============================================================================
echo ------------------------------------------------------------------------------
echo ------------------------------------------------------------------------------
echo Game: Prince of Persia The Lost Crown
echo Language: English
echo App ID: 2751000
echo Generated: 2025-11-06 17:36:48
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
echo [%current_depot%/%total_depots%] Downloading depot 2751001...
.\DepotDownloaderMod\DepotDownloadermod.exe -app 2751000 -depot 2751001 -manifest 4409492711677428505 -manifestfile ".\Prince of Persia The Lost Crown Manifests and Keys\2751001_4409492711677428505.manifest" -depotkeys ".\Prince of Persia The Lost Crown Manifests and Keys\2751000.key" -dir "." -max-downloads 256 -verify-all

echo ==============================================================================
echo                           DOWNLOAD COMPLETED!
echo ==============================================================================
echo All files downloaded to: "Prince of Persia The Lost Crown" folder
echo Total depots processed: %total_depots%
echo ------------------------------------------------------------------------------
echo Download completed successfully! You can now close this window.
echo ------------------------------------------------------------------------------
pause