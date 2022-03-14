@echo off
REM Ask the user to paste their VOD link
set /p VODLINK="Paste VOD Link: "
REM Ask the user to name the VOD file
set /p VODNAME="Name of VOD: "
REM Start the VOD Download using ffmpeg
echo Starting Vod Downlaod!
ffmpeg -i %VODLINK% -c copy -bsf:a aac_adtstoasc %VODNAME%.mp4
REM Let the user know their VOD has finished downloading
echo VOD downloaded finished!
REM Shameless self plug
echo Don't forget to follow Glitch3dPenguin on Caffeine.tv!
pause 
EXIT /B 0