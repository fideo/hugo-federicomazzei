---
author: fideo
date: "2008-05-22T11:32:53Z"
excerpt: ""
id: 153
post_format: []
status: publish
tags: []
title: Cerrar programas bloqueados en Linux
type: post
url: /2008/05/cerrar-programas-bloqueados-en-linux.html
---
Si alguna vez algún programa se queda bloqueado hay una forma de cerrarlo desde la consola: usando el comando kill. Este comando tiene esta sintaxis:

kill

Para averiguar cuál es el proceso que queremos cerrar o matar (¡qué violento!) usamos el comando ps, que muestra la lista de procesos activos:

gorka@homer-desktop:~$ ps -A  
PID TTY TIME CMD  
5239 ? 00:00:00 mixer\_applet2  
5243 ? 00:00:01 notification-da  
5251 ? 00:03:52 firefox-bin  
5255 ? 00:00:02 gnome-terminal  
5260 ? 00:00:03 gnome-screensav  
5261 ? 00:00:00 gnome-pty-helpe

Por ejemplo vamos a cerrar firefox-bin. Su id de proceso (es la primera columna: PID) es el 5251:

kill -9 firefox-bin

Esto cierra el proceso firefox-bin “a lo bruto”, sin darle tiempo a cerrar archivos o vaciar buffers. Menos “brutal” es la opción ‘-15? que deja tiempo al proceso para realizar todas las acciones de cierre.

En Ubuntu (y en otras distribuciones) podemos hacerlo gráficamente entrando en: Sistema-&gt;Administración-&gt;Monitor de sistema. Esto abre una ventana en la que se muestra la lista de nuestros procesos y donde podremos cerrar los que nos interese.
