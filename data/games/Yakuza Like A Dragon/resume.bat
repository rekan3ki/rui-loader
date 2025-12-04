@echo off
chcp 65001 > nul
color 0F
title Yakuza Like a Dragon - DepotDownloader RESUME
cls

echo ==============================================================================
echo                       YAKUZA LIKE A DRAGON - RESUME DOWNLOAD
echo ==============================================================================
echo Game: Yakuza Like a Dragon
echo Depots to download: 5
echo Resume Mode: ENABLED (Validating previously downloaded files)
echo ==============================================================================
echo                           RESUMING DOWNLOAD...
echo ================================================================================

set "start_time=%time%"
set "total_depots=5"
set "current_depot=0"

echo ------------------------------------------------------------------------------
echo                       RESUMING BASE GAME DOWNLOAD (DEPOT 1/5)
echo ------------------------------------------------------------------------------

set /a current_depot+=1
echo [%current_depot%/%total_depots%] Resuming depot 1235141...
echo Validating previously downloaded chunks...
.\DepotDownloaderMod\DepotDownloadermod.exe -app 1235140 -depot 1235141 -manifest 3982950176934774134 -manifestfile ".\Yakuza Like a Dragon Manifests and Keys\1235141_3982950176934774134.manifest" -depotkeys ".\Yakuza Like a Dragon Manifests and Keys\1235140.key" -dir "." -max-downloads 256 -validate

if %errorlevel% neq 0 (
    echo.
    echo [ERROR] Failed to resume depot 1235141. Check your connection and try again.
    echo.
    pause
    exit /b 1
)

echo.
echo [SUCCESS] Depot 1235141 completed successfully!
echo.

echo ------------------------------------------------------------------------------
echo                       RESUMING BASE GAME DOWNLOAD (DEPOT 2/5)
echo ------------------------------------------------------------------------------

set /a current_depot+=1
echo [%current_depot%/%total_depots%] Resuming depot 1235142...
echo Validating previously downloaded chunks...
.\DepotDownloaderMod\DepotDownloadermod.exe -app 1235140 -depot 1235142 -manifest 8959182181353937372 -manifestfile ".\Yakuza Like a Dragon Manifests and Keys\1235142_8959182181353937372.manifest" -depotkeys ".\Yakuza Like a Dragon Manifests and Keys\1235140.key" -dir "." -max-downloads 256 -validate

if %errorlevel% neq 0 (
    echo.
    echo [ERROR] Failed to resume depot 1235142. Check your connection and try again.
    echo.
    pause
    exit /b 1
)

echo.
echo [SUCCESS] Depot 1235142 completed successfully!
echo.

echo ------------------------------------------------------------------------------
echo                       RESUMING BASE GAME DOWNLOAD (DEPOT 3/5)
echo ------------------------------------------------------------------------------

set /a current_depot+=1
echo [%current_depot%/%total_depots%] Resuming depot 1235143...
echo Validating previously downloaded chunks...
.\DepotDownloaderMod\DepotDownloadermod.exe -app 1235140 -depot 1235143 -manifest 1840815612651255441 -manifestfile ".\Yakuza Like a Dragon Manifests and Keys\1235143_1840815612651255441.manifest" -depotkeys ".\Yakuza Like a Dragon Manifests and Keys\1235140.key" -dir "." -max-downloads 256 -validate

if %errorlevel% neq 0 (
    echo.
    echo [ERROR] Failed to resume depot 1235143. Check your connection and try again.
    echo.
    pause
    exit /b 1
)

echo.
echo [SUCCESS] Depot 1235143 completed successfully!
echo.

echo ------------------------------------------------------------------------------
echo                       RESUMING BASE GAME DOWNLOAD (DEPOT 4/5)
echo ------------------------------------------------------------------------------

set /a current_depot+=1
echo [%current_depot%/%total_depots%] Resuming depot 1235144...
echo Validating previously downloaded chunks...
.\DepotDownloaderMod\DepotDownloadermod.exe -app 1235140 -depot 1235144 -manifest 7375459467269071379 -manifestfile ".\Yakuza Like a Dragon Manifests and Keys\1235144_7375459467269071379.manifest" -depotkeys ".\Yakuza Like a Dragon Manifests and Keys\1235140.key" -dir "." -max-downloads 256 -validate

if %errorlevel% neq 0 (
    echo.
    echo [ERROR] Failed to resume depot 1235144. Check your connection and try again.
    echo.
    pause
    exit /b 1
)

echo.
echo [SUCCESS] Depot 1235144 completed successfully!
echo.

echo ------------------------------------------------------------------------------
echo                       RESUMING BASE GAME DOWNLOAD (DEPOT 5/5)
echo ------------------------------------------------------------------------------

set /a current_depot+=1
echo [%current_depot%/%total_depots%] Resuming depot 1261270...
echo Validating previously downloaded chunks...
.\DepotDownloaderMod\DepotDownloadermod.exe -app 1235140 -depot 1261270 -manifest 7461417204167038136 -manifestfile ".\Yakuza Like a Dragon Manifests and Keys\1261270_7461417204167038136.manifest" -depotkeys ".\Yakuza Like a Dragon Manifests and Keys\1235140.key" -dir "." -max-downloads 256 -validate

if %errorlevel% neq 0 (
    echo.
    echo [ERROR] Failed to resume depot 1261270. Check your connection and try again.
    echo.
    pause
    exit /b 1
)

echo.
echo [SUCCESS] Depot 1261270 completed successfully!
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