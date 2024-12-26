---
author: fideo
date: "2009-11-10T22:15:16Z"
excerpt: ""
id: 339
post_format: []
status: publish
tags: []
title: Ubuntu 9.10 problemas para apagarse (acpi) en la Vostro 1520
type: post
url: /2009/11/ubuntu-9-10-problemas-para-apagarse-acpi.html
---
Hace tiempo que tenía el siguiente problema con **Ubuntu** y mi Vostro 1520

Googlenado encontré esta solución que valga la redundancia me solucionó la vida. Colocando esto ” ***acpi=force apm=power\_off*** ” dentro de /boot/grub/menu.lst en la linea que dice algo así:

kernel /boot/vmlinuz-2.6.31-14-generic root=UUID=0dded5bf-3657-4741-bd03-ce349d78b243 ro acpi=force apm=power\_off quiet splash  
\#kernel /boot/vmlinuz-2.6.31-14-generic root=UUID=0dded5bf-3657-4741-bd03-ce349d78b243 ro acpi=off quiet splash

en mi caso funcionó y muy bien, ahora mi máquina una ***Vostro 1520*** se apaga y me muestra el icono de batería.

Espero que les sirva.

Me gustaría tener un feedback de si realmente les funcionó y si no les funcionó comenten cual es el problema que se les presenta, ya que me han comentado que realizaron esto mismo y no les funcionó, en síntesis si les funcionó o no haganmelo saber.

***Enjoy!!!***
