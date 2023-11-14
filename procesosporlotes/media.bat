@echo off
REM Prueba proceso por lote echo
REM 
REM Autor: Elias Leon RIvera
REM Fecha: 14-11-2023

set %1
set %2
set %3

set /A suma= %1 + %2 + %3
set /A media= %suma%/3

echo la media de los siguientes numeros da %media%