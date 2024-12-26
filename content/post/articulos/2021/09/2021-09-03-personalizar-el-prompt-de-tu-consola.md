---
ao_post_optimize:
- a:5:{s:16:"ao_post_optimize";s:2:"on";s:19:"ao_post_js_optimize";s:2:"on";s:20:"ao_post_css_optimize";s:2:"on";s:12:"ao_post_ccss";s:2:"on";s:16:"ao_post_lazyload";s:2:"on";}
author: fideo
date: "2021-09-03T08:49:27Z"
excerpt: ""
id: 51856
post_format: []
status: publish
tags: []
thumbnail: ../../../uploads/2021/08/cabeceraBash-1.jpg
title: Personalizar el prompt de tu consola
type: post
url: /2021/09/personalizar-el-prompt-de-tu-consola.html
---

Es muy útil tener siempre a mano información que nos puede servir en el día a día, y si la linea de comandos es lo que usas en el día a día entonces este post es útil para vos.

Ya sea que uses Linux o Mac la consola es una herramienta muy potente; hoy en este post dejo un link de como personalizar el prompt de la consola como uno quiere.

Para esto no hace mas que entrar a este link <https://scriptim.github.io/bash-prompt-generator/> y agregarle o sacarle las opciones que uno quiera y/o necesite.

Para esto como explica el sitio scriptim.github.io debemos editar el archivo ~/.bashrc que se encuentra en la raíz del usuario a personalizar el prompt; podemos tener una personalización de consola para cada usuario.  
En ese archivo vamos a buscar una linea que contenga esto “PS1=…..” donde en los puntos suspensivos van a ir los valores para armar el prompt personalizado.

Una vez que hayas copiado el código que el sitio proporciona dentro de PS1=….. por ejemplo:

```
PS1='\[\e[0;38;5;25m\]\u\[\e[0;38;5;28m\]@\[\e[0;38;5;41m\]\h\[\e[0m\]-\[\e[0m\]$(ip route get 1.1.1.1 | awk -F"src " '"'"'NR==1{split($2,a," ");print a[1]}'"'"')\[\e[0m\]:\[\e[0m\]\w \a\[\e[0m\]- \[\e[0m\]$?\[\e[0m\]>\n\[\e[0m\]'
```

Hay que hacer que tome encuentra estos cambios para esto podemos cerrar la consola y volverla a abrir o escribimos en la consola bash y presionamos enter

```
bash 
```