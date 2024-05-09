@echo off & title Ativador do Windows

:start
cls
echo --------------------------------------
echo -          Ativador do Alex          -
echo --------------------------------------
echo                     (totalmente legal)
echo.

echo  1. Professional
echo  2. Home
echo  3. Interprise
echo  4. Education
echo.

set /p choice=Qual versao voce deseja usar? & cls & echo. & echo Clique em 'OK' para todas as caixas de dialogo que aparecerem

if "%choice%"=="1" goto Professional
if "%choice%"=="2" goto Home
if "%choice%"=="3" goto Interprise
if "%choice%"=="4" goto Education
if "%choice%"=="" goto end

set "Professional=W269N-WFGWX-YVC9B-4J6C9-T83GX"
set "Home=TX9XD-98N7V-6WMQ6-BX7FG-H8Q99"
set "Interprise=NPPR9-FWDCX-D2C8J-H872K-2YT43"
set "Education=NW6C2-QMPVW-D7KKK-3GKT6-VCFB2"

:Professional
slmgr /ipk W269N-WFGWX-YVC9B-4J6C9-T83GX
goto final

:Home
slmgr /ipk TX9XD-98N7V-6WMQ6-BX7FG-H8Q99
goto final

:Interprise
slmgr /ipk NPPR9-FWDCX-D2C8J-H872K-2YT43
goto final

:Education
slmgr /ipk NW6C2-QMPVW-D7KKK-3GKT6-VCFB2
goto final

:final
slmgr /skms kms8.msguides.com & cls & echo. & echo Aguarde...
slmgr /ato
goto end

:end
color 02
cls
echo ------------------------------------
echo - Obrigado Por Usar O Meu Ativador -
echo ------------------------------------
echo.
pause
