---
ao_post_optimize:
- a:6:{s:16:"ao_post_optimize";s:2:"on";s:19:"ao_post_js_optimize";s:2:"on";s:20:"ao_post_css_optimize";s:2:"on";s:12:"ao_post_ccss";s:2:"on";s:16:"ao_post_lazyload";s:2:"on";s:15:"ao_post_preload";s:0:"";}
author: fideo
date: "2023-01-01T10:25:36Z"
excerpt: No se admite el servidor remoto de pantalla wayland, AnyDesk ubuntu
footnotes:
- ""
id: 52098
post_format: []
status: publish
tags:
- comando
- linux
- sistema operativo
- software
- ubuntu
thumbnail: ../../../uploads/2017/11/cabeceraUbuntu-1.jpg
title: Anydesk problemas con Wayland Cómo habilitar o deshabilitar wayland en Ubuntu
  22.04 Desktop
type: post
url: /2023/01/anydesk-problemas-wayland-habilitar-o-deshabilitar-wayland-ubuntu.html
---
Si estas trantando de usar AnyDesk en linux y te arroja un mensaje de error como este

***No se admite el servidor remoto de pantalla wayland***

Es porque hay que colocar en **false** la opción WaylandEnable que se encuentra en `/etc/gdm3/custom.conf` esto te permitirá conectarte a esa máquina cliente; es decir que la modificación de `/etc/gdm3/custom.conf` hay que hacerla en la PC que queremos conectarnos.

Para eso tiene que abrir tu consola en modo administrador / sudo y editar ese archivo, en mi caso yo uso vim asi que sería así:

```
sudo vim /etc/gdm3/custom.conf
```

Luego buscás donde dice

```
#WaylandEnable=false
```

Lo descomentás para que quede activo dentro del archivo, pero con el parámetro false y esto te permitirá usar AnyDesk sin problemas 😉

Una vez que terminas de editarlo hay que reiniciar el servicio gdm3 para eso ejecutamos el siguiente comando

```
sudo systemctl restart gdm3
```

Luego de reiniciado el servicio no debería aparecerte el mensaje de error de conexión en AnyDesk por wayland

Si por algún motivo necesitas usarlo solo basta con cambiar el valor a true.

[Ver mas posts sobre Ubuntu](/tags/#ubuntu)

***Enjoy!!!***
