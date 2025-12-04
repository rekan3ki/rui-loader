@echo off
chcp 65001 > nul
color 0F
title Street Fighter 6 - DepotDownloader
cls

echo ==============================================================================
echo                            STREET FIGHTER 6
echo ==============================================================================
echo ------------------------------------------------------------------------------
echo ------------------------------------------------------------------------------
echo Game: Street Fighter 6
echo Language: English
echo App ID: 1364780
echo Generated: 2025-11-07 11:54:44
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
echo [%current_depot%/%total_depots%] Downloading depot 1364781...
.\DepotDownloaderMod\DepotDownloadermod.exe -app 1364780 -depot 1364781 -manifest 6211905053271283958 -manifestfile ".\Street Fighter 6 Manifests and Keys\1364781_6211905053271283958.manifest" -depotkeys ".\Street Fighter 6 Manifests and Keys\1364780.key" -dir "." -max-downloads 256 -verify-all

set /a current_depot+=1
echo [%current_depot%/%total_depots%] Downloading depot 1792750...
.\DepotDownloaderMod\DepotDownloadermod.exe -app 1364780 -depot 1792750 -manifest 6884397220835125615 -manifestfile ".\Street Fighter 6 Manifests and Keys\1792750_6884397220835125615.manifest" -depotkeys ".\Street Fighter 6 Manifests and Keys\1364780.key" -dir "." -max-downloads 256 -verify-all

set /a current_depot+=1
echo [%current_depot%/%total_depots%] Downloading depot 1792751...
.\DepotDownloaderMod\DepotDownloadermod.exe -app 1364780 -depot 1792751 -manifest 6646887922669668163 -manifestfile ".\Street Fighter 6 Manifests and Keys\1792751_6646887922669668163.manifest" -depotkeys ".\Street Fighter 6 Manifests and Keys\1364780.key" -dir "." -max-downloads 256 -verify-all

echo ==============================================================================
echo                           DOWNLOAD COMPLETED!
echo ==============================================================================
echo All files downloaded to: "Street Fighter 6" folder
echo Total depots processed: %total_depots%
echo ------------------------------------------------------------------------------
echo Download completed successfully! You can now close this window.
echo ------------------------------------------------------------------------------
pause