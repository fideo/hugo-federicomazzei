---
author: fideo
date: "2012-11-13T16:30:11Z"
excerpt: ""
id: 733
post_format: []
status: publish
tags: []
thumbnail: ../../../uploads/2017/11/cabeceraUbuntu-1.jpg
title: Conocer información sobre nuestro servidor en linux
type: post
url: /2012/11/conocer_informacion_sobre_nuestro_servidor_en_linux.html
---
Para conocer **detalle** de nuestra pc desde la consola podemos utilizar algunos comandos.

Para saber la cantidad de procesadores ejecutar este comando en Linux

```
<pre class="wp-block-preformatted">grep processor /proc/cpuinfo | wc –l
```

Para saber el modelo de procesador ejecutar este comando en Linux

```
<pre class="wp-block-preformatted">cat /proc/cpuinfo | grep "model name"
```

*Enjoy!!!*
