---
author: fideo
date: "2014-03-11T21:10:14Z"
excerpt: Corregir el problema que tiene skype en linux con la webcam Pixart Imaging,
  Inc que no funciona.
id: 799
post_format: []
status: publish
tags: []
title: Problema con la Webcam Pixart Imaging Inc y Skype en Linux
type: post
url: /2014/03/problema_webcam_pixart_imaging_inc_skype_linux.html
---
Para los que usan la **Webcam Pixart Imaging en linux** y están hinchados las bolas de googlear y googlear para hacer funcionar la webcam **Pixart Imaging Inc** acá les dejo una linea para que la ejecuten en su consola; acto seguido se les va abrir directamente **Skype.**

```
<pre class="wp-block-preformatted">LD_PRELOAD=/usr/lib/i386-linux-gnu/libv4l/v4l1compat.so skype
```

Luego vayan a opciones –&gt; Dispositivos de Video y chequeen si les anda la cam.  
A mi me funcionó, si no les funciona me comentan.

Esto puede servir también para otras webcams en mi caso la webcam es **Pixart Imaging, Inc.** y tiene escrito en la base ***SATE .***

*Enjoy!!!*

Imagen ejemplo
--------------

![Webcam SATE](http://federicomazzei.com.ar/blog/wp-content/uploads/2014/03/webCamSATE.jpg)
