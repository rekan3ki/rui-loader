@echo off
chcp 65001 > nul
color 0F
title DOOM The Dark Ages - DepotDownloader
cls

echo ==============================================================================
echo                            DOOM THE DARK AGES
echo ==============================================================================
echo ------------------------------------------------------------------------------
echo ------------------------------------------------------------------------------
echo Game: DOOM The Dark Ages
echo Language: English
echo App ID: 3017860
echo Generated: 2025-11-06 17:22:14
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
echo [%current_depot%/%total_depots%] Downloading depot 3017862...
.\DepotDownloaderMod\DepotDownloadermod.exe -app 3017860 -depot 3017862 -manifest 6394818125548010371 -manifestfile ".\DOOM The Dark Ages Manifests and Keys\3017862_6394818125548010371.manifest" -depotkeys ".\DOOM The Dark Ages Manifests and Keys\3017860.key" -dir "." -max-downloads 256 -verify-all

set /a current_depot+=1
echo [%current_depot%/%total_depots%] Downloading depot 3017863...
.\DepotDownloaderMod\DepotDownloadermod.exe -app 3017860 -depot 3017863 -manifest 7752177482456135655 -manifestfile ".\DOOM The Dark Ages Manifests and Keys\3017863_7752177482456135655.manifest" -depotkeys ".\DOOM The Dark Ages Manifests and Keys\3017860.key" -dir "." -max-downloads 256 -verify-all

set /a current_depot+=1
echo [%current_depot%/%total_depots%] Downloading depot 3017864...
.\DepotDownloaderMod\DepotDownloadermod.exe -app 3017860 -depot 3017864 -manifest 673779864479266742 -manifestfile ".\DOOM The Dark Ages Manifests and Keys\3017864_673779864479266742.manifest" -depotkeys ".\DOOM The Dark Ages Manifests and Keys\3017860.key" -dir "." -max-downloads 256 -verify-all

set /a current_depot+=1
echo [%current_depot%/%total_depots%] Downloading depot 3017865...
.\DepotDownloaderMod\DepotDownloadermod.exe -app 3017860 -depot 3017865 -manifest 9108580810918908470 -manifestfile ".\DOOM The Dark Ages Manifests and Keys\3017865_9108580810918908470.manifest" -depotkeys ".\DOOM The Dark Ages Manifests and Keys\3017860.key" -dir "." -max-downloads 256 -verify-all

set /a current_depot+=1
echo [%current_depot%/%total_depots%] Downloading depot 3017866...
.\DepotDownloaderMod\DepotDownloadermod.exe -app 3017860 -depot 3017866 -manifest 9217731964535062300 -manifestfile ".\DOOM The Dark Ages Manifests and Keys\3017866_9217731964535062300.manifest" -depotkeys ".\DOOM The Dark Ages Manifests and Keys\3017860.key" -dir "." -max-downloads 256 -verify-all

set /a current_depot+=1
echo [%current_depot%/%total_depots%] Downloading depot 3017867...
.\DepotDownloaderMod\DepotDownloadermod.exe -app 3017860 -depot 3017867 -manifest 5456226873220833157 -manifestfile ".\DOOM The Dark Ages Manifests and Keys\3017867_5456226873220833157.manifest" -depotkeys ".\DOOM The Dark Ages Manifests and Keys\3017860.key" -dir "." -max-downloads 256 -verify-all

set /a current_depot+=1
echo [%current_depot%/%total_depots%] Downloading depot 3017868...
.\DepotDownloaderMod\DepotDownloadermod.exe -app 3017860 -depot 3017868 -manifest 803238751598154548 -manifestfile ".\DOOM The Dark Ages Manifests and Keys\3017868_803238751598154548.manifest" -depotkeys ".\DOOM The Dark Ages Manifests and Keys\3017860.key" -dir "." -max-downloads 256 -verify-all

echo ==============================================================================
echo                           DOWNLOAD COMPLETED!
echo ==============================================================================
echo All files downloaded to: "DOOM The Dark Ages" folder
echo Total depots processed: %total_depots%
echo ------------------------------------------------------------------------------
echo Download completed successfully! You can now close this window.
echo ------------------------------------------------------------------------------
pause