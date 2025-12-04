@echo off
chcp 65001 > nul
color 0F
title Assassins Creed Shadows - DepotDownloader RESUME
cls

echo ==============================================================================
echo                       ASSASSINS CREED SHADOWS - RESUME DOWNLOAD
echo ==============================================================================
echo Game: Assassins Creed Shadows
echo Depots to download: 2
echo Resume Mode: ENABLED (Validating previously downloaded files)
echo ==============================================================================
echo                           RESUMING DOWNLOAD...
echo ================================================================================

set "start_time=%time%"
set "total_depots=2"
set "current_depot=0"

echo ------------------------------------------------------------------------------
echo                       RESUMING BASE GAME DOWNLOAD (DEPOT 1/2)
echo ------------------------------------------------------------------------------

set /a current_depot+=1
echo [%current_depot%/%total_depots%] Resuming depot 3159331...
echo Validating previously downloaded chunks...
.\DepotDownloaderMod\DepotDownloadermod.exe -app 3159330 -depot 3159331 -manifest 967242306582424749 -manifestfile ".\Assassins Creed Shadows Manifests and Keys\3159331_967242306582424749.manifest" -depotkeys ".\Assassins Creed Shadows Manifests and Keys\3159330.key" -dir "." -max-downloads 256 -validate

if %errorlevel% neq 0 (
    echo.
    echo [ERROR] Failed to resume depot 3159331. Check your connection and try again.
    echo.
    pause
    exit /b 1
)

echo.
echo [SUCCESS] Depot 3159331 completed successfully!
echo.

echo ------------------------------------------------------------------------------
echo                       RESUMING BASE GAME DOWNLOAD (DEPOT 2/2)
echo ------------------------------------------------------------------------------

set /a current_depot+=1
echo [%current_depot%/%total_depots%] Resuming depot 3159339...
echo Validating previously downloaded chunks...
.\DepotDownloaderMod\DepotDownloadermod.exe -app 3362550 -depot 3159339 -manifest 3308285352979351070 -manifestfile ".\Assassins Creed Shadows Manifests and Keys\3159339_3308285352979351070.manifest" -depotkeys ".\Assassins Creed Shadows Manifests and Keys\3159330.key" -dir "." -max-downloads 256 -validate

if %errorlevel% neq 0 (
    echo.
    echo [ERROR] Failed to resume depot 3159339. Check your connection and try again.
    echo.
    pause
    exit /b 1
)

echo.
echo [SUCCESS] Depot 3159339 completed successfully!
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