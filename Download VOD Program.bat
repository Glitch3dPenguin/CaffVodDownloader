echo OFF
cls
title Caffeine VOD Downloader by Glitch3dPenguin
color 0B
echo CAFFEINE VOD DOWNLOADER BY: GLITCH3DPENGUIN
cd /D "%~dp0"
REM This code block detects if the script is being running with admin PRIVILEGES If it isn't it pauses and then quits
NET SESSION >nul 2>&1
IF %ERRORLEVEL% EQU 0 (
    echo.
    ECHO Administrator PRIVILEGES Detected!
    REM Checking for FFMPEG. Exit program if it doesn't exist.
        if exist "%~dp0"\bin\ffmpeg.exe (
            rem File exists
            echo.
            echo FFmpeg Already installed!
            echo.
            echo Skipping download.
            echo.
        ) else (
            rem File doesn't exist
            echo.
            echo FFMPEG NOT INSTALLED!
            echo.
            echo STARTING DOWNLOAD...
            echo.
            curl -L https://github.com/BtbN/FFmpeg-Builds/releases/download/latest/ffmpeg-master-latest-win64-gpl-shared.zip -o ffmpeg.zip
            echo DOWNLOAD FINISHED...
            echo.
            echo INSTALLING FFMPEG...
            echo.
            tar -f .\ffmpeg.zip -zxv ffmpeg-master-latest-win64-gpl-shared/bin/
            mkdir "%~dp0"\bin
            move "%~dp0"\ffmpeg-master-latest-win64-gpl-shared\bin\* "%~dp0"\bin\
            rmdir /s /q ffmpeg-master-latest-win64-gpl-shared
            del ffmpeg.zip
            echo.
            echo INSTALLATION FINISHED!
            echo.
            echo Starting VOD Downloader!
            echo.
        )
) ELSE (
   echo.
   echo [31m######## ########  ########   #######  ########  [0m
   echo [31m##       ##     ## ##     ## ##     ## ##     ## [0m
   echo [31m##       ##     ## ##     ## ##     ## ##     ## [0m
   echo [31m######   ########  ########  ##     ## ########  [0m
   echo [31m##       ##   ##   ##   ##   ##     ## ##   ##   [0m
   echo [31m##       ##    ##  ##    ##  ##     ## ##    ##  [0m
   echo [31m######## ##     ## ##     ##  #######  ##     ## [0m
   echo.
   echo ####### ERROR: ADMINISTRATOR PRIVILEGES REQUIRED #########
   echo This script must be run as administrator to work properly!  
   echo Right click and select "Run As Administrator".
   echo ##########################################################
   echo.
   PAUSE
   EXIT /B 1
)
set /p VODLINK="Paste VOD Link: "
echo.
set /p VODNAME="Name of VOD: "
echo.
echo File format examples (mp4, mkv, flv, avi, gif, mp3, ogg)
set /p VODTYPE="Choose File Type: "
echo.
echo Starting Vod Downlaod!
mkdir "%userprofile%\Downloads\CaffeineVODs"
bin\ffmpeg.exe -i "%VODLINK%" -c copy -bsf:a aac_adtstoasc "%VODNAME%.%VODTYPE%"
move "%~dp0"\"%VODNAME%"."%VODTYPE%" "%userprofile%"\Downloads\CaffeineVODs\%VODNAME%.%VODTYPE%
echo VOD downloaded finished!
echo VODs are located in Downloads folder!
echo. 
echo If you have errors please send a screenshot to Glitch3dPenguin#8857
echo Don't forget to follow Glitch3dPenguin on Caffeine.tv!
pause
EXIT /B 0