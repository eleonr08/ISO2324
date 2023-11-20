@echo off
REM Autor: Elias Leon
REM Fecha:17/11/2023

:inicio
set /p archivo="Dime el nombre de un archivo"

if exist %archivo% (

echo existe

go to inicio

)

else (
	echo > %archivo%
)