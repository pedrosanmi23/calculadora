#!/bin/bash

if [[ $1 -eq 1 ]]; then
	if [[ -z $2 ]]; then
		echo "Es necesario una ruta"
	else
		du -bsh $2 
	fi
fi