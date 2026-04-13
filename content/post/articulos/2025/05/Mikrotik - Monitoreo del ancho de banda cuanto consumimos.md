---
author: fideo
description: Mikrotik - Monitoreo del ancho de banda; cuanto consumimos.
categories:
- Mikrotik
date: "2025-05-15T11:00:00Z"
excerpt: ""
status: publish
tags:
- mikrotik
- router
- software
thumbnail: /assets/uploads/2017/11/cabeceraUbuntu-1.jpg
title: Mikrotik - Monitoreo del ancho de banda; cuanto consumimos.
type: post
url: /2025/03/2025-05-15-mikrotik-monitoreo-del-ancho-de-banda-cuanto-consumimos.html
usemathjax: true
---

# Monitorear el ancho de banda consumido dentro de Mikrotik

Tenía la necesidad de saber cuanto se consume en Giga Bytes en mi casa, para saber si estaba en condiciones de pasarme a un proveedor que me ofrece banda ancha por 50GB.

Encontré una forma de observar esto desde el Mikrotik y es agregando esto al firewall. Desde una terminal copiamos y pegamos esto... pero deberías reemplazar el nombre de ether1 por la entrada de tu proveedor de Internet.

`/ firewall mangle`

`add action=passthrough chain=forward comment="Download Global Counter" in-nterface=ether1`

`add action=passthrough chain=forward comment="Upload Global Counter" out-face=ether`

Esto lo obtuve desde el foro oficial de Mikrotik --> https://forum.mikrotik.com/viewtopic.php?t=168427

En un día laboral (8 horas) consumí 1.5GB asi que no llego a lo que me ofrecen por 50GB. Digamos me quedo corto, tengo que ir por la opción de 500GB mensuales.

Lo dejo anotado acá por si a alguien más le sirve y también pueden visitar el post de foro de Mikrotik que les puede ser de mucha utilidad.

Enjoy
