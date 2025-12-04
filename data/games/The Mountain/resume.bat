@echo off
chcp 65001 > nul
color 0F
title Mountain - DepotDownloader RESUME
cls

echo ==============================================================================
echo                       MOUNTAIN - RESUME DOWNLOAD
echo ==============================================================================
echo Game: Mountain
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
echo [%current_depot%/%total_depots%] Resuming depot 313341...
echo Validating previously downloaded chunks...
.\DepotDownloaderMod\DepotDownloadermod.exe -app 313340 -depot 313341 -manifest 6605867348333059476 -manifestfile ".\Mountain Manifests and Keys\313341_6605867348333059476.manifest" -depotkeys ".\Mountain Manifests and Keys\313340.key" -dir "." -max-downloads 256 -validate

if %errorlevel% neq 0 (
    echo.
    echo [ERROR] Failed to resume depot 313341. Check your connection and try again.
    echo.
    pause
    exit /b 1
)

echo.
echo [SUCCESS] Depot 313341 completed successfully!
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