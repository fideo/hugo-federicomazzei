---
author: fideo
date: "2024-06-05T12:33:09Z"
excerpt: ""
id: 52287
post_format: []
status: publish
tags:
- comando
- linux
- software
- ubuntu
thumbnail: ../../../uploads/2021/08/cabeceraBash-1.jpg
title: Partir en varios archivos .zip un directorio o un archivo
type: post
url: /2024/06/partir-en-varios-archivos-zip-un-directorio-o-un-archivo.html
---
En mi caso necesitaba realizar un comando que me permita partir en varios archivos .zip un directorio o un archivo .iso
<!--more-->
Obviamente que por pantalla gráfica esto es muy fácil de hacer pero el problema se presenta cuando estas accediendo a un servidor y tienes que partir un archivo grande en varios fragmentos para poder transportarlo ya sea para mandar por mail o copiarlo a otro lugar.

En principio tenemos que tener instalado el **p7zip** si no lo tenes instalado en Ubuntu o linux derivados de Debian se instala así:

```
sudo apt-get install p7zip-full
```

Si ya lo tenes instalado lo único que tenes que hacer es especificar la cantidad de MB (Mega Bytes) en la que queres partir tu directorio o tu archivo. En mi ejemplo yo lo realizo con un archivo .iso y para eso ejecuto la siguiente linea.

```
7z a -v 500m -tzip ARCHIVO.zip ARCHIVO.iso
```

Una vez ejecutada se podrá ver en el directorio destino las N cantidad de partes de archivos .zip que fué generando de 500MB hasta completar el total del archivo .iso

Si quisieramos realizar una compresión en varios archivos de un directorio el comando a utilizar sería algo así:

```
7z a -v500m -tzip archivo.zip miDirectorio/*
```

Los archivos.zip tendrá varias partes de 500MB según lo que pese el directorio a comprimir y partir

[Podes ver mas ejemplos de lineas de comandos en este link](/tags/#comandos/)

<a href="https://www.7-zip.org/faq.html" target="_blank">O podes buscar mas ayuda en el manual oficial de p7zip</a>
