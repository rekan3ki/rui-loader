@echo off
chcp 65001 > nul
color 0F
title Sid Meiers Civilization VII - DepotDownloader RESUME
cls

echo ==============================================================================
echo                       SID MEIERS CIVILIZATION VII - RESUME DOWNLOAD
echo ==============================================================================
echo Game: Sid Meiers Civilization VII
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
echo [%current_depot%/%total_depots%] Resuming depot 1295661...
echo Validating previously downloaded chunks...
.\DepotDownloaderMod\DepotDownloadermod.exe -app 1295660 -depot 1295661 -manifest 3530980511854962355 -manifestfile ".\Sid Meiers Civilization VII Manifests and Keys\1295661_3530980511854962355.manifest" -depotkeys ".\Sid Meiers Civilization VII Manifests and Keys\1295660.key" -dir "." -max-downloads 256 -validate

if %errorlevel% neq 0 (
    echo.
    echo [ERROR] Failed to resume depot 1295661. Check your connection and try again.
    echo.
    pause
    exit /b 1
)

echo.
echo [SUCCESS] Depot 1295661 completed successfully!
echo.

echo ------------------------------------------------------------------------------
echo                       RESUMING BASE GAME DOWNLOAD (DEPOT 2/2)
echo ------------------------------------------------------------------------------

set /a current_depot+=1
echo [%current_depot%/%total_depots%] Resuming depot 1295662...
echo Validating previously downloaded chunks...
.\DepotDownloaderMod\DepotDownloadermod.exe -app 1295660 -depot 1295662 -manifest 2533108998337644356 -manifestfile ".\Sid Meiers Civilization VII Manifests and Keys\1295662_2533108998337644356.manifest" -depotkeys ".\Sid Meiers Civilization VII Manifests and Keys\1295660.key" -dir "." -max-downloads 256 -validate

if %errorlevel% neq 0 (
    echo.
    echo [ERROR] Failed to resume depot 1295662. Check your connection and try again.
    echo.
    pause
    exit /b 1
)

echo.
echo [SUCCESS] Depot 1295662 completed successfully!
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