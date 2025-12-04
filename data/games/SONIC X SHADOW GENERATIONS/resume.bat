@echo off
chcp 65001 > nul
color 0F
title SONIC X SHADOW GENERATIONS - DepotDownloader RESUME
cls

echo ==============================================================================
echo                       SONIC X SHADOW GENERATIONS - RESUME DOWNLOAD
echo ==============================================================================
echo Game: SONIC X SHADOW GENERATIONS
echo Depots to download: 6
echo Resume Mode: ENABLED (Validating previously downloaded files)
echo ==============================================================================
echo                           RESUMING DOWNLOAD...
echo ================================================================================

set "start_time=%time%"
set "total_depots=6"
set "current_depot=0"

echo ------------------------------------------------------------------------------
echo                       RESUMING BASE GAME DOWNLOAD (DEPOT 1/6)
echo ------------------------------------------------------------------------------

set /a current_depot+=1
echo [%current_depot%/%total_depots%] Resuming depot 2513281...
echo Validating previously downloaded chunks...
.\DepotDownloaderMod\DepotDownloadermod.exe -app 2513280 -depot 2513281 -manifest 1703635842257284304 -manifestfile ".\SONIC X SHADOW GENERATIONS Manifests and Keys\2513281_1703635842257284304.manifest" -depotkeys ".\SONIC X SHADOW GENERATIONS Manifests and Keys\2513280.key" -dir "." -max-downloads 256 -validate

if %errorlevel% neq 0 (
    echo.
    echo [ERROR] Failed to resume depot 2513281. Check your connection and try again.
    echo.
    pause
    exit /b 1
)

echo.
echo [SUCCESS] Depot 2513281 completed successfully!
echo.

echo ------------------------------------------------------------------------------
echo                       RESUMING BASE GAME DOWNLOAD (DEPOT 2/6)
echo ------------------------------------------------------------------------------

set /a current_depot+=1
echo [%current_depot%/%total_depots%] Resuming depot 2909780...
echo Validating previously downloaded chunks...
.\DepotDownloaderMod\DepotDownloadermod.exe -app 2513280 -depot 2909780 -manifest 285399313089519721 -manifestfile ".\SONIC X SHADOW GENERATIONS Manifests and Keys\2909780_285399313089519721.manifest" -depotkeys ".\SONIC X SHADOW GENERATIONS Manifests and Keys\2513280.key" -dir "." -max-downloads 256 -validate

if %errorlevel% neq 0 (
    echo.
    echo [ERROR] Failed to resume depot 2909780. Check your connection and try again.
    echo.
    pause
    exit /b 1
)

echo.
echo [SUCCESS] Depot 2909780 completed successfully!
echo.

echo ------------------------------------------------------------------------------
echo                       RESUMING BASE GAME DOWNLOAD (DEPOT 3/6)
echo ------------------------------------------------------------------------------

set /a current_depot+=1
echo [%current_depot%/%total_depots%] Resuming depot 2909770...
echo Validating previously downloaded chunks...
.\DepotDownloaderMod\DepotDownloadermod.exe -app 2513280 -depot 2909770 -manifest 695039940894575473 -manifestfile ".\SONIC X SHADOW GENERATIONS Manifests and Keys\2909770_695039940894575473.manifest" -depotkeys ".\SONIC X SHADOW GENERATIONS Manifests and Keys\2513280.key" -dir "." -max-downloads 256 -validate

if %errorlevel% neq 0 (
    echo.
    echo [ERROR] Failed to resume depot 2909770. Check your connection and try again.
    echo.
    pause
    exit /b 1
)

echo.
echo [SUCCESS] Depot 2909770 completed successfully!
echo.

echo ------------------------------------------------------------------------------
echo                       RESUMING BASE GAME DOWNLOAD (DEPOT 4/6)
echo ------------------------------------------------------------------------------

set /a current_depot+=1
echo [%current_depot%/%total_depots%] Resuming depot 2999160...
echo Validating previously downloaded chunks...
.\DepotDownloaderMod\DepotDownloadermod.exe -app 2513280 -depot 2999160 -manifest 2720286388307715047 -manifestfile ".\SONIC X SHADOW GENERATIONS Manifests and Keys\2999160_2720286388307715047.manifest" -depotkeys ".\SONIC X SHADOW GENERATIONS Manifests and Keys\2513280.key" -dir "." -max-downloads 256 -validate

if %errorlevel% neq 0 (
    echo.
    echo [ERROR] Failed to resume depot 2999160. Check your connection and try again.
    echo.
    pause
    exit /b 1
)

echo.
echo [SUCCESS] Depot 2999160 completed successfully!
echo.

echo ------------------------------------------------------------------------------
echo                       RESUMING BASE GAME DOWNLOAD (DEPOT 5/6)
echo ------------------------------------------------------------------------------

set /a current_depot+=1
echo [%current_depot%/%total_depots%] Resuming depot 2983600...
echo Validating previously downloaded chunks...
.\DepotDownloaderMod\DepotDownloadermod.exe -app 2513280 -depot 2983600 -manifest 8754653703603695391 -manifestfile ".\SONIC X SHADOW GENERATIONS Manifests and Keys\2983600_8754653703603695391.manifest" -depotkeys ".\SONIC X SHADOW GENERATIONS Manifests and Keys\2513280.key" -dir "." -max-downloads 256 -validate

if %errorlevel% neq 0 (
    echo.
    echo [ERROR] Failed to resume depot 2983600. Check your connection and try again.
    echo.
    pause
    exit /b 1
)

echo.
echo [SUCCESS] Depot 2983600 completed successfully!
echo.

echo ------------------------------------------------------------------------------
echo                       RESUMING BASE GAME DOWNLOAD (DEPOT 6/6)
echo ------------------------------------------------------------------------------

set /a current_depot+=1
echo [%current_depot%/%total_depots%] Resuming depot 2909790...
echo Validating previously downloaded chunks...
.\DepotDownloaderMod\DepotDownloadermod.exe -app 2513280 -depot 2909790 -manifest 811552346142850245 -manifestfile ".\SONIC X SHADOW GENERATIONS Manifests and Keys\2909790_811552346142850245.manifest" -depotkeys ".\SONIC X SHADOW GENERATIONS Manifests and Keys\2513280.key" -dir "." -max-downloads 256 -validate

if %errorlevel% neq 0 (
    echo.
    echo [ERROR] Failed to resume depot 2909790. Check your connection and try again.
    echo.
    pause
    exit /b 1
)

echo.
echo [SUCCESS] Depot 2909790 completed successfully!
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