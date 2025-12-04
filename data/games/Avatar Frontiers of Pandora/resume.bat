@echo off
chcp 65001 > nul
color 0F
title Avatar Frontiers of Pandora - DepotDownloader RESUME
cls

echo ==============================================================================
echo                       AVATAR FRONTIERS OF PANDORA - RESUME DOWNLOAD
echo ==============================================================================
echo Game: Avatar Frontiers of Pandora
echo Depots to download: 3
echo Resume Mode: ENABLED (Validating previously downloaded files)
echo ==============================================================================
echo                           RESUMING DOWNLOAD...
echo ================================================================================

set "start_time=%time%"
set "total_depots=3"
set "current_depot=0"

echo ------------------------------------------------------------------------------
echo                       RESUMING BASE GAME DOWNLOAD (DEPOT 1/3)
echo ------------------------------------------------------------------------------

set /a current_depot+=1
echo [%current_depot%/%total_depots%] Resuming depot 2840771...
echo Validating previously downloaded chunks...
.\DepotDownloaderMod\DepotDownloadermod.exe -app 2840770 -depot 2840771 -manifest 5100049244792637407 -manifestfile ".\Avatar Frontiers of Pandora Manifests and Keys\2840771_5100049244792637407.manifest" -depotkeys ".\Avatar Frontiers of Pandora Manifests and Keys\2840770.key" -dir "." -max-downloads 256 -validate

if %errorlevel% neq 0 (
    echo.
    echo [ERROR] Failed to resume depot 2840771. Check your connection and try again.
    echo.
    pause
    exit /b 1
)

echo.
echo [SUCCESS] Depot 2840771 completed successfully!
echo.

echo ------------------------------------------------------------------------------
echo                       RESUMING BASE GAME DOWNLOAD (DEPOT 2/3)
echo ------------------------------------------------------------------------------

set /a current_depot+=1
echo [%current_depot%/%total_depots%] Resuming depot 3005010...
echo Validating previously downloaded chunks...
.\DepotDownloaderMod\DepotDownloadermod.exe -app 3005010 -depot 3005010 -manifest 5961173466485251506 -manifestfile ".\Avatar Frontiers of Pandora Manifests and Keys\3005010_5961173466485251506.manifest" -depotkeys ".\Avatar Frontiers of Pandora Manifests and Keys\2840770.key" -dir "." -max-downloads 256 -validate

if %errorlevel% neq 0 (
    echo.
    echo [ERROR] Failed to resume depot 3005010. Check your connection and try again.
    echo.
    pause
    exit /b 1
)

echo.
echo [SUCCESS] Depot 3005010 completed successfully!
echo.

echo ------------------------------------------------------------------------------
echo                       RESUMING BASE GAME DOWNLOAD (DEPOT 3/3)
echo ------------------------------------------------------------------------------

set /a current_depot+=1
echo [%current_depot%/%total_depots%] Resuming depot 3005000...
echo Validating previously downloaded chunks...
.\DepotDownloaderMod\DepotDownloadermod.exe -app 3005000 -depot 3005000 -manifest 7046523940154209847 -manifestfile ".\Avatar Frontiers of Pandora Manifests and Keys\3005000_7046523940154209847.manifest" -depotkeys ".\Avatar Frontiers of Pandora Manifests and Keys\2840770.key" -dir "." -max-downloads 256 -validate

if %errorlevel% neq 0 (
    echo.
    echo [ERROR] Failed to resume depot 3005000. Check your connection and try again.
    echo.
    pause
    exit /b 1
)

echo.
echo [SUCCESS] Depot 3005000 completed successfully!
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