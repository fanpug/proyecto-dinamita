#!/bin/bash
#Inicio del codigo
#Para recibir parametros, el script los toma como variables especiales


################################################################################
##########Declaracion de variables para navegar dentro de los menus#############

#Variable para el menu principal de metodologias Agile/menu 1
opcion=""
#Variable para el menu principal de metodologias tradicionales/menu 2
opcion2=""

###############################################################################
#######################Inicio del codigo del script############################
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

read -p "ingrese la opcion:" opcion
  case $opcion in
    1)
    echo "Usted esta en la sección SCRUM, seleccione la opción que desea utilizar.

            1.-Agregar información
            2.-Buscar
            3.-Eliminar información
            4.-Leer base de información.
            5.-Regresar

"
                    read -p "ingrese la opcion:" opcion2
                    case $opcion2 in
                      1) echo "codigo para agregar info";;
                      2) echo "codigo para buscar info";;
                      3)echo "codigo para eliminar info";;
                      4) echo "codigo para leer base info";;
                    esac
    ;;
    2) echo "Usted esta en la sección X.P, seleccione la opción que desea utilizar.

            1.-Agregar información
            2.-Buscar
            3.-Eliminar información
            4.-Leer base de información.
"
                    read -p "ingrese la opcion:" opcion2
                    case $opcion2 in
                    1) echo "codigo para agregar info";;
                    2) echo "codigo para buscar info";;
                    3)echo "codigo para eliminar info";;
                    4) echo "codigo para leer base info";;
esac
    ;;
    3) echo "Usted esta en la sección Kanban, seleccione la opción que desea utilizar.

            1.-Agregar información
            2.-Buscar
            3.-Eliminar información
            4.-Leer base de información.
"
                    read -p "ingrese la opcion:" opcion2
                    case $opcion2 in
                      1) echo "codigo para agregar info";;
                      2) echo "codigo para buscar info";;
                      3)echo "codigo para eliminar info";;
                      4) echo "codigo para leer base info";;
esac
    ;;
    4) echo "Usted esta en la sección Crystal, seleccione la opción que desea utilizar.

            1.-Agregar información
            2.-Buscar
            3.-Eliminar información
            4.-Leer base de información.
"
                    read -p "ingrese la opcion:" opcion2
                    case $opcion2 in
                      1) echo "codigo para agregar info";;
                      2) echo "codigo para buscar info";;
                      3)echo "codigo para eliminar info";;
                      4) echo "codigo para leer base info";;
esac
    ;;
    esac
  done
;;
    -t|-T)
      until [[ $opcion == "4" ]]; do
    echo "Bienvenido a la guía rápida de Agile, para continuar seleccione un tema:

              1.-Cascada
              2.-Espiral
              3.-Modelo V
              4.-Salir

  "
  read -p "ingrese la opcion:" opcion
    case $opcion in
      1)
      echo "Usted esta en la sección Cascada, seleccione la opción que desea utilizar.

              1.-Agregar información
              2.-Buscar
              3.-Eliminar información
              4.-Leer base de información.
  "
                      read -p "ingrese la opcion:" opcion2
                      case $opcion2 in
                        1) echo "codigo para agregar info";;
                        2) echo "codigo para buscar info";;
                        3)echo "codigo para eliminar info";;
                        4) echo "codigo para leer base info";;
                      esac
      ;;
      2) echo "Usted esta en la sección Espiral, seleccione la opción que desea utilizar.

              1.-Agregar información
              2.-Buscar
              3.-Eliminar información
              4.-Leer base de información.
  "
                    read -p "ingrese la opcion:" opcion2
                    case $opcion2 in
                      1) echo "codigo para agregar info";;
                      2) echo "codigo para buscar info";;
                      3)echo "codigo para eliminar info";;
                      4) echo "codigo para leer base info";;
                    esac
      ;;
      3) echo "Usted esta en la sección Modelo V, seleccione la opción que desea utilizar.

              1.-Agregar información
              2.-Buscar
              3.-Eliminar información
              4.-Leer base de información.

  "
                    read -p "ingrese la opcion:" opcion2
                    case $opcion2 in
                      1) echo "codigo para agregar info";;
                      2) echo "codigo para buscar info";;
                      3)echo "codigo para eliminar info";;
                      4) echo "codigo para leer base info";;
                    esac
      ;;

    esac
  done
    ;;
    *)
    echo "no es opcion valida "
    ;;
esac
