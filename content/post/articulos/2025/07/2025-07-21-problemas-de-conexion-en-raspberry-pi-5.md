---
author: fideo
description: Si tenes problemas de conexión en tu raspeberry PI 5 chequeá la configuración de tu resolv.conf
categories:
  - tecnología
  - Sistema Operativo
  - raspberry
  - Linux
date: 2025-07-21T01:08:01Z
excerpt: Si tenes problemas de conexión en tu raspeberry PI 5 chequeá la configuración de tu resolv.conf
status: publish
tags:
  - linux
  - raspberry
  - internet
thumbnail: /assets/uploads/2017/11/cabeceraUbuntu-1.jpg
title: Problemas de conexión en Raspberry Pi 5
type: post
url: /2025/07/2025-07-21-problemas-de-conexion-en-raspberry-pi-5.html
usemathjax: true
---

# Problemas de conexión en Raspberry Pi 5

Si tenes problemas de conexión con tu Raspeberry PI 5 uno de lo motivos puede ser que tengas que editar el archivo resolv.conf ubicado en /etc/
Yo uso vim o nvim como editor de texto asi que para mi caso es:

```
sudo vim /etc/resolv.conf
```

Siempre con poderes de super usuario para poder editar este tipo de archivos.

Se les agrega las IP de los **DNS de google** y también las IP's asignadas de a la Raspberry PI 5 tanto de red como de conexión Wi-Fi.

Con esto editado y guardado solo faltaría hacer un restart al servicio de red

```
sudo systemctl restart network-online.target
```

Con esto ya debería estar mucho mejor tu conexión a Internet.