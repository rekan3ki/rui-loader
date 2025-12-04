@echo off
chcp 65001 > nul
color 0F
title The First Berserker Khazan - DepotDownloader
cls

echo ==============================================================================
echo                            THE FIRST BERSERKER KHAZAN
echo ==============================================================================
echo ------------------------------------------------------------------------------
echo ------------------------------------------------------------------------------
echo Game: The First Berserker Khazan
echo Language: English
echo App ID: 2680010
echo Generated: 2025-11-07 11:55:36
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
echo [%current_depot%/%total_depots%] Downloading depot 2680011...
.\DepotDownloaderMod\DepotDownloadermod.exe -app 2680010 -depot 2680011 -manifest 2509450665871738913 -manifestfile ".\The First Berserker Khazan Manifests and Keys\2680011_2509450665871738913.manifest" -depotkeys ".\The First Berserker Khazan Manifests and Keys\2680010.key" -dir "." -max-downloads 256 -verify-all

echo ==============================================================================
echo                           DOWNLOAD COMPLETED!
echo ==============================================================================
echo All files downloaded to: "The First Berserker Khazan" folder
echo Total depots processed: %total_depots%
echo ------------------------------------------------------------------------------
echo Download completed successfully! You can now close this window.
echo ------------------------------------------------------------------------------
pause