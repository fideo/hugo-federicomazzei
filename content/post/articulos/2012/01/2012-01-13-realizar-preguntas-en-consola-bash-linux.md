---
author: fideo
date: "2012-01-13T14:23:15Z"
excerpt: ""
id: 682
post_format: []
status: publish
tags: []
thumbnail: ../../../uploads/2017/11/cabeceraUbuntu-1.jpg
title: Realizar preguntas en consola bash linux
type: post
url: /2012/01/realizar-preguntas-en-consola-bash-linux.html
---
Dentro de este zip ( [ejemplo de confirmar en bash ](https://www.federicomazzei.com.ar/wp-content/uploads/2012/01/ejemplo....zip)) pueden encontrar un ejemplo completo de como realizar las preguntas que aparecen por la consula linux.

Es decir, que si nosotros queremos hacer un bash donde antes de borrar un archivo nos pregunte si realmente queremos borrar ese archivo. Para esto hay una función dentro del confirmar.sh que es llamada / incluida dentro de test.sh.  
  
La salida sería algo así:

```
<pre class="wp-block-preformatted">$ sh test.sh
Delete file1?
```

seguido a esto se deverá incluir si, yes, y, YES algunos de estos valores definidos previamente en confirmar.sh

  
Si ingresamos y procederá al borrado del archivo file1 donde el comando para ejecutar eso esta incluido en test.shSi ingresamos n no ingresará a la condición y volverá a la consola si ejecutar el comando de borrado de archivo.

**Enjoy!!!**
