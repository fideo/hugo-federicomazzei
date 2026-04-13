---
ao_post_optimize:
- a:5:{s:16:"ao_post_optimize";s:2:"on";s:19:"ao_post_js_optimize";s:2:"on";s:20:"ao_post_css_optimize";s:2:"on";s:12:"ao_post_ccss";s:2:"on";s:16:"ao_post_lazyload";s:2:"on";}
author: fideo
date: "2011-09-29T11:57:54Z"
excerpt: Para conocer que tipo de arquitectura tiene tu pc es necesario ejecutar este
  comando
id: 659
post_format: []
status: publish
tags:
- comando
- linux
- software
thumbnail: ../../../uploads/2021/08/cabeceraBash-1.jpg
title: Otros Comandos Linux
type: post
url: /2011/09/comandos-linux.html
---
Para mostrar la arquitectura de nuestra máquina podemos usar el comando arch el cual nos devolverá x86\_64 si corresponde a una arquitectura de 64 bits o nos devolverá i386, i486, i586 o i686 si pertenece a una arquitectura de 32 bits

```
<pre class="wp-block-preformatted">arch
```

Si necesitamos obtener una lista de directorios (o carpetas) de una ruta específica podemos usar el siguiente comando.

```
<pre class="wp-block-preformatted">ls -l /directorio/ | grep ^d
```

Para pasar todas las letras Mayúsculas a Minúscula del contenido de un archivo podemos usar el comando sed tal como se muestra a continuación.

```
<pre class="wp-block-preformatted">sed -e 's/\(.*\)/\L\1/' archivo_a_modificar.txt > archivo_ya_modificado.txt
```
