---
author: fideo
date: "2009-09-12T01:37:47Z"
excerpt: ""
id: 268
post_format: []
status: publish
tags: []
title: Volver a cargar GRUB
type: post
url: /2009/09/volver-a-cargar-grub.html
---
Para volver a cargar GRUB como cargador de arranque sigue estos pasos:

<table><tr><td>1. $ sudo grub
</td><td> –&gt; ejecutamos el interprete de comando de grub</td></tr><tr><td>1. &gt; find /boot/grub/stage1
</td><td> –&gt; busca donde esta la partición de ubuntu</td></tr><tr><td>1. &gt; root (hdX,Y)
</td><td> –&gt; poner el valor devuelto anterior</td></tr><tr><td>1. &gt; setup (hd0)
</td><td> –&gt; instala grub en nuestro primer disco duro (hd0), que es con el que inicia la computadora</td></tr><tr><td>1. &gt; quit
</td><td> –&gt; salimos del interprete de comando de grub</td></tr></table>


Otra opción es la siguente:

1. Arranca el sistema desde un Live CD de Linux. Puedes descargarte uno desde la página oficial de Ubuntu, por ejemplo.
2. Cuando el sistema este cargado abre un terminal.
3. Crea el directorio donde montarás tu partición de Linux:  
  <span style="color: #666699;">`sudo mkdir /mnt/linux` (u otra ruta, la que decidas)</span>
4. Monta la partición de Linux en el directorio recien creado:  
  <span style="color: #666699;">sudo `mount /dev/sda5 /mnt/linux`</span>
5. Finalmente carga GRUB:  
  <span style="color: #666699;">sudo `grub-install --root-directory=/mnt/linux /dev/sda`</span>

***Enjoy!!!***
