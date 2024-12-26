---
author: fideo
date: "2006-10-21T02:04:15Z"
excerpt: ""
id: 89
post_format: []
status: publish
tags:
- comando
- linux
title: Mountar una imagen ISO en Linux
type: post
url: /2006/10/mountar-una-imagen-iso-en-linux.html
---
Esta nota es más que nada una ayuda memoria, porque cada vez que tengo que montar una imagen ISO en linux no recuerdo como se hace talvez a alguien más le sirva.

```
mount -t iso9660 -o loopback imagen.raw /punto/de/montaje
```
 
