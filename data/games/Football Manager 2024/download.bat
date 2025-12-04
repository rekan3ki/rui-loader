@echo off
chcp 65001 > nul
color 0F
title Football Manager 2024 - DepotDownloader
cls

echo ==============================================================================
echo                            FOOTBALL MANAGER 2024
echo ==============================================================================
echo ------------------------------------------------------------------------------
echo ------------------------------------------------------------------------------
echo Game: Football Manager 2024
echo Language: English
echo App ID: 2252570
echo Generated: 2025-11-07 12:06:38
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
echo [%current_depot%/%total_depots%] Downloading depot 2252571...
.\DepotDownloaderMod\DepotDownloadermod.exe -app 2252570 -depot 2252571 -manifest 71174279217418086 -manifestfile ".\Football Manager 2024 Manifests and Keys\2252571_71174279217418086.manifest" -depotkeys ".\Football Manager 2024 Manifests and Keys\2252570.key" -dir "." -max-downloads 256 -verify-all

set /a current_depot+=1
echo [%current_depot%/%total_depots%] Downloading depot 2252572...
.\DepotDownloaderMod\DepotDownloadermod.exe -app 2252570 -depot 2252572 -manifest 996561852771015976 -manifestfile ".\Football Manager 2024 Manifests and Keys\2252572_996561852771015976.manifest" -depotkeys ".\Football Manager 2024 Manifests and Keys\2252570.key" -dir "." -max-downloads 256 -verify-all

echo ==============================================================================
echo                           DOWNLOAD COMPLETED!
echo ==============================================================================
echo All files downloaded to: "Football Manager 2024" folder
echo Total depots processed: %total_depots%
echo ------------------------------------------------------------------------------
echo Download completed successfully! You can now close this window.
echo ------------------------------------------------------------------------------
pause