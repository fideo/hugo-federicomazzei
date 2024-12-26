---
author: fideo
date: "2016-08-27T17:29:11Z"
excerpt: ""
id: 1087
post_format: []
status: publish
tags: []
title: CUPS forbidden user pass unable to upload
type: post
url: /2016/08/cups-forbidden-user-pass-unable-to-upload.html
---
Cuando intentás instalar una impresora en Linux a través de **CUPS** (que significa Common *Unix Printing System*) y te encontrás con errores del tipo

**forbidden unable to upload cupsd.conf file** –&gt; cuando intentás grabar el archivo cupsd.conf

**Login forbidden** –&gt; cuando intentas poner user y pass

**Print Test Page**

u otra acción esto se debe a que el usuario que estas ingresando no tiene permisos o no pertenece al grupo lpadmin, es decir **CUPS forbidden**.

Para poder corregir esto tenes que ejecutar la siguiente linea en una consola

```
<pre class="wp-block-preformatted">sudo adduser "usuario" lpadmin
```

Donde:

sudo es el superusuario

adduser es el comando para agregar un usuario

“usuario” va a ser el usuario que intentas agregar al grupo lpadmin

lpadmin es el grupo al que estamos interesados agregar el “usuario”

Digamos que si tu usuario para iniciar sesión en linux es pepito y pones la contraseña 123456 tu comando quedaría así:

```
<pre class="wp-block-preformatted">sudo adduser pepito lpadmin
```

También quiero aclarar que en mi caso estaba instalando una <span style="text-decoration: underline;">**HP laserjet Profesional 1102 w**</span> y para que funcione correctamente en linux tuve que bajarme el driver de este sitio [https://](https://developers.hp.com/hp-linux-imaging-and-printing)[developers.hp.com/hp-linux-imaging-and-printing](https://developers.hp.com/hp-linux-imaging-and-printing) porque cuando lo estaba instalando me dijo linux que no tenía el driver correcto.

Espero que les sirva, sino me escriben un comentario acá mismo y trataré de ayudar.
