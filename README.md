# opciones-bash
# menu.sh

#El menú cuenta con un select con diferentes opciones, en función de la que introduzca el usuario ejecutará un fichero u otro. Dentro de cada fichero
#tenemos dos fucnionalidades, por lo que le pasaremos un parametro al inicio para diferenciar cual es la que se tiene que ejecutar.

#Para la comprobar si un grupo existe recibimos el nombre del grupo en la variable $2, la cual la buscaremos dentro del fichero /etc/group, y mostraremos si existe o no.

#Para la opción 4, lo primero es comprobar que la ruta que nos ha pasado el usuario es un fichero valido, para ello utilizo un if -f $2 (Donde $2 es la ruta que nos ha pasado el #menu). Si es true entonces comprobamos que la palabra ($3) está dentro del fichero con el comando grep --color, el cual nos resalta la palabra clave, y en caso de que no la #encuentre, se lo mostraremos al usuario.
