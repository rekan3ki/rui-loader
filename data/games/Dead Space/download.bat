@echo off
chcp 65001 > nul
color 0F
title Dead Space - DepotDownloader
cls

echo ==============================================================================
echo                            DEAD SPACE
echo ==============================================================================
echo ------------------------------------------------------------------------------
echo ------------------------------------------------------------------------------
echo Game: Dead Space
echo Language: English
echo App ID: 1693980
echo Generated: 2025-11-06 17:21:20
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
echo [%current_depot%/%total_depots%] Downloading depot 1693981...
.\DepotDownloaderMod\DepotDownloadermod.exe -app 1693980 -depot 1693981 -manifest 1038276949129655019 -manifestfile ".\Dead Space Manifests and Keys\1693981_1038276949129655019.manifest" -depotkeys ".\Dead Space Manifests and Keys\1693980.key" -dir "." -max-downloads 256 -verify-all

echo ==============================================================================
echo                           DOWNLOAD COMPLETED!
echo ==============================================================================
echo All files downloaded to: "Dead Space" folder
echo Total depots processed: %total_depots%
echo ------------------------------------------------------------------------------
echo Download completed successfully! You can now close this window.
echo ------------------------------------------------------------------------------
pause