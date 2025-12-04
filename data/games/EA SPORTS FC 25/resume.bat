@echo off
chcp 65001 > nul
color 0F
title EA SPORTS FC 25 - DepotDownloader RESUME
cls

echo ==============================================================================
echo                       EA SPORTS FC 25 - RESUME DOWNLOAD
echo ==============================================================================
echo Game: EA SPORTS FC 25
echo Depots to download: 1
echo Resume Mode: ENABLED (Validating previously downloaded files)
echo ==============================================================================
echo                           RESUMING DOWNLOAD...
echo ================================================================================

set "start_time=%time%"
set "total_depots=1"
set "current_depot=0"

echo ------------------------------------------------------------------------------
echo                       RESUMING BASE GAME DOWNLOAD (DEPOT 1/1)
echo ------------------------------------------------------------------------------

set /a current_depot+=1
echo [%current_depot%/%total_depots%] Resuming depot 2669321...
echo Validating previously downloaded chunks...
.\DepotDownloaderMod\DepotDownloadermod.exe -app 2669320 -depot 2669321 -manifest 6209528222614290632 -manifestfile ".\EA SPORTS FC 25 Manifests and Keys\2669321_6209528222614290632.manifest" -depotkeys ".\EA SPORTS FC 25 Manifests and Keys\2669320.key" -dir "." -max-downloads 256 -validate

if %errorlevel% neq 0 (
    echo.
    echo [ERROR] Failed to resume depot 2669321. Check your connection and try again.
    echo.
    pause
    exit /b 1
)

echo.
echo [SUCCESS] Depot 2669321 completed successfully!
echo.
echo ==============================================================================
echo                           RESUME COMPLETED!
echo ==============================================================================
echo All files downloaded to: Current directory
echo Total depots processed: %total_depots%
echo Resume Mode: VALIDATED - Previously downloaded files skipped
echo ------------------------------------------------------------------------------
echo Download completed successfully! You can now close this window.
echo ------------------------------------------------------------------------------
pause