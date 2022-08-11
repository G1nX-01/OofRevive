::[Bat To Exe Converter]
::
::YAwzoRdxOk+EWAjk
::fBw5plQjdCqDJHaL8nA1PhJCSTiMM2S4SLwf54g=
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
::Zh4grVQjdCqDJHaL8nA1PhJCSTitM22IA6MV/u3E+bvJ8wNNGucnfe8=
::YB416Ek+Zm8=
::
::
::978f952a14a936cc963da21a135fa983
@echo off
color a
echo Starting up...
echo 
set debugmode=1
set logfile=log.txt
if exist C:\Users\%USERNAME%\AppData\Local\Roblox\Versions\version-9045f70ea522489c\ (
  goto LOADEVERYTHING
) else (
  goto ROBLOXNOTINSTALLED
)
if exist asciiart.bat (
  goto LOADEVERYTHING
) else (
  goto MISSINGCOMPONENT
)
if exist soundPlayer.bat (
  goto LOADEVERYTHING
) else (
  goto MISSINGCOMPONENT
)
if exist cecho.exe (
  goto LOADEVERYTHING
) else (
  goto MISSINGCOMPONENT
)
:LOADEVERYTHING
cls
echo Loading...
FOR /F "TOKENS=1 DELIMS=:" %%A IN ('TIME/T') DO SET HH=%%A
FOR /F "TOKENS=2 DELIMS=:" %%A IN ('TIME/T') DO SET MM=%%A
set version=v1.1.0
title OofRevive - %version%
goto MENU
:MENU
title OofRevive - %version% - Main Menu
cls
call asciiart.bat LOGO
if "%debugmode%"=="1" (
  call asciiart.bat DEBUGLABEL
  )
call asciiart.bat VERSION
call soundplayer.bat "Sounds/startup.mp3" 0
echo.
echo Don't like the new Oof sound of Roblox?
echo Don't worry! Sit back and watch me make
echo everything for you!
echo.
echo What do you want to do?
echo Download the oof sound. (1)
echo Replace the oof with a custom one. (2)
echo Credits (3)
echo Preview my oof sound (4)
echo Just quit. (5)
echo Change language (6)
echo.
set /p "option=Prompt: "
if /I "%option%"=="1" goto LOADINGOLD
if /I "%option%"=="2" goto LOADINGCUSTOM
if /I "%option%"=="3" goto CREDITS1
if /I "%option%"=="4" goto PREVIEW
if /I "%option%"=="5" goto GOODBYE
if /I "%option%"=="D" ( 
  if "%debugmode%"=="1" (
  goto DEBUGMODE
  ))
if /I "%option%"=="d" ( 
  if "%debugmode%"=="1" (
  goto DEBUGMODE
  ))

:CREDITS1
cls
title OofRevive - %version% - Credits (1/4)
echo Created by...
echo.
call asciiart.bat G1NX
echo.
pause
goto CREDITS2
:CREDITS2
title OofRevive - %version% - Credits (2/4)
cls
echo With the help of...
echo.
echo The CECHO (color echo) library for batch files...
echo (https://www.codeproject.com/Articles/17033/Add-Colors-to-Batch-Files)
echo.
echo The AsciiArt library for batch files...
echo (https://gist.github.com/evanlinde/7eb2211e24f3ead02733)
echo.
echo And the sound player for batch files.
echo (https://github.com/npocmaka/batch.scripts/blob/master/hybrids/mshta/soundPlayer.bat)
echo.
pause
goto CREDITS3
:CREDITS3
title OofRevive - %version% - Credits (3/4)
cls
echo Sounds used:
echo.
echo Successful sound effect
echo (https://freesound.org/people/pumodi/sounds/150222/)
echo.
echo Startup jingle.
echo (https://freesound.org/people/Breviceps/sounds/564237/)
echo.
pause
goto SPECIALTHANKS
:SPECIALTHANKS
title OofRevive - %version% - Credits (4/4)
cls
echo Special thanks to...
echo.
echo bandu's true form#1198 - being cool and supportive
echo Drogon#3148 - also being cool and supportive
echo StackOverFlow - most of the code here lmfaooo
echo.
echo And we can't forget about you.
echo.
echo Thank you for using this little dumb program.
echo G1nX out.
echo.
pause
goto MENU
:LOADINGOLD
title OofRevive - %version% - Loading, please hold your ass to the nearest chair.
if exist "version.txt" del version.txt
cls
echo Loading...
powershell -Command "(New-Object Net.WebClient).DownloadFile('https://g1nx-01.github.io/resources/downloadOof.ps1', 'C:\Users\%USERNAME%\AppData\Roaming\downloadOof.ps1')"
echo Checking for updates...
powershell -ExecutionPolicy ByPass -command ". "C:\Users\%USERNAME%\AppData\Roaming\downloadOof.ps1"; CheckForUpdates;"
set /p newversion=<version.txt
if /I NOT "%newversion%"=="%version%" goto UPDATE
if /I "%newversion%"=="%version%" goto PREDOWNLOAD
:LOADINGCUSTOM
title OofRevive - %version% - Loading, please hold your ass to the nearest chair.
del version.txt
cls
echo Loading...
powershell -Command "(New-Object Net.WebClient).DownloadFile('https://g1nx-01.github.io/resources/downloadOof.ps1', 'C:\Users\%USERNAME%\AppData\Roaming\downloadOof.ps1')"
echo Checking for updates...
powershell -ExecutionPolicy ByPass -command ". "C:\Users\%USERNAME%\AppData\Roaming\downloadOof.ps1"; CheckForUpdates;"
set /p newversion=<version.txt
if /I NOT "%newversion%"=="%version%" goto UPDATE
if /I "%newversion%"=="%version%" goto CUSTOMSETUP1
echo Hey there, I checked and it seems
echo there's a new update of OofRevive.
echo.
echo Your version: %version%
echo New version: %newversion%
echo.
echo Download the new version (this will redirect you to a website) (1)
echo Quit, I'll download it myself. (2)
echo.
set /p "option=Prompt: "
if /I "%option%"=="1" goto https://g1nx-01.github.io/OofRevive/
if /I "%option%"=="2" goto GOODBYE
:PREDOWNLOAD
cls
title OofRevive - %version% - Downloading that dose of nostalgia. (Warning)
cecho Hey, here's a warning for you. Once I replace the sound, {0C}it's {\n}almost impossible to get the new one back without reinstalling {\n}Roblox.{#} 
echo Does this sound good to you?
echo.
echo Cancel and quit (1)
echo Go back to the menu (2)
cecho {0C}Nah, go ahead, I don't care.{#} (3)
echo.
set /p "option=Prompt: "
if /I "%option%"=="1" goto GOODBYE
if /I "%option%"=="2" goto MENU
if /I "%option%"=="3" goto DOWNLOAD
:DOWNLOAD
title OofRevive - %version% - Downloading that dose of nostalgia.
cls
powershell -ExecutionPolicy ByPass -command ". "C:\Users\%USERNAME%\AppData\Roaming\downloadOof.ps1"; DownloadOof;">> "%logfile%"
IF ERRORLEVEL 1 (
    REM some extra personal errormessage if needed
    echo Something failed while downloading. Press anything to exit.
    pause >nul
    REM Exit current script and set errorlevel on 1 (failure)
    exit /b 1
) else (
del log.txt >nul
goto SUCCESS
)
:SUCCESS
title OofRevive - %version% - Oh, neat!
cls
echo Done!
call soundplayer.bat "Sounds/done.mp3" 0
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
title Farewell.
if exist "C:\Users\%USERNAME%\AppData\Roaming\downloadOof.ps1" del C:\Users\%USERNAME%\AppData\Roaming\downloadOof.ps1 >nul
cls
echo Bye, hope you enjoyed!
echo.
echo (Also, before pressing enter,
echo please consider sharing this,
echo thank you!)
pause> nul
exit
:CUSTOMSETUP1
title OofRevive - %version% - Custom (1/5)
cls
echo Hey! You're in the custom Oof setup!
echo Press anything to continue.
pause >nul
goto CUSTOMSETUP2
:CUSTOMSETUP2
title OofRevive - %version% - Custom (2/5)
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
title OofRevive - %version% - Custom (3/5)
cls
echo Search for the file in Windows Explorer
echo and then, drag it here or copy the PATH
echo yourself, then press Enter.
echo.
set /p "file=Drag your file here... "
goto CUSTOMSETUPREPLACE
:CUSTOMSETUPREPLACE
title OofRevive - %version% - Custom (4/5)
cls
echo Please wait, I'm replacing the file...
COPY /y %file% C:\Users\%USERNAME%\AppData\Local\Roblox\Versions\version-9045f70ea522489c\content\sounds\ouch.ogg >nul
title OofRevive - %version% - Oh, cool!
cls
echo Done! Try it out if you want!
call soundplayer.bat "Sounds/done.mp3" 0
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
:ROBLOXNOTINSTALLED
title are u have stupid
cls
cecho {0C} Roblox is NOT INSTALLED, or you have the wrong version! {#}{\n}
echo Come back here when you install it!
pause >nul
start https://roblox.com/
exit
:TITLE
call asciiart.bat LOGO
call asciiart.bat VERSION
:PREVIEW
cls
echo Playing the current oof sound in your Roblox files...
start C:\Users\%USERNAME%\AppData\Local\Roblox\Versions\version-9045f70ea522489c\content\sounds\ouch.ogg
cls
echo What will you do now?
echo.
echo Play again (1)
echo Go back to the menu (2)
echo.
set /p "option=Prompt: "
if /I "%option%"=="1" goto PREVIEW
if /I "%option%"=="2" goto MENU
:MISSINGCOMPONENT
cls
echo One or more components are missing.
echo Check the folder where the executable is in?
echo.
echo Yes (1)
echo No, just quit for god's sake... (2)
echo.
set /p "option=Prompt: "
if /I "%option%"=="1" (
set FOLDER=%%~dp0
start %FOLDER%
exit
)
if /I "%option%"=="2" exit
:DEBUGMODE
cls
echo Go to any screen (1)
echo Download main PS1 file (2)
echo Quit. (3)
echo.
set /p "option=Prompt: "
if /I "%option%"=="1" goto DEBUGGOANYWHERE
if /I "%option%"=="2" goto DEBUGDOWNLOADSCRIPT
if /I "%option%"=="3" exit
:DEBUGGOANYWHERE
cls
set /p "screentogo=Screen you want to go to: "
goto %screentogo%
:DEBUGDOWNLOADSCRIPT
cls
echo Downloading the PS1 main file...
powershell -Command "(New-Object Net.WebClient).DownloadFile('https://g1nx-01.github.io/resources/downloadOof.ps1', 'C:\Users\%USERNAME%\AppData\Roaming\downloadOof.ps1')"
goto DEBUGMODE
:CHANGELANGUAGEBROWSER
cls
echo Loading...
powershell -Command "(New-Object Net.WebClient).DownloadFile('https://g1nx-01.github.io/resources/downloadOof.ps1', 'C:\Users\%USERNAME%\AppData\Roaming\downloadOof.ps1')"
cls
echo Language list:
echo.
echo - Spanish (1)
echo - Portuguese (2)
echo.
set /p "option=Prompt: "
if /I "%option%"=="1" goto CHANGELANGUAGESPANISH
if /I "%option%"=="2" goto CHANGELANGUAGEPORTUGUESE
:CHANGELANGUAGESPANISH
cls
echo Loading...
set name=%~nx0
powershell -ExecutionPolicy ByPass -command ". "C:\Users\%USERNAME%\AppData\Roaming\downloadOof.ps1"; DownloadSpanish;">> "%logfile%"
echo Almost done...
rename "C:\Users\$username\AppData\Roaming\OofRevive_Spanish.bat" %name%
COPY /y C:\Users\$username\AppData\Roaming\OofRevive.bat %name%
echo Done! Press anything to close the program.
pause >nul
exit
:CHANGELANGUAGEPORTUGUESE
cls
echo Loading...
set name=%~nx0
powershell -ExecutionPolicy ByPass -command ". "C:\Users\%USERNAME%\AppData\Roaming\downloadOof.ps1"; DownloadPortuguese;">> "%logfile%"
echo Almost done...
rename "C:\Users\$username\AppData\Roaming\OofRevive_Portuguese.bat" %name%
COPY /y C:\Users\$username\AppData\Roaming\OofRevive.bat %name% >nul
cls
echo Done! Press anything to close the program.
pause >nul
exit