@echo off
chcp 65001 > nul
color 0F
title Star Wars Outlaws - DepotDownloader
cls

echo ==============================================================================
echo                            STAR WARS OUTLAWS
echo ==============================================================================
echo ------------------------------------------------------------------------------
echo ------------------------------------------------------------------------------
echo Game: Star Wars Outlaws
echo Language: English
echo App ID: 2842040
echo Generated: 2025-11-06 17:37:40
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
echo [%current_depot%/%total_depots%] Downloading depot 2842041...
.\DepotDownloaderMod\DepotDownloadermod.exe -app 2842040 -depot 2842041 -manifest 5039899775321241999 -manifestfile ".\Star Wars Outlaws Manifests and Keys\2842041_5039899775321241999.manifest" -depotkeys ".\Star Wars Outlaws Manifests and Keys\2842040.key" -dir "." -max-downloads 256 -verify-all

set /a current_depot+=1
echo [%current_depot%/%total_depots%] Downloading depot 3271130...
.\DepotDownloaderMod\DepotDownloadermod.exe -app 3271130 -depot 3271130 -manifest 3969923851033101926 -manifestfile ".\Star Wars Outlaws Manifests and Keys\3271130_3969923851033101926.manifest" -depotkeys ".\Star Wars Outlaws Manifests and Keys\2842040.key" -dir "." -max-downloads 256 -verify-all

set /a current_depot+=1
echo [%current_depot%/%total_depots%] Downloading depot 3541390...
.\DepotDownloaderMod\DepotDownloadermod.exe -app 3541390 -depot 3541390 -manifest 6063451016620732592 -manifestfile ".\Star Wars Outlaws Manifests and Keys\3541390_6063451016620732592.manifest" -depotkeys ".\Star Wars Outlaws Manifests and Keys\2842040.key" -dir "." -max-downloads 256 -verify-all

echo ==============================================================================
echo                           DOWNLOAD COMPLETED!
echo ==============================================================================
echo All files downloaded to: "Star Wars Outlaws" folder
echo Total depots processed: %total_depots%
echo ------------------------------------------------------------------------------
echo Download completed successfully! You can now close this window.
echo ------------------------------------------------------------------------------
pause