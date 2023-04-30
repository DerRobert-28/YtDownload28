@echo off
 mode con cols=80 lines=25
 color f0
 title Youtube Downloader
:loop
 cls
 echo.
 echo Enter the URL of the YouTube video:
 echo.
 python YtDownload.py
 echo.
 echo.
 echo Ready.
 echo Hit any key to download another video.
 echo Close window to quit.
 pause >nul
 goto loop
:end
