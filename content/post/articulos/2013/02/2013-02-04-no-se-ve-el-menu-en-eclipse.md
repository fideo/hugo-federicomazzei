---
author: fideo
date: "2013-02-04T11:06:22Z"
excerpt: El menú del IDE Eclipse no se visualiza, la solución al problema está acá.
id: 742
post_format: []
status: publish
tags: []
thumbnail: ../../../uploads/2020/08/cabeceraDefaulCodigo-1.jpg
title: No se ve el menú en Eclipse
type: post
url: /2013/02/no-se-ve-el-menu-en-eclipse.html
---
Unos de los problemas que nos encontramos varios al instalarnos el IDE Eclipse en Ubuntu es que al querer ir al menú no lo encontramos. Para esto hay una solución muy buena y facil de realizar.

Editamos libappmenu.so con el editor que mas les guste, puede ser que no lo encuentren en ese directorio, si es así ejecuten este comando y les mostrará en todos los lugares que se encuentra . – ( locate libappmenu.so )

```
<pre class="wp-block-preformatted">sudo vim /usr/lib/gtk-2.0/2.10.0/menuproxies/libappmenu.so
```

Una vez dentro de libappmenu.so buscamos

```
<pre class="wp-block-preformatted">Eclipse
```

y Reemplazamos la “E” de eclipse por “X” esto quedaría así

```
<pre class="wp-block-preformatted">Xclipse
```

grabamos y levantamos Eclipse otra vez, ya debería verse el menú.

***Enjoy!!!***
