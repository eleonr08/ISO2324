#!/bin/bash


#Verificar numero correcto de parametros de entrada
if [ "$#" -ne 2 ]; then
	echo "Hay que poner el nombre del fichero y el directorio"
	exit 1
fi

#Verificar si el fichero existe
if [ -e "$1" ]; then
	echo "El fichero de salida '$1' ya existe. Por favor, elige otro"
	exit 1
fi

#Verificar si el directorio existe
if [ ! -d "$2" ]; then
	echo "El directorio '$2' no existe"
	exit 1
fi

#Verificar si el directorio esta vacio
if [ -z "$(ls -A "$2")" ]; then
	echo "El directorio '$2' esta vacio"
	exit 1
fi 

#Mostrar nombre y apellidos
echo "Autor: Elias Leon Rivera"

ficheros=$( ls $2/*.txt)
echo $ficheros

for i in $ficheros ; do
	if [ -f $i ]; then
	lineas=$(cat $i | wc -l)
	if [ $lineas -ge 5 ]; then
	echo $i
	echo $i >> $1
	#parte 4
	echo "El fichero tiene $palabras palabras" > $i.1
	cat $i >> $i.q
fi
fi 
done

numero= $(cat $1 | wc -l)

echo $numero >> $1


