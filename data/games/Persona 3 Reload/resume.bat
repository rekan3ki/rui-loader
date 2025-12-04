@echo off
chcp 65001 > nul
color 0F
title Persona 3 Reload - DepotDownloader RESUME
cls

echo ==============================================================================
echo                       PERSONA 3 RELOAD - RESUME DOWNLOAD
echo ==============================================================================
echo Game: Persona 3 Reload
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
echo [%current_depot%/%total_depots%] Resuming depot 2161701...
echo Validating previously downloaded chunks...
.\DepotDownloaderMod\DepotDownloadermod.exe -app 2161700 -depot 2161701 -manifest 4936421241860440773 -manifestfile ".\Persona 3 Reload Manifests and Keys\2161701_4936421241860440773.manifest" -depotkeys ".\Persona 3 Reload Manifests and Keys\2161700.key" -dir "." -max-downloads 256 -validate

if %errorlevel% neq 0 (
    echo.
    echo [ERROR] Failed to resume depot 2161701. Check your connection and try again.
    echo.
    pause
    exit /b 1
)

echo.
echo [SUCCESS] Depot 2161701 completed successfully!
echo.

echo ------------------------------------------------------------------------------
echo                       RESUMING BASE GAME DOWNLOAD (DEPOT 2/3)
echo ------------------------------------------------------------------------------

set /a current_depot+=1
echo [%current_depot%/%total_depots%] Resuming depot 2517301...
echo Validating previously downloaded chunks...
.\DepotDownloaderMod\DepotDownloadermod.exe -app 2161700 -depot 2517301 -manifest 3773053318858649709 -manifestfile ".\Persona 3 Reload Manifests and Keys\2517301_3773053318858649709.manifest" -depotkeys ".\Persona 3 Reload Manifests and Keys\2161700.key" -dir "." -max-downloads 256 -validate

if %errorlevel% neq 0 (
    echo.
    echo [ERROR] Failed to resume depot 2517301. Check your connection and try again.
    echo.
    pause
    exit /b 1
)

echo.
echo [SUCCESS] Depot 2517301 completed successfully!
echo.

echo ------------------------------------------------------------------------------
echo                       RESUMING BASE GAME DOWNLOAD (DEPOT 3/3)
echo ------------------------------------------------------------------------------

set /a current_depot+=1
echo [%current_depot%/%total_depots%] Resuming depot 2517311...
echo Validating previously downloaded chunks...
.\DepotDownloaderMod\DepotDownloadermod.exe -app 2161700 -depot 2517311 -manifest 1834178036232257674 -manifestfile ".\Persona 3 Reload Manifests and Keys\2517311_1834178036232257674.manifest" -depotkeys ".\Persona 3 Reload Manifests and Keys\2161700.key" -dir "." -max-downloads 256 -validate

if %errorlevel% neq 0 (
    echo.
    echo [ERROR] Failed to resume depot 2517311. Check your connection and try again.
    echo.
    pause
    exit /b 1
)

echo.
echo [SUCCESS] Depot 2517311 completed successfully!
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