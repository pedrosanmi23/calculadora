#!/bin/bash

#Funcionalidad 3 - Comprobar la existencia de un grupo

read -p "Introduce el nombre de un grupo: " grupo

if grep -q $grupo /etc/group
	then
		echo "El grupo $grupo existe"
	else
		echo "El grupo $grupo no existe"
	fi

	

