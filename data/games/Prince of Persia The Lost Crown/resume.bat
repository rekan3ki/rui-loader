@echo off
chcp 65001 > nul
color 0F
title Prince of Persia The Lost Crown - DepotDownloader RESUME
cls

echo ==============================================================================
echo                       PRINCE OF PERSIA THE LOST CROWN - RESUME DOWNLOAD
echo ==============================================================================
echo Game: Prince of Persia The Lost Crown
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
echo [%current_depot%/%total_depots%] Resuming depot 2751001...
echo Validating previously downloaded chunks...
.\DepotDownloaderMod\DepotDownloadermod.exe -app 2751000 -depot 2751001 -manifest 4409492711677428505 -manifestfile ".\Prince of Persia The Lost Crown Manifests and Keys\2751001_4409492711677428505.manifest" -depotkeys ".\Prince of Persia The Lost Crown Manifests and Keys\2751000.key" -dir "." -max-downloads 256 -validate

if %errorlevel% neq 0 (
    echo.
    echo [ERROR] Failed to resume depot 2751001. Check your connection and try again.
    echo.
    pause
    exit /b 1
)

echo.
echo [SUCCESS] Depot 2751001 completed successfully!
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