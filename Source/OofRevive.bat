::[Bat To Exe Converter]
::
::YAwzoRdxOk+EWAnk
::fBw5plQjdG8=
::YAwzuBVtJxjWCl3EqQJgSA==
::ZR4luwNxJguZRRnk
::Yhs/ulQjdF+5
::cxAkpRVqdFKZSDk=
::cBs/ulQjdF+5
::ZR41oxFsdFKZSDk=
::eBoioBt6dFKZSDk=
::cRo6pxp7LAbNWATEpCI=
::egkzugNsPRvcWATEpCI=
::dAsiuh18IRvcCxnZtBJQ
::cRYluBh/LU+EWAnk
::YxY4rhs+aU+JeA==
::cxY6rQJ7JhzQF1fEqQJQ
::ZQ05rAF9IBncCkqN+0xwdVs0
::ZQ05rAF9IAHYFVzEqQJQ
::eg0/rx1wNQPfEVWB+kM9LVsJDGQ=
::fBEirQZwNQPfEVWB+kM9LVsJDGQ=
::cRolqwZ3JBvQF1fEqQJQ
::dhA7uBVwLU+EWDk=
::YQ03rBFzNR3SWATElA==
::dhAmsQZ3MwfNWATElA==
::ZQ0/vhVqMQ3MEVWAtB9wSA==
::Zg8zqx1/OA3MEVWAtB9wSA==
::dhA7pRFwIByZRRnk
::Zh4grVQjdCqDJHaL8nA1PhJCSTuUbSXqSOVS7fD+jw==
::YB416Ek+Zm8=
::
::
::978f952a14a936cc963da21a135fa983
@echo off
color a
set version=v1.0.0
title OofRevive - %version%
goto MENU
:MENU
cls
echo Welcome to the OofRevive wizard!
echo.
echo Don't like the new Oof sound of Roblox?
echo Don't worry! Sit back and watch me make
echo everything for you!
echo.
echo What do you want to do?
echo Download the oof sound. (1)
echo Replace the oof with a custom one. (2)
echo Just quit. (3)
echo.
set /p "option=Prompt: "
if /I "%option%"=="1" goto LOADING
if /I "%option%"=="2" goto CUSTOMSETUP1
if /I "%option%"=="3" goto GOODBYE
pause
cls
:LOADING
cls
echo Loading...
powershell -Command "(New-Object Net.WebClient).DownloadFile('https://g1nx-01.github.io/resources/downloadOof.ps1', 'C:\Users\%USERNAME%\AppData\Roaming\downloadOof.ps1')"
goto PREDOWNLOAD
:PREDOWNLOAD
cls
echo Hey, here's a warning for you.
echo Once I replace the sound, it's
echo almost impossible to get the
echo new one back without reinstalling
echo Roblox. Does this sound good
echo for you?
echo.
echo Cancel and quit (1)
echo Go back to the menu (2)
echo Nah, go ahead, I don't care. (3)
echo.
set /p "option=Prompt: "
if /I "%option%"=="1" goto GOODBYE
if /I "%option%"=="2" goto MENU
if /I "%option%"=="3" goto DOWNLOAD
:DOWNLOAD
cls
powershell -ExecutionPolicy ByPass -command ". "C:\Users\%USERNAME%\AppData\Roaming\downloadOof.ps1"; DownloadOof;"
del C:\Users\%USERNAME%\AppData\Roaming\downloadOof.ps1
goto SUCCESS
:SUCCESS
cls
echo Done!
echo What will you do now?
echo.
echo Go to the menu (1)
echo Download again (2)
echo Exit (3)
set /p "option=Prompt: "
if /I "%option%"=="1" goto MENU
if /I "%option%"=="2" goto DOWNLOAD
if /I "%option%"=="3" goto GOODBYE
:GOODBYE
cls
echo Bye, hope you enjoyed!
echo.
echo (Also, before pressing enter,
echo please consider sharing this,
echo thank you!)
pause> nul
exit
:CUSTOMSETUP1
cls
echo Hey! You're in the custom Oof setup!
echo Press anything to continue.
pause >nul
goto CUSTOMSETUP2
:CUSTOMSETUP2
cls
echo To do this, you just need a really short
echo ogg file. You can use a tool to
echo transform it if you have a file with
echo a different format, or just go ahead.
echo.
echo I'll transform my file! (1) (This will redirect you to a website)
echo I'm fine. (2)
set /p "option=Prompt: "
if /I "%option%"=="1" start https://audio.online-convert.com/convert-to-ogg
if /I "%option%"=="2" goto CUSTOMSETUP3
:CUSTOMSETUP3
cls
echo Search for the file in Windows Explorer
echo and then, drag it here or copy the PATH
echo yourself, then press Enter.
echo.
set /p "file=Drag your file here... "
goto CUSTOMSETUPREPLACE
:CUSTOMSETUPREPLACE
cls
echo Please wait, I'm replacing the file...
COPY /y %file% C:\Users\%USERNAME%\AppData\Local\Roblox\Versions\version-9045f70ea522489c\content\sounds\ouch.ogg >nul
cls
echo Done! Try it out if you want!
echo If your audio player opens, it's
echo normal, I can't fix that, sorry...
echo Anyways, what will you do now?
echo.
echo Go back to the menu (1)
echo Do it again (2)
echo Quit (3)
echo.
set /p "option=Prompt: "
if /I "%option%"=="1" goto MENU
if /I "%option%"=="2" goto CUSTOMSETUP1
if /I "%option%"=="3" goto GOODBYE