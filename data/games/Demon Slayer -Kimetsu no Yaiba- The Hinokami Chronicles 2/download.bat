@echo off
chcp 437 > nul
color 0F
title Demon Slayer -Kimetsu no Yaiba- The Hinokami Chronicles 2
cls

echo ==============================================================================
echo                            DEMON SLAYER -KIMETSU NO YAIBA- THE HINOKAMI CHRONICLES 2
echo ==============================================================================
echo Game: Demon Slayer -Kimetsu no Yaiba- The Hinokami Chronicles 2
echo Language: English
echo App ID: 2928600
echo Generated: 2025-10-17 14:44:22
echo Depots to download: 1
echo ==============================================================================
echo                           STARTING DOWNLOAD...
echo ================================================================================

set "start_time=%time%"
set "total_depots=1"
set "current_depot=0"

echo ------------------------------------------------------------------------------
echo                           DOWNLOADING BASE GAME
echo ------------------------------------------------------------------------------

set /a current_depot+=1
echo [%current_depot%/%total_depots%] Downloading depot 2928601...
.\DepotDownloaderMod\DepotDownloadermod.exe -app 2928600 -depot 2928601 -manifest 4248132800500052764 -manifestfile ".\Demon Slayer -Kimetsu no Yaiba- The Hinokami Chronicles 2 Manifests and Keys\2928601_4248132800500052764.manifest" -depotkeys ".\Demon Slayer -Kimetsu no Yaiba- The Hinokami Chronicles 2 Manifests and Keys\2928600.key" -dir "." -max-downloads 256 -verify-all

echo ==============================================================================
echo                           DOWNLOAD COMPLETED!
echo ==============================================================================
echo All files downloaded to: "Demon Slayer -Kimetsu no Yaiba- The Hinokami Chronicles 2" folder
echo Total depots processed: %total_depots%
echo ------------------------------------------------------------------------------
echo Download completed successfully! You can now close this window.
echo ------------------------------------------------------------------------------
pause