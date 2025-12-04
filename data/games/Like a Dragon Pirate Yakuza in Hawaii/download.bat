@echo off
chcp 65001 > nul
color 0F
title Like a Dragon Pirate Yakuza in Hawaii - DepotDownloader
cls

echo ==============================================================================
echo                            LIKE A DRAGON PIRATE YAKUZA IN HAWAII
echo ==============================================================================
echo ------------------------------------------------------------------------------
echo ------------------------------------------------------------------------------
echo Game: Like a Dragon Pirate Yakuza in Hawaii
echo Language: English
echo App ID: 3061810
echo Generated: 2025-11-06 17:25:56
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
echo [%current_depot%/%total_depots%] Downloading depot 3061811...
.\DepotDownloaderMod\DepotDownloadermod.exe -app 3061810 -depot 3061811 -manifest 5791590246311215097 -manifestfile ".\Like a Dragon Pirate Yakuza in Hawaii Manifests and Keys\3061811_5791590246311215097.manifest" -depotkeys ".\Like a Dragon Pirate Yakuza in Hawaii Manifests and Keys\3061810.key" -dir "." -max-downloads 256 -verify-all

echo ==============================================================================
echo                           DOWNLOAD COMPLETED!
echo ==============================================================================
echo All files downloaded to: "Like a Dragon Pirate Yakuza in Hawaii" folder
echo Total depots processed: %total_depots%
echo ------------------------------------------------------------------------------
echo Download completed successfully! You can now close this window.
echo ------------------------------------------------------------------------------
pause