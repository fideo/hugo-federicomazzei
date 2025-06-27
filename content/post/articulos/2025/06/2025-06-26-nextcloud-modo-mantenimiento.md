---
author: fideo
description: Nexcloud en docker queda en modo mantenimiento
categories:
  - tecnología
  - docker
  - nextcloud
date: 2025-06-22T11:00:00Z
excerpt: 
status: publish
tags:
  - linux
  - tecnologia
  - nextcloud
  - docker
thumbnail: /assets/uploads/2017/11/cabeceraUbuntu-1.jpg
title: Nextcloud en docker queda en modo mantenimiento
type: post
url: /2025/06/2025-06-26-nextcloud-en-docker-queda-en-modo-mantenimiento.html
usemathjax: true
---

# Nextcloud en docker queda en modo mantenimiento

Si tenes instalado nextcloud en un contenedor docker puede que te topes con este mensaje.

	Por favor, utilice el actualizador por línea de comandos ya que la actualización vía navegador se encuentra deshabilitado en su config.php

Buscas en internet como sacarlo de modo mantenimiento y te dicen que configures en tu config.php esto:

```
'maintenance' => false
```

y para ponerlo en modo mantenimiento obviamente cambiar el valor a  __*true*__.

Escribo esto para mí en un futuro si me vuelve a pasar esto mismo o para alguien mas que use [[nextcloud]] en [[docker]]; para sacarlo de este modo hay que correr un comando dentro del docker de nextcloud. Para eso ingresamos al bash del contenedor usando este comando:

```
docker exec -it nextcloud-app-1 bash
```

	nextcloud-app-1 es el nombre de la app en mi docker deberías cambiarlo por que te corresponda.

Una vez dentro del bash del contenedor de nextcloud tenemos que ejecutar este comando: 

```
cd /var/www/html/
./occ upgrade
```

Esto hará que se actualice la aplicación de Nextcloud y lo saque de modo mantenimiento. Si bien no pude descubrir porque se puso en este modo, algo que me queda por descubrir o investigar, esto hizo que vuelva a funcionar mi Nextcloud en mi [[Raspberry PI 5]] .