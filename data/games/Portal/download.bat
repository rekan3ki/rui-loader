@echo off
chcp 65001 > nul
color 0F
title Portal - DepotDownloader
cls

echo.
echo ==============================================================================
echo                            PORTAL
echo ==============================================================================
echo.
echo Game: Portal
echo Language: English
echo App ID: 400
echo Generated: 2025-11-15 03:50:35
echo Depots to download: 4
echo.
echo ==============================================================================
echo                           STARTING DOWNLOAD...
echo ================================================================================
echo.

set "start_time=%time%"
set "total_depots=4"
set "current_depot=0"

echo ------------------------------------------------------------------------------
echo                           DOWNLOADING BASE GAME
echo ------------------------------------------------------------------------------

set /a current_depot+=1
echo [%current_depot%/%total_depots%] Downloading depot 402...
.\DepotDownloaderMod\DepotDownloadermod.exe -app 400 -depot 402 -manifest 7655374749121348667 -manifestfile ".\Portal Manifests and Keys\402_7655374749121348667.manifest" -depotkeys ".\Portal Manifests and Keys\400.key" -dir "Portal" -max-downloads 256 -verify-all
echo =============================== COMPLETE ==================================
echo.

set /a current_depot+=1
echo [%current_depot%/%total_depots%] Downloading depot 409...
.\DepotDownloaderMod\DepotDownloadermod.exe -app 400 -depot 409 -manifest 5466869569815608374 -manifestfile ".\Portal Manifests and Keys\409_5466869569815608374.manifest" -depotkeys ".\Portal Manifests and Keys\400.key" -dir "Portal" -max-downloads 256 -verify-all
echo =============================== COMPLETE ==================================
echo.

set /a current_depot+=1
echo [%current_depot%/%total_depots%] Downloading depot 410...
.\DepotDownloaderMod\DepotDownloadermod.exe -app 400 -depot 410 -manifest 106212190778449766 -manifestfile ".\Portal Manifests and Keys\410_106212190778449766.manifest" -depotkeys ".\Portal Manifests and Keys\400.key" -dir "Portal" -max-downloads 256 -verify-all
echo =============================== COMPLETE ==================================
echo.

set /a current_depot+=1
echo [%current_depot%/%total_depots%] Downloading depot 401...
.\DepotDownloaderMod\DepotDownloadermod.exe -app 400 -depot 401 -manifest 3169084482272098670 -manifestfile ".\Portal Manifests and Keys\401_3169084482272098670.manifest" -depotkeys ".\Portal Manifests and Keys\400.key" -dir "Portal" -max-downloads 256 -verify-all
echo =============================== COMPLETE ==================================
echo.

echo ==============================================================================
echo                           DOWNLOAD COMPLETED!
echo ==============================================================================
echo.
echo All files downloaded to: "Portal" folder
echo Total depots processed: %total_depots%
echo.
echo ------------------------------------------------------------------------------
echo Download completed successfully! You can now close this window.
echo ------------------------------------------------------------------------------
echo.
pause