@echo off
chcp 65001 > nul
color 0F
title Avatar Frontiers of Pandora - DepotDownloader
cls

echo ==============================================================================
echo                            AVATAR FRONTIERS OF PANDORA
echo ==============================================================================
echo ------------------------------------------------------------------------------
echo ------------------------------------------------------------------------------
echo Game: Avatar Frontiers of Pandora
echo Language: English
echo App ID: 2840770
echo Generated: 2025-11-06 17:19:43
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
echo [%current_depot%/%total_depots%] Downloading depot 2840771...
.\DepotDownloaderMod\DepotDownloadermod.exe -app 2840770 -depot 2840771 -manifest 5100049244792637407 -manifestfile ".\Avatar Frontiers of Pandora Manifests and Keys\2840771_5100049244792637407.manifest" -depotkeys ".\Avatar Frontiers of Pandora Manifests and Keys\2840770.key" -dir "." -max-downloads 256 -verify-all

set /a current_depot+=1
echo [%current_depot%/%total_depots%] Downloading depot 3005010...
.\DepotDownloaderMod\DepotDownloadermod.exe -app 3005010 -depot 3005010 -manifest 5961173466485251506 -manifestfile ".\Avatar Frontiers of Pandora Manifests and Keys\3005010_5961173466485251506.manifest" -depotkeys ".\Avatar Frontiers of Pandora Manifests and Keys\2840770.key" -dir "." -max-downloads 256 -verify-all

set /a current_depot+=1
echo [%current_depot%/%total_depots%] Downloading depot 3005000...
.\DepotDownloaderMod\DepotDownloadermod.exe -app 3005000 -depot 3005000 -manifest 7046523940154209847 -manifestfile ".\Avatar Frontiers of Pandora Manifests and Keys\3005000_7046523940154209847.manifest" -depotkeys ".\Avatar Frontiers of Pandora Manifests and Keys\2840770.key" -dir "." -max-downloads 256 -verify-all

echo ==============================================================================
echo                           DOWNLOAD COMPLETED!
echo ==============================================================================
echo All files downloaded to: "Avatar Frontiers of Pandora" folder
echo Total depots processed: %total_depots%
echo ------------------------------------------------------------------------------
echo Download completed successfully! You can now close this window.
echo ------------------------------------------------------------------------------
pause