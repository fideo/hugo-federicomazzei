---
author: fideo
date: "2011-08-07T14:46:23Z"
excerpt: ""
id: 637
post_format: []
status: publish
tags: []
title: Montar automáticamente discos rígidos extras en ubuntu
type: post
url: /2011/08/montar-automaticamente-discos-rigidos-extras-en-ubuntu.html
---
<font style="position: absolute;overflow: hidden;height: 0;width: 0">[Православни икони](http://xn--h1aafme.net/tag/%D0%BF%D1%80%D0%B0%D0%B2%D0%BE%D1%81%D0%BB%D0%B0%D0%B2%D0%BD%D0%B8-%D0%B8%D0%BA%D0%BE%D0%BD%D0%B8/)</font>Cuando tenemos mas de un disco rígido en nuestro pc y tenemos instalado ubuntu en mi caso en este momento Ubuntu 11,04 podemos hacer los siguiente para poder montar los disco automáticamente.

Primero abrimos gparted y elegimos el disco a montar, sobre ese disco hacemos botón derecho y elegimos la opción “información” y nos mostrará una ventana similar a esta.

luego edito el archivo fstab de la siguiente manera

sudo gedit /etc/fstab

me muestra un archivo con varias lineas y en el final de esta agregamos lo suiente:

el UUID: xxxxxxx + el lugar donde lo vamos a montar (en mi caso /media/discobk) + el tipo de extención que tiene mi disco rígido + algunos comando

y todo esto quedaría de la siguiente forma:

\#/dev/sdc1  
UUID=8550e94c-540d-4c83-b994-5abebdf7f156 /media/discobk ext4 relatime, errors=remount-ro 0 1

Enjoy!!!
