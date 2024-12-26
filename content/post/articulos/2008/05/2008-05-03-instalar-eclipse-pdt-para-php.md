---
author: fideo
date: "2008-05-03T09:00:36Z"
excerpt: ""
id: 146
post_format: []
status: publish
tags: []
title: Instalar Eclipse PDT para PHP
type: post
url: /2008/05/instalar-eclipse-pdt-para-php.html
---
**Eclipse PDT para PHP**  
En este tutorial veremos como descargar, instalar y configurar el Entorno de Desarrollo Eclipse para trabajar con PHP. Eclipse es uno de los mas poderosos editores, para lenguajes como JAVA, C, PHP, y otros, y lo mejor de todo es que es de uso Gratuito.  
**Instalar Eclipse PDT para PHP**  
**Eclipse**, es un **Entorno de Desarrollo Profesional** y **Gratuito**, que puede ser utilizado para varios lenguajes Java, C, C++, **PHP**, etc. En este caso veremos como instalar una versión para PHP.  
  
**Descargando Eclipse PDT para PHP**  
Lo primero que debemos hacer es ir a la web de **Zend** (creadores de PHP), o a la web de **Eclipse** (creadores de eclipse), cuyas direcciones son:

<http://www.zend.com/pdt> o <http://www.eclipse.org/pdt> respectivamente.

**PDT**, significa **PHP Development Tools**, se puede descargar desde cualquiera de las dos direcciones, y la versión que debemos elegir es la última del PDT,

[para Windows](http://downloads.zend.com/pdt/all-in-one/pdt-1.0.0.R20070917-debugger-5.2.10.v20070905-all-in-one-win32.zip)

Y si lo prefieren,

[para Linux](http://downloads.zend.com/pdt/all-in-one/pdt-1.0.0.R20070917-debugger-5.2.10.v20070905-all-in-one-linux-gtk.tar.gz)

En este tutorial, utilizare la versión Windows pero, son similares y podrán seguirlo en cualquiera de los dos sin problemas.

Este archivo llamado **All In One**, contiene todo lo necesario, tanto el **Eclipse** como el **PDT**, pero es importante aclarar, que ya usaban **Eclipse** para otro lenguaje podrían descargar solo el **PDT** y agregarlo. Yo por ejemplo lo usaba para JAVA y le agregue el PDT, por una cuestion de comodidad y que sea mas fácil este tutorial, opte por realizarlo con **Eclipse PDT All In One**, desde cero e instalando todo completo, ya que seguro la mayoría no lo utiliza aun.

### Instalando Eclipse PDT para PHP

Luego de descargar el archivo, vamos a descomprimirlo, y esa carpeta esta lista para usarse. Eclipse esta realizado en JAVA y corre sobre la Máquina Virtual JAVA que ya tenemos instalada en nuestro Windows XP, por tanto el software Eclipse no necesitara instalación, lo que debemos hacer es simplemente ubicarlo en una carpeta de nuestro disco, en mi caso le llame **c:\\eclipse** y crear un icono de acceso directo al ejecutable, llamado **eclipse.exe**. Con esto ya estamos listos para ejecutar el **Entorno de Desarrollo Eclipse**.El contenido del archivo descomprimido y llevado al c:\\ queda como en la imagen.

![Eclipse en nuestro disco duro](http://www.tallerwebmaster.com/imgarticulos/125/carpeta-eclipse.gif)

Con doble click en **eclipse.exe**, o en el icono si ya lo hemos creamos en el escritorio o barra de inicio, vamos a ver la carga de Eclipse, como la siguiente imagen:

![Cargando Eclipse PDT](http://www.tallerwebmaster.com/imgarticulos/125/ejecutar-eclipse.jpg)

### Configurando Eclipse PDT para PHP

Al ser la primera vez que ejecutamos **Eclipse**, nos preguntará cual es nuestra **Carpeta de Trabajo** (Workspace), en mi caso, como se ve en la imagen elijo **c:\\appserv\\www**, ya que utilizo el Paquete **AppServ**, que contiene **Apache**, **MySQL** y **PHP**, de manera de probar mis sistemas en el disco local, sin tener que subirlos a un hosting cada vez. Si no tienen instalado uno, pueden ver otro de mis tutoriales de como instalar **AppServ** acá: [**Instalación de AppServ**](http://www.tallerwebmaster.com/Tutorial-Instalacion-de-AppServ-PHP-Apache-MySQL-c-67.html), o pueden usar otra carpeta, e incluso no probar localmente los sistemas y utilizar un hosting siempre, esto es como les quede mas cómodo.

![Seleccion del Espacio de Trabajo](http://www.tallerwebmaster.com/imgarticulos/125/espacio-trabajo.gif)

También podemos elegir “Usar por defecto y no preguntar de nuevo” (Use this as the default and do not ask again), de manera de evitar esta pregunta las próximas veces que ejecutemos **Eclipse**.

Como comentamos al comienzo, debemos tener en cuenta que **Eclipse** es un **Entorno Multi lenguaje**, por tanto, si no vemos la pantalla similar a la siguiente:

![Entorno Eclipse para PHP](http://www.tallerwebmaster.com/imgarticulos/125/entorno-eclipse.gif)

Debemos elegir, las opciones para indicarle que trabajaremos con **PHP**, como indica el punto **(1)** de la imagen, al seleccionar este, el Entorno se acondiciona para trabajar con lenguaje **PHP**, y veremos el **PHP Explorer (2)**, el **Cuadro de Salida (3)**, entre otros. Todas estas Cajas o Cuadros pueden ser reacomodadas a gusto moviéndolas con el mouse. Si cerramos alguna caja por error la podemos mostrar nuevamente con **Window**, **Show View**, y la caja correspondiente.  
**Nuestro primer Proyecto**  
Para **Crear Proyecto PHP** en Eclipse, vamos a ir al **PHP Explorer**, presionar **Botón Derecho**, y elegir **Nuevo** (New), **Proyecto PHP** (PHP Project).

![Crear Nuevo Proyecto PHP](http://www.tallerwebmaster.com/imgarticulos/125/proyecto-php.gif)

Luego, en el Cuadro de Dialogo, vamos a definir las características del **Proyecto PHP** tal como indica la imagen:

![Nuevo Proyecto PHP](http://www.tallerwebmaster.com/imgarticulos/125/nombre-proyecto.gif)

En primer lugar va el **Nombre del Proyecto** (Project name), en este caso le llamamos **“PrimerProyecto”**

Luego indicamos si vamos a almacenarlo en una carpeta especifica o la que Eclipse elige por **Defecto** (Use default), en cuyo caso el nombre de la carpeta estará formado por la carpeta que definimos cuando cargamos Eclipse por primera vez (**c:\\appserv\\www**), y en una subcarpeta con el nombre del proyecto, por tanto, quedaría en **c:\\appserv\\www\\PrimerProyecto**.

Debajo, podemos elegir si nuestro proyecto será escrito en cualquier versión de PHP (4 o 5), o en alguna de ellas específicamente (Enable project specifi settings), en mi caso seleccione PHP5,

Si presionamos **Siguiente** (Next), podremos agregar al proyecto alguna librería externa, como no es el caso, daremos clic en **Terminar** (Finish).

Se mostrara en el **Explorador PHP** (PHP Explorer), que es un árbol cuya raíz es el nombre del proyecto **“PrimerProyecto”**, tal como muestra la imagen:

![Agregar Archivo PHP al Proyecto](http://www.tallerwebmaster.com/imgarticulos/125/archivo-php.gif)

Para **Agregar Archivos PHP** a nuestro proyecto solo debemos presionar, **Botón Derecho**, **Nuevo** (New), **Archivo PHP** (PHP File).

Y en el cuadro de Dialogo, va a aparecer automáticamente como **Carpeta** (Source Folder), la carpeta donde esta nuestro Proyecto, o sea **“/PrimerProyecto”**, y abajo debemos darle un **Nombre al Archivo** (File Name), en este caso le di “**index.php**”

![Archivo PHP](http://www.tallerwebmaster.com/imgarticulos/125/nuevo-php.gif)

Si presionamos **Siguiente** (Next), nos permite elegir una plantilla con código pre-escrito, que sirve en caso de que nuestros archivos PHP tengan de comienzo la misma forma, o si tenemos archivos pre-escritos para reutilizar, como no es el caso le daremos **Terminar** (Finish).

El archivo se abre con las llaves de apertura y cierre de código PHP o sea **&lt;?php** y **?&gt;**, dentro podemos escribir nuestro código, en este caso fue bien sencillo como ven en la imagen:

![Codigo PHP](http://www.tallerwebmaster.com/imgarticulos/125/proyecto-hola.gif)

Ahora que esta todo listo, vamos a **Archivo** (File), **Guardar** (Save), y de esta forma guardamos nuestro **index.php**, si queremos probarlo utilizamos:

<http://localhost/PrimerProyecto/index.php> en nuestro navegador, y veremos el resultado, que es un simple “Hola”

![Hola](http://www.tallerwebmaster.com/imgarticulos/125/resultado-final.gif)

Como ven, utilizamos algo bien sencillo para comenzar, de esta forma tenemos listo el **Entorno Integrado Eclipse para PHP**, en una próxima entrega veremos algunos parámetros de configuración para ejecutar proyectos desde el mismo menú, visualizar variables y objetos, etc.

Tutorial obtenido de [TallerWebmaster](http://www.tallerwebmaster.com/Tutorial-Instalar-Eclipse-PDT-para-PHP-c-125.htm "TallerWebmaster")
