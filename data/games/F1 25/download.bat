@echo off
chcp 65001 > nul
color 0F
title F1 25 - DepotDownloader
cls

echo ==============================================================================
echo                            F1 25
echo ==============================================================================
echo ------------------------------------------------------------------------------
echo ------------------------------------------------------------------------------
echo Game: F1 25
echo Language: English
echo App ID: 3059520
echo Generated: 2025-11-06 17:24:18
echo Depots to download: 4
echo ==============================================================================
echo                           STARTING DOWNLOAD...
echo ================================================================================

set "start_time=%time%"
set "total_depots=4"
set "current_depot=0"

echo ------------------------------------------------------------------------------
echo                           DOWNLOADING BASE GAME
echo ------------------------------------------------------------------------------

set /a current_depot+=1
echo [%current_depot%/%total_depots%] Downloading depot 3059521...
.\DepotDownloaderMod\DepotDownloadermod.exe -app 3059520 -depot 3059521 -manifest 2360049228228118853 -manifestfile ".\F1 25 Manifests and Keys\3059521_2360049228228118853.manifest" -depotkeys ".\F1 25 Manifests and Keys\3059520.key" -dir "." -max-downloads 256 -verify-all

set /a current_depot+=1
echo [%current_depot%/%total_depots%] Downloading depot 3059522...
.\DepotDownloaderMod\DepotDownloadermod.exe -app 3059520 -depot 3059522 -manifest 1597237398185545719 -manifestfile ".\F1 25 Manifests and Keys\3059522_1597237398185545719.manifest" -depotkeys ".\F1 25 Manifests and Keys\3059520.key" -dir "." -max-downloads 256 -verify-all

set /a current_depot+=1
echo [%current_depot%/%total_depots%] Downloading depot 3059523...
.\DepotDownloaderMod\DepotDownloadermod.exe -app 3059520 -depot 3059523 -manifest 601157476596791196 -manifestfile ".\F1 25 Manifests and Keys\3059523_601157476596791196.manifest" -depotkeys ".\F1 25 Manifests and Keys\3059520.key" -dir "." -max-downloads 256 -verify-all

set /a current_depot+=1
echo [%current_depot%/%total_depots%] Downloading depot 3059524...
.\DepotDownloaderMod\DepotDownloadermod.exe -app 3059520 -depot 3059524 -manifest 9063106941898472963 -manifestfile ".\F1 25 Manifests and Keys\3059524_9063106941898472963.manifest" -depotkeys ".\F1 25 Manifests and Keys\3059520.key" -dir "." -max-downloads 256 -verify-all

echo ==============================================================================
echo                           DOWNLOAD COMPLETED!
echo ==============================================================================
echo All files downloaded to: "F1 25" folder
echo Total depots processed: %total_depots%
echo ------------------------------------------------------------------------------
echo Download completed successfully! You can now close this window.
echo ------------------------------------------------------------------------------
pause