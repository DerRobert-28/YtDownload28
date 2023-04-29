@echo off
 mode con cols=80 lines=25
 color f0
 title Youtube Downloader
 echo.
 echo Enter the URL of the YouTube video:
 echo.
 python YtDownload.py
 echo.
 pause
:end
