@echo off
chcp 65001 > nul
color 0F
title The First Berserker Khazan - DepotDownloader RESUME
cls

echo ==============================================================================
echo                       THE FIRST BERSERKER KHAZAN - RESUME DOWNLOAD
echo ==============================================================================
echo Game: The First Berserker Khazan
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
echo [%current_depot%/%total_depots%] Resuming depot 2680011...
echo Validating previously downloaded chunks...
.\DepotDownloaderMod\DepotDownloadermod.exe -app 2680010 -depot 2680011 -manifest 2509450665871738913 -manifestfile ".\The First Berserker Khazan Manifests and Keys\2680011_2509450665871738913.manifest" -depotkeys ".\The First Berserker Khazan Manifests and Keys\2680010.key" -dir "." -max-downloads 256 -validate

if %errorlevel% neq 0 (
    echo.
    echo [ERROR] Failed to resume depot 2680011. Check your connection and try again.
    echo.
    pause
    exit /b 1
)

echo.
echo [SUCCESS] Depot 2680011 completed successfully!
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