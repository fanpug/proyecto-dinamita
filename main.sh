#!/bin/bash
#Inicio del codigo
#Para recibir parametros, el script los toma como variables especiales


################################################################################
##########Declaracion de variables para navegar dentro de los menus#############

#Variable para el menu principal de metodologias Agile/menu 1
opcion=""

#Variable para el menu principal de metodologias tradicionales/menu 2
opcion2=""

#Arreglos con los nombres para cada tipo de metodologia
nombresAgiles=('SCRUM' 'X.P.' 'Kanban' 'Crystal')
nombresTradicionales=('Cascada' 'Espiral' 'Modelo V')

###############################################################################
#######################Inicio del codigo del script############################
		##############-METODOLOGIAS AGILES-#################
case $1 in
  -a|-A) #Condicion
  until [[ $opcion == "5" ]]; do
    #statements
  echo "Bienvenido a la guía rápida de Agile, para continuar seleccione un tema:

            1.-SCRUM
            2.-X.P.
            3.-Kanban
            4.-Crystal
            5.-Exit
"

read -p "Ingrese la opcion: " opcion

	case $opcion in
     	1|2|3|4)
    echo "Usted esta en la sección de ${nombresAgiles[opcion - 1]}, seleccione la opción que desea utilizar.

            1.-Agregar información
            2.-Buscar
            3.-Eliminar información
            4.-Leer base de información.
            5.-Regresar

"
                    read -p "Ingrese la opcion: " opcion2
                    case $opcion2 in
                      1)
			#Creamos el archivo necesario (si ya existe el archivo esta instruccion no pasa nada)
                        touch ${nombresAgiles[opcion-1]}.inf

                        #Captura el titulo y la definicion del concepto a agregar
                        read -p "Introduzca el titulo del concepto: " titulo
                        echo ''
                        read -p "Agregue la definicion del concepto: " descripcion

                        #Agregamos la informacion solicitada en el formato apropiado al documento
                        echo "[$titulo].- $descripcion" >> ./${nombresAgiles[opcion-1]}.inf
                        echo ''
                        echo ''

                         ;;
                       2)
                             #Capturamos la palabra o concepto que queremos buscar
                        read -p "Introduzca el concepto que desea buscar: " buscar
                          #statements
                          if [ -f ./${nombresAgiles[opcion-1]}.inf ]
                            then
                              echo "Estos son los resultados encontrados: "
                              echo ''
                              grep -i $buscar ./${nombresAgiles[opcion-1]}.inf
                              echo ''

                            else
                              echo "El archivo no existe"
                            fi

                        #Buscamos e imprimimos lo que encontramos
                         ;;
                       3)
                        if [ -f ./${nombresAgiles[opcion-1]}.inf ]
                         then
                           rm ./${nombresAgiles[opcion-1]}.inf
                          echo "El archivo de ${nombresAgiles[opcion-1]} a sido eliminado con exito"
                         else
                           echo "El archivo no existe"
                         fi
                         ;;
                       4)
                       if [ -f ./${nombresAgiles[opcion-1]}.inf ]
                        then
                          cat ${nombresAgiles[opcion-1]}.inf
                        else
                          echo "El archivo no existe"
                        fi
                        #Imprimir el archivo solicitado




			;;

                    esac
	;;
	esac



		##############-METODOLOGIAS TRADICIONALES-#################
done
;;
    -t|-T)
      until [[ $opcion == "4" ]]; do
    echo "Bienvenido a la guía rápida de metodologias Tradicionales, para continuar seleccione un tema:

              1.-Cascada
              2.-Espiral
              3.-Modelo V
              4.-Salir

  "
  read -p "Ingrese la opcion: " opcion

	case $opcion in
     	1|2|3)
    echo "Usted esta en la sección de ${nombresTradicionales[opcion - 1]}, seleccione la opción que desea utilizar.

            1.-Agregar información
            2.-Buscar
            3.-Eliminar información
            4.-Leer base de información.
            5.-Regresar

"
                    read -p "Ingrese la opcion: " opcion2
                    case $opcion2 in
                       1)
			#Creamos el archivo necesario (si ya existe el archivo esta instruccion no pasa nada)
			touch ${nombresTradicionales[opcion-1]}.inf

			#Captura el titulo y la definicion del concepto a agregar
			read -p "Introduzca el titulo del concepto: " titulo
			echo ''
			read -p "Agregue la definicion del concepto: " descripcion

			#Agregamos la informacion solicitada en el formato apropiado al documento
			echo "[$titulo].- $descripcion" >> ./${nombresTradicionales[opcion-1]}.inf
			echo ''
			echo ''

                         ;;
                       2)
			#Capturamos la palabra o concepto que queremos buscar
                        read -p "Introduzca el concepto que desea buscar: " buscar
                        if [ -f ./${nombresTradicionales[opcion-1]}.inf ]
                          then
                            echo "Estos son los resultados encontrados: "
                            echo ''
                            grep -i $buscar ./${nombresTradicionales[opcion-1]}.inf
                            echo ''

                          else
                            echo "El archivo no existe"
                          fi


                         ;;
                       3)
                       if [ -f ./${nombresTradicionales[opcion-1]}.inf ]
                        then
                          rm ./${nombresTradicionales[opcion-1]}.inf
                         echo "El archivo de ${nombresTradicionales[opcion-1]} a sido eliminado con exito"
                        else
                          echo "El archivo no existe"
                        fi


                         ;;
                       4)
                        #Imprimir el archivo solicitado
                        if [ -f ./${nombresTradicionales[opcion-1]}.inf ]
                         then
                           cat ${nombresTradicionales[opcion-1]}.inf
                         else
                           echo "El archivo no existe"
                         fi
			 ;;

                    esac
	;;
	esac
  done
    ;;
    *)
    echo "No es una opcion valida"
    ;;
esac
