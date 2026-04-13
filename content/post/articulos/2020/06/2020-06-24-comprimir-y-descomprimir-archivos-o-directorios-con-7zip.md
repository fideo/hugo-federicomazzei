---
author: fideo
date: "2020-06-24T07:00:00Z"
excerpt: ""
id: 1365
post_format: []
status: publish
tags:
- comando
- linux
- sistema operativo
thumbnail: /assets/uploads/2021/08/cabeceraBash-1.jpg
title: Comprimir y descomprimir archivos o directorios con 7zip
type: post
url: /2020/06/comprimir-y-descomprimir-archivos-o-directorios-con-7zip.html
---

Desde la consola se puede comprimir archivo o directorios con un simple comando

## Comprimir

Si se necesita comprimir una carpeta o un archivo lo que se necesita hacer es lo siguiente:

```
7z a archivo_comprimido.7z /ruta/a/carpetas/ /ruta/a/archivos
```

A fines prácticos si se necesita realizar una compresión de un directorio o carpeta el comando sería el siguiente:

```
7z a directorios_comprimidos.7z /ruta/a/carpetas/
```

si fuese un archivo solo el comando sería el siguiente

```
7z a archivo_comprimido.7z /ruta/a/archivos
```

## Extraer

Para poder extraer el contenido de un archivo zipeado ya sea con la extensión .zip o .7z

```
7z e archivo_a_extraer_el_contenido.7z
```

Estos son los comandos básicos de 7zip para mas información se puede visitar la documentación oficial de 7zip <a href="https://documentation.help/7-Zip/" target="_blank">acá</a>