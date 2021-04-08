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
	if [ -f $2 ];
	then
		if grep --color $3 $2;
		then
			grep --color $3 $2
		else
			echo "La palabra no existe en el fichero"
		fi
	else
		echo "La ruta no es valida"
		exit
		
	fi
fi
