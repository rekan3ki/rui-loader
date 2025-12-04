@echo off
chcp 65001 > nul
color 0F
title Mortal Kombat 1 - DepotDownloader RESUME
cls

echo ==============================================================================
echo                       MORTAL KOMBAT 1 - RESUME DOWNLOAD
echo ==============================================================================
echo Game: Mortal Kombat 1
echo Depots to download: 7
echo Resume Mode: ENABLED (Validating previously downloaded files)
echo ==============================================================================
echo                           RESUMING DOWNLOAD...
echo ================================================================================

set "start_time=%time%"
set "total_depots=7"
set "current_depot=0"

echo ------------------------------------------------------------------------------
echo                       RESUMING BASE GAME DOWNLOAD (DEPOT 1/7)
echo ------------------------------------------------------------------------------

set /a current_depot+=1
echo [%current_depot%/%total_depots%] Resuming depot 1971874...
echo Validating previously downloaded chunks...
.\DepotDownloaderMod\DepotDownloadermod.exe -app 1971870 -depot 1971874 -manifest 512005367846038723 -manifestfile ".\Mortal Kombat 1 Manifests and Keys\1971874_512005367846038723.manifest" -depotkeys ".\Mortal Kombat 1 Manifests and Keys\1971870.key" -dir "." -max-downloads 256 -validate

if %errorlevel% neq 0 (
    echo.
    echo [ERROR] Failed to resume depot 1971874. Check your connection and try again.
    echo.
    pause
    exit /b 1
)

echo.
echo [SUCCESS] Depot 1971874 completed successfully!
echo.

echo ------------------------------------------------------------------------------
echo                       RESUMING BASE GAME DOWNLOAD (DEPOT 2/7)
echo ------------------------------------------------------------------------------

set /a current_depot+=1
echo [%current_depot%/%total_depots%] Resuming depot 1971875...
echo Validating previously downloaded chunks...
.\DepotDownloaderMod\DepotDownloadermod.exe -app 1971870 -depot 1971875 -manifest 2741683106529194428 -manifestfile ".\Mortal Kombat 1 Manifests and Keys\1971875_2741683106529194428.manifest" -depotkeys ".\Mortal Kombat 1 Manifests and Keys\1971870.key" -dir "." -max-downloads 256 -validate

if %errorlevel% neq 0 (
    echo.
    echo [ERROR] Failed to resume depot 1971875. Check your connection and try again.
    echo.
    pause
    exit /b 1
)

echo.
echo [SUCCESS] Depot 1971875 completed successfully!
echo.

echo ------------------------------------------------------------------------------
echo                       RESUMING BASE GAME DOWNLOAD (DEPOT 3/7)
echo ------------------------------------------------------------------------------

set /a current_depot+=1
echo [%current_depot%/%total_depots%] Resuming depot 1971872...
echo Validating previously downloaded chunks...
.\DepotDownloaderMod\DepotDownloadermod.exe -app 1971870 -depot 1971872 -manifest 8552604172369068290 -manifestfile ".\Mortal Kombat 1 Manifests and Keys\1971872_8552604172369068290.manifest" -depotkeys ".\Mortal Kombat 1 Manifests and Keys\1971870.key" -dir "." -max-downloads 256 -validate

if %errorlevel% neq 0 (
    echo.
    echo [ERROR] Failed to resume depot 1971872. Check your connection and try again.
    echo.
    pause
    exit /b 1
)

echo.
echo [SUCCESS] Depot 1971872 completed successfully!
echo.

echo ------------------------------------------------------------------------------
echo                       RESUMING BASE GAME DOWNLOAD (DEPOT 4/7)
echo ------------------------------------------------------------------------------

set /a current_depot+=1
echo [%current_depot%/%total_depots%] Resuming depot 1971873...
echo Validating previously downloaded chunks...
.\DepotDownloaderMod\DepotDownloadermod.exe -app 1971870 -depot 1971873 -manifest 5676539294652549514 -manifestfile ".\Mortal Kombat 1 Manifests and Keys\1971873_5676539294652549514.manifest" -depotkeys ".\Mortal Kombat 1 Manifests and Keys\1971870.key" -dir "." -max-downloads 256 -validate

if %errorlevel% neq 0 (
    echo.
    echo [ERROR] Failed to resume depot 1971873. Check your connection and try again.
    echo.
    pause
    exit /b 1
)

echo.
echo [SUCCESS] Depot 1971873 completed successfully!
echo.

echo ------------------------------------------------------------------------------
echo                       RESUMING BASE GAME DOWNLOAD (DEPOT 5/7)
echo ------------------------------------------------------------------------------

set /a current_depot+=1
echo [%current_depot%/%total_depots%] Resuming depot 2615191...
echo Validating previously downloaded chunks...
.\DepotDownloaderMod\DepotDownloadermod.exe -app 2615190 -depot 2615191 -manifest 4363176120155839027 -manifestfile ".\Mortal Kombat 1 Manifests and Keys\2615191_4363176120155839027.manifest" -depotkeys ".\Mortal Kombat 1 Manifests and Keys\1971870.key" -dir "." -max-downloads 256 -validate

if %errorlevel% neq 0 (
    echo.
    echo [ERROR] Failed to resume depot 2615191. Check your connection and try again.
    echo.
    pause
    exit /b 1
)

echo.
echo [SUCCESS] Depot 2615191 completed successfully!
echo.

echo ------------------------------------------------------------------------------
echo                       RESUMING BASE GAME DOWNLOAD (DEPOT 6/7)
echo ------------------------------------------------------------------------------

set /a current_depot+=1
echo [%current_depot%/%total_depots%] Resuming depot 3168021...
echo Validating previously downloaded chunks...
.\DepotDownloaderMod\DepotDownloadermod.exe -app 3168020 -depot 3168021 -manifest 9095445288428088123 -manifestfile ".\Mortal Kombat 1 Manifests and Keys\3168021_9095445288428088123.manifest" -depotkeys ".\Mortal Kombat 1 Manifests and Keys\1971870.key" -dir "." -max-downloads 256 -validate

if %errorlevel% neq 0 (
    echo.
    echo [ERROR] Failed to resume depot 3168021. Check your connection and try again.
    echo.
    pause
    exit /b 1
)

echo.
echo [SUCCESS] Depot 3168021 completed successfully!
echo.

echo ------------------------------------------------------------------------------
echo                       RESUMING BASE GAME DOWNLOAD (DEPOT 7/7)
echo ------------------------------------------------------------------------------

set /a current_depot+=1
echo [%current_depot%/%total_depots%] Resuming depot 3233541...
echo Validating previously downloaded chunks...
.\DepotDownloaderMod\DepotDownloadermod.exe -app 3233540 -depot 3233541 -manifest 9120506324946519517 -manifestfile ".\Mortal Kombat 1 Manifests and Keys\3233541_9120506324946519517.manifest" -depotkeys ".\Mortal Kombat 1 Manifests and Keys\1971870.key" -dir "." -max-downloads 256 -validate

if %errorlevel% neq 0 (
    echo.
    echo [ERROR] Failed to resume depot 3233541. Check your connection and try again.
    echo.
    pause
    exit /b 1
)

echo.
echo [SUCCESS] Depot 3233541 completed successfully!
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