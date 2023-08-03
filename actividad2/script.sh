#!/bin/bash

#Obtenemos la información de la página con el usuario previamente exportado con el comando ->export GITHUB_USER=02JuanJo
USER=$(curl -s https://api.github.com/users/$GITHUB_USER)

#Proceso de obtención de la información por medio de búsqueda específica de caracteres con la ayuda del comando "man"
USER_ID=$(echo "$USER" | grep '"id"' | cut -d ':' -f 2 | tr -d ",")
USER_CREATED_AT=$(echo "$USER" | grep '"created_at"' | cut -d '"' -f 4)

HI="Hola ${GITHUB_USER}. User ID: ${USER_ID}. Cuenta fue creada el: ${USER_CREATED_AT}."

echo $HI
#Creación de carpeta con la fecha de ejecución
mkdir -p "/tmp/$(date +'%d-%m-%Y')"
#Creación de archivo saludos.log con el mensaje contactenado
echo $HI >> "/tmp/$(date +'%d-%m-%Y')/saludos.log" 
