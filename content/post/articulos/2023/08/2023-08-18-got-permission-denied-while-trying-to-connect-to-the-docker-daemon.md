---
author: fideo
date: "2023-08-18T14:38:34Z"
excerpt: Si acabas de instalar docker y te aparece ese mensaje de error Got permission
  denied while trying to connect to the Docker daemon al ejecutar docker, por ejemplo
  "docker ps" o "docker run" o cualquier otro comando de docker esto te puede servir.
footnotes:
- ""
id: 52183
post_format: []
status: publish
tags:
- docker
- linux
- software
- ubuntu
thumbnail: ../../../uploads/2021/11/cabeceraDocker-1.jpg
title: Got permission denied while trying to connect to the Docker daemon
type: post
url: /2023/08/got-permission-denied-while-trying-to-connect-to-the-docker-daemon.html
---

Si acabas de instalar docker y te aparece ese mensaje de error ***Got permission denied while trying to connect to the Docker daemon*** al ejecutar docker, por ejemplo “docker ps” o “docker run” o cualquier otro comando de docker esto te puede servir.

Corregir el error
-----------------

Primero tenemos que agregar el grupo docker y para esto en la consola ejecutamos lo siguiente:

```
sudo groupadd docker
```

Ahora tenemos que agregar el usuario nuestro a ese nuevo grupo y para esto ejecutamos en la linea de comando lo siguiente:

```
sudo usermod -aG docker $USER
```

Luego con cerrar la sesión y volver a abrirla ya debería dejarte ejecutar el comando docker; pero si igualmente no te deja te recomiendo que reinicies ubuntu o tu distro Linux
