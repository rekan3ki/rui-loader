@echo off
chcp 65001 > nul
color 0F
title Mortal Kombat 1 - DepotDownloader
cls

echo ==============================================================================
echo                            MORTAL KOMBAT 1
echo ==============================================================================
echo ------------------------------------------------------------------------------
echo ------------------------------------------------------------------------------
echo Game: Mortal Kombat 1
echo Language: English
echo App ID: 1971870
echo Generated: 2025-11-06 17:34:49
echo Depots to download: 7
echo ==============================================================================
echo                           STARTING DOWNLOAD...
echo ================================================================================

set "start_time=%time%"
set "total_depots=7"
set "current_depot=0"

echo ------------------------------------------------------------------------------
echo                           DOWNLOADING BASE GAME
echo ------------------------------------------------------------------------------

set /a current_depot+=1
echo [%current_depot%/%total_depots%] Downloading depot 1971874...
.\DepotDownloaderMod\DepotDownloadermod.exe -app 1971870 -depot 1971874 -manifest 512005367846038723 -manifestfile ".\Mortal Kombat 1 Manifests and Keys\1971874_512005367846038723.manifest" -depotkeys ".\Mortal Kombat 1 Manifests and Keys\1971870.key" -dir "." -max-downloads 256 -verify-all

set /a current_depot+=1
echo [%current_depot%/%total_depots%] Downloading depot 1971875...
.\DepotDownloaderMod\DepotDownloadermod.exe -app 1971870 -depot 1971875 -manifest 2741683106529194428 -manifestfile ".\Mortal Kombat 1 Manifests and Keys\1971875_2741683106529194428.manifest" -depotkeys ".\Mortal Kombat 1 Manifests and Keys\1971870.key" -dir "." -max-downloads 256 -verify-all

set /a current_depot+=1
echo [%current_depot%/%total_depots%] Downloading depot 1971872...
.\DepotDownloaderMod\DepotDownloadermod.exe -app 1971870 -depot 1971872 -manifest 8552604172369068290 -manifestfile ".\Mortal Kombat 1 Manifests and Keys\1971872_8552604172369068290.manifest" -depotkeys ".\Mortal Kombat 1 Manifests and Keys\1971870.key" -dir "." -max-downloads 256 -verify-all

set /a current_depot+=1
echo [%current_depot%/%total_depots%] Downloading depot 1971873...
.\DepotDownloaderMod\DepotDownloadermod.exe -app 1971870 -depot 1971873 -manifest 5676539294652549514 -manifestfile ".\Mortal Kombat 1 Manifests and Keys\1971873_5676539294652549514.manifest" -depotkeys ".\Mortal Kombat 1 Manifests and Keys\1971870.key" -dir "." -max-downloads 256 -verify-all

set /a current_depot+=1
echo [%current_depot%/%total_depots%] Downloading depot 2615191...
.\DepotDownloaderMod\DepotDownloadermod.exe -app 2615190 -depot 2615191 -manifest 4363176120155839027 -manifestfile ".\Mortal Kombat 1 Manifests and Keys\2615191_4363176120155839027.manifest" -depotkeys ".\Mortal Kombat 1 Manifests and Keys\1971870.key" -dir "." -max-downloads 256 -verify-all

set /a current_depot+=1
echo [%current_depot%/%total_depots%] Downloading depot 3168021...
.\DepotDownloaderMod\DepotDownloadermod.exe -app 3168020 -depot 3168021 -manifest 9095445288428088123 -manifestfile ".\Mortal Kombat 1 Manifests and Keys\3168021_9095445288428088123.manifest" -depotkeys ".\Mortal Kombat 1 Manifests and Keys\1971870.key" -dir "." -max-downloads 256 -verify-all

set /a current_depot+=1
echo [%current_depot%/%total_depots%] Downloading depot 3233541...
.\DepotDownloaderMod\DepotDownloadermod.exe -app 3233540 -depot 3233541 -manifest 9120506324946519517 -manifestfile ".\Mortal Kombat 1 Manifests and Keys\3233541_9120506324946519517.manifest" -depotkeys ".\Mortal Kombat 1 Manifests and Keys\1971870.key" -dir "." -max-downloads 256 -verify-all

echo ==============================================================================
echo                           DOWNLOAD COMPLETED!
echo ==============================================================================
echo All files downloaded to: "Mortal Kombat 1" folder
echo Total depots processed: %total_depots%
echo ------------------------------------------------------------------------------
echo Download completed successfully! You can now close this window.
echo ------------------------------------------------------------------------------
pause