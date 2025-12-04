@echo off
chcp 65001 > nul
color 0F
title Demon Slayer -Kimetsu no Yaiba- The Hinokami Chronicles 2 - DepotDownloader RESUME
cls

echo ==============================================================================
echo                       DEMON SLAYER -KIMETSU NO YAIBA- THE HINOKAMI CHRONICLES 2 - RESUME DOWNLOAD
echo ==============================================================================
echo Game: Demon Slayer -Kimetsu no Yaiba- The Hinokami Chronicles 2
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
echo [%current_depot%/%total_depots%] Resuming depot 2928601...
echo Validating previously downloaded chunks...
.\DepotDownloaderMod\DepotDownloadermod.exe -app 2928600 -depot 2928601 -manifest 4248132800500052764 -manifestfile ".\Demon Slayer -Kimetsu no Yaiba- The Hinokami Chronicles 2 Manifests and Keys\2928601_4248132800500052764.manifest" -depotkeys ".\Demon Slayer -Kimetsu no Yaiba- The Hinokami Chronicles 2 Manifests and Keys\2928600.key" -dir "." -max-downloads 256 -validate

if %errorlevel% neq 0 (
    echo.
    echo [ERROR] Failed to resume depot 2928601. Check your connection and try again.
    echo.
    pause
    exit /b 1
)

echo.
echo [SUCCESS] Depot 2928601 completed successfully!
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