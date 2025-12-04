@echo off
chcp 65001 > nul
color 0F
title Demon Slayer -Kimetsu no Yaiba- The Hinokami Chronicles - DepotDownloader
cls

echo ==============================================================================
echo                            DEMON SLAYER -KIMETSU NO YAIBA- THE HINOKAMI CHRONICLES
echo ==============================================================================
echo ------------------------------------------------------------------------------
echo ------------------------------------------------------------------------------
echo Game: Demon Slayer -Kimetsu no Yaiba- The Hinokami Chronicles
echo Language: English
echo App ID: 1490890
echo Generated: 2025-11-06 17:21:45
echo Depots to download: 8
echo ==============================================================================
echo                           STARTING DOWNLOAD...
echo ================================================================================

set "start_time=%time%"
set "total_depots=8"
set "current_depot=0"

echo ------------------------------------------------------------------------------
echo                           DOWNLOADING BASE GAME
echo ------------------------------------------------------------------------------

set /a current_depot+=1
echo [%current_depot%/%total_depots%] Downloading depot 1490891...
.\DepotDownloaderMod\DepotDownloadermod.exe -app 1490890 -depot 1490891 -manifest 5461881877101609571 -manifestfile ".\Demon Slayer -Kimetsu no Yaiba- The Hinokami Chronicles Manifests and Keys\1490891_5461881877101609571.manifest" -depotkeys ".\Demon Slayer -Kimetsu no Yaiba- The Hinokami Chronicles Manifests and Keys\1490890.key" -dir "." -max-downloads 256 -verify-all

set /a current_depot+=1
echo [%current_depot%/%total_depots%] Downloading depot 1490893...
.\DepotDownloaderMod\DepotDownloadermod.exe -app 1490890 -depot 1490893 -manifest 4406597967236367118 -manifestfile ".\Demon Slayer -Kimetsu no Yaiba- The Hinokami Chronicles Manifests and Keys\1490893_4406597967236367118.manifest" -depotkeys ".\Demon Slayer -Kimetsu no Yaiba- The Hinokami Chronicles Manifests and Keys\1490890.key" -dir "." -max-downloads 256 -verify-all

set /a current_depot+=1
echo [%current_depot%/%total_depots%] Downloading depot 1490894...
.\DepotDownloaderMod\DepotDownloadermod.exe -app 1490890 -depot 1490894 -manifest 665670508748928184 -manifestfile ".\Demon Slayer -Kimetsu no Yaiba- The Hinokami Chronicles Manifests and Keys\1490894_665670508748928184.manifest" -depotkeys ".\Demon Slayer -Kimetsu no Yaiba- The Hinokami Chronicles Manifests and Keys\1490890.key" -dir "." -max-downloads 256 -verify-all

set /a current_depot+=1
echo [%current_depot%/%total_depots%] Downloading depot 1760470...
.\DepotDownloaderMod\DepotDownloadermod.exe -app 1760470 -depot 1760470 -manifest 6120140167597313636 -manifestfile ".\Demon Slayer -Kimetsu no Yaiba- The Hinokami Chronicles Manifests and Keys\1760470_6120140167597313636.manifest" -depotkeys ".\Demon Slayer -Kimetsu no Yaiba- The Hinokami Chronicles Manifests and Keys\1490890.key" -dir "." -max-downloads 256 -verify-all

set /a current_depot+=1
echo [%current_depot%/%total_depots%] Downloading depot 1760480...
.\DepotDownloaderMod\DepotDownloadermod.exe -app 1760480 -depot 1760480 -manifest 43390555700542166 -manifestfile ".\Demon Slayer -Kimetsu no Yaiba- The Hinokami Chronicles Manifests and Keys\1760480_43390555700542166.manifest" -depotkeys ".\Demon Slayer -Kimetsu no Yaiba- The Hinokami Chronicles Manifests and Keys\1490890.key" -dir "." -max-downloads 256 -verify-all

set /a current_depot+=1
echo [%current_depot%/%total_depots%] Downloading depot 1760490...
.\DepotDownloaderMod\DepotDownloadermod.exe -app 1760490 -depot 1760490 -manifest 3433579119073246874 -manifestfile ".\Demon Slayer -Kimetsu no Yaiba- The Hinokami Chronicles Manifests and Keys\1760490_3433579119073246874.manifest" -depotkeys ".\Demon Slayer -Kimetsu no Yaiba- The Hinokami Chronicles Manifests and Keys\1490890.key" -dir "." -max-downloads 256 -verify-all

set /a current_depot+=1
echo [%current_depot%/%total_depots%] Downloading depot 1760500...
.\DepotDownloaderMod\DepotDownloadermod.exe -app 1760500 -depot 1760500 -manifest 694275557452403358 -manifestfile ".\Demon Slayer -Kimetsu no Yaiba- The Hinokami Chronicles Manifests and Keys\1760500_694275557452403358.manifest" -depotkeys ".\Demon Slayer -Kimetsu no Yaiba- The Hinokami Chronicles Manifests and Keys\1490890.key" -dir "." -max-downloads 256 -verify-all

set /a current_depot+=1
echo [%current_depot%/%total_depots%] Downloading depot 1777140...
.\DepotDownloaderMod\DepotDownloadermod.exe -app 1490890 -depot 1777140 -manifest 7087906368917676089 -manifestfile ".\Demon Slayer -Kimetsu no Yaiba- The Hinokami Chronicles Manifests and Keys\1777140_7087906368917676089.manifest" -depotkeys ".\Demon Slayer -Kimetsu no Yaiba- The Hinokami Chronicles Manifests and Keys\1490890.key" -dir "." -max-downloads 256 -verify-all

echo ==============================================================================
echo                           DOWNLOAD COMPLETED!
echo ==============================================================================
echo All files downloaded to: "Demon Slayer -Kimetsu no Yaiba- The Hinokami Chronicles" folder
echo Total depots processed: %total_depots%
echo ------------------------------------------------------------------------------
echo Download completed successfully! You can now close this window.
echo ------------------------------------------------------------------------------
pause