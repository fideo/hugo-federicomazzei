---
author: fideo
date: "2011-09-01T21:00:35Z"
excerpt: ""
id: 648
post_format: []
status: publish
tags: []
title: Contar cantidad de archivos modificados
type: post
url: /2011/09/contar-cantidad-de-archivos-modificados.html
---
La con consola de Linux ofrece una cantidad interesante de comandos, hoy publico esto para no olvidarme de como se arma y seguramente a alguien le puede servir.

```
<pre class="wp-block-preformatted">find /home/fideo/ -type f -mtime 1 -ls | wc -l
```

Esto sería algo así, el comando “find” con la opción “-type f” buscará todos los archivos y no directorios que se encuentra en el path que hayamos ingresado en mi caso “/home/fideo/”. Luego la opción “-mtime 1” buscará los archivos modificados con una vigencia de un día; y por último en la primera parte de la pubería (pipes) los listamos con “-ls”.  
Para contar la cantidad de archivos que fueron modificados debemos realizar lo siguiente pasar por tubería ” | wc -l”, donde “wc” cuenta la cantidad de caracteres pero con la opción “-l” cuanta la cantidad de lineas.

También podemos poner estos comando en un alias así no tendremos que tipear tanto cada vez que querramos saber cuantos archivos fueron modificados.

Espero que les sirva y mil disculpás por la redacción no es la mas óptima.

Enjoy.
