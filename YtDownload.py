import youtube_dl
url = input()
ydl_opts = {'outtmpl': './Downloads/%(title)s.%(ext)s' }
with youtube_dl.YoutubeDL(ydl_opts) as ydl:
    ydl.download([url])
