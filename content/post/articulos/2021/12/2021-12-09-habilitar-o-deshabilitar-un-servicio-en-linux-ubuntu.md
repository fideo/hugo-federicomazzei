---
ao_post_optimize:
- a:5:{s:16:"ao_post_optimize";s:2:"on";s:19:"ao_post_js_optimize";s:2:"on";s:20:"ao_post_css_optimize";s:2:"on";s:12:"ao_post_ccss";s:2:"on";s:16:"ao_post_lazyload";s:2:"on";}
author: fideo
date: "2021-12-09T08:31:00Z"
excerpt: ""
id: 51903
post_format: []
status: publish
tags:
- comando
- linux
- sistema
- ubuntu
thumbnail: ../../../uploads/2017/11/cabeceraUbuntu-1.jpg
title: Habilitar o Deshabilitar un servicio en Linux Ubuntu
type: post
url: /2021/12/habilitar-o-deshabilitar-un-servicio-en-linux-ubuntu.html
---

Si tienes un servicio que necesitas deshabilitar o habilitar acá te dejo los dos comandos que te permitirán realizar esto

Para habilitar un servicio debes ejecutar como superusuario systemctl enable servicioAHabilitar.service

```
sudo systemctl enable apache2
```

  
Para deshabilitar ese mismo servicio debes ejecutar (siempre como superusuario) systemctl disable servicioADeshabilitar.service

```
sudo systemctl disable apache2
```
