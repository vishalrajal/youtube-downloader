@echo off
title YouTube Downloader (yt-dlp + ffmpeg)
color 0A

:MENU
cls
echo =====================================================
echo              YOUTUBE DOWNLOADER MENU
echo =====================================================
echo [1] Download Video (with Audio)
echo [2] Download Audio Only (MP3)
echo [3] Download Video Only (No Audio)
echo [4] Choose Custom Quality (Video + Audio)
echo [5] Exit
echo =====================================================
set /p choice=Select an option (1-5): 

if "%choice%"=="1" goto video
if "%choice%"=="2" goto audio
if "%choice%"=="3" goto videoonly
if "%choice%"=="4" goto custom
if "%choice%"=="5" exit
goto MENU

:: ================= VIDEO + AUDIO ==================
:video
cls
set /p URL=Enter YouTube URL: 
set /p LOCATION=Enter folder path to save (e.g. D:\Videos): 
if not exist "%LOCATION%" mkdir "%LOCATION%"
yt-dlp -f "bestvideo+bestaudio/best" --merge-output-format mp4 -o "%LOCATION%\%%(title)s.%%(ext)s" "%URL%"
echo.
echo ✅ Video (with audio) downloaded successfully to "%LOCATION%"
pause
goto MENU

:: ================= AUDIO ONLY =====================
:audio
cls
set /p URL=Enter YouTube URL: 
set /p LOCATION=Enter folder path to save (e.g. D:\Music): 
if not exist "%LOCATION%" mkdir "%LOCATION%"
yt-dlp -x --audio-format mp3 -o "%LOCATION%\%%(title)s.%%(ext)s" "%URL%"
echo.
echo 🎵 Audio (MP3) downloaded successfully to "%LOCATION%"
pause
goto MENU

:: ================= VIDEO ONLY =====================
:videoonly
cls
set /p URL=Enter YouTube URL: 
set /p LOCATION=Enter folder path to save (e.g. D:\VideoOnly): 
if not exist "%LOCATION%" mkdir "%LOCATION%"
yt-dlp -f bestvideo --merge-output-format mp4 -o "%LOCATION%\%%(title)s.%%(ext)s" "%URL%"
echo.
echo 🎬 Video (no audio) downloaded successfully to "%LOCATION%"
pause
goto MENU

:: ================= CUSTOM QUALITY =================
:custom
cls
set /p URL=Enter YouTube URL: 
set /p LOCATION=Enter folder path to save (e.g. D:\CustomQuality): 
if not exist "%LOCATION%" mkdir "%LOCATION%"
echo.
echo ==== Available Formats ====
yt-dlp -F "%URL%"
echo ===========================
set /p VCODE=Enter Video Format ID: 
set /p ACODE=Enter Audio Format ID (or leave blank if none): 

if "%ACODE%"=="" (
    yt-dlp -f %VCODE% --merge-output-format mp4 -o "%LOCATION%\%%(title)s.%%(ext)s" "%URL%"
) else (
    yt-dlp -f %VCODE%+%ACODE% --merge-output-format mp4 -o "%LOCATION%\%%(title)s.%%(ext)s" "%URL%"
)
echo.
echo 🎥 Download completed successfully to "%LOCATION%"
pause
goto MENU
