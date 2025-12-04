@echo off
chcp 65001 > nul
color 0F
title Dragons Dogma 2 - DepotDownloader RESUME
cls

echo ==============================================================================
echo                       DRAGONS DOGMA 2 - RESUME DOWNLOAD
echo ==============================================================================
echo Game: Dragons Dogma 2
echo Depots to download: 27
echo Resume Mode: ENABLED (Validating previously downloaded files)
echo ==============================================================================
echo                           RESUMING DOWNLOAD...
echo ================================================================================

set "start_time=%time%"
set "total_depots=27"
set "current_depot=0"

echo ------------------------------------------------------------------------------
echo                       RESUMING BASE GAME DOWNLOAD (DEPOT 1/27)
echo ------------------------------------------------------------------------------

set /a current_depot+=1
echo [%current_depot%/%total_depots%] Resuming depot 2054971...
echo Validating previously downloaded chunks...
.\DepotDownloaderMod\DepotDownloadermod.exe -app 2054970 -depot 2054971 -manifest 3136688068330793105 -manifestfile ".\Dragons Dogma 2 Manifests and Keys\2054971_3136688068330793105.manifest" -depotkeys ".\Dragons Dogma 2 Manifests and Keys\2054970.key" -dir "." -max-downloads 256 -validate

if %errorlevel% neq 0 (
    echo.
    echo [ERROR] Failed to resume depot 2054971. Check your connection and try again.
    echo.
    pause
    exit /b 1
)

echo.
echo [SUCCESS] Depot 2054971 completed successfully!
echo.

echo ------------------------------------------------------------------------------
echo                       RESUMING BASE GAME DOWNLOAD (DEPOT 2/27)
echo ------------------------------------------------------------------------------

set /a current_depot+=1
echo [%current_depot%/%total_depots%] Resuming depot 2054972...
echo Validating previously downloaded chunks...
.\DepotDownloaderMod\DepotDownloadermod.exe -app 2054970 -depot 2054972 -manifest 1800823946498701498 -manifestfile ".\Dragons Dogma 2 Manifests and Keys\2054972_1800823946498701498.manifest" -depotkeys ".\Dragons Dogma 2 Manifests and Keys\2054970.key" -dir "." -max-downloads 256 -validate

if %errorlevel% neq 0 (
    echo.
    echo [ERROR] Failed to resume depot 2054972. Check your connection and try again.
    echo.
    pause
    exit /b 1
)

echo.
echo [SUCCESS] Depot 2054972 completed successfully!
echo.

echo ------------------------------------------------------------------------------
echo                       RESUMING BASE GAME DOWNLOAD (DEPOT 3/27)
echo ------------------------------------------------------------------------------

set /a current_depot+=1
echo [%current_depot%/%total_depots%] Resuming depot 2054973...
echo Validating previously downloaded chunks...
.\DepotDownloaderMod\DepotDownloadermod.exe -app 2054970 -depot 2054973 -manifest 4686089925315080392 -manifestfile ".\Dragons Dogma 2 Manifests and Keys\2054973_4686089925315080392.manifest" -depotkeys ".\Dragons Dogma 2 Manifests and Keys\2054970.key" -dir "." -max-downloads 256 -validate

if %errorlevel% neq 0 (
    echo.
    echo [ERROR] Failed to resume depot 2054973. Check your connection and try again.
    echo.
    pause
    exit /b 1
)

echo.
echo [SUCCESS] Depot 2054973 completed successfully!
echo.

echo ------------------------------------------------------------------------------
echo                       RESUMING BASE GAME DOWNLOAD (DEPOT 4/27)
echo ------------------------------------------------------------------------------

set /a current_depot+=1
echo [%current_depot%/%total_depots%] Resuming depot 2054974...
echo Validating previously downloaded chunks...
.\DepotDownloaderMod\DepotDownloadermod.exe -app 2054970 -depot 2054974 -manifest 119972914902696764 -manifestfile ".\Dragons Dogma 2 Manifests and Keys\2054974_119972914902696764.manifest" -depotkeys ".\Dragons Dogma 2 Manifests and Keys\2054970.key" -dir "." -max-downloads 256 -validate

if %errorlevel% neq 0 (
    echo.
    echo [ERROR] Failed to resume depot 2054974. Check your connection and try again.
    echo.
    pause
    exit /b 1
)

echo.
echo [SUCCESS] Depot 2054974 completed successfully!
echo.

echo ------------------------------------------------------------------------------
echo                       RESUMING BASE GAME DOWNLOAD (DEPOT 5/27)
echo ------------------------------------------------------------------------------

set /a current_depot+=1
echo [%current_depot%/%total_depots%] Resuming depot 2581000...
echo Validating previously downloaded chunks...
.\DepotDownloaderMod\DepotDownloadermod.exe -app 2581000 -depot 2581000 -manifest 3326500289311024291 -manifestfile ".\Dragons Dogma 2 Manifests and Keys\2581000_3326500289311024291.manifest" -depotkeys ".\Dragons Dogma 2 Manifests and Keys\2054970.key" -dir "." -max-downloads 256 -validate

if %errorlevel% neq 0 (
    echo.
    echo [ERROR] Failed to resume depot 2581000. Check your connection and try again.
    echo.
    pause
    exit /b 1
)

echo.
echo [SUCCESS] Depot 2581000 completed successfully!
echo.

echo ------------------------------------------------------------------------------
echo                       RESUMING BASE GAME DOWNLOAD (DEPOT 6/27)
echo ------------------------------------------------------------------------------

set /a current_depot+=1
echo [%current_depot%/%total_depots%] Resuming depot 2593170...
echo Validating previously downloaded chunks...
.\DepotDownloaderMod\DepotDownloadermod.exe -app 2593170 -depot 2593170 -manifest 6723973524008089229 -manifestfile ".\Dragons Dogma 2 Manifests and Keys\2593170_6723973524008089229.manifest" -depotkeys ".\Dragons Dogma 2 Manifests and Keys\2054970.key" -dir "." -max-downloads 256 -validate

if %errorlevel% neq 0 (
    echo.
    echo [ERROR] Failed to resume depot 2593170. Check your connection and try again.
    echo.
    pause
    exit /b 1
)

echo.
echo [SUCCESS] Depot 2593170 completed successfully!
echo.

echo ------------------------------------------------------------------------------
echo                       RESUMING BASE GAME DOWNLOAD (DEPOT 7/27)
echo ------------------------------------------------------------------------------

set /a current_depot+=1
echo [%current_depot%/%total_depots%] Resuming depot 2593180...
echo Validating previously downloaded chunks...
.\DepotDownloaderMod\DepotDownloadermod.exe -app 2593180 -depot 2593180 -manifest 2634842059355884280 -manifestfile ".\Dragons Dogma 2 Manifests and Keys\2593180_2634842059355884280.manifest" -depotkeys ".\Dragons Dogma 2 Manifests and Keys\2054970.key" -dir "." -max-downloads 256 -validate

if %errorlevel% neq 0 (
    echo.
    echo [ERROR] Failed to resume depot 2593180. Check your connection and try again.
    echo.
    pause
    exit /b 1
)

echo.
echo [SUCCESS] Depot 2593180 completed successfully!
echo.

echo ------------------------------------------------------------------------------
echo                       RESUMING BASE GAME DOWNLOAD (DEPOT 8/27)
echo ------------------------------------------------------------------------------

set /a current_depot+=1
echo [%current_depot%/%total_depots%] Resuming depot 2593190...
echo Validating previously downloaded chunks...
.\DepotDownloaderMod\DepotDownloadermod.exe -app 2593190 -depot 2593190 -manifest 7277756736244661036 -manifestfile ".\Dragons Dogma 2 Manifests and Keys\2593190_7277756736244661036.manifest" -depotkeys ".\Dragons Dogma 2 Manifests and Keys\2054970.key" -dir "." -max-downloads 256 -validate

if %errorlevel% neq 0 (
    echo.
    echo [ERROR] Failed to resume depot 2593190. Check your connection and try again.
    echo.
    pause
    exit /b 1
)

echo.
echo [SUCCESS] Depot 2593190 completed successfully!
echo.

echo ------------------------------------------------------------------------------
echo                       RESUMING BASE GAME DOWNLOAD (DEPOT 9/27)
echo ------------------------------------------------------------------------------

set /a current_depot+=1
echo [%current_depot%/%total_depots%] Resuming depot 2593200...
echo Validating previously downloaded chunks...
.\DepotDownloaderMod\DepotDownloadermod.exe -app 2593200 -depot 2593200 -manifest 3869936518091417960 -manifestfile ".\Dragons Dogma 2 Manifests and Keys\2593200_3869936518091417960.manifest" -depotkeys ".\Dragons Dogma 2 Manifests and Keys\2054970.key" -dir "." -max-downloads 256 -validate

if %errorlevel% neq 0 (
    echo.
    echo [ERROR] Failed to resume depot 2593200. Check your connection and try again.
    echo.
    pause
    exit /b 1
)

echo.
echo [SUCCESS] Depot 2593200 completed successfully!
echo.

echo ------------------------------------------------------------------------------
echo                       RESUMING BASE GAME DOWNLOAD (DEPOT 10/27)
echo ------------------------------------------------------------------------------

set /a current_depot+=1
echo [%current_depot%/%total_depots%] Resuming depot 2593210...
echo Validating previously downloaded chunks...
.\DepotDownloaderMod\DepotDownloadermod.exe -app 2593210 -depot 2593210 -manifest 5414532205501697728 -manifestfile ".\Dragons Dogma 2 Manifests and Keys\2593210_5414532205501697728.manifest" -depotkeys ".\Dragons Dogma 2 Manifests and Keys\2054970.key" -dir "." -max-downloads 256 -validate

if %errorlevel% neq 0 (
    echo.
    echo [ERROR] Failed to resume depot 2593210. Check your connection and try again.
    echo.
    pause
    exit /b 1
)

echo.
echo [SUCCESS] Depot 2593210 completed successfully!
echo.

echo ------------------------------------------------------------------------------
echo                       RESUMING BASE GAME DOWNLOAD (DEPOT 11/27)
echo ------------------------------------------------------------------------------

set /a current_depot+=1
echo [%current_depot%/%total_depots%] Resuming depot 2593220...
echo Validating previously downloaded chunks...
.\DepotDownloaderMod\DepotDownloadermod.exe -app 2593220 -depot 2593220 -manifest 7455982328362794134 -manifestfile ".\Dragons Dogma 2 Manifests and Keys\2593220_7455982328362794134.manifest" -depotkeys ".\Dragons Dogma 2 Manifests and Keys\2054970.key" -dir "." -max-downloads 256 -validate

if %errorlevel% neq 0 (
    echo.
    echo [ERROR] Failed to resume depot 2593220. Check your connection and try again.
    echo.
    pause
    exit /b 1
)

echo.
echo [SUCCESS] Depot 2593220 completed successfully!
echo.

echo ------------------------------------------------------------------------------
echo                       RESUMING BASE GAME DOWNLOAD (DEPOT 12/27)
echo ------------------------------------------------------------------------------

set /a current_depot+=1
echo [%current_depot%/%total_depots%] Resuming depot 2593230...
echo Validating previously downloaded chunks...
.\DepotDownloaderMod\DepotDownloadermod.exe -app 2593230 -depot 2593230 -manifest 7251928774923524569 -manifestfile ".\Dragons Dogma 2 Manifests and Keys\2593230_7251928774923524569.manifest" -depotkeys ".\Dragons Dogma 2 Manifests and Keys\2054970.key" -dir "." -max-downloads 256 -validate

if %errorlevel% neq 0 (
    echo.
    echo [ERROR] Failed to resume depot 2593230. Check your connection and try again.
    echo.
    pause
    exit /b 1
)

echo.
echo [SUCCESS] Depot 2593230 completed successfully!
echo.

echo ------------------------------------------------------------------------------
echo                       RESUMING BASE GAME DOWNLOAD (DEPOT 13/27)
echo ------------------------------------------------------------------------------

set /a current_depot+=1
echo [%current_depot%/%total_depots%] Resuming depot 2593240...
echo Validating previously downloaded chunks...
.\DepotDownloaderMod\DepotDownloadermod.exe -app 2593240 -depot 2593240 -manifest 315069544162243504 -manifestfile ".\Dragons Dogma 2 Manifests and Keys\2593240_315069544162243504.manifest" -depotkeys ".\Dragons Dogma 2 Manifests and Keys\2054970.key" -dir "." -max-downloads 256 -validate

if %errorlevel% neq 0 (
    echo.
    echo [ERROR] Failed to resume depot 2593240. Check your connection and try again.
    echo.
    pause
    exit /b 1
)

echo.
echo [SUCCESS] Depot 2593240 completed successfully!
echo.

echo ------------------------------------------------------------------------------
echo                       RESUMING BASE GAME DOWNLOAD (DEPOT 14/27)
echo ------------------------------------------------------------------------------

set /a current_depot+=1
echo [%current_depot%/%total_depots%] Resuming depot 2593250...
echo Validating previously downloaded chunks...
.\DepotDownloaderMod\DepotDownloadermod.exe -app 2593250 -depot 2593250 -manifest 967135362921279442 -manifestfile ".\Dragons Dogma 2 Manifests and Keys\2593250_967135362921279442.manifest" -depotkeys ".\Dragons Dogma 2 Manifests and Keys\2054970.key" -dir "." -max-downloads 256 -validate

if %errorlevel% neq 0 (
    echo.
    echo [ERROR] Failed to resume depot 2593250. Check your connection and try again.
    echo.
    pause
    exit /b 1
)

echo.
echo [SUCCESS] Depot 2593250 completed successfully!
echo.

echo ------------------------------------------------------------------------------
echo                       RESUMING BASE GAME DOWNLOAD (DEPOT 15/27)
echo ------------------------------------------------------------------------------

set /a current_depot+=1
echo [%current_depot%/%total_depots%] Resuming depot 2593260...
echo Validating previously downloaded chunks...
.\DepotDownloaderMod\DepotDownloadermod.exe -app 2593260 -depot 2593260 -manifest 69183187290100698 -manifestfile ".\Dragons Dogma 2 Manifests and Keys\2593260_69183187290100698.manifest" -depotkeys ".\Dragons Dogma 2 Manifests and Keys\2054970.key" -dir "." -max-downloads 256 -validate

if %errorlevel% neq 0 (
    echo.
    echo [ERROR] Failed to resume depot 2593260. Check your connection and try again.
    echo.
    pause
    exit /b 1
)

echo.
echo [SUCCESS] Depot 2593260 completed successfully!
echo.

echo ------------------------------------------------------------------------------
echo                       RESUMING BASE GAME DOWNLOAD (DEPOT 16/27)
echo ------------------------------------------------------------------------------

set /a current_depot+=1
echo [%current_depot%/%total_depots%] Resuming depot 2593270...
echo Validating previously downloaded chunks...
.\DepotDownloaderMod\DepotDownloadermod.exe -app 2593270 -depot 2593270 -manifest 2207132955792828001 -manifestfile ".\Dragons Dogma 2 Manifests and Keys\2593270_2207132955792828001.manifest" -depotkeys ".\Dragons Dogma 2 Manifests and Keys\2054970.key" -dir "." -max-downloads 256 -validate

if %errorlevel% neq 0 (
    echo.
    echo [ERROR] Failed to resume depot 2593270. Check your connection and try again.
    echo.
    pause
    exit /b 1
)

echo.
echo [SUCCESS] Depot 2593270 completed successfully!
echo.

echo ------------------------------------------------------------------------------
echo                       RESUMING BASE GAME DOWNLOAD (DEPOT 17/27)
echo ------------------------------------------------------------------------------

set /a current_depot+=1
echo [%current_depot%/%total_depots%] Resuming depot 2694820...
echo Validating previously downloaded chunks...
.\DepotDownloaderMod\DepotDownloadermod.exe -app 2694820 -depot 2694820 -manifest 5885578699773604089 -manifestfile ".\Dragons Dogma 2 Manifests and Keys\2694820_5885578699773604089.manifest" -depotkeys ".\Dragons Dogma 2 Manifests and Keys\2054970.key" -dir "." -max-downloads 256 -validate

if %errorlevel% neq 0 (
    echo.
    echo [ERROR] Failed to resume depot 2694820. Check your connection and try again.
    echo.
    pause
    exit /b 1
)

echo.
echo [SUCCESS] Depot 2694820 completed successfully!
echo.

echo ------------------------------------------------------------------------------
echo                       RESUMING BASE GAME DOWNLOAD (DEPOT 18/27)
echo ------------------------------------------------------------------------------

set /a current_depot+=1
echo [%current_depot%/%total_depots%] Resuming depot 2694830...
echo Validating previously downloaded chunks...
.\DepotDownloaderMod\DepotDownloadermod.exe -app 2694830 -depot 2694830 -manifest 1601933322779527921 -manifestfile ".\Dragons Dogma 2 Manifests and Keys\2694830_1601933322779527921.manifest" -depotkeys ".\Dragons Dogma 2 Manifests and Keys\2054970.key" -dir "." -max-downloads 256 -validate

if %errorlevel% neq 0 (
    echo.
    echo [ERROR] Failed to resume depot 2694830. Check your connection and try again.
    echo.
    pause
    exit /b 1
)

echo.
echo [SUCCESS] Depot 2694830 completed successfully!
echo.

echo ------------------------------------------------------------------------------
echo                       RESUMING BASE GAME DOWNLOAD (DEPOT 19/27)
echo ------------------------------------------------------------------------------

set /a current_depot+=1
echo [%current_depot%/%total_depots%] Resuming depot 2694840...
echo Validating previously downloaded chunks...
.\DepotDownloaderMod\DepotDownloadermod.exe -app 2694840 -depot 2694840 -manifest 211900286292596559 -manifestfile ".\Dragons Dogma 2 Manifests and Keys\2694840_211900286292596559.manifest" -depotkeys ".\Dragons Dogma 2 Manifests and Keys\2054970.key" -dir "." -max-downloads 256 -validate

if %errorlevel% neq 0 (
    echo.
    echo [ERROR] Failed to resume depot 2694840. Check your connection and try again.
    echo.
    pause
    exit /b 1
)

echo.
echo [SUCCESS] Depot 2694840 completed successfully!
echo.

echo ------------------------------------------------------------------------------
echo                       RESUMING BASE GAME DOWNLOAD (DEPOT 20/27)
echo ------------------------------------------------------------------------------

set /a current_depot+=1
echo [%current_depot%/%total_depots%] Resuming depot 2694850...
echo Validating previously downloaded chunks...
.\DepotDownloaderMod\DepotDownloadermod.exe -app 2694850 -depot 2694850 -manifest 8403226506099305605 -manifestfile ".\Dragons Dogma 2 Manifests and Keys\2694850_8403226506099305605.manifest" -depotkeys ".\Dragons Dogma 2 Manifests and Keys\2054970.key" -dir "." -max-downloads 256 -validate

if %errorlevel% neq 0 (
    echo.
    echo [ERROR] Failed to resume depot 2694850. Check your connection and try again.
    echo.
    pause
    exit /b 1
)

echo.
echo [SUCCESS] Depot 2694850 completed successfully!
echo.

echo ------------------------------------------------------------------------------
echo                       RESUMING BASE GAME DOWNLOAD (DEPOT 21/27)
echo ------------------------------------------------------------------------------

set /a current_depot+=1
echo [%current_depot%/%total_depots%] Resuming depot 2757060...
echo Validating previously downloaded chunks...
.\DepotDownloaderMod\DepotDownloadermod.exe -app 2757060 -depot 2757060 -manifest 760063107766921264 -manifestfile ".\Dragons Dogma 2 Manifests and Keys\2757060_760063107766921264.manifest" -depotkeys ".\Dragons Dogma 2 Manifests and Keys\2054970.key" -dir "." -max-downloads 256 -validate

if %errorlevel% neq 0 (
    echo.
    echo [ERROR] Failed to resume depot 2757060. Check your connection and try again.
    echo.
    pause
    exit /b 1
)

echo.
echo [SUCCESS] Depot 2757060 completed successfully!
echo.

echo ------------------------------------------------------------------------------
echo                       RESUMING BASE GAME DOWNLOAD (DEPOT 22/27)
echo ------------------------------------------------------------------------------

set /a current_depot+=1
echo [%current_depot%/%total_depots%] Resuming depot 2757080...
echo Validating previously downloaded chunks...
.\DepotDownloaderMod\DepotDownloadermod.exe -app 2757080 -depot 2757080 -manifest 5169243754881054003 -manifestfile ".\Dragons Dogma 2 Manifests and Keys\2757080_5169243754881054003.manifest" -depotkeys ".\Dragons Dogma 2 Manifests and Keys\2054970.key" -dir "." -max-downloads 256 -validate

if %errorlevel% neq 0 (
    echo.
    echo [ERROR] Failed to resume depot 2757080. Check your connection and try again.
    echo.
    pause
    exit /b 1
)

echo.
echo [SUCCESS] Depot 2757080 completed successfully!
echo.

echo ------------------------------------------------------------------------------
echo                       RESUMING BASE GAME DOWNLOAD (DEPOT 23/27)
echo ------------------------------------------------------------------------------

set /a current_depot+=1
echo [%current_depot%/%total_depots%] Resuming depot 2757090...
echo Validating previously downloaded chunks...
.\DepotDownloaderMod\DepotDownloadermod.exe -app 2757090 -depot 2757090 -manifest 3444076000364683673 -manifestfile ".\Dragons Dogma 2 Manifests and Keys\2757090_3444076000364683673.manifest" -depotkeys ".\Dragons Dogma 2 Manifests and Keys\2054970.key" -dir "." -max-downloads 256 -validate

if %errorlevel% neq 0 (
    echo.
    echo [ERROR] Failed to resume depot 2757090. Check your connection and try again.
    echo.
    pause
    exit /b 1
)

echo.
echo [SUCCESS] Depot 2757090 completed successfully!
echo.

echo ------------------------------------------------------------------------------
echo                       RESUMING BASE GAME DOWNLOAD (DEPOT 24/27)
echo ------------------------------------------------------------------------------

set /a current_depot+=1
echo [%current_depot%/%total_depots%] Resuming depot 2757120...
echo Validating previously downloaded chunks...
.\DepotDownloaderMod\DepotDownloadermod.exe -app 2757120 -depot 2757120 -manifest 1463489043546813420 -manifestfile ".\Dragons Dogma 2 Manifests and Keys\2757120_1463489043546813420.manifest" -depotkeys ".\Dragons Dogma 2 Manifests and Keys\2054970.key" -dir "." -max-downloads 256 -validate

if %errorlevel% neq 0 (
    echo.
    echo [ERROR] Failed to resume depot 2757120. Check your connection and try again.
    echo.
    pause
    exit /b 1
)

echo.
echo [SUCCESS] Depot 2757120 completed successfully!
echo.

echo ------------------------------------------------------------------------------
echo                       RESUMING BASE GAME DOWNLOAD (DEPOT 25/27)
echo ------------------------------------------------------------------------------

set /a current_depot+=1
echo [%current_depot%/%total_depots%] Resuming depot 2757130...
echo Validating previously downloaded chunks...
.\DepotDownloaderMod\DepotDownloadermod.exe -app 2757130 -depot 2757130 -manifest 771876390790049210 -manifestfile ".\Dragons Dogma 2 Manifests and Keys\2757130_771876390790049210.manifest" -depotkeys ".\Dragons Dogma 2 Manifests and Keys\2054970.key" -dir "." -max-downloads 256 -validate

if %errorlevel% neq 0 (
    echo.
    echo [ERROR] Failed to resume depot 2757130. Check your connection and try again.
    echo.
    pause
    exit /b 1
)

echo.
echo [SUCCESS] Depot 2757130 completed successfully!
echo.

echo ------------------------------------------------------------------------------
echo                       RESUMING BASE GAME DOWNLOAD (DEPOT 26/27)
echo ------------------------------------------------------------------------------

set /a current_depot+=1
echo [%current_depot%/%total_depots%] Resuming depot 2757140...
echo Validating previously downloaded chunks...
.\DepotDownloaderMod\DepotDownloadermod.exe -app 2757140 -depot 2757140 -manifest 1033236542373376685 -manifestfile ".\Dragons Dogma 2 Manifests and Keys\2757140_1033236542373376685.manifest" -depotkeys ".\Dragons Dogma 2 Manifests and Keys\2054970.key" -dir "." -max-downloads 256 -validate

if %errorlevel% neq 0 (
    echo.
    echo [ERROR] Failed to resume depot 2757140. Check your connection and try again.
    echo.
    pause
    exit /b 1
)

echo.
echo [SUCCESS] Depot 2757140 completed successfully!
echo.

echo ------------------------------------------------------------------------------
echo                       RESUMING BASE GAME DOWNLOAD (DEPOT 27/27)
echo ------------------------------------------------------------------------------

set /a current_depot+=1
echo [%current_depot%/%total_depots%] Resuming depot 2757170...
echo Validating previously downloaded chunks...
.\DepotDownloaderMod\DepotDownloadermod.exe -app 2757170 -depot 2757170 -manifest 3459631589371686775 -manifestfile ".\Dragons Dogma 2 Manifests and Keys\2757170_3459631589371686775.manifest" -depotkeys ".\Dragons Dogma 2 Manifests and Keys\2054970.key" -dir "." -max-downloads 256 -validate

if %errorlevel% neq 0 (
    echo.
    echo [ERROR] Failed to resume depot 2757170. Check your connection and try again.
    echo.
    pause
    exit /b 1
)

echo.
echo [SUCCESS] Depot 2757170 completed successfully!
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