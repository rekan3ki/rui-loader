@echo off
chcp 65001 > nul
color 0F
title Persona 5 Royal - DepotDownloader RESUME
cls

echo ==============================================================================
echo                       PERSONA 5 ROYAL - RESUME DOWNLOAD
echo ==============================================================================
echo Game: Persona 5 Royal
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
echo [%current_depot%/%total_depots%] Resuming depot 1687951...
echo Validating previously downloaded chunks...
.\DepotDownloaderMod\DepotDownloadermod.exe -app 1687950 -depot 1687951 -manifest 179949564195054526 -manifestfile ".\Persona 5 Royal Manifests and Keys\1687951_179949564195054526.manifest" -depotkeys ".\Persona 5 Royal Manifests and Keys\1687950.key" -dir "." -max-downloads 256 -validate

if %errorlevel% neq 0 (
    echo.
    echo [ERROR] Failed to resume depot 1687951. Check your connection and try again.
    echo.
    pause
    exit /b 1
)

echo.
echo [SUCCESS] Depot 1687951 completed successfully!
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