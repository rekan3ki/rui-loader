@echo off
chcp 65001 > nul
color 0F
title Monster Hunter Wilds - DepotDownloader
cls

echo ==============================================================================
echo                            MONSTER HUNTER WILDS
echo ==============================================================================
echo ------------------------------------------------------------------------------
echo ------------------------------------------------------------------------------
echo Game: Monster Hunter Wilds
echo Language: English
echo App ID: 2246340
echo Generated: 2025-11-06 17:27:08
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
echo [%current_depot%/%total_depots%] Downloading depot 2246341...
.\DepotDownloaderMod\DepotDownloadermod.exe -app 2246340 -depot 2246341 -manifest 5580716745430826160 -manifestfile ".\Monster Hunter Wilds Manifests and Keys\2246341_5580716745430826160.manifest" -depotkeys ".\Monster Hunter Wilds Manifests and Keys\2246340.key" -dir "." -max-downloads 256 -verify-all

set /a current_depot+=1
echo [%current_depot%/%total_depots%] Downloading depot 3308900...
.\DepotDownloaderMod\DepotDownloadermod.exe -app 3308900 -depot 3308900 -manifest 4781590004135365134 -manifestfile ".\Monster Hunter Wilds Manifests and Keys\3308900_4781590004135365134.manifest" -depotkeys ".\Monster Hunter Wilds Manifests and Keys\2246340.key" -dir "." -max-downloads 256 -verify-all

set /a current_depot+=1
echo [%current_depot%/%total_depots%] Downloading depot 3885661...
.\DepotDownloaderMod\DepotDownloadermod.exe -app 2246340 -depot 3885661 -manifest 2085525327031658274 -manifestfile ".\Monster Hunter Wilds Manifests and Keys\3885661_2085525327031658274.manifest" -depotkeys ".\Monster Hunter Wilds Manifests and Keys\2246340.key" -dir "." -max-downloads 256 -verify-all

echo ==============================================================================
echo                           DOWNLOAD COMPLETED!
echo ==============================================================================
echo All files downloaded to: "Monster Hunter Wilds" folder
echo Total depots processed: %total_depots%
echo ------------------------------------------------------------------------------
echo Download completed successfully! You can now close this window.
echo ------------------------------------------------------------------------------
pause