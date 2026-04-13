---
ao_post_optimize:
- a:5:{s:16:"ao_post_optimize";s:2:"on";s:19:"ao_post_js_optimize";s:2:"on";s:20:"ao_post_css_optimize";s:2:"on";s:12:"ao_post_ccss";s:2:"on";s:16:"ao_post_lazyload";s:2:"on";}
author: fideo
date: "2022-02-18T08:48:22Z"
excerpt: 'Corregí el error ERROR: Can''t create temporary directory /var/lib/clamav/
  ejecutando estos comandos'
id: 51942
post_format: []
status: publish
tags:
- centos
- cwp
- linux
thumbnail: ../../../uploads/2021/10/cabeceraCentos7-1.jpg
title: 'Centos Web Panel CWP ERROR: Can&#8217;t create temporary directory /var/lib/clamav/'
type: post
url: /2022/02/centos-web-panel-cwp-error-cant-create-temporary-directory-var-lib-clamav.html
---

Tengo un servidor con lo manejo con CWP (Centos Web Panel) y en los logs vi un error como este

```
ERROR: Can't create temporary directory /var/lib/clamav/
```

Estuve investigando un poco como corregirlo y me dí cuenta que era problemas de permisos; al ejecutar

```
sudo freshclam
```

Esto debería realizar una actualización de la base de datos del antivirus; pero por no tener bien asignados los permisos me daba ese error. Cuando estaba el contenido del directorio `/var/lib/clamav/` me mostraba que existen dos tipos de usuarios `clamupdate` y `clamscan`.  
Lo que hice fue probar primero con el usuario `clamupdate` y volver a ejecutar `sudo freshclam` y esto me mostró el mismo error; entonces luego probé con el otro usuario `clamupdate` y volví a probar y ahí funcionó correctamente.

```
sudo chown clamupdate:clamupdate /var/lib/clamav/
```

Con este último comando logré solucionar el problema.
