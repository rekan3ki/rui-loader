@echo off
chcp 65001 > nul
color 0F
title Like a Dragon Pirate Yakuza in Hawaii - DepotDownloader RESUME
cls

echo ==============================================================================
echo                       LIKE A DRAGON PIRATE YAKUZA IN HAWAII - RESUME DOWNLOAD
echo ==============================================================================
echo Game: Like a Dragon Pirate Yakuza in Hawaii
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
echo [%current_depot%/%total_depots%] Resuming depot 3061811...
echo Validating previously downloaded chunks...
.\DepotDownloaderMod\DepotDownloadermod.exe -app 3061810 -depot 3061811 -manifest 5791590246311215097 -manifestfile ".\Like a Dragon Pirate Yakuza in Hawaii Manifests and Keys\3061811_5791590246311215097.manifest" -depotkeys ".\Like a Dragon Pirate Yakuza in Hawaii Manifests and Keys\3061810.key" -dir "." -max-downloads 256 -validate

if %errorlevel% neq 0 (
    echo.
    echo [ERROR] Failed to resume depot 3061811. Check your connection and try again.
    echo.
    pause
    exit /b 1
)

echo.
echo [SUCCESS] Depot 3061811 completed successfully!
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