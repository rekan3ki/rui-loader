@echo off
chcp 65001 > nul
color 0F
title Yakuza Like a Dragon - DepotDownloader
cls

echo ==============================================================================
echo                            YAKUZA LIKE A DRAGON
echo ==============================================================================
echo ------------------------------------------------------------------------------
echo ------------------------------------------------------------------------------
echo Game: Yakuza Like a Dragon
echo Language: English
echo App ID: 1235140
echo Generated: 2025-11-07 11:56:04
echo Depots to download: 5
echo ==============================================================================
echo                           STARTING DOWNLOAD...
echo ================================================================================

set "start_time=%time%"
set "total_depots=5"
set "current_depot=0"

echo ------------------------------------------------------------------------------
echo                           DOWNLOADING BASE GAME
echo ------------------------------------------------------------------------------

set /a current_depot+=1
echo [%current_depot%/%total_depots%] Downloading depot 1235141...
.\DepotDownloaderMod\DepotDownloadermod.exe -app 1235140 -depot 1235141 -manifest 3982950176934774134 -manifestfile ".\Yakuza Like a Dragon Manifests and Keys\1235141_3982950176934774134.manifest" -depotkeys ".\Yakuza Like a Dragon Manifests and Keys\1235140.key" -dir "." -max-downloads 256 -verify-all

set /a current_depot+=1
echo [%current_depot%/%total_depots%] Downloading depot 1235142...
.\DepotDownloaderMod\DepotDownloadermod.exe -app 1235140 -depot 1235142 -manifest 8959182181353937372 -manifestfile ".\Yakuza Like a Dragon Manifests and Keys\1235142_8959182181353937372.manifest" -depotkeys ".\Yakuza Like a Dragon Manifests and Keys\1235140.key" -dir "." -max-downloads 256 -verify-all

set /a current_depot+=1
echo [%current_depot%/%total_depots%] Downloading depot 1235143...
.\DepotDownloaderMod\DepotDownloadermod.exe -app 1235140 -depot 1235143 -manifest 1840815612651255441 -manifestfile ".\Yakuza Like a Dragon Manifests and Keys\1235143_1840815612651255441.manifest" -depotkeys ".\Yakuza Like a Dragon Manifests and Keys\1235140.key" -dir "." -max-downloads 256 -verify-all

set /a current_depot+=1
echo [%current_depot%/%total_depots%] Downloading depot 1235144...
.\DepotDownloaderMod\DepotDownloadermod.exe -app 1235140 -depot 1235144 -manifest 7375459467269071379 -manifestfile ".\Yakuza Like a Dragon Manifests and Keys\1235144_7375459467269071379.manifest" -depotkeys ".\Yakuza Like a Dragon Manifests and Keys\1235140.key" -dir "." -max-downloads 256 -verify-all

set /a current_depot+=1
echo [%current_depot%/%total_depots%] Downloading depot 1261270...
.\DepotDownloaderMod\DepotDownloadermod.exe -app 1235140 -depot 1261270 -manifest 7461417204167038136 -manifestfile ".\Yakuza Like a Dragon Manifests and Keys\1261270_7461417204167038136.manifest" -depotkeys ".\Yakuza Like a Dragon Manifests and Keys\1235140.key" -dir "." -max-downloads 256 -verify-all

echo ==============================================================================
echo                           DOWNLOAD COMPLETED!
echo ==============================================================================
echo All files downloaded to: "Yakuza Like a Dragon" folder
echo Total depots processed: %total_depots%
echo ------------------------------------------------------------------------------
echo Download completed successfully! You can now close this window.
echo ------------------------------------------------------------------------------
pause