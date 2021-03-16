#!/bin/bash
#vamos a tener varias secciones
#lo primero que tenemos que hacer es un switch/case o un if para recibir el parametro
#despues desplegar las opciones de cada parametro (osea metodologias agiles o tradicionales)
#por ahora vamos a hacer esas cosas

#Para recibir parametros, el script los toma como variables especiales
opcion=""#para entrar le menu 1
opcion2=""#para navegar en el menu 2
case $1 in
  -a|-A) #Condicion
  echo "Bienvenido a la guía rápida de Agile, para continuar seleccione un tema:

            1.-SCRUM
            2.-X.P.
            3.-Kanban
            4.-Crystal
"

read -p "ingrese la opcion:" opcion
  case $opcion in
    1)
    echo "Usted esta en la sección SCRUM, seleccione la opción que desea utilizar.

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
;;
    -t|-T)
    echo "Bienvenido a la guía rápida de Agile, para continuar seleccione un tema:

              1.-Cascada
              2.-Espiral
              3.-Modelo V

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
    ;;
    *)
    echo "no es opcion valida "
    ;;
esac
