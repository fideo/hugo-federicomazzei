---
ao_post_optimize:
- a:5:{s:16:"ao_post_optimize";s:2:"on";s:19:"ao_post_js_optimize";s:2:"on";s:20:"ao_post_css_optimize";s:2:"on";s:12:"ao_post_ccss";s:2:"on";s:16:"ao_post_lazyload";s:2:"on";}
author: fideo
date: "2021-11-16T12:42:14Z"
excerpt: Como copiar un directorio o archivo desde un docker a una máquina local o
  de la máquina local a un docker
id: 51882
post_format: []
status: publish
tags:
- comando
- docker
- linux
thumbnail: ../../../uploads/2021/11/cabeceraDocker-1.jpg
title: Como copiar directorios o archivos de un Docker a Local o viceversa
type: post
url: /2021/11/como-copiar-directorios-o-archivos-de-un-docker-a-local-o-viceversa.html
---

A veces necesitamos copiar un archivo desde nuestra máquina local de desarrollo al docker o viceversa; esto es muy común o frecuente que tengas que realizarlo cuando estás desarrollando una app, una web o lo que fuese dentro de un Docker.

Para esto tenemos un par de comandos que son muy útiles.  
El primero sirve para copiar desde un contenedor docker a una máquina local:

```
docker cp NOMBRE_CONTENEDOR:RUTA_DEL_CONTENEDOR RUTA_LOCAL
```

El segundo sirve para copiar desde la pc local a un contenedor docker:

```
docker cp RUTA_LOCAL NOMBRE_CONTENEDOR:RUTA_DEL_CONTENEDOR
```

Espero que ayude para quien esté buscando esta información
