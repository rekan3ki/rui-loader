@echo off
chcp 65001 > nul
color 0F
title Demon Slayer -Kimetsu no Yaiba- The Hinokami Chronicles - DepotDownloader RESUME
cls

echo ==============================================================================
echo                       DEMON SLAYER -KIMETSU NO YAIBA- THE HINOKAMI CHRONICLES - RESUME DOWNLOAD
echo ==============================================================================
echo Game: Demon Slayer -Kimetsu no Yaiba- The Hinokami Chronicles
echo Depots to download: 8
echo Resume Mode: ENABLED (Validating previously downloaded files)
echo ==============================================================================
echo                           RESUMING DOWNLOAD...
echo ================================================================================

set "start_time=%time%"
set "total_depots=8"
set "current_depot=0"

echo ------------------------------------------------------------------------------
echo                       RESUMING BASE GAME DOWNLOAD (DEPOT 1/8)
echo ------------------------------------------------------------------------------

set /a current_depot+=1
echo [%current_depot%/%total_depots%] Resuming depot 1490891...
echo Validating previously downloaded chunks...
.\DepotDownloaderMod\DepotDownloadermod.exe -app 1490890 -depot 1490891 -manifest 5461881877101609571 -manifestfile ".\Demon Slayer -Kimetsu no Yaiba- The Hinokami Chronicles Manifests and Keys\1490891_5461881877101609571.manifest" -depotkeys ".\Demon Slayer -Kimetsu no Yaiba- The Hinokami Chronicles Manifests and Keys\1490890.key" -dir "." -max-downloads 256 -validate

if %errorlevel% neq 0 (
    echo.
    echo [ERROR] Failed to resume depot 1490891. Check your connection and try again.
    echo.
    pause
    exit /b 1
)

echo.
echo [SUCCESS] Depot 1490891 completed successfully!
echo.

echo ------------------------------------------------------------------------------
echo                       RESUMING BASE GAME DOWNLOAD (DEPOT 2/8)
echo ------------------------------------------------------------------------------

set /a current_depot+=1
echo [%current_depot%/%total_depots%] Resuming depot 1490893...
echo Validating previously downloaded chunks...
.\DepotDownloaderMod\DepotDownloadermod.exe -app 1490890 -depot 1490893 -manifest 4406597967236367118 -manifestfile ".\Demon Slayer -Kimetsu no Yaiba- The Hinokami Chronicles Manifests and Keys\1490893_4406597967236367118.manifest" -depotkeys ".\Demon Slayer -Kimetsu no Yaiba- The Hinokami Chronicles Manifests and Keys\1490890.key" -dir "." -max-downloads 256 -validate

if %errorlevel% neq 0 (
    echo.
    echo [ERROR] Failed to resume depot 1490893. Check your connection and try again.
    echo.
    pause
    exit /b 1
)

echo.
echo [SUCCESS] Depot 1490893 completed successfully!
echo.

echo ------------------------------------------------------------------------------
echo                       RESUMING BASE GAME DOWNLOAD (DEPOT 3/8)
echo ------------------------------------------------------------------------------

set /a current_depot+=1
echo [%current_depot%/%total_depots%] Resuming depot 1490894...
echo Validating previously downloaded chunks...
.\DepotDownloaderMod\DepotDownloadermod.exe -app 1490890 -depot 1490894 -manifest 665670508748928184 -manifestfile ".\Demon Slayer -Kimetsu no Yaiba- The Hinokami Chronicles Manifests and Keys\1490894_665670508748928184.manifest" -depotkeys ".\Demon Slayer -Kimetsu no Yaiba- The Hinokami Chronicles Manifests and Keys\1490890.key" -dir "." -max-downloads 256 -validate

if %errorlevel% neq 0 (
    echo.
    echo [ERROR] Failed to resume depot 1490894. Check your connection and try again.
    echo.
    pause
    exit /b 1
)

echo.
echo [SUCCESS] Depot 1490894 completed successfully!
echo.

echo ------------------------------------------------------------------------------
echo                       RESUMING BASE GAME DOWNLOAD (DEPOT 4/8)
echo ------------------------------------------------------------------------------

set /a current_depot+=1
echo [%current_depot%/%total_depots%] Resuming depot 1760470...
echo Validating previously downloaded chunks...
.\DepotDownloaderMod\DepotDownloadermod.exe -app 1760470 -depot 1760470 -manifest 6120140167597313636 -manifestfile ".\Demon Slayer -Kimetsu no Yaiba- The Hinokami Chronicles Manifests and Keys\1760470_6120140167597313636.manifest" -depotkeys ".\Demon Slayer -Kimetsu no Yaiba- The Hinokami Chronicles Manifests and Keys\1490890.key" -dir "." -max-downloads 256 -validate

if %errorlevel% neq 0 (
    echo.
    echo [ERROR] Failed to resume depot 1760470. Check your connection and try again.
    echo.
    pause
    exit /b 1
)

echo.
echo [SUCCESS] Depot 1760470 completed successfully!
echo.

echo ------------------------------------------------------------------------------
echo                       RESUMING BASE GAME DOWNLOAD (DEPOT 5/8)
echo ------------------------------------------------------------------------------

set /a current_depot+=1
echo [%current_depot%/%total_depots%] Resuming depot 1760480...
echo Validating previously downloaded chunks...
.\DepotDownloaderMod\DepotDownloadermod.exe -app 1760480 -depot 1760480 -manifest 43390555700542166 -manifestfile ".\Demon Slayer -Kimetsu no Yaiba- The Hinokami Chronicles Manifests and Keys\1760480_43390555700542166.manifest" -depotkeys ".\Demon Slayer -Kimetsu no Yaiba- The Hinokami Chronicles Manifests and Keys\1490890.key" -dir "." -max-downloads 256 -validate

if %errorlevel% neq 0 (
    echo.
    echo [ERROR] Failed to resume depot 1760480. Check your connection and try again.
    echo.
    pause
    exit /b 1
)

echo.
echo [SUCCESS] Depot 1760480 completed successfully!
echo.

echo ------------------------------------------------------------------------------
echo                       RESUMING BASE GAME DOWNLOAD (DEPOT 6/8)
echo ------------------------------------------------------------------------------

set /a current_depot+=1
echo [%current_depot%/%total_depots%] Resuming depot 1760490...
echo Validating previously downloaded chunks...
.\DepotDownloaderMod\DepotDownloadermod.exe -app 1760490 -depot 1760490 -manifest 3433579119073246874 -manifestfile ".\Demon Slayer -Kimetsu no Yaiba- The Hinokami Chronicles Manifests and Keys\1760490_3433579119073246874.manifest" -depotkeys ".\Demon Slayer -Kimetsu no Yaiba- The Hinokami Chronicles Manifests and Keys\1490890.key" -dir "." -max-downloads 256 -validate

if %errorlevel% neq 0 (
    echo.
    echo [ERROR] Failed to resume depot 1760490. Check your connection and try again.
    echo.
    pause
    exit /b 1
)

echo.
echo [SUCCESS] Depot 1760490 completed successfully!
echo.

echo ------------------------------------------------------------------------------
echo                       RESUMING BASE GAME DOWNLOAD (DEPOT 7/8)
echo ------------------------------------------------------------------------------

set /a current_depot+=1
echo [%current_depot%/%total_depots%] Resuming depot 1760500...
echo Validating previously downloaded chunks...
.\DepotDownloaderMod\DepotDownloadermod.exe -app 1760500 -depot 1760500 -manifest 694275557452403358 -manifestfile ".\Demon Slayer -Kimetsu no Yaiba- The Hinokami Chronicles Manifests and Keys\1760500_694275557452403358.manifest" -depotkeys ".\Demon Slayer -Kimetsu no Yaiba- The Hinokami Chronicles Manifests and Keys\1490890.key" -dir "." -max-downloads 256 -validate

if %errorlevel% neq 0 (
    echo.
    echo [ERROR] Failed to resume depot 1760500. Check your connection and try again.
    echo.
    pause
    exit /b 1
)

echo.
echo [SUCCESS] Depot 1760500 completed successfully!
echo.

echo ------------------------------------------------------------------------------
echo                       RESUMING BASE GAME DOWNLOAD (DEPOT 8/8)
echo ------------------------------------------------------------------------------

set /a current_depot+=1
echo [%current_depot%/%total_depots%] Resuming depot 1777140...
echo Validating previously downloaded chunks...
.\DepotDownloaderMod\DepotDownloadermod.exe -app 1490890 -depot 1777140 -manifest 7087906368917676089 -manifestfile ".\Demon Slayer -Kimetsu no Yaiba- The Hinokami Chronicles Manifests and Keys\1777140_7087906368917676089.manifest" -depotkeys ".\Demon Slayer -Kimetsu no Yaiba- The Hinokami Chronicles Manifests and Keys\1490890.key" -dir "." -max-downloads 256 -validate

if %errorlevel% neq 0 (
    echo.
    echo [ERROR] Failed to resume depot 1777140. Check your connection and try again.
    echo.
    pause
    exit /b 1
)

echo.
echo [SUCCESS] Depot 1777140 completed successfully!
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