@echo off

set /P n1="Seleccione 1 o 2 "
set /p nombre="Escriba el nombre del archivo"


if %n1% EQU 1 goto txt
if %n1%% EQU 2 goto bat


:txt
type nul > %nombre%.txt
echo Ha seleccionado el %n1% , se ha creado el archivo .txt
pause
exit

:bat
type nul > %nombre%.bat
echo Ha seleccionado el %n1% , se ha creado el archivo .bat
pause
exit