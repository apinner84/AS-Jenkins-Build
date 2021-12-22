@echo off
call "C:\Program Files\BrAutomation\AS4x\Bin-en\BR.AS.Build.exe" "C:\<Path to Jenkins Workspace>\<project>.apj" -t "C:\<Path to Temp>" -c <Configuration Name> -all
REM Because Jenkins doesn't like anything but ErrorLevel 0 for a successful build, output 0 if we get a warnings(1)
if %ERRORLEVEL% equ 3 exit /b 3
if %ERRORLEVEL% equ 1 exit /b 0
if %ERRORLEVEL% equ 0 exit /b 0