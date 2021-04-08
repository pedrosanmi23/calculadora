#!/bin/bash

opciones="ComprobarUsuario ComprobarEspacio  ComprobarGrupo BuscarClave Salir"

select opcion in $opciones;
do
	if [[ $opcion == "ComprobarUsuario" ]]; then
		echo "Nombre del usuario a comprobar:"
		read usuario
		bash ./1y3.sh 1 $usuario
	elif [[ $opcion == "ComprobarEspacio" ]]; then
		echo "Ruta donde comprobar el espacio que ocupa"
		read ruta
		bash ./2y4.sh 1 $ruta
	elif [[ $opcion = "ComprobarGrupo" ]]; then
		echo " Nombre del grupo a comprobar"
		read grupo
		bash ./1y3.sh 2 $grupo
	elif [[ $opcion == "BuscarClave" ]]; then
		echo "Clave"
	elif [[ $opcion == "Salir" ]]; then
		exit
	else
		echo "No"
	fi
done