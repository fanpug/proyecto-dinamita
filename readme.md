# Proyecto del Primer Parcial
Estos repositorios fueron creados para el proyecto del primer parcial del equipo Dinamita de la materia de Desarrollo Basado en Plataformas. Los links de los otros repositorios son:

- [GitHub](https://github.com/fanpug/proyecto-dinamita)

- [GitLab](https://gitlab.com/Fanpug/proyecto-dinamita)

- [Bitbucket](https://bitbucket.org/Fanpug/proyecto-dinamita/src)

Los miembros del equipo Dinamita son:

	*Humberto Alejandro Navarro Andujo - Capitan

	*Sergio Armando Rodriguez Nava

	*Kevin López Venegas

## Para empezar
Se puede descargar el source code y el script principal a traves de las herramientas que ofrecen ya sea GItHub, GitLab o BitBucket.
O bien ejecutando en la ubicacion deseada el siguiente comando:
```
git clone git@github.com:fanpug/proyecto-dinamita.git
```
en la terminal de Linux.

### Prerequisitos
Para compilar el codigo se necesitan tener preferiblemente las ultimas versiones de Bash y de Docker en nuestro sistema operativo de Linux con los comandos
```
sudo apt-get -y update
```
```
sudo apt-get -y upgrade
```
A continuacion se describen los pasos para descargar e instalar los programas necesarios.

### Instalando
Necesitamos instalar Docker para correr un contenedor con la imagen que contiene nuestra aplicacion. Para descargar e instalar Docker se deben seguir los siguientes pasos:
1. Actualizar los paquetes APT locales con el comando
```
sudo apt-get install \
    apt-transport-https \
    ca-certificates \
    curl \
    gnupg \
    lsb-release
```
2. Anadir la llave GPG
```
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg
```
3. Instalar el motor de docker con el comando
```
sudo apt-get install docker-ce docker-ce-cli containerd.io
```
##### Para verificar
la instalacion podemos correr el comando
```
sudo docker run hello-world
```
4. Por ultimo, debemos hacer un pull a la imagen de nuestra aplicacion alojada en [dockerhub](https://hub.docker.com/r/fanpug/app-dinamita) con el comando
```
docker pull fanpug/app-dinamita
```

##### Opcional
Para ejecutar el script principal del programa sin la necesidad de un contenedor, necesitamos instalar Bash con el comando:
```
sudo apt install bash
```
Podemos verificar que la instalacion fue completada con exito utilizando el comando:
```
bash --version
```


## Corriendo pruebas
Normalmente para correr cualquier tipo de contenedor y darle un nombre se usa una estructura de comando similar a esta
```
docker run -ti --name nombre-de-contenedor nombre-de-imagen <otros-parametros-opcionales>
```
Para correr un contenedor con nuestra aplicacion es bastante simple. Para realizar un contenedor que acceda al menu de metodologias Agiles simplemente se debe introducir el siguiente comando en la terminal de Linux
```
docker run -ti --name metodologias-agiles fanpug/app-dinamita -a
```
Y alternativamente, para correr un contenedor con el menu de metodologias Tradicionales se introduce el comando
```
docker run -ti --name metodologias-tradicionales fanpug/app-dinamita -t
```

##### Opcional
Una vez cumplidos los prerequisitos simplemente se puede ejecutar el script principal del programa en la carpeta del repositorio con el comando
```
bash main.sh -a
```
para acceder al menu de metodologias agiles y el comando
```
bash main.sh -t
```
para acceder al menu de las metodologias tradicionales.


## Construido con
* Nano - Editor de texto
* Atom - Editor de texto
* Docker - Creacion de contenedores

## Contribuiciones
No aceptamos contribuciones >:|

## Autores
* **Humberto Alejandro Navarro Andujo** - [Repositorio](https://github.com/fanpug)
* **Sergio Armando Rodriguez Nava** - [Repositorio](https://github.com/XKerberosX)
* **Kevin López Venegas** - [Repositorio](https://github.com/kevinlpzv)

## Licencia
El proyecto tiene libre licencia ;)

## Agradecimientos
El profesor Luis Antonio Ramirez Martinez fue quien nos inspiro a realizar este proyecto, muchas gracias profe.

Gracias a las personas de PurpleBooth por su referencia de como debe ser el [formato de un readme](https://gist.github.com/PurpleBooth/109311bb0361f32d87a2).
