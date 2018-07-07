#!/bin/bash

#Asignamos en variables dos argumentos que vengan de linea de comando
PARAM1=$1
PARAM2=$2
# Desplegamos en pantalla los dos parametros
echo $PARAM1 $PARAM2

#Desplegamos todos los argumentos que vengan de linea de comando
echo $@

#Iteramos un archivo de texto simple, linea por linea
while read -r linea || [[ -n "$linea" ]]; do
  echo "Leyendo la línea $linea"
done < ./practica1_texto.txt

#Guardamos en otra variable el separador "estandar"
OLDIFS=$IFS
#Indicamos que ahora el separador será una coma
IFS=,
#Iteramos un archivo separado por comas
while read nombre apaterno amaterno
do
  echo "Tu nombre es $nombre y te apellidas $apaterno $amaterno"
done < ./practica1_texto.csv
#Regresamos el separador a su valor original
IFS=$OLDIFS

#Listamos los directorios y solo imprimimos la columna 5
ls -la | awk '{print $5}' > listado1.txt

#Comandos de referencia
#Busqueda de archivos
#Buscar directorios llamados usr, y donde la salida de error la ignoremos
#find / -name usr -type d 2>/dev/null
#Buscar archivo practica1 y desplegarlo en pantalla con cat
#find . -name practica1.sh -exec cat {} \;
#Buscar en el directorio actual y sus subdirectorios cualquier archivo
# que tenga el patrón apaterno
# grep -r "apaterno" . 
#Desplegar en pantalla todas las líneas de practica1.sh que no contengan
#el patrón PARAM
# grep -v "apaterno" practica1.sh 

ls -la
#Examinamos el código de salida de la instrucción anterior
echo $?




