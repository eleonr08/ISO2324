#!/bin/bash
#Ejercicio 4
# Autor: Elias Leon Rivera
# Fecha: 02-02-2024

clear

if [ $# -gt 1 ]; then
	echo "Número de parámetros incorrecto"
	exit
fi

if [ $# == 1 ]; then
	variable=$1
fi

if [ $# == 0 ]; then
	variable=1000
fi

dia=$(date +"%d-%m-%y"
hora=$(date +"%H:%M")

echo "Usuarios el día $dia a las $hora"

pr1=$(cut -f 3 -d ":" /etc/passwd)
usuarios=0
for i in $pr1; do
	if [ $i -ge $variable ]; then
		usuario=$(cut -f 1,2,3,4 -d ":" /etc/passwd | grep ":$i:" | cut -f 1 -d ":")
		echo $usuario - $i
		echo
		usuarios=$(($usuarios+1))
	fi
done


echo
echo "Total: $usuarios usuarios"
echo "$dia - $hora - El usuario $USER requiere un informe de usuarios" >> /tmp/logeventos
