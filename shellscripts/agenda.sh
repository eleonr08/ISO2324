#!/bin/bash
#Autor: Elias Leon Rivera
#Fecha: 17-01-2024

clear

dni=$(echo $dni | cut -d ":" -f 1)


while true ;do
	echo "a-Añadir una entrada"
	echo "b-Buscar por dni"
	echo "c-Ver agenda completa"
	echo "d-Eliminar todas las entradas de la agenda"
	echo "e-Salir"
	read -p "Selecciona una opcion: " option
	
	case $option in
		
		a)
			read -p "Introduzca un dni" dni
			if grep "^$dni" agenda.txt >> /dev/null ; then
				echo "El usuario existe"
			else
				read -p "Introduzca su nombre" nombre
				read -p "Introduzca sus apellidos" apellidos
				read -p "Introduzca su localidad" local
				echo "El usuario se ha registrado correctamente"
				echo $dni:$name:$surname:$local >> agenda.txt
			fi
		;;
		
		b)
			read -p "Introduzca un dni" dni
			if grep "^$dni" agenda.txt >> /dev/null ; then
			nombre=$(grep "^$dni" agenda.txt | cut -d ":" -f 2)
			apellido=$(grep "^$dni" agenda.txt | cut -d ":" -f 3)
			local=$(grep "^$dni" agenda.txt | cut -d ":" -f 4)
				echo "La persona cn dni $dni es: $nombre $apellido, y vive en 				      $local"
			else
				echo "Error"
			fi
		;;
		
		c)
			echo "A seleccionado ver la agenda completa"
			echo
			echo "(dni)" "(nombre)" "(apellidos)" "(local)"
			echo
			if [ -e agenda.txt ]; then
				vercom=$(cat agenda.txt)
				echo "$vercom"
				echo
			else
				echo "La agenda esta vacia"
			fi
		;;
		
		d)
			echo "Se han eliminado todas las entradas de la agenda"
				if [ ! -s agenda.txt ]; then
				echo " " > "agenda.txt"
				echo "Ha sido eliminado el contenido"
				echo
			else
				echo "La agenda esta vacia"
			fi
		;;
		
		e)
			echo "Ha seleccionado Finalizar"
			exit 1
		;;

	esac
done
