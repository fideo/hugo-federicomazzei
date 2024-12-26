---
author: fideo
date: "2021-07-27T19:40:12Z"
excerpt: ""
id: 51823
post_format: []
status: publish
tags:
- adb
- android
- droidcam
- linux
- ubuntu
- webcam
thumbnail: ../../../uploads/2021/08/cabeceraAndroid-1.jpg
title: Linux no reconoce tu android por conexión USB para usar Droidcam
type: post
url: /2021/07/linux-no-reconoce-tu-android-por-conexion-usb-para-usar-droidcam.html
---

Si tener un celular (dispositivo móvil) con Android y quieres usar la cámara de ese celular como webcam puedes usar un programa que se llama <a href="https://www.dev47apps.com/" target="_blank">Droidcam</a>, es muy buena opción para no comprar una webcam y usa ese dispositivo viejo que tenías en un cajón.

Este artículo trae una solución a un problema frecuente que se dá cuando usas linux, el problema se presenta que no siempre reconoce las conexiones por USB.

Si esto te pasa este artículo es para vos.

Solo tienes que seguir estos simples pasos.

Instalar adb

```
sudo apt install adb
```

Luego chequeas que esté correctamente instalado corriendo adb version y te tiene que mostrar algo como esto:

```
adb version
Android Debug Bridge version 1.0.39
Version 1:8.1.0+r23-5ubuntu2
Installed as /usr/lib/android-sdk/platform-tools/adb
```

Este demonio se encarga de estar escuchando si un dispositivo se encuentra conectado a nuestra PC (linux). Luego ejecutamos adb devices y les mostrará algo como esto.

```
adb devices
List of devices attached
33000be0476e4339 device
```

Una vez que tengas esto solo te resta poner el celular en modo de desarrollo &lt;– esto depende de cada versión de Android.

Droidcam ADB Linux
