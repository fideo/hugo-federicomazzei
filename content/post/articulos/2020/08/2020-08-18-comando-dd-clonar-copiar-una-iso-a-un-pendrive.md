---
author: fideo
date: "2020-08-18T18:46:56Z"
excerpt: ""
id: 1448
post_format: []
status: publish
tags:
- comando
- linux
- sistema operativo
thumbnail: ../../../uploads/2021/08/cabeceraBash-1.jpg
title: Comando dd clonar copiar una ISO a un Pendrive
type: post
url: /2020/08/comando-dd-clonar-copiar-una-iso-a-un-pendrive.html
---

En este post muestro como generar un pendrive booteable para instalar linux ubuntu por ejemplo, con el comando dd (Dataset Definition), pero sirve para cualquier imagen de disco que tenga un sistema operativo o que sea booteable esa imagen luego de ser instalada dentro del pendrive.

Para esto vamos a usar primero el comando `lsblk`

```
lsblk
```

Este comando nos permite listar todos los dispositivos como por ejemplo discos duros, SSD, memorias flash, CD-ROM; una vez que visualizamos donde se encuentra nuestro pendrive procedemos a desmontarlo con el comando umount

```
umount /media/fideo/Debian\ 10.4.0\ amd64
```

En mi caso yo tenía en el pendrive una imagen grabada con el título de Debian 10.4.0 amd64; ustedes deberían usar o completar el comando con el título del nombre de la imagen que tengan si es que tienen algún título en el pendrive. Luego chequeamos que realmente se haya desmontado el pendrive ejecutando nuevamente el comando `lsblk`

```
lsblk
```

Por último procedemos a ejecutar el comando que nos permitirá grabar la imagen ISO dentro del pendrive y es tan simple como esta

```
sudo dd if=/home/fideo/Descargas/ubuntu-20.04.1-desktop-amd64.iso of=/dev/sde bs=4M status=progress && sync
```

Con `if=` le especificamos la ruta completa de donde se encuentra nuestra imagen ISO y con `of=` le decimos donde se encuentra el pendrive

Listo eso es todo.

Pueden ver el video que hace exactamente los mismos pasos que expliqué acá.

<iframe allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen="" frameborder="0" height="281" loading="lazy" referrerpolicy="strict-origin-when-cross-origin" src="https://www.youtube.com/embed/dYZJXNuNvtM?feature=oembed" title="Comando dd para pasar una imagen ISO a un pendrive" width="100%"></iframe>

También se puede realizar una clonación de disco con el comando dd, tal como se realiza con Clonezilla, Ghost clone disk y tantos otros programas para realizar esa tarea.

Con Linux no necesitas instalar nada de eso solo ejecutas el siguiente comando.

Clonar discos completos con el comando dd
-----------------------------------------

  
Con esto clonaríamos el disco sda en sdb teniendo en cuanta que son discos SATA:

```
sudo dd if=/dev/sda |pv|dd of=/dev/sdb bs=1M
```

Con la opción bs=1M , hace que tanto la lectura como la escritura se realice en bloques de 1 MegaByte, (menos, sería mas lento pero mas seguro, y con mas nos arriesgamos a perder datos por el camino).

Usar el comando dd no da información al ejecutarlo, el prompt de la terminal no muestra ninguna información adicional, por lo que no sabemos que es lo que esta pasando y cuanto tiempo falta para que termine de ejecutarse.

Para esto tenemos que instalar el comando **pv**, ya que en Ubuntu al menos no viene instalado por defecto.

Entonces al pasar por tuberias ese comando nos mostrará cuanto tiempo lleva corriendo ese proceso y cuantos Megas, Gigas o la unidad de medida que sea está copiando.

![](/assets/uploads/2023/08/comando_dd_clonar_disco.jpg)

***Enjoy!!!***
