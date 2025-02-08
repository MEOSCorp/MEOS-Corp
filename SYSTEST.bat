@echo off
Color 0A
cls
echo Welcome To The System Test!
echo Type SYSTEST to see a list of commands!
setlocal enabledelayedexpansion

set "program="
set "filename="

:main
set /p "cmd=C:\>"
if /i "%cmd%"=="SYSTEST" goto :SYSTEST
if /i "%cmd%"=="Shutdown" Goto :SD
if /i "%cmd%"=="1APP" Goto :1APP
if /i "%cmd%"=="1Apploop" Goto :1LOOP
if /i "%cmd%"=="2app" Goto :2APP
if /i "%cmd%"=="2APPloop" Goto :2LOOP
if /i "%cmd%"=="UnlimitedApps" goto :Forever
if /i "%cmd%"=="RunThisAppForever" Goto :Forever2
if /i "%cmd%"=="RunThisAppOnce" Goto :Once
if /i "%cmd%"=="ReadMe" Goto :EULA
echo Command Not Found In Database
goto :Main

:SYSTEST
cls
echo Commands:
echo Systest - Tells you this list
echo Shutdown - Shutdowns The System
echo 1App - Run a single app 1 Time
echo 1Apploop - Run A Single app Until Reboot
echo 2app - Runs 2 apps 1 Time
echo 2Apploop - Run 2 Apps Until Reboot
echo UnlimitedApps - Runs A Bunch of apps until the system Crashes (WARNING!)
echo RunThisAppForever - Runs this app non-stop
echo RunThisAppOnce - Run This App One time
ECHO ReadMe - Copyright(s)
pause
goto :main

:SD
Shutdown /s /t 20
pause
goto :Main

:1APP
start Notepad.exe
pause
goto :main

:1LOOP
:LOOP
START NOTEPAD.EXE
GOTO LOOP
pause
goto :Main

:2APP
Start Notepad.exe
Start CMD.exe
pause
goto :Main

:2LOOP
:LOOP
START Notepad.exe
START CMD.exe
goto :loop
pause
goto :main

:Forever
:loop
start notepad.exe
start cmd.exe
start mspaint.exe
start explorer.exe
start iexplore.exe
start taskmgr.exe
goto loop
pause
goto :main

:Forever2
:loop
start SYSTEST.BAT
goto loop
pause
goto :Main

:Once
Start SYSTEST.bat
pause
goto :Main

:EULA
ECHO Thank You For Choosing MEOS! We Hope You Enjoyed Using Our App We Injoyed Making It
echo If You Wish To Donate To Make This App And Help MEOS Grow Please goto Any Donations Will Be Used To Make Our Apps Better
echo What Is MEOS?
ECHO MEOS Is a company owned by Me (Dylan) It Is Not Worth Or Known It is owned by Me and My Friend More Apps will be made with Donations
echo SYSTEST - A Reliable System Test App
echo Version 1.0.0
echo Copyright (c) 2024-2025 MEOS
echo Report Bugs Or Request Enhancements At: https://github.com/MEOSCorp/MEOS-Corp
echo How To Donate
echo 1. Goto Paypal
echo 2 Search MEOS
echo 3 Donate
echo Additional Copyrights:
echo This App is 100% Owned ONLY By MEOS
echo Modifying This App Is ILLEGAL! And Is Consiered Piracy!
echo Thank You!
pause
goto :Main


