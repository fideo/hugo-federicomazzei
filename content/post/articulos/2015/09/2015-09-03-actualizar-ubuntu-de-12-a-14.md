---
author: fideo
date: "2015-09-03T08:07:35Z"
excerpt: ""
id: 917
post_format: []
status: publish
tags: []
thumbnail: ../../../uploads/2017/11/cabeceraUbuntu-1.jpg
title: Actualizar Ubuntu de 12.10 a 14.04
type: post
url: /2015/09/actualizar-ubuntu-de-12-a-14.html
---
<figure aria-describedby="caption-attachment-925" class="wp-caption alignleft" id="attachment_925" style="width: 300px">[![Sistema Operativo Linux](http://federicomazzei.com.ar/blog/wp-content/uploads/2015/09/ubuntu-logo112.png)](http://federicomazzei.com.ar/blog/wp-content/uploads/2015/09/ubuntu-logo112.png)<figcaption class="wp-caption-text" id="caption-attachment-925">Sistema Operativo Linux</figcaption></figure>

Si tenes una versión vieja de Ubuntu como la 12.10 y estas intentando actualizar Ubuntu a 14.04 hay algunas items a tener en cuenta.

Si cuando ejecutas

```
<pre class="wp-block-preformatted">sudo aptitude update
```

y

```
<pre class="wp-block-preformatted">sudo aptitude upgrade
```

y por último

```
<pre class="wp-block-preformatted">sudo update-manager -d
```

tu Ubuntu no realiza ninguna acción de actualización es porque tenes que agregar una serie de lineas a tu sources.list

Para los que no saben donde se encutra el sources.list está ubicado en /etc/apt/

```
<pre class="wp-block-preformatted">cd /etc/apt/
```

vi sources.list

```
<pre class="wp-block-preformatted">deb http://old-releases.ubuntu.com/ubuntu/ quantal main restricted universe multiverse
deb http://old-releases.ubuntu.com/ubuntu/ quantal-security main restricted universe multiverse
deb http://old-releases.ubuntu.com/ubuntu/ quantal-updates main restricted universe multiverse
```

Una vez ingresado este codigo dentro de sources.list ahora si podemos ejecutar estos comandos para actualizar.

```
<pre class="wp-block-preformatted">sudo apt-get update
sudo apt-get upgrade
sudo update-manager -d
```

Si te sirve no dejes de comentar.  
Enjoy!!!

Fuente: http://askubuntu.com/questions/518856/upgrade-12-10-sources-list
