@echo off
 mode con cols=80 lines=25
 color f0
 title Youtube Downloader
 md Downloads
 echo import youtube_dl >YtDownload.py
 echo url = input() >>YtDownload.py
 echo ydl_opts = {'outtmpl': './Downloads/%%(title)s.%%(ext)s' } >>YtDownload.py
 echo with youtube_dl.YoutubeDL(ydl_opts) as ydl: >>YtDownload.py
 echo     ydl.download([url])  >>YtDownload.py
:LOOP
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
 goto LOOP
:DOWNLOADS
 md Downloads
 echo.>Downloads\.DOWNLOAD.FOLDER
 goto LOOP
:PYTHON
 echo import youtube_dl >YtDownload.py
 echo url = input() >>YtDownload.py
 echo ydl_opts = {'outtmpl': './Downloads/%%(title)s.%%(ext)s' } >>YtDownload.py
 echo with youtube_dl.YoutubeDL(ydl_opts) as ydl: >>YtDownload.py
 echo     ydl.download([url])  >>YtDownload.py
 goto LOOP
:END
