---
author: fideo
date: "2008-06-16T10:25:30Z"
excerpt: ""
id: 159
post_format: []
status: publish
tags: []
title: Problemas con Firestarter
type: post
url: /2008/06/problemas-con-firestarter.html
---
El dispositivo eth0 no está preparado este mensaje se dá cuando reliasamos modificaciones en la configuracuión de Firestarter (Firewall de linux). Después de mucho buscar encontré que la solución es esta.

1º debemos editar el archivo firestarter.sh que se encuentra en **/etc/firestarter/firestarter.sh** (yo lo hago con mcedit utilizando mc), una vez encontrado el archivo y en estado de edición, encuentran la línea que dice así.

**MASK=`/sbin/ifconfig $IF | grep M<span style="color: #0000ff;">a</span>s | cut -d : -f 4`**

y la reemplazan por esta otra

**MASK=`/sbin/ifconfig $IF | grep M<span style="color: #ff0000;">á</span>s | cut -d : -f 4`**

Graban el archivo, reinician el firestarter con este comando **/etc/init.d/firestarter restart** y verán que no les da mas ese error. El problema radica en el acento de la “a” marcado con color rojo en la linea de reemplazo.

***Enjoy!!!***
