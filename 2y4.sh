#!/bin/bash

if [[ $1 -eq 1 ]]; then
	#Funcionalidad 2 - Comprobar espacio en disco
	if [[ -z $2 ]]; then
		echo "Es necesario una ruta"
	else
		du -bsh $2 
	fi
else
	#Funcionalidad 4 - Buscar una palabra clave en un fichero
	
fi