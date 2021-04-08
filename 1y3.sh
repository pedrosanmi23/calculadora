#!/bin/bash

#Funcionalidad 3 - Comprobar la existencia de un grupo

if [[ $1 -eq 1 ]]; then
	if [[ -z $2 ]]; then
	echo "Es necesario un parametro"
	exit
else
	id -u $2 > /dev/null
	if [[ $? -eq 0 ]]; then
		echo "El usuario $2 si existe en el sistema"
	else
		echo "El usuario $2 no existe"
	fi
fi
else
	
	if grep -q $2 /etc/group
		then
			echo "El grupo $2 existe"
		else
			echo "El grupo $2 no existe"
		fi	
fi




	

