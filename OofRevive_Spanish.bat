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
echo Empezando...
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
echo Cargando...
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
echo No te gusta el nuevo sonido de muerte
echo de roblox?
echo No te preocupes! Sientate y mira como
echo hago todo por ti.
echo.
echo Que quieres hacer?
echo Descargar el sonido (1)
echo Opciones de personalizacion... (2)
echo Creditos (3)
echo Escuchar el sonido actual (4)
echo Salir. (5)
echo.
set /p "option=Respuesta: "
if /I "%option%"=="1" goto LOADINGOLD
if /I "%option%"=="2" goto LOADINGCUSTOM
if /I "%option%"=="3" goto CREDITS1
if /I "%option%"=="4" goto PREVIEW
if /I "%option%"=="5" goto GOODBYE
if /I "%option%"=="6" ( 
  if "%debugmode%"=="1" (
  goto DEBUGMODE
  ))

:CREDITS1
cls
title OofRevive - %version% - Credits (1/4)
echo Hecho por...
echo.
call asciiart.bat G1NX
echo.
pause
goto CREDITS2
:CREDITS2
title OofRevive - %version% - Credits (2/4)
cls
echo Con la ayuda de...
echo.
echo La libreria CECHO (texto de color) para archivos por lotes...
echo (https://www.codeproject.com/Articles/17033/Add-Colors-to-Batch-Files)
echo.
echo La libreria AsciiArt para archvos Batch...
echo (https://gist.github.com/evanlinde/7eb2211e24f3ead02733)
echo.
echo Y el reproductor de audio para archivos Batch.
echo (https://github.com/npocmaka/batch.scripts/blob/master/hybrids/mshta/soundPlayer.bat)
echo.
pause
goto CREDITS3
:CREDITS3
title OofRevive - %version% - Credits (3/4)
cls
echo Sonidos usados:
echo.
echo Tarea hecha con exito
echo (https://freesound.org/people/pumodi/sounds/150222/)
echo.
echo Musica de inicio
echo (https://freesound.org/people/Breviceps/sounds/564237/)
echo.
pause
goto SPECIALTHANKS
:SPECIALTHANKS
title OofRevive - %version% - Credits (4/4)
cls
echo Gracias a...
echo.
echo bandu's true form#1198 - ayudar en el projecto
echo Drogon#3148 - tambien ayudar en el projecto
echo StackOverFlow - literalmente todo el codigo del programa
echo viene de aca XD
echo.
echo Y no nos podemos olvidar de ti.
echo.
echo Gracias por usar este pequeño y estupido programa.
echo G1nX se despide.
echo.
pause
goto MENU
:LOADINGOLD
title OofRevive - %version% - Cargando, amarrate a la silla mas cercana.
if exist "version.txt" del version.txt
cls
echo Cargando...
powershell -Command "(New-Object Net.WebClient).DownloadFile('https://g1nx-01.github.io/resources/downloadOof.ps1', 'C:\Users\%USERNAME%\AppData\Roaming\downloadOof.ps1')"
echo Buscando actualizaciones...
powershell -ExecutionPolicy ByPass -command ". "C:\Users\%USERNAME%\AppData\Roaming\downloadOof.ps1"; CheckForUpdates;"
set /p newversion=<version.txt
if /I NOT "%newversion%"=="%version%" goto UPDATE
if /I "%newversion%"=="%version%" goto PREDOWNLOAD
:LOADINGCUSTOM
title OofRevive - %version% - Cargando, amarrate a la silla mas cercana.
del version.txt
cls
echo Cargando...
powershell -Command "(New-Object Net.WebClient).DownloadFile('https://g1nx-01.github.io/resources/downloadOof.ps1', 'C:\Users\%USERNAME%\AppData\Roaming\downloadOof.ps1')"
echo Buscando actualizaciones...
powershell -ExecutionPolicy ByPass -command ". "C:\Users\%USERNAME%\AppData\Roaming\downloadOof.ps1"; CheckForUpdates;"
set /p newversion=<version.txt
if /I NOT "%newversion%"=="%version%" goto UPDATE
if /I "%newversion%"=="%version%" goto CUSTOMSETUP1
echo Hola, Parece que hay una nueva
echo actualizacion de OofRevive.
echo.
echo Tu version: %version%
echo Nueva version: %newversion%
echo.
echo Descargar la version nueva (esto te redirigira fuera del) (1)
echo Salir, la descargare yo mismo. (2)
echo.
set /p "option=Respuesta: "
if /I "%option%"=="1" goto https://g1nx-01.github.io/OofRevive/
if /I "%option%"=="2" goto GOODBYE
:PREDOWNLOAD
cls
title OofRevive - %version% - Descargando la nostalgia. (Advertencia)
cecho Hola, te tengo una advertencia. Una vez que remplazes el sonido, {0C}es {\n}casi imposible conseguir el sonido nuevo de vuelta {\n}sin reinstalar Roblox.{#} 
echo Queda claro?
echo.
echo Cancelar y salir (1)
echo Volver al menu (2)
cecho {0C}No me importa.{#} (3)
echo.
set /p "option=Respuesta: "
if /I "%option%"=="1" goto GOODBYE
if /I "%option%"=="2" goto MENU
if /I "%option%"=="3" goto DOWNLOAD
:DOWNLOAD
title OofRevive - %version% - Descargando la nostalgia.
cls
powershell -ExecutionPolicy ByPass -command ". "C:\Users\%USERNAME%\AppData\Roaming\downloadOof.ps1"; DownloadOof;">> "%logfile%"
IF ERRORLEVEL 1 (
    REM some extra personal errormessage if needed
    echo Algo fallo mientras descargaba el sonido. Presiona
    echo Cualquier tecla para salir.
    pause >nul
    REM Exit current script and set errorlevel on 1 (failure)
    exit /b 1
) else (
del log.txt >nul
goto SUCCESS
)
:SUCCESS
title OofRevive - %version% - Genial!
cls
echo Terminado!
call soundplayer.bat "Sounds/done.mp3" 0
echo Que vas a haces ahora?
echo.
echo Volver al menu (1)
echo Descargar de vuelta (2)
echo Salir (3)
set /p "option=Respuesta: "
if /I "%option%"=="1" goto MENU
if /I "%option%"=="2" goto DOWNLOAD
if /I "%option%"=="3" goto GOODBYE
:GOODBYE
title Adios.
if exist "C:\Users\%USERNAME%\AppData\Roaming\downloadOof.ps1" del C:\Users\%USERNAME%\AppData\Roaming\downloadOof.ps1 >nul
cls
echo Adios, espero que te haya gustado!
echo.
echo (Psst, antes de irte,
echo por favor considera
echo compartir este programa
echo con otros si te gusto,
echo Gracias!)
pause> nul
exit
:CUSTOMSETUP1
title OofRevive - %version% - Personalizado (1/5)
cls
echo Hola! Estas en el instalador de Oof personalizado!
pause
goto CUSTOMSETUP2
:CUSTOMSETUP2
title OofRevive - %version% - Personalizado (2/5)
cls
echo Para poder hacer esto, solo necesitas
echo un archivo .ogg muy corto. 
echo Puedes usar una herramiente para transformarlo
echo si no es un archivo .ogg, o simplemente conti-
echo nuar.
echo.
echo Voy a transformar mi archivo! (1) (Esto te redirigira fuera del programa.)
echo Estoy bien por ahora. (2)
set /p "option=Respuesta: "
if /I "%option%"=="1" start https://audio.online-convert.com/es/convertir-a-ogg
if /I "%option%"=="2" goto CUSTOMSETUP3
:CUSTOMSETUP3
title OofRevive - %version% - Personalizado (3/5)
cls
echo Busca el archivo en el explorador de Windows
echo y arrastralo aqui. Luego, presiona Enter / Entrar.
echo.
set /p "file=Arrastra el archivo aqui... "
goto CUSTOMSETUPREPLACE
:CUSTOMSETUPREPLACE
title OofRevive - %version% - Personalizado (4/5)
cls
echo Espera, estoy replazando el archivo...
COPY /y %file% C:\Users\%USERNAME%\AppData\Local\Roblox\Versions\version-9045f70ea522489c\content\sounds\ouch.ogg >nul
title OofRevive - %version% - Genial!
cls
echo Terminado! Pruebalo si quieres!
call soundplayer.bat "Sounds/done.mp3" 0
echo Si se te abre el reproductor de audio
echo predeterminado de tu computadora, es
echo normal, no lo puedo solucionar.
echo Que haras ahora?
echo.
echo Volver al menu (1)
echo Hazlo de vuelta (2)
echo Salir. (3)
echo.
set /p "option=Respuesta: "
if /I "%option%"=="1" goto MENU
if /I "%option%"=="2" goto CUSTOMSETUP1
if /I "%option%"=="3" goto GOODBYE
:ROBLOXNOTINSTALLED
title erez eztupido?
cls
cecho {0C} Roblox NO ESTA INSTALADO, {\n}o tu version no es compatible! {#}{\n}
echo Vuelve cuando lo instales!
pause >nul
start https://roblox.com/
exit
:TITLE
call asciiart.bat LOGO
call asciiart.bat VERSION
:PREVIEW
cls
echo Reproduciendo el sonido...
start C:\Users\%USERNAME%\AppData\Local\Roblox\Versions\version-9045f70ea522489c\content\sounds\ouch.ogg
cls
echo Que haras ahora?
echo.
echo Volver a escuchar (1)
echo Volver al menu (2)
echo.
set /p "option=Respuesta: "
if /I "%option%"=="1" goto PREVIEW
if /I "%option%"=="2" goto MENU
:MISSINGCOMPONENT
cls
echo Uno o mas componentes no estan.
echo Abrir la carpeta donde esta el
echo programa?
echo.
echo Si. (1)
echo No, solo sal de mi vista. (2)
echo.
set /p "option=Respuesta: "
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