---
id:
author: fideo
description: Como saber que ip usa tu contenedor docker
categories:
  - tecnología
date: 2026-05-12T01:08:01Z
excerpt: ""
status: publish
tags:
  - linux
thumbnail: /assets/uploads/2017/11/cabeceraUbuntu-1.jpg
title: Como saber que ip usa tu contenedor docker
summary: Como saber que ip usa tu contenedor docker, se muestran comandos simples para obtener la ip.
type: post
url: /2026/05/20260512-como-saber-que-ip-usa-tu-contenedor-docker
usemathjax: false
draft: false
toc: true
expiryDate:
footnotes:
---
# Como saber que ip usa tu contenedor docker

Nota muy corta y simple; comando que puede sacar de un apuro a alguien que necesita saber que ip está usando su contendor docker al servir el servicio de [[Pi-Hole]]

```docker inspect -f '{{range .NetworkSettings.Networks}}{{.IPAddress}}{{end}}' pihole```

Donde dice pihole al final del comando es el nombre que tenga su aplicación de docker.

También se puede utilizarlo así el comando:

```docker inspect pihole```

Que te muestra toda la información sobre tu contenedor, pero si puntualmente queremos saber que IP tiene nuestro docker  lo  que podemos hacer  es  filtra con [[grep]] (**G**lobal **R**egular **E**xpression **P**rint) y el comando quedaría así:

```docker inspect pihole | grep IPAddress``` 

Eso te tiene que devolver algo similar a esto "IPAddress": "172.21.0.2",

Pero si tu objetivo es obtener solo la IP del docker lo que recomiendo es el primer comando que te trae solo la IP que corresponde al contenedor docker en cuestión, en este caso el de [[Pi-Hole]].

Esto surgió de un pihole que tengo corriendo de manera local ya que en la empresa donde trabajo, por varios motivos, necesitan ver las publicidades y/o promociones que figuran en las búsqueda en google o cualquier otro buscador con rastreo de todo tipo.