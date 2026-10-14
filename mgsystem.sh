#!/bin/bash

clear

while true; do

#Bucle de opciones a elegir en el menu de ayuda
echo "|============================|"
echo "|            MENU            |"
echo "|============================|"
echo "|1.Git status                |"               
echo "|2.Actualizar remoto         |"
echo "|3.Actualizar local          |"
echo "|4.Obtener token.txt         |"
echo "|5.Listar ramasF             |"
echo "|6.Listar ramasG             |"
echo "|7.Historial commits         |"
echo "|8.Listar archivos           |"
echo "|9.Renombrar                 |"
echo "|0.Salir                     |"
echo "|============================|"

#Lee al opcion elegida y la interpreta segun su funcion
read -p "Elija una opción: " OPCION 

#OPCIONES

case $OPCION in
	1) 
		echo "--- Mostrando estado del archivo ---"
		git status
		;;

	2) 
		echo "--- Actualizando Repositorio Remoto (Git) ---"

		#1.Verificacion de ser una carpeta git
		if [ ! -d .git ]; then
			echo "Error: Esta carpeta no es un repositorio git"
		else
			#2.Pedimos el mensaje del commit
		       read -p "Introduce el mensaje del commit: " MENSAJE
	                
                        #Validamos el contenido del mensaje
	               if [ -z "$MENSAJE" ]; then
	                 echo "El mensaje no puede estar vacio. Abotando el proceso"
		 else
                     echo "Preparando archivos (git add .)..."
                     git add .
               
                     echo "Creando commit (git commit)..."
                     git commit -m "$MENSAJE"
 
                     echo "Subiendo cambios al servidor (git push)..."
                     git push
             
                     echo "¡¡Repositorio actualizado con exito!!"
		       fi
		fi
		;;	

	3) 
		echo "--- Sincronizando Repositorio Local ---"

		#1. Verificamos si estamos en una carpeta git
		if [ ! -d .git ]; then 
			echo "Error: ESta carpeta no es un repositorio git"
		else
			#2. Obtenemos el nombre de la rama actual
			RAMA_ACTUAL=$(git branch --show-current)
			echo "Rama detectada: $RAMA_ACTUAL"
			echo "----------------------------------------"

			#3. Descargamos el historial del remoto sin modificar los archivos
			echo "Buscamos cambios en el servidor (git fetch)..."
			git fetch origin

			#4. Traemos los cambios y los fusionamos en tu rama local
			echo "Descargando y fusionando cambios (git pull)..."
			git pull origin "$RAMA_ACTUAL"

			echo "-----------------------------------------"
			echo "!!Tu repositorio local está actualizado¡¡"
		fi
		;;

	4) 
		echo "--- Obteniendo token.txt ---"

		find / -iname "token.txt" -exec cat {} \; 2>/dev/null
		;;

	5)
		echo "--- Listando archivos de fichero actual en forma de arbol ---"
		tree
		;;
	6)
		echo "--- Mostrando la rama actual ---"
		
		if [ ! -d .git ]; then
			echo "Error: Esta carpeta no es un repositorio git"
		else
		    RAMA_ACTUAL=$(git branch --show-current)
		    echo "Tu rama es $RAMA_ACTUAL"
		    echo "--------------------------------------------------"
		fi
		;;
	7) 
		echo "--- Historial de commits realizados ---"
		git log
		;;
	8)
		echo "Listando archivos incluidos los ocultos"
		 ls -la
		 ;;
	9) 
		clear
		echo "--- Renombrar un Archivo ---"

		#1. Pedimos la ruta o nombre del archivo
		read -p "Intorduce el nombre (o ruta) del archivo actual: " ARCHIVO_ACTUAL
		#2. Verificamos si el archivo realmente existe
		if [ ! -f "$ARCHIVO_ACTUAL" ];then
			echo "Error: El archivo '$ARCHIVO_ACTUAL' no existe o no es valido"
		else
			#3. Pedimos el nuevo nombre
			read -p "Introduce el nuevo nombre del archivo: " NUEVO_NOMBRE
			#Validamos que el nuevo nombre no este vacio
			if [ -z "$NUEVO_NOMBRE" ]; then
				echo "El nuevo nombre no puede estar vacio. Operacion cancelada"
			else
				#4 REnombramos el archivo
				mv "$ARCHIVO_ACTUAL" "$NUEVO_NOMBRE"
				echo "Archio renombrado con éxito a: $NUEVO_NOMBRE"
			fi
		fi
		;;

	0)
		echo "Saliendo del Menu !!Gracias por usar nuestro servicio¡¡"
		exit 0
		;;
	esac

	#PAusa para que el ususario lea el resultado antes de limpiar pantalla
	echo ""
	read -p "Presione [Enter] para continuar..."
done 
