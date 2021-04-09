# opciones-bash
## Ejecución del script

- Descargar el repositorio y descomprimir.
- Situarse en la carpeta donde se ha descomprimido el proyecto.
- Para ejecutar el script es suficiente con *./menu.sh* o *bash menu.sh*

## Funcionamiento del script
El script realiza la siguientes acciones en funcion de la operación solicitada:

1. Comprobar si un usuario existe en el sistema.
2. Comprobar si un grupo existe en el sistema.
3. Visualizar el tamaño de un directorio o fichero del sistema.
4. Comprobar si existe una palabra dentro de un fichero de texto.
5. Cerrar el programa.

## Ejemplo de como funciona el script.
Comprobar si un usuario existe:

![imagen](https://user-images.githubusercontent.com/79518642/114142995-df9d7a00-9913-11eb-9cf3-26c7c09ea740.png)

Comprobar si un grupo existe en el sistema:

![imagen](https://user-images.githubusercontent.com/79518642/114143150-11aedc00-9914-11eb-9858-fcf9f3c7d44e.png)

Visualizar el tamaño de un directorio o fichero:

![imagen](https://user-images.githubusercontent.com/79518642/114143412-69e5de00-9914-11eb-97c2-7832a898d348.png)

Comprobar si existe una palabra dentro de un fichero:

![imagen](https://user-images.githubusercontent.com/79518642/114143832-eb3d7080-9914-11eb-93f1-c9892c36f68b.png)


El menú cuenta diferentes opciones, en función de la que introduzca el usuario ejecutará un fichero u otro. Dentro de cada fichero
tenemos dos fucnionalidades, por lo que le pasaremos un parametro al inicio para diferenciar cual es la que se tiene que ejecutar.

Para la comprobar si un grupo existe recibimos el nombre del grupo en la variable $2, la cual la buscaremos dentro del fichero /etc/group, y mostraremos si existe o no.

Para la opción 4, lo primero es comprobar que la ruta que nos ha pasado el usuario es un fichero valido, para ello utilizo un if -f $2 (Donde $2 es la ruta que nos ha pasado el **menu**). Si es true entonces comprobamos que la palabra ($3) está dentro del fichero con el comando grep --color, el cual nos resalta la palabra clave, y en caso de que no la #encuentre, se lo mostraremos al usuario.
