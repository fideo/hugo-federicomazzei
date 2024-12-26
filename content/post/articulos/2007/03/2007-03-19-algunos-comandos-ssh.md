---
ao_post_optimize:
- a:5:{s:16:"ao_post_optimize";s:2:"on";s:19:"ao_post_js_optimize";s:2:"on";s:20:"ao_post_css_optimize";s:2:"on";s:12:"ao_post_ccss";s:2:"on";s:16:"ao_post_lazyload";s:2:"on";}
author: fideo
date: "2007-03-19T16:52:18Z"
excerpt: ""
id: 112
post_format: []
status: publish
tags:
- comandos
- linux
thumbnail: ../../../uploads/2020/08/cabeceraDefaulCodigo-1.jpg
title: Algunos comandos SSH
type: post
url: /2007/03/algunos-comandos-ssh.html
---
Este es un listado de los comandos SSH que se usan con más frecuencia. Los comandos se encuentran organizados por tema e incluyen una descripción breve para comprender como usarlos.

### Comandos de navegación

- **pwd** muestra el path completo del directorio en el que se encuentra
- **cd** cambia de directorio, por ejemplo cd directorio/subdirectorio
- **cd ~** lleva a su directorio home
- **cd –** lleva al último directorio en el que estuvo
- **cd ..** sube a un directorio superior

### Listado de archivos

- **ls** lista archivos y directorios de un directorio
- **ls -al** lista archivos y directorios e información sobre los mismos
- **ls -aR** lista archivos e información incluyendo todos los subdirectorios
- **ls -aR | more** lista archivos e información incluyendo todos los subdirectorios por pantallas
- **ls -alR &gt; resultado.txt** lista archivos e información de subdirectorios y lo guarda en un archivo
- **cat resultado.txt** mostraría en pantalla el contenido del archivo
- **ls \*.html** lista todos los archivos acabados en .html
- **ls -al directorio/subdirectorio/** lista archivos e información de ese subdirectorio

### Crear, editar o eliminar archivos y directorios

- **pico /home/usuario/public\_html/index.html** edita el archivo index.html con el editor pico
- **touch /home/usuario/public\_html/404.html** crea el archivo vacio 404.html en ese directorio
- **rm archivo.txt** elimina archivo.txt
- **rm -rf directorio/** ¡CUIDADO! elimina el directorio indicado, los subdirectorios y todos sus archivos
- **mkdir descargas** Crea un directorio llamado descargas
- **rmdir descargas** Elimina el directorio llamado descargas

### Otros comandos SSH

- **cp -a /home/usuario/public\_html/origen/\* /home/usuario/public\_html/destino/**

Copia todos los archivos de un directorio a otro manteniendo sus respectivos permisos

- **du -sh** muestra es espacio total ocupado por el directorio en el que se encuentra
- **du -sh \*** muestra el espacio ocupado de cada archivo y directorio
- **lynx fideox.com.ar** usar el navegador Lynx para acceder a www.fideox.com.ar
- **whoami** muestra su nombre de usuario

### Comprimir zip

- **La estructura del zip es:  
  zip destino origen**

Desde consola, para descompimir el archivo en la carpeta actual:

- 1. Para compimir una carpeta:  
   **zip -r archivo.zip /carpeta**

- 2. Comprime ese archivo.  
   **zip archivo.zip archivo.txt**
