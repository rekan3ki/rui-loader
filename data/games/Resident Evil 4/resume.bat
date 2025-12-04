@echo off
chcp 65001 > nul
color 0F
title Resident Evil 4 - DepotDownloader RESUME
cls

echo ==============================================================================
echo                       RESIDENT EVIL 4 - RESUME DOWNLOAD
echo ==============================================================================
echo Game: Resident Evil 4
echo Depots to download: 29
echo Resume Mode: ENABLED (Validating previously downloaded files)
echo ==============================================================================
echo                           RESUMING DOWNLOAD...
echo ================================================================================

set "start_time=%time%"
set "total_depots=29"
set "current_depot=0"

echo ------------------------------------------------------------------------------
echo                       RESUMING BASE GAME DOWNLOAD (DEPOT 1/29)
echo ------------------------------------------------------------------------------

set /a current_depot+=1
echo [%current_depot%/%total_depots%] Resuming depot 2050651...
echo Validating previously downloaded chunks...
.\DepotDownloaderMod\DepotDownloadermod.exe -app 2050650 -depot 2050651 -manifest 542357299209751671 -manifestfile ".\Resident Evil 4 Manifests and Keys\2050651_542357299209751671.manifest" -depotkeys ".\Resident Evil 4 Manifests and Keys\2050650.key" -dir "." -max-downloads 256 -validate

if %errorlevel% neq 0 (
    echo.
    echo [ERROR] Failed to resume depot 2050651. Check your connection and try again.
    echo.
    pause
    exit /b 1
)

echo.
echo [SUCCESS] Depot 2050651 completed successfully!
echo.

echo ------------------------------------------------------------------------------
echo                       RESUMING BASE GAME DOWNLOAD (DEPOT 2/29)
echo ------------------------------------------------------------------------------

set /a current_depot+=1
echo [%current_depot%/%total_depots%] Resuming depot 2050653...
echo Validating previously downloaded chunks...
.\DepotDownloaderMod\DepotDownloadermod.exe -app 2050650 -depot 2050653 -manifest 7108738021112316256 -manifestfile ".\Resident Evil 4 Manifests and Keys\2050653_7108738021112316256.manifest" -depotkeys ".\Resident Evil 4 Manifests and Keys\2050650.key" -dir "." -max-downloads 256 -validate

if %errorlevel% neq 0 (
    echo.
    echo [ERROR] Failed to resume depot 2050653. Check your connection and try again.
    echo.
    pause
    exit /b 1
)

echo.
echo [SUCCESS] Depot 2050653 completed successfully!
echo.

echo ------------------------------------------------------------------------------
echo                       RESUMING BASE GAME DOWNLOAD (DEPOT 3/29)
echo ------------------------------------------------------------------------------

set /a current_depot+=1
echo [%current_depot%/%total_depots%] Resuming depot 2109300...
echo Validating previously downloaded chunks...
.\DepotDownloaderMod\DepotDownloadermod.exe -app 2109300 -depot 2109300 -manifest 5618180671040197314 -manifestfile ".\Resident Evil 4 Manifests and Keys\2109300_5618180671040197314.manifest" -depotkeys ".\Resident Evil 4 Manifests and Keys\2050650.key" -dir "." -max-downloads 256 -validate

if %errorlevel% neq 0 (
    echo.
    echo [ERROR] Failed to resume depot 2109300. Check your connection and try again.
    echo.
    pause
    exit /b 1
)

echo.
echo [SUCCESS] Depot 2109300 completed successfully!
echo.

echo ------------------------------------------------------------------------------
echo                       RESUMING BASE GAME DOWNLOAD (DEPOT 4/29)
echo ------------------------------------------------------------------------------

set /a current_depot+=1
echo [%current_depot%/%total_depots%] Resuming depot 2109301...
echo Validating previously downloaded chunks...
.\DepotDownloaderMod\DepotDownloadermod.exe -app 2109301 -depot 2109301 -manifest 360070119915724610 -manifestfile ".\Resident Evil 4 Manifests and Keys\2109301_360070119915724610.manifest" -depotkeys ".\Resident Evil 4 Manifests and Keys\2050650.key" -dir "." -max-downloads 256 -validate

if %errorlevel% neq 0 (
    echo.
    echo [ERROR] Failed to resume depot 2109301. Check your connection and try again.
    echo.
    pause
    exit /b 1
)

echo.
echo [SUCCESS] Depot 2109301 completed successfully!
echo.

echo ------------------------------------------------------------------------------
echo                       RESUMING BASE GAME DOWNLOAD (DEPOT 5/29)
echo ------------------------------------------------------------------------------

set /a current_depot+=1
echo [%current_depot%/%total_depots%] Resuming depot 2109303...
echo Validating previously downloaded chunks...
.\DepotDownloaderMod\DepotDownloadermod.exe -app 2109303 -depot 2109303 -manifest 9166301326971889287 -manifestfile ".\Resident Evil 4 Manifests and Keys\2109303_9166301326971889287.manifest" -depotkeys ".\Resident Evil 4 Manifests and Keys\2050650.key" -dir "." -max-downloads 256 -validate

if %errorlevel% neq 0 (
    echo.
    echo [ERROR] Failed to resume depot 2109303. Check your connection and try again.
    echo.
    pause
    exit /b 1
)

echo.
echo [SUCCESS] Depot 2109303 completed successfully!
echo.

echo ------------------------------------------------------------------------------
echo                       RESUMING BASE GAME DOWNLOAD (DEPOT 6/29)
echo ------------------------------------------------------------------------------

set /a current_depot+=1
echo [%current_depot%/%total_depots%] Resuming depot 2109304...
echo Validating previously downloaded chunks...
.\DepotDownloaderMod\DepotDownloadermod.exe -app 2109304 -depot 2109304 -manifest 382218590876545051 -manifestfile ".\Resident Evil 4 Manifests and Keys\2109304_382218590876545051.manifest" -depotkeys ".\Resident Evil 4 Manifests and Keys\2050650.key" -dir "." -max-downloads 256 -validate

if %errorlevel% neq 0 (
    echo.
    echo [ERROR] Failed to resume depot 2109304. Check your connection and try again.
    echo.
    pause
    exit /b 1
)

echo.
echo [SUCCESS] Depot 2109304 completed successfully!
echo.

echo ------------------------------------------------------------------------------
echo                       RESUMING BASE GAME DOWNLOAD (DEPOT 7/29)
echo ------------------------------------------------------------------------------

set /a current_depot+=1
echo [%current_depot%/%total_depots%] Resuming depot 2109305...
echo Validating previously downloaded chunks...
.\DepotDownloaderMod\DepotDownloadermod.exe -app 2109305 -depot 2109305 -manifest 8874053015552356169 -manifestfile ".\Resident Evil 4 Manifests and Keys\2109305_8874053015552356169.manifest" -depotkeys ".\Resident Evil 4 Manifests and Keys\2050650.key" -dir "." -max-downloads 256 -validate

if %errorlevel% neq 0 (
    echo.
    echo [ERROR] Failed to resume depot 2109305. Check your connection and try again.
    echo.
    pause
    exit /b 1
)

echo.
echo [SUCCESS] Depot 2109305 completed successfully!
echo.

echo ------------------------------------------------------------------------------
echo                       RESUMING BASE GAME DOWNLOAD (DEPOT 8/29)
echo ------------------------------------------------------------------------------

set /a current_depot+=1
echo [%current_depot%/%total_depots%] Resuming depot 2109306...
echo Validating previously downloaded chunks...
.\DepotDownloaderMod\DepotDownloadermod.exe -app 2109306 -depot 2109306 -manifest 6308526370650425368 -manifestfile ".\Resident Evil 4 Manifests and Keys\2109306_6308526370650425368.manifest" -depotkeys ".\Resident Evil 4 Manifests and Keys\2050650.key" -dir "." -max-downloads 256 -validate

if %errorlevel% neq 0 (
    echo.
    echo [ERROR] Failed to resume depot 2109306. Check your connection and try again.
    echo.
    pause
    exit /b 1
)

echo.
echo [SUCCESS] Depot 2109306 completed successfully!
echo.

echo ------------------------------------------------------------------------------
echo                       RESUMING BASE GAME DOWNLOAD (DEPOT 9/29)
echo ------------------------------------------------------------------------------

set /a current_depot+=1
echo [%current_depot%/%total_depots%] Resuming depot 2109307...
echo Validating previously downloaded chunks...
.\DepotDownloaderMod\DepotDownloadermod.exe -app 2109307 -depot 2109307 -manifest 5310837729215635277 -manifestfile ".\Resident Evil 4 Manifests and Keys\2109307_5310837729215635277.manifest" -depotkeys ".\Resident Evil 4 Manifests and Keys\2050650.key" -dir "." -max-downloads 256 -validate

if %errorlevel% neq 0 (
    echo.
    echo [ERROR] Failed to resume depot 2109307. Check your connection and try again.
    echo.
    pause
    exit /b 1
)

echo.
echo [SUCCESS] Depot 2109307 completed successfully!
echo.

echo ------------------------------------------------------------------------------
echo                       RESUMING BASE GAME DOWNLOAD (DEPOT 10/29)
echo ------------------------------------------------------------------------------

set /a current_depot+=1
echo [%current_depot%/%total_depots%] Resuming depot 2109308...
echo Validating previously downloaded chunks...
.\DepotDownloaderMod\DepotDownloadermod.exe -app 2109308 -depot 2109308 -manifest 964709411673088664 -manifestfile ".\Resident Evil 4 Manifests and Keys\2109308_964709411673088664.manifest" -depotkeys ".\Resident Evil 4 Manifests and Keys\2050650.key" -dir "." -max-downloads 256 -validate

if %errorlevel% neq 0 (
    echo.
    echo [ERROR] Failed to resume depot 2109308. Check your connection and try again.
    echo.
    pause
    exit /b 1
)

echo.
echo [SUCCESS] Depot 2109308 completed successfully!
echo.

echo ------------------------------------------------------------------------------
echo                       RESUMING BASE GAME DOWNLOAD (DEPOT 11/29)
echo ------------------------------------------------------------------------------

set /a current_depot+=1
echo [%current_depot%/%total_depots%] Resuming depot 2109309...
echo Validating previously downloaded chunks...
.\DepotDownloaderMod\DepotDownloadermod.exe -app 2109309 -depot 2109309 -manifest 2339425891140016912 -manifestfile ".\Resident Evil 4 Manifests and Keys\2109309_2339425891140016912.manifest" -depotkeys ".\Resident Evil 4 Manifests and Keys\2050650.key" -dir "." -max-downloads 256 -validate

if %errorlevel% neq 0 (
    echo.
    echo [ERROR] Failed to resume depot 2109309. Check your connection and try again.
    echo.
    pause
    exit /b 1
)

echo.
echo [SUCCESS] Depot 2109309 completed successfully!
echo.

echo ------------------------------------------------------------------------------
echo                       RESUMING BASE GAME DOWNLOAD (DEPOT 12/29)
echo ------------------------------------------------------------------------------

set /a current_depot+=1
echo [%current_depot%/%total_depots%] Resuming depot 2109310...
echo Validating previously downloaded chunks...
.\DepotDownloaderMod\DepotDownloadermod.exe -app 2109310 -depot 2109310 -manifest 6423275757951298947 -manifestfile ".\Resident Evil 4 Manifests and Keys\2109310_6423275757951298947.manifest" -depotkeys ".\Resident Evil 4 Manifests and Keys\2050650.key" -dir "." -max-downloads 256 -validate

if %errorlevel% neq 0 (
    echo.
    echo [ERROR] Failed to resume depot 2109310. Check your connection and try again.
    echo.
    pause
    exit /b 1
)

echo.
echo [SUCCESS] Depot 2109310 completed successfully!
echo.

echo ------------------------------------------------------------------------------
echo                       RESUMING BASE GAME DOWNLOAD (DEPOT 13/29)
echo ------------------------------------------------------------------------------

set /a current_depot+=1
echo [%current_depot%/%total_depots%] Resuming depot 2109311...
echo Validating previously downloaded chunks...
.\DepotDownloaderMod\DepotDownloadermod.exe -app 2109311 -depot 2109311 -manifest 2476102622028354069 -manifestfile ".\Resident Evil 4 Manifests and Keys\2109311_2476102622028354069.manifest" -depotkeys ".\Resident Evil 4 Manifests and Keys\2050650.key" -dir "." -max-downloads 256 -validate

if %errorlevel% neq 0 (
    echo.
    echo [ERROR] Failed to resume depot 2109311. Check your connection and try again.
    echo.
    pause
    exit /b 1
)

echo.
echo [SUCCESS] Depot 2109311 completed successfully!
echo.

echo ------------------------------------------------------------------------------
echo                       RESUMING BASE GAME DOWNLOAD (DEPOT 14/29)
echo ------------------------------------------------------------------------------

set /a current_depot+=1
echo [%current_depot%/%total_depots%] Resuming depot 2109312...
echo Validating previously downloaded chunks...
.\DepotDownloaderMod\DepotDownloadermod.exe -app 2109312 -depot 2109312 -manifest 7506742638748304084 -manifestfile ".\Resident Evil 4 Manifests and Keys\2109312_7506742638748304084.manifest" -depotkeys ".\Resident Evil 4 Manifests and Keys\2050650.key" -dir "." -max-downloads 256 -validate

if %errorlevel% neq 0 (
    echo.
    echo [ERROR] Failed to resume depot 2109312. Check your connection and try again.
    echo.
    pause
    exit /b 1
)

echo.
echo [SUCCESS] Depot 2109312 completed successfully!
echo.

echo ------------------------------------------------------------------------------
echo                       RESUMING BASE GAME DOWNLOAD (DEPOT 15/29)
echo ------------------------------------------------------------------------------

set /a current_depot+=1
echo [%current_depot%/%total_depots%] Resuming depot 2109313...
echo Validating previously downloaded chunks...
.\DepotDownloaderMod\DepotDownloadermod.exe -app 2109313 -depot 2109313 -manifest 4051934214530803209 -manifestfile ".\Resident Evil 4 Manifests and Keys\2109313_4051934214530803209.manifest" -depotkeys ".\Resident Evil 4 Manifests and Keys\2050650.key" -dir "." -max-downloads 256 -validate

if %errorlevel% neq 0 (
    echo.
    echo [ERROR] Failed to resume depot 2109313. Check your connection and try again.
    echo.
    pause
    exit /b 1
)

echo.
echo [SUCCESS] Depot 2109313 completed successfully!
echo.

echo ------------------------------------------------------------------------------
echo                       RESUMING BASE GAME DOWNLOAD (DEPOT 16/29)
echo ------------------------------------------------------------------------------

set /a current_depot+=1
echo [%current_depot%/%total_depots%] Resuming depot 2109314...
echo Validating previously downloaded chunks...
.\DepotDownloaderMod\DepotDownloadermod.exe -app 2109314 -depot 2109314 -manifest 5791805695380186020 -manifestfile ".\Resident Evil 4 Manifests and Keys\2109314_5791805695380186020.manifest" -depotkeys ".\Resident Evil 4 Manifests and Keys\2050650.key" -dir "." -max-downloads 256 -validate

if %errorlevel% neq 0 (
    echo.
    echo [ERROR] Failed to resume depot 2109314. Check your connection and try again.
    echo.
    pause
    exit /b 1
)

echo.
echo [SUCCESS] Depot 2109314 completed successfully!
echo.

echo ------------------------------------------------------------------------------
echo                       RESUMING BASE GAME DOWNLOAD (DEPOT 17/29)
echo ------------------------------------------------------------------------------

set /a current_depot+=1
echo [%current_depot%/%total_depots%] Resuming depot 2109315...
echo Validating previously downloaded chunks...
.\DepotDownloaderMod\DepotDownloadermod.exe -app 2109315 -depot 2109315 -manifest 1851835095891817569 -manifestfile ".\Resident Evil 4 Manifests and Keys\2109315_1851835095891817569.manifest" -depotkeys ".\Resident Evil 4 Manifests and Keys\2050650.key" -dir "." -max-downloads 256 -validate

if %errorlevel% neq 0 (
    echo.
    echo [ERROR] Failed to resume depot 2109315. Check your connection and try again.
    echo.
    pause
    exit /b 1
)

echo.
echo [SUCCESS] Depot 2109315 completed successfully!
echo.

echo ------------------------------------------------------------------------------
echo                       RESUMING BASE GAME DOWNLOAD (DEPOT 18/29)
echo ------------------------------------------------------------------------------

set /a current_depot+=1
echo [%current_depot%/%total_depots%] Resuming depot 2109316...
echo Validating previously downloaded chunks...
.\DepotDownloaderMod\DepotDownloadermod.exe -app 2109316 -depot 2109316 -manifest 3660849741169791736 -manifestfile ".\Resident Evil 4 Manifests and Keys\2109316_3660849741169791736.manifest" -depotkeys ".\Resident Evil 4 Manifests and Keys\2050650.key" -dir "." -max-downloads 256 -validate

if %errorlevel% neq 0 (
    echo.
    echo [ERROR] Failed to resume depot 2109316. Check your connection and try again.
    echo.
    pause
    exit /b 1
)

echo.
echo [SUCCESS] Depot 2109316 completed successfully!
echo.

echo ------------------------------------------------------------------------------
echo                       RESUMING BASE GAME DOWNLOAD (DEPOT 19/29)
echo ------------------------------------------------------------------------------

set /a current_depot+=1
echo [%current_depot%/%total_depots%] Resuming depot 2109317...
echo Validating previously downloaded chunks...
.\DepotDownloaderMod\DepotDownloadermod.exe -app 2109317 -depot 2109317 -manifest 2524887058062613558 -manifestfile ".\Resident Evil 4 Manifests and Keys\2109317_2524887058062613558.manifest" -depotkeys ".\Resident Evil 4 Manifests and Keys\2050650.key" -dir "." -max-downloads 256 -validate

if %errorlevel% neq 0 (
    echo.
    echo [ERROR] Failed to resume depot 2109317. Check your connection and try again.
    echo.
    pause
    exit /b 1
)

echo.
echo [SUCCESS] Depot 2109317 completed successfully!
echo.

echo ------------------------------------------------------------------------------
echo                       RESUMING BASE GAME DOWNLOAD (DEPOT 20/29)
echo ------------------------------------------------------------------------------

set /a current_depot+=1
echo [%current_depot%/%total_depots%] Resuming depot 2197320...
echo Validating previously downloaded chunks...
.\DepotDownloaderMod\DepotDownloadermod.exe -app 2197320 -depot 2197320 -manifest 3550619730862869173 -manifestfile ".\Resident Evil 4 Manifests and Keys\2197320_3550619730862869173.manifest" -depotkeys ".\Resident Evil 4 Manifests and Keys\2050650.key" -dir "." -max-downloads 256 -validate

if %errorlevel% neq 0 (
    echo.
    echo [ERROR] Failed to resume depot 2197320. Check your connection and try again.
    echo.
    pause
    exit /b 1
)

echo.
echo [SUCCESS] Depot 2197320 completed successfully!
echo.

echo ------------------------------------------------------------------------------
echo                       RESUMING BASE GAME DOWNLOAD (DEPOT 21/29)
echo ------------------------------------------------------------------------------

set /a current_depot+=1
echo [%current_depot%/%total_depots%] Resuming depot 2197321...
echo Validating previously downloaded chunks...
.\DepotDownloaderMod\DepotDownloadermod.exe -app 2197321 -depot 2197321 -manifest 222693115030592431 -manifestfile ".\Resident Evil 4 Manifests and Keys\2197321_222693115030592431.manifest" -depotkeys ".\Resident Evil 4 Manifests and Keys\2050650.key" -dir "." -max-downloads 256 -validate

if %errorlevel% neq 0 (
    echo.
    echo [ERROR] Failed to resume depot 2197321. Check your connection and try again.
    echo.
    pause
    exit /b 1
)

echo.
echo [SUCCESS] Depot 2197321 completed successfully!
echo.

echo ------------------------------------------------------------------------------
echo                       RESUMING BASE GAME DOWNLOAD (DEPOT 22/29)
echo ------------------------------------------------------------------------------

set /a current_depot+=1
echo [%current_depot%/%total_depots%] Resuming depot 2197322...
echo Validating previously downloaded chunks...
.\DepotDownloaderMod\DepotDownloadermod.exe -app 2197322 -depot 2197322 -manifest 3468692957561704498 -manifestfile ".\Resident Evil 4 Manifests and Keys\2197322_3468692957561704498.manifest" -depotkeys ".\Resident Evil 4 Manifests and Keys\2050650.key" -dir "." -max-downloads 256 -validate

if %errorlevel% neq 0 (
    echo.
    echo [ERROR] Failed to resume depot 2197322. Check your connection and try again.
    echo.
    pause
    exit /b 1
)

echo.
echo [SUCCESS] Depot 2197322 completed successfully!
echo.

echo ------------------------------------------------------------------------------
echo                       RESUMING BASE GAME DOWNLOAD (DEPOT 23/29)
echo ------------------------------------------------------------------------------

set /a current_depot+=1
echo [%current_depot%/%total_depots%] Resuming depot 2197323...
echo Validating previously downloaded chunks...
.\DepotDownloaderMod\DepotDownloadermod.exe -app 2197323 -depot 2197323 -manifest 1816669983052022714 -manifestfile ".\Resident Evil 4 Manifests and Keys\2197323_1816669983052022714.manifest" -depotkeys ".\Resident Evil 4 Manifests and Keys\2050650.key" -dir "." -max-downloads 256 -validate

if %errorlevel% neq 0 (
    echo.
    echo [ERROR] Failed to resume depot 2197323. Check your connection and try again.
    echo.
    pause
    exit /b 1
)

echo.
echo [SUCCESS] Depot 2197323 completed successfully!
echo.

echo ------------------------------------------------------------------------------
echo                       RESUMING BASE GAME DOWNLOAD (DEPOT 24/29)
echo ------------------------------------------------------------------------------

set /a current_depot+=1
echo [%current_depot%/%total_depots%] Resuming depot 2197324...
echo Validating previously downloaded chunks...
.\DepotDownloaderMod\DepotDownloadermod.exe -app 2197324 -depot 2197324 -manifest 1058648903756395119 -manifestfile ".\Resident Evil 4 Manifests and Keys\2197324_1058648903756395119.manifest" -depotkeys ".\Resident Evil 4 Manifests and Keys\2050650.key" -dir "." -max-downloads 256 -validate

if %errorlevel% neq 0 (
    echo.
    echo [ERROR] Failed to resume depot 2197324. Check your connection and try again.
    echo.
    pause
    exit /b 1
)

echo.
echo [SUCCESS] Depot 2197324 completed successfully!
echo.

echo ------------------------------------------------------------------------------
echo                       RESUMING BASE GAME DOWNLOAD (DEPOT 25/29)
echo ------------------------------------------------------------------------------

set /a current_depot+=1
echo [%current_depot%/%total_depots%] Resuming depot 2197325...
echo Validating previously downloaded chunks...
.\DepotDownloaderMod\DepotDownloadermod.exe -app 2197325 -depot 2197325 -manifest 2168598182656536079 -manifestfile ".\Resident Evil 4 Manifests and Keys\2197325_2168598182656536079.manifest" -depotkeys ".\Resident Evil 4 Manifests and Keys\2050650.key" -dir "." -max-downloads 256 -validate

if %errorlevel% neq 0 (
    echo.
    echo [ERROR] Failed to resume depot 2197325. Check your connection and try again.
    echo.
    pause
    exit /b 1
)

echo.
echo [SUCCESS] Depot 2197325 completed successfully!
echo.

echo ------------------------------------------------------------------------------
echo                       RESUMING BASE GAME DOWNLOAD (DEPOT 26/29)
echo ------------------------------------------------------------------------------

set /a current_depot+=1
echo [%current_depot%/%total_depots%] Resuming depot 2197326...
echo Validating previously downloaded chunks...
.\DepotDownloaderMod\DepotDownloadermod.exe -app 2197326 -depot 2197326 -manifest 630496112153249121 -manifestfile ".\Resident Evil 4 Manifests and Keys\2197326_630496112153249121.manifest" -depotkeys ".\Resident Evil 4 Manifests and Keys\2050650.key" -dir "." -max-downloads 256 -validate

if %errorlevel% neq 0 (
    echo.
    echo [ERROR] Failed to resume depot 2197326. Check your connection and try again.
    echo.
    pause
    exit /b 1
)

echo.
echo [SUCCESS] Depot 2197326 completed successfully!
echo.

echo ------------------------------------------------------------------------------
echo                       RESUMING BASE GAME DOWNLOAD (DEPOT 27/29)
echo ------------------------------------------------------------------------------

set /a current_depot+=1
echo [%current_depot%/%total_depots%] Resuming depot 2197327...
echo Validating previously downloaded chunks...
.\DepotDownloaderMod\DepotDownloadermod.exe -app 2197327 -depot 2197327 -manifest 6760043746706895726 -manifestfile ".\Resident Evil 4 Manifests and Keys\2197327_6760043746706895726.manifest" -depotkeys ".\Resident Evil 4 Manifests and Keys\2050650.key" -dir "." -max-downloads 256 -validate

if %errorlevel% neq 0 (
    echo.
    echo [ERROR] Failed to resume depot 2197327. Check your connection and try again.
    echo.
    pause
    exit /b 1
)

echo.
echo [SUCCESS] Depot 2197327 completed successfully!
echo.

echo ------------------------------------------------------------------------------
echo                       RESUMING BASE GAME DOWNLOAD (DEPOT 28/29)
echo ------------------------------------------------------------------------------

set /a current_depot+=1
echo [%current_depot%/%total_depots%] Resuming depot 2197328...
echo Validating previously downloaded chunks...
.\DepotDownloaderMod\DepotDownloadermod.exe -app 2197328 -depot 2197328 -manifest 2116811573730420534 -manifestfile ".\Resident Evil 4 Manifests and Keys\2197328_2116811573730420534.manifest" -depotkeys ".\Resident Evil 4 Manifests and Keys\2050650.key" -dir "." -max-downloads 256 -validate

if %errorlevel% neq 0 (
    echo.
    echo [ERROR] Failed to resume depot 2197328. Check your connection and try again.
    echo.
    pause
    exit /b 1
)

echo.
echo [SUCCESS] Depot 2197328 completed successfully!
echo.

echo ------------------------------------------------------------------------------
echo                       RESUMING BASE GAME DOWNLOAD (DEPOT 29/29)
echo ------------------------------------------------------------------------------

set /a current_depot+=1
echo [%current_depot%/%total_depots%] Resuming depot 2050655...
echo Validating previously downloaded chunks...
.\DepotDownloaderMod\DepotDownloadermod.exe -app 2109300 -depot 2050655 -manifest 8334430982901761350 -manifestfile ".\Resident Evil 4 Manifests and Keys\2050655_8334430982901761350.manifest" -depotkeys ".\Resident Evil 4 Manifests and Keys\2050650.key" -dir "." -max-downloads 256 -validate

if %errorlevel% neq 0 (
    echo.
    echo [ERROR] Failed to resume depot 2050655. Check your connection and try again.
    echo.
    pause
    exit /b 1
)

echo.
echo [SUCCESS] Depot 2050655 completed successfully!
echo.
echo ==============================================================================
echo                           RESUME COMPLETED!
echo ==============================================================================
echo All files downloaded to: Current directory
echo Total depots processed: %total_depots%
echo Resume Mode: VALIDATED - Previously downloaded files skipped
echo ------------------------------------------------------------------------------
echo Download completed successfully! You can now close this window.
echo ------------------------------------------------------------------------------
pause