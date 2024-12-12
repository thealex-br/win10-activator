@echo off
title Ativador do Windows

:start
cls
echo --------------------------------------
echo -          Ativador do Alex          -
echo --------------------------------------
echo                (totalmente legal)
echo.

echo  1. Professional
echo  2. Home
echo  3. Enterprise
echo  4. Education
echo.

set /p choice=Qual versao voce deseja usar? 
cls
echo. 
echo Clique em 'OK' para todas as caixas de dialogo que aparecerem

set "key_1=W269N-WFGWX-YVC9B-4J6C9-T83GX"
set "key_2=TX9XD-98N7V-6WMQ6-BX7FG-H8Q99"
set "key_3=NPPR9-FWDCX-D2C8J-H872K-2YT43"
set "key_4=NW6C2-QMPVW-D7KKK-3GKT6-VCFB2"

if "%choice%"=="1" set "selectedKey=%key_1%"
if "%choice%"=="2" set "selectedKey=%key_2%"
if "%choice%"=="3" set "selectedKey=%key_3%"
if "%choice%"=="4" set "selectedKey=%key_4%"
if not defined selectedKey goto start

slmgr /ipk %selectedKey%

:final
cls
echo. 
echo Aguarde...
slmgr /skms kms8.msguides.com
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
