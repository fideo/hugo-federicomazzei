---
author: fideo
date: "2011-02-23T21:44:12Z"
excerpt: ""
id: 624
post_format: []
status: publish
tags: []
title: convertir videos por linea de comando con ffmpeg
type: post
url: /2011/02/convertir-videos-por-linea-de-comando-con-ffmpeg.html
---
Para ver la resolución de un video ejecutamos esto en una consola

**ffmpeg -i mi-video.extension**

Luego para convertirlo lo que tenemos que hacer es lo siguiente:

ffmpeg -i mi-video.avi (que estaba en 640×480) -s 320×240 (el tamaño al cual lo quiero pasar) mi-video-convertido.mpg  
**ffmpeg -i mi-video.extension -s 320×240 mi-video-convertido.extension**
