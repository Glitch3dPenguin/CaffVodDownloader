@echo off
REM Ask the user to paste their VOD link
set /p VODLINK="Paste VOD Link: "
REM Ask the user to name the VOD file
set /p VODNAME="Name of VOD: "
REM Ask the user what file format they want to use
echo File format examples (mp4, mkv, flv, avi, gif, mp3, ogg)
set /p VODTYPE="Choose File Type: "
REM Start the VOD Download using ffmpeg
echo Starting Vod Downlaod!
ffmpeg -i %VODLINK% -c copy -bsf:a aac_adtstoasc %VODNAME%.%VODTYPE%
REM Let the user know their VOD has finished downloading
echo VOD downloaded finished!
REM Print discord username for people that have problems with the script
echo If you have errors please send a screenshot to Glitch3dPenguin#8857
REM Shameless self plug
echo Don't forget to follow Glitch3dPenguin on Caffeine.tv!
pause 
EXIT /B 0