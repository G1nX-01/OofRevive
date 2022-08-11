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
echo Iniciando...
echo 
set debugmode=1
set logfile=log.txt
chcp 65001
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
echo Carregando...
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
echo Não gosta do novo som de morte do Roblox?
echo Não se Preocupe! Sente-se e veja eu fazer
echo Tudo para você!
echo.
echo O Que você deseja fazer?
echo Faça download do "oof". (1)
echo Substitua o "oof" com um som customizado. (2)
echo Créditos (3)
echo Visualizar meu "oof" (4)
echo Apenas sair. (5)
echo Mudar Linguagem (6)
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
echo Criado por...
echo.
call asciiart.bat G1NX
echo.
pause
goto CREDITS2
:CREDITS2
title OofRevive - %version% - Credits (2/4)
cls
echo Com ajuda de...
echo.
echo A Biblioteca CECHO (color echo) para arquivos batch...
echo (https://www.codeproject.com/Articles/17033/Add-Colors-to-Batch-Files)
echo.
echo A Biblioteca AsciiArt para arquivos batch...
echo (https://gist.github.com/evanlinde/7eb2211e24f3ead02733)
echo.
echo E o reprotudor de som para arquivos batch.
echo (https://github.com/npocmaka/batch.scripts/blob/master/hybrids/mshta/soundPlayer.bat)
echo.
pause
goto CREDITS3
:CREDITS3
title OofRevive - %version% - Credits (3/4)
cls
echo Sons Usados:
echo.
echo Efeito sonoro iniciado com sucesso
echo (https://freesound.org/people/pumodi/sounds/150222/)
echo.
echo Começando jingle.
echo (https://freesound.org/people/Breviceps/sounds/564237/)
echo.
pause
goto SPECIALTHANKS
:SPECIALTHANKS
title OofRevive - %version% - Credits (4/4)
cls
echo Agradecimentos especiais para...
echo.
echo bandu's true form#1198 - Sendo Legal e Apoiador
echo Drogon#3148 - Também sendo Legal e Apoiador
echo StackOverFlow - Maioria da programação aqui kkk
echo.
echo E Não podemos esquecer de você.
echo.
echo Obrigado por usar esse pequeno programa idiota
echo G1nX fora.
echo.
pause
goto MENU
:LOADINGOLD
title OofRevive - %version% - Loading, please hold your ass to the nearest chair.
if exist "version.txt" del version.txt
cls
echo Carregando...
powershell -Command "(New-Object Net.WebClient).DownloadFile('https://g1nx-01.github.io/resources/downloadOof.ps1', 'C:\Users\%USERNAME%\AppData\Roaming\downloadOof.ps1')"
echo Verificando por novidades...
powershell -ExecutionPolicy ByPass -command ". "C:\Users\%USERNAME%\AppData\Roaming\downloadOof.ps1"; CheckForUpdates;"
set /p newversion=<version.txt
if /I NOT "%newversion%"=="%version%" goto UPDATE
if /I "%newversion%"=="%version%" goto PREDOWNLOAD
:LOADINGCUSTOM
title OofRevive - %version% - Loading, please hold your ass to the nearest chair.
del version.txt
cls
echo Carregando...
powershell -Command "(New-Object Net.WebClient).DownloadFile('https://g1nx-01.github.io/resources/downloadOof.ps1', 'C:\Users\%USERNAME%\AppData\Roaming\downloadOof.ps1')"
echo Verificando por novidades...
powershell -ExecutionPolicy ByPass -command ". "C:\Users\%USERNAME%\AppData\Roaming\downloadOof.ps1"; CheckForUpdates;"
set /p newversion=<version.txt
if /I NOT "%newversion%"=="%version%" goto UPDATE
if /I "%newversion%"=="%version%" goto CUSTOMSETUP1
echo Ola! Eu verifiquei e parece
echo que tem uma novidade no OofRevive.
echo.
echo Sua Versão: %version%
echo Nova Versão: %newversion%
echo.
echo Faça download da nova versão (Isso ira lhe redirecionar para um website) (1)
echo Saia, Eu mesmo irei fazer o download. (2)
echo.
set /p "option=Prompt: "
if /I "%option%"=="1" goto https://g1nx-01.github.io/OofRevive/
if /I "%option%"=="2" goto GOODBYE
:PREDOWNLOAD
cls
title OofRevive - %version% - Downloading that dose of nostalgia. (Warning)
cecho Ei, aqui vai um pequeno aviso para você. Uma vez que você substitua o som, {0C}é {\n}quase impossivel de conseguir o novo devolta sem reinstalar {\n}Roblox.{#} 
echo Isso soa bom para você?
echo.
echo Cancele e saia (1)
echo Volte para o menu (2)
cecho {0C}Nah, Vá em frente, Eu não me importo.{#} (3)
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
    echo Algo falhou enquanto fazia o download. Aperte algo para sair.
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
echo Feito!
call soundplayer.bat "Sounds/done.mp3" 0
echo O Que você fará agora?
echo.
echo Vá para o menu (1)
echo Faça o download novamente (2)
echo Saia (3)
set /p "option=Prompt: "
if /I "%option%"=="1" goto MENU
if /I "%option%"=="2" goto DOWNLOAD
if /I "%option%"=="3" goto GOODBYE
:GOODBYE
title Farewell.
if exist "C:\Users\%USERNAME%\AppData\Roaming\downloadOof.ps1" del C:\Users\%USERNAME%\AppData\Roaming\downloadOof.ps1 >nul
cls
echo Até, espero que tenha gostado!
echo.
echo (Alias, antes de apertar enter,
echo por favor considere compartilhar isso,
echo obrigado!)
pause> nul
exit
:CUSTOMSETUP1
title OofRevive - %version% - Custom (1/5)
cls
echo Ei! Você está no setup de "oof" customizavel!
echo Aperte algo para continuar.
pause >nul
goto CUSTOMSETUP2
:CUSTOMSETUP2
title OofRevive - %version% - Custom (2/5)
cls
echo Para fazer isso, você precisa de um, bem pequeno,
echo arquivo ogg. Você pode usar uma ferramenta para
echo transformar se você tem um arquivo
echo com um formato diferente, ou apenas prossiga.
echo.
echo Eu irei transformar o arquivo! (1) (Isso irá lhe redirecionar para um website)
echo Estou bem. (2)
set /p "option=Prompt: "
if /I "%option%"=="1" start https://audio.online-convert.com/convert-to-ogg
if /I "%option%"=="2" goto CUSTOMSETUP3
:CUSTOMSETUP3
title OofRevive - %version% - Custom (3/5)
cls
echo Preocure pelo arquivo no Windows Explorer
echo e então, arraste aqui ou copie o CAMINHO
echo você mesmo, então aperte Enter.
echo.
set /p "file=Drag your file here... "
goto CUSTOMSETUPREPLACE
:CUSTOMSETUPREPLACE
title OofRevive - %version% - Custom (4/5)
cls
echo Por favor espere, estou substituindo o arquivo...
COPY /y %file% C:\Users\%USERNAME%\AppData\Local\Roblox\Versions\version-9045f70ea522489c\content\sounds\ouch.ogg >nul
title OofRevive - %version% - Oh, cool!
cls
echo Feito! Experimente se quiser!
call soundplayer.bat "Sounds/done.mp3" 0
echo Se o seu audio player abrir, saiba que
echo é normal, Eu não consigo consertar isso, desculpe...
echo De qualquer modo, O Que você fará agora?
echo.
echo Voltar para o menu (1)
echo Fazer novamente (2)
echo Sair (3)
echo.
set /p "option=Prompt: "
if /I "%option%"=="1" goto MENU
if /I "%option%"=="2" goto CUSTOMSETUP1
if /I "%option%"=="3" goto GOODBYE
:ROBLOXNOTINSTALLED
title are u have stupid
cls
cecho {0C} Roblox não ESTA INSTALADO, ou você tem a versão errada! {#}{\n}
echo Volte aqui quando você a instalar!
pause >nul
start https://roblox.com/
exit
:TITLE
call asciiart.bat LOGO
call asciiart.bat VERSION
:PREVIEW
cls
echo Reproduzindo o som "oof" atual em seus arquivos Roblox...
start C:\Users\%USERNAME%\AppData\Local\Roblox\Versions\version-9045f70ea522489c\content\sounds\ouch.ogg
cls
echo O Que você fará agora?
echo.
echo Jogar novamente (1)
echo Voltar para o menu (2)
echo.
set /p "option=Prompt: "
if /I "%option%"=="1" goto PREVIEW
if /I "%option%"=="2" goto MENU
:MISSINGCOMPONENT
cls
echo Um ou mais componentes estão faltando.
echo Verificar a pasta que o executável está?
echo.
echo Sim (1)
echo Não, apenas saia por favor... (2)
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
echo Ir para qualquer tela. (1)
echo Fazer download do arquivo PS1 principal. (2)
echo Sair. (3)
echo.
set /p "option=Prompt: "
if /I "%option%"=="1" goto DEBUGGOANYWHERE
if /I "%option%"=="2" goto DEBUGDOWNLOADSCRIPT
if /I "%option%"=="3" exit
:DEBUGGOANYWHERE
cls
set /p "screentogo=Tela para a qual você quer ir: "
goto %screentogo%
:DEBUGDOWNLOADSCRIPT
cls
echo Fazendo download do arquivo PS1 principal...
powershell -Command "(New-Object Net.WebClient).DownloadFile('https://g1nx-01.github.io/resources/downloadOof.ps1', 'C:\Users\%USERNAME%\AppData\Roaming\downloadOof.ps1')"
goto DEBUGMODE
:CHANGELANGUAGEBROWSER
cls
echo Carregando...
powershell -Command "(New-Object Net.WebClient).DownloadFile('https://g1nx-01.github.io/resources/downloadOof.ps1', 'C:\Users\%USERNAME%\AppData\Roaming\downloadOof.ps1')"
cls
echo Lista de Linguagem:
echo.
echo - Espanhol (1)
echo - Inglês (2)
echo.
set /p "option=Prompt: "
if /I "%option%"=="1" goto CHANGELANGUAGESPANISH
if /I "%option%"=="2" goto CHANGELANGUAGEENGLISH
:CHANGELANGUAGESPANISH
cls
echo Carregando...
set name=%~nx0
powershell -ExecutionPolicy ByPass -command ". "C:\Users\%USERNAME%\AppData\Roaming\downloadOof.ps1"; DownloadSpanish;">> "%logfile%"
echo Quase pronto...
rename "C:\Users\$username\AppData\Roaming\OofRevive_Spanish.bat" %name%
COPY /y C:\Users\$username\AppData\Roaming\OofRevive.bat %name% >nul
cls
echo Feito! Pressione qualquer coisa para fechar o programa.
pause >nul
exit
:CHANGELANGUAGEENGLISH
cls
echo Carregando...
set name=%~nx0
powershell -ExecutionPolicy ByPass -command ". "C:\Users\%USERNAME%\AppData\Roaming\downloadOof.ps1"; DownloadSpanish;">> "%logfile%"
echo Quase pronto...
rename "C:\Users\$username\AppData\Roaming\OofRevive.bat" %name%
COPY /y C:\Users\$username\AppData\Roaming\OofRevive.bat %name% >nul
cls
echo Feito! Pressione qualquer coisa para fechar o programa.
pause >nul
exit