@echo off
chcp 437 > nul
color 0F
title Borderlands 4
cls

echo ==============================================================================
echo                            BORDERLANDS 4
echo ==============================================================================
echo Game: Borderlands 4
echo Language: English
echo App ID: 1285190
echo Generated: 2025-10-17 14:52:07
echo Depots to download: 3
echo ==============================================================================
echo                           STARTING DOWNLOAD...
echo ================================================================================

set "start_time=%time%"
set "total_depots=3"
set "current_depot=0"

echo ------------------------------------------------------------------------------
echo                           DOWNLOADING BASE GAME
echo ------------------------------------------------------------------------------

set /a current_depot+=1
echo [%current_depot%/%total_depots%] Downloading depot 1285191...
.\DepotDownloaderMod\DepotDownloadermod.exe -app 1285190 -depot 1285191 -manifest 2767950350186643622 -manifestfile ".\Borderlands 4 Manifests and Keys\1285191_2767950350186643622.manifest" -depotkeys ".\Borderlands 4 Manifests and Keys\1285190.key" -dir "." -max-downloads 256 -verify-all

set /a current_depot+=1
echo [%current_depot%/%total_depots%] Downloading depot 1285192...
.\DepotDownloaderMod\DepotDownloadermod.exe -app 1285190 -depot 1285192 -manifest 254503843005183082 -manifestfile ".\Borderlands 4 Manifests and Keys\1285192_254503843005183082.manifest" -depotkeys ".\Borderlands 4 Manifests and Keys\1285190.key" -dir "." -max-downloads 256 -verify-all

set /a current_depot+=1
echo [%current_depot%/%total_depots%] Downloading depot 2013850...
.\DepotDownloaderMod\DepotDownloadermod.exe -app 1285190 -depot 2013850 -manifest 1885194575676718061 -manifestfile ".\Borderlands 4 Manifests and Keys\2013850_1885194575676718061.manifest" -depotkeys ".\Borderlands 4 Manifests and Keys\1285190.key" -dir "." -max-downloads 256 -verify-all

echo ==============================================================================
echo                           DOWNLOAD COMPLETED!
echo ==============================================================================
echo All files downloaded to: "Borderlands 4" folder
echo Total depots processed: %total_depots%
echo ------------------------------------------------------------------------------
echo Download completed successfully! You can now close this window.
echo ------------------------------------------------------------------------------
pause