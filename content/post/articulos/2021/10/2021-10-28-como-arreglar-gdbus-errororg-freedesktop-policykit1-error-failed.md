---
ao_post_optimize:
- a:5:{s:16:"ao_post_optimize";s:2:"on";s:19:"ao_post_js_optimize";s:2:"on";s:20:"ao_post_css_optimize";s:2:"on";s:12:"ao_post_ccss";s:2:"on";s:16:"ao_post_lazyload";s:2:"on";}
author: fideo
date: "2021-10-28T09:47:39Z"
excerpt: ""
id: 51872
post_format: []
status: publish
tags: []
thumbnail: ../../../uploads/2021/10/cabeceraCentos7-1.jpg
title: Como arreglar GDBus. Error:org. freedesktop. PolicyKit1. Error. Failed
type: post
url: /2021/10/como-arreglar-gdbus-errororg-freedesktop-policykit1-error-failed.html
---

Durante mucho tiempo estuve teniendo este error `GDBus.Error:org.freedesktop.PolicyKit1.Error.Failed` cada vez que ejecutaba sudo “service csf restart” por ejemplo o cualquier servicio que quisiera reiniciar me mostraba este error.  
Esto me sucedía en mi servidor Centos 7 con el panel de control CentOS Web Panel es decir el CWP; esto empezó a suceder luego de una actualización, estuve varios días sin poder solucionar este problema.

Por suerte me encontré con una solución en Internet, de todas las que probé, la que resuelve el inconveniente hasta el día de hoy son estos pasos que dejo a continuación.

Para esto tenemos que ejecutar estos comandos por línea de comando:

```
groupadd -g 23 nohidproc
usermod -a -G nohidproc polkitd
mount -o remount,rw,hidepid=2,gid=nohidproc /proc
systemctl restart polkit
```

Agregar esta línea en el fichero `/etc/fstab`

```
echo "proc /proc proc defaults,hidepid=2,gid=nohidproc 0 0" >> /etc/fstab
```

Luego se ejecuta

```
mount -a
```

y se reinicia polkit

```
systemctl restart polkit
```

***Enjoy!!!***