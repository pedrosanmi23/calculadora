#!/bin/bash

opciones="ComprobarUsuario ComprobarEspacio  ComprobarGrupo BuscarClave Salir"

select opcion in $opciones;
do
	if [[ $opcion == "ComprobarUsuario" ]]; then
		echo "Nombre del usuario a comprobar:"
		read usuario
		echo "$usuario"
	elif [[ $opcion == "ComprobarEspacio" ]]; then
		echo " Espacio"
	elif [[ $opcion = "ComprobarGrupo" ]]; then
		echo " Grupo"
	elif [[ $opcion == "BuscarClave" ]]; then
		echo "Clave"
	elif [[ $opcion == "Salir" ]]; then
		exit
	else
		echo "No"
	fi
done