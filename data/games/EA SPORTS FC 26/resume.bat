@echo off
chcp 65001 > nul
color 0F
title EA SPORTS FC 26 - DepotDownloader RESUME
cls

echo ==============================================================================
echo                       EA SPORTS FC 26 - RESUME DOWNLOAD
echo ==============================================================================
echo Game: EA SPORTS FC 26
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
echo [%current_depot%/%total_depots%] Resuming depot 3405691...
echo Validating previously downloaded chunks...
.\DepotDownloaderMod\DepotDownloadermod.exe -app 3405690 -depot 3405691 -manifest 4669931631181508382 -manifestfile ".\EA SPORTS FC 26 Manifests and Keys\3405691_4669931631181508382.manifest" -depotkeys ".\EA SPORTS FC 26 Manifests and Keys\3405690.key" -dir "." -max-downloads 256 -validate

if %errorlevel% neq 0 (
    echo.
    echo [ERROR] Failed to resume depot 3405691. Check your connection and try again.
    echo.
    pause
    exit /b 1
)

echo.
echo [SUCCESS] Depot 3405691 completed successfully!
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