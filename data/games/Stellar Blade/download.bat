@echo off
chcp 65001 > nul
color 0F
title Stellar Blade - DepotDownloader
cls

echo ==============================================================================
echo                            STELLAR BLADE
echo ==============================================================================
echo ------------------------------------------------------------------------------
echo ------------------------------------------------------------------------------
echo Game: Stellar Blade
echo Language: English
echo App ID: 3489700
echo Generated: 2025-11-06 17:37:43
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
echo [%current_depot%/%total_depots%] Downloading depot 3489701...
.\DepotDownloaderMod\DepotDownloadermod.exe -app 3489700 -depot 3489701 -manifest 2747626496734343426 -manifestfile ".\Stellar Blade Manifests and Keys\3489701_2747626496734343426.manifest" -depotkeys ".\Stellar Blade Manifests and Keys\3489700.key" -dir "." -max-downloads 256 -verify-all

set /a current_depot+=1
echo [%current_depot%/%total_depots%] Downloading depot 3596180...
.\DepotDownloaderMod\DepotDownloadermod.exe -app 3596180 -depot 3596180 -manifest 8344797041293440177 -manifestfile ".\Stellar Blade Manifests and Keys\3596180_8344797041293440177.manifest" -depotkeys ".\Stellar Blade Manifests and Keys\3489700.key" -dir "." -max-downloads 256 -verify-all

set /a current_depot+=1
echo [%current_depot%/%total_depots%] Downloading depot 3596190...
.\DepotDownloaderMod\DepotDownloadermod.exe -app 3596190 -depot 3596190 -manifest 6588499701851943951 -manifestfile ".\Stellar Blade Manifests and Keys\3596190_6588499701851943951.manifest" -depotkeys ".\Stellar Blade Manifests and Keys\3489700.key" -dir "." -max-downloads 256 -verify-all

echo ==============================================================================
echo                           DOWNLOAD COMPLETED!
echo ==============================================================================
echo All files downloaded to: "Stellar Blade" folder
echo Total depots processed: %total_depots%
echo ------------------------------------------------------------------------------
echo Download completed successfully! You can now close this window.
echo ------------------------------------------------------------------------------
pause