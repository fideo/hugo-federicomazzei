---
author: fideo
date: "2012-09-09T11:16:28Z"
excerpt: ""
id: 729
post_format: []
status: publish
tags: []
thumbnail: ../../../uploads/2020/08/cabeceraDefaulCodigo-1.jpg
title: gnome-settings usa mucho cpu
type: post
url: /2012/09/gnome-settings-usa-mucho-cpu.html
---
Por lo general no tengo problemas con mi Linux que uso de servidor hogareño (**ubuntu 12.04** en este momento), pero un día me siento delante de la pc que muy de vez en cuando utilizo, y me encuentro con que el cpu estaba siendo utilizado en gran parte por **gnome-settings**; me pongo a investigar que es lo que estaba sucediendo y googleando encontré que es un bug y que la solución para esto es borrar todos los archivos y directorios ocultos en el directorio home del usuario que está logueado.  
Para esto hice lo siguiente, inicié **midnight commander** como **root**

```
<pre class="wp-block-preformatted"> sudo mc
```

y lugo seleccioné con insert todas los directorios y archivos que empiezan con punto por ejemplo .mozilla .cache etc.  
Realizado esto presioné F8 para borrarlo y confirmé el borrado.  
Listo santo remedio, solucionado el problema.

Igualmente sería buenísimo saber que lo ocasionó.
