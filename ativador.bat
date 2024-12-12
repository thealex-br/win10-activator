@echo off
title Ativador do Windows

net session >nul 2>&1
if %ERRORLEVEL% neq 0 (
    goto _fail
)

:_start
cls
echo --------------------------------------
echo -          Ativador do Alex          -
echo --------------------------------------
echo                     (totalmente legal)
echo.

echo  1. Professional
echo  2. Home
echo  3. Enterprise
echo  4. Education
echo.
set /p choice=Qual versao voce deseja usar? 

set "key_1=W269N-WFGWX-YVC9B-4J6C9-T83GX"
set "key_2=TX9XD-98N7V-6WMQ6-BX7FG-H8Q99"
set "key_3=NPPR9-FWDCX-D2C8J-H872K-2YT43"
set "key_4=NW6C2-QMPVW-D7KKK-3GKT6-VCFB2"

if "%choice%"=="1" set "selectedKey=%key_1%"
if "%choice%"=="2" set "selectedKey=%key_2%"
if "%choice%"=="3" set "selectedKey=%key_3%"
if "%choice%"=="4" set "selectedKey=%key_4%"
if defined selectedKey goto _activate
if not defined selectedKey goto _start

:_activate
cls
echo. 
echo Clique em 'OK' para todas as caixas de dialogo que aparecerem
slmgr /ipk %selectedKey%
slmgr /skms kms8.msguides.com
cls
echo. 
echo Aguarde...
slmgr /ato
goto _end

:_end
color 02
cls
echo ------------------------------------
echo - Obrigado Por Usar O Meu Ativador -
echo ------------------------------------
echo.
pause
EXIT /b 0

:_fail
color 04
cls
echo Este script requer privilegios de administrador. Por favor, execute-o como Administrador.
echo.
pause
EXIT /b 1
