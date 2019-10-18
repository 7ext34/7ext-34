@echo off
title nc

:LOOP
timeout 5
SET MyProcess=nc.exe
ECHO "%MyProcess%"
TASKLIST | FINDSTR /I "%MyProcess%"
IF ERRORLEVEL 1 (GOTO :START) ELSE (ECHO "%MyProcess%" is currently running)
GOTO :LOOP

:START
REM taskkill /F /IM cmd.exe /FI "WINDOWTITLE ne nc*"
start C:\nc\nc.vbs


goto LOOP
