#!/bin/bash
clear

echo "Elias Leon Rivera"

if [ $# -ne 2 ]; then
	echo "Numero de parámetros incorrecto"
	exit
fi

if [ -f $1 ]; then
	echo "Fichero existente"
	exit
fi
	
#Control de parametros



i=1

while [ $i -le $2 ]; do

read -p "Introduzca la inicial de la operacion y los num1 y num2 " op num1 num2

case $op in
	S)
		resultados=$(($num1 + $num2))
		echo "El resultado de la suma es $resultados"
		echo "$op $num1 $num2" >> $1
		
	;;
	
	R)
		resultador=$(($num1 - $num2))
		echo "El resultado de la resta es $resultador"
		echo "$op $num1 $num2" >> $1
	;;
	
	M)
		resultadom=$(($num1 * $num2))
		echo "El resultado de la multiplicacion es $resultadom"
		echo "$op $num1 $num2" >> $1
	;;
	
	D)
		resultadod=$(($num1 / $num2))
		echo "El resultado de la division es $resultadod"
		echo "$op $num1 $num2" >> $1
	;;
	
	X)
		echo "Salimos del script"
		exit
	;;
	
	*)
		echo "Operacion incorecta"
	;;	
esac

	i=$(($i + 1))
	
done

	p=$(pwd)
	
	echo $p/$1
	
	cat /$home/$1
