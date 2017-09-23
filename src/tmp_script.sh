#!/bin/bash

GREEN="\033[0;32m"
RED="\033[0;31m"
YELLOW="\033[0;33m"
RESET="\033[0m"

# Revisar que sea el usuario root
if [[ 0 != $UID  ]]
then
	#Inicio el codigo de color con red, luego lo eliminoc on reset
	echo -e "${RED}Usted no debe ser root para correr este script${RESET}"
	exit 1

fi

#Obtencion de informacion
echo -en "Escriba su nombre completo > "
read NOMBRE
echo -en "Escriba su correo electronico > "
read EMAIL


echo -en "Hola $NOMBRE este es su correo? [${GREEN}$EMAIL${RESET} [s/n]?"
read RESP

if [[ s == $RESP  ]]
then 
	echo HOLA $NOMBRE. su correo es $EMAIL
fi



