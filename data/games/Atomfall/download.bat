@echo off
chcp 65001 > nul
color 0F
title Atomfall - DepotDownloader
cls

echo ==============================================================================
echo                            ATOMFALL
echo ==============================================================================
echo Game: Atomfall
echo Language: English
echo App ID: 801800
echo Generated: 2025-11-06 17:19:03
echo Depots to download: 5
echo ==============================================================================
echo                           STARTING DOWNLOAD...
echo ================================================================================

set "start_time=%time%"
set "total_depots=5"
set "current_depot=0"

echo ------------------------------------------------------------------------------
echo                           DOWNLOADING BASE GAME
echo ------------------------------------------------------------------------------

set /a current_depot+=1
echo [%current_depot%/%total_depots%] Downloading depot 801801...
.\DepotDownloaderMod\DepotDownloadermod.exe -app 801800 -depot 801801 -manifest 8400971978754919400 -manifestfile ".\Atomfall Manifests and Keys\801801_8400971978754919400.manifest" -depotkeys ".\Atomfall Manifests and Keys\801800.key" -dir "." -max-downloads 256 -verify-all

set /a current_depot+=1
echo [%current_depot%/%total_depots%] Downloading depot 801802...
.\DepotDownloaderMod\DepotDownloadermod.exe -app 801800 -depot 801802 -manifest 1398041519600569249 -manifestfile ".\Atomfall Manifests and Keys\801802_1398041519600569249.manifest" -depotkeys ".\Atomfall Manifests and Keys\801800.key" -dir "." -max-downloads 256 -verify-all

set /a current_depot+=1
echo [%current_depot%/%total_depots%] Downloading depot 801803...
.\DepotDownloaderMod\DepotDownloadermod.exe -app 801800 -depot 801803 -manifest 7265483314431453939 -manifestfile ".\Atomfall Manifests and Keys\801803_7265483314431453939.manifest" -depotkeys ".\Atomfall Manifests and Keys\801800.key" -dir "." -max-downloads 256 -verify-all

set /a current_depot+=1
echo [%current_depot%/%total_depots%] Downloading depot 3047140...
.\DepotDownloaderMod\DepotDownloadermod.exe -app 3047140 -depot 3047140 -manifest 8053094571818646338 -manifestfile ".\Atomfall Manifests and Keys\3047140_8053094571818646338.manifest" -depotkeys ".\Atomfall Manifests and Keys\801800.key" -dir "." -max-downloads 256 -verify-all

set /a current_depot+=1
echo [%current_depot%/%total_depots%] Downloading depot 3252020...
.\DepotDownloaderMod\DepotDownloadermod.exe -app 3252020 -depot 3252020 -manifest 1656463850248702710 -manifestfile ".\Atomfall Manifests and Keys\3252020_1656463850248702710.manifest" -depotkeys ".\Atomfall Manifests and Keys\801800.key" -dir "." -max-downloads 256 -verify-all

echo ==============================================================================
echo                           DOWNLOAD COMPLETED!
echo ==============================================================================
echo All files downloaded to: "Atomfall" folder
echo Total depots processed: %total_depots%
echo ------------------------------------------------------------------------------
echo Download completed successfully! You can now close this window.
echo ------------------------------------------------------------------------------
pause