@echo off
chcp 65001 > nul
color 0F
title Two Point Museum - DepotDownloader
cls

echo ==============================================================================
echo                            TWO POINT MUSEUM
echo ==============================================================================
echo ------------------------------------------------------------------------------
echo ------------------------------------------------------------------------------
echo Game: Two Point Museum
echo Language: English
echo App ID: 2185060
echo Generated: 2025-11-07 11:55:54
echo Depots to download: 4
echo ==============================================================================
echo                           STARTING DOWNLOAD...
echo ================================================================================

set "start_time=%time%"
set "total_depots=4"
set "current_depot=0"

echo ------------------------------------------------------------------------------
echo                           DOWNLOADING BASE GAME
echo ------------------------------------------------------------------------------

set /a current_depot+=1
echo [%current_depot%/%total_depots%] Downloading depot 2185061...
.\DepotDownloaderMod\DepotDownloadermod.exe -app 2185060 -depot 2185061 -manifest 1267816161025891708 -manifestfile ".\Two Point Museum Manifests and Keys\2185061_1267816161025891708.manifest" -depotkeys ".\Two Point Museum Manifests and Keys\2185060.key" -dir "." -max-downloads 256 -verify-all

set /a current_depot+=1
echo [%current_depot%/%total_depots%] Downloading depot 2999841...
.\DepotDownloaderMod\DepotDownloadermod.exe -app 2999840 -depot 2999841 -manifest 3651684413102107260 -manifestfile ".\Two Point Museum Manifests and Keys\2999841_3651684413102107260.manifest" -depotkeys ".\Two Point Museum Manifests and Keys\2185060.key" -dir "." -max-downloads 256 -verify-all

set /a current_depot+=1
echo [%current_depot%/%total_depots%] Downloading depot 2999851...
.\DepotDownloaderMod\DepotDownloadermod.exe -app 2999850 -depot 2999851 -manifest 7616052184433642934 -manifestfile ".\Two Point Museum Manifests and Keys\2999851_7616052184433642934.manifest" -depotkeys ".\Two Point Museum Manifests and Keys\2185060.key" -dir "." -max-downloads 256 -verify-all

set /a current_depot+=1
echo [%current_depot%/%total_depots%] Downloading depot 3592601...
.\DepotDownloaderMod\DepotDownloadermod.exe -app 3592600 -depot 3592601 -manifest 8459172618420428883 -manifestfile ".\Two Point Museum Manifests and Keys\3592601_8459172618420428883.manifest" -depotkeys ".\Two Point Museum Manifests and Keys\2185060.key" -dir "." -max-downloads 256 -verify-all

echo ==============================================================================
echo                           DOWNLOAD COMPLETED!
echo ==============================================================================
echo All files downloaded to: "Two Point Museum" folder
echo Total depots processed: %total_depots%
echo ------------------------------------------------------------------------------
echo Download completed successfully! You can now close this window.
echo ------------------------------------------------------------------------------
pause