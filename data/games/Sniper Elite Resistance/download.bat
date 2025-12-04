@echo off
chcp 65001 > nul
color 0F
title Sniper Elite Resistance - DepotDownloader
cls

echo ==============================================================================
echo                            SNIPER ELITE RESISTANCE
echo ==============================================================================
echo ------------------------------------------------------------------------------
echo ------------------------------------------------------------------------------
echo Game: Sniper Elite Resistance
echo Language: English
echo App ID: 2169200
echo Generated: 2025-11-07 11:53:55
echo Depots to download: 12
echo ==============================================================================
echo                           STARTING DOWNLOAD...
echo ================================================================================

set "start_time=%time%"
set "total_depots=12"
set "current_depot=0"

echo ------------------------------------------------------------------------------
echo                           DOWNLOADING BASE GAME
echo ------------------------------------------------------------------------------

set /a current_depot+=1
echo [%current_depot%/%total_depots%] Downloading depot 2169201...
.\DepotDownloaderMod\DepotDownloadermod.exe -app 2169200 -depot 2169201 -manifest 7391481385941074802 -manifestfile ".\Sniper Elite Resistance Manifests and Keys\2169201_7391481385941074802.manifest" -depotkeys ".\Sniper Elite Resistance Manifests and Keys\2169200.key" -dir "." -max-downloads 256 -verify-all

set /a current_depot+=1
echo [%current_depot%/%total_depots%] Downloading depot 2169202...
.\DepotDownloaderMod\DepotDownloadermod.exe -app 2169200 -depot 2169202 -manifest 1865254937317479303 -manifestfile ".\Sniper Elite Resistance Manifests and Keys\2169202_1865254937317479303.manifest" -depotkeys ".\Sniper Elite Resistance Manifests and Keys\2169200.key" -dir "." -max-downloads 256 -verify-all

set /a current_depot+=1
echo [%current_depot%/%total_depots%] Downloading depot 2169203...
.\DepotDownloaderMod\DepotDownloadermod.exe -app 2169200 -depot 2169203 -manifest 7139550291347173555 -manifestfile ".\Sniper Elite Resistance Manifests and Keys\2169203_7139550291347173555.manifest" -depotkeys ".\Sniper Elite Resistance Manifests and Keys\2169200.key" -dir "." -max-downloads 256 -verify-all

set /a current_depot+=1
echo [%current_depot%/%total_depots%] Downloading depot 2169204...
.\DepotDownloaderMod\DepotDownloadermod.exe -app 2169200 -depot 2169204 -manifest 372530551937361395 -manifestfile ".\Sniper Elite Resistance Manifests and Keys\2169204_372530551937361395.manifest" -depotkeys ".\Sniper Elite Resistance Manifests and Keys\2169200.key" -dir "." -max-downloads 256 -verify-all

set /a current_depot+=1
echo [%current_depot%/%total_depots%] Downloading depot 2169205...
.\DepotDownloaderMod\DepotDownloadermod.exe -app 2169200 -depot 2169205 -manifest 4461957118771003967 -manifestfile ".\Sniper Elite Resistance Manifests and Keys\2169205_4461957118771003967.manifest" -depotkeys ".\Sniper Elite Resistance Manifests and Keys\2169200.key" -dir "." -max-downloads 256 -verify-all

set /a current_depot+=1
echo [%current_depot%/%total_depots%] Downloading depot 2169206...
.\DepotDownloaderMod\DepotDownloadermod.exe -app 2169200 -depot 2169206 -manifest 1047435328961232841 -manifestfile ".\Sniper Elite Resistance Manifests and Keys\2169206_1047435328961232841.manifest" -depotkeys ".\Sniper Elite Resistance Manifests and Keys\2169200.key" -dir "." -max-downloads 256 -verify-all

set /a current_depot+=1
echo [%current_depot%/%total_depots%] Downloading depot 2169207...
.\DepotDownloaderMod\DepotDownloadermod.exe -app 2169200 -depot 2169207 -manifest 3300678429426280478 -manifestfile ".\Sniper Elite Resistance Manifests and Keys\2169207_3300678429426280478.manifest" -depotkeys ".\Sniper Elite Resistance Manifests and Keys\2169200.key" -dir "." -max-downloads 256 -verify-all

set /a current_depot+=1
echo [%current_depot%/%total_depots%] Downloading depot 2169208...
.\DepotDownloaderMod\DepotDownloadermod.exe -app 2169200 -depot 2169208 -manifest 5843923210413641436 -manifestfile ".\Sniper Elite Resistance Manifests and Keys\2169208_5843923210413641436.manifest" -depotkeys ".\Sniper Elite Resistance Manifests and Keys\2169200.key" -dir "." -max-downloads 256 -verify-all

set /a current_depot+=1
echo [%current_depot%/%total_depots%] Downloading depot 2561520...
.\DepotDownloaderMod\DepotDownloadermod.exe -app 2561520 -depot 2561520 -manifest 4740185705261078409 -manifestfile ".\Sniper Elite Resistance Manifests and Keys\2561520_4740185705261078409.manifest" -depotkeys ".\Sniper Elite Resistance Manifests and Keys\2169200.key" -dir "." -max-downloads 256 -verify-all

set /a current_depot+=1
echo [%current_depot%/%total_depots%] Downloading depot 2729150...
.\DepotDownloaderMod\DepotDownloadermod.exe -app 2729150 -depot 2729150 -manifest 7327088656667926825 -manifestfile ".\Sniper Elite Resistance Manifests and Keys\2729150_7327088656667926825.manifest" -depotkeys ".\Sniper Elite Resistance Manifests and Keys\2169200.key" -dir "." -max-downloads 256 -verify-all

set /a current_depot+=1
echo [%current_depot%/%total_depots%] Downloading depot 2800240...
.\DepotDownloaderMod\DepotDownloadermod.exe -app 2800240 -depot 2800240 -manifest 3684063861755512692 -manifestfile ".\Sniper Elite Resistance Manifests and Keys\2800240_3684063861755512692.manifest" -depotkeys ".\Sniper Elite Resistance Manifests and Keys\2169200.key" -dir "." -max-downloads 256 -verify-all

set /a current_depot+=1
echo [%current_depot%/%total_depots%] Downloading depot 2800250...
.\DepotDownloaderMod\DepotDownloadermod.exe -app 2800250 -depot 2800250 -manifest 1513378400177448501 -manifestfile ".\Sniper Elite Resistance Manifests and Keys\2800250_1513378400177448501.manifest" -depotkeys ".\Sniper Elite Resistance Manifests and Keys\2169200.key" -dir "." -max-downloads 256 -verify-all

echo ==============================================================================
echo                           DOWNLOAD COMPLETED!
echo ==============================================================================
echo All files downloaded to: "Sniper Elite Resistance" folder
echo Total depots processed: %total_depots%
echo ------------------------------------------------------------------------------
echo Download completed successfully! You can now close this window.
echo ------------------------------------------------------------------------------
pause