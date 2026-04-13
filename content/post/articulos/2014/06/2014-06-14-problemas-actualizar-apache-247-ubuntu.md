---
author: fideo
date: "2014-06-14T12:45:18Z"
excerpt: Problemas al actualizar apache 2.4.7 en Ubuntu, hay que realizar pequeños
  cambios para que todo empiece a funcionar como antes
id: 812
post_format: []
status: publish
tags: []
title: Problemas al actualizar apache 2.4.7 en Ubuntu
type: post
url: /2014/06/problemas-actualizar-apache-247-ubuntu.html
---
Hice un upgrade a Ubuntu 14.04 LTS y el apache se actualizó a 2.4.7 para mi sorpresa dejó de funcionar.  
Entonces encontré que se han realizado algunos cambios en la configuración. Para empezar si reiniciamos el apache

```
<pre class="wp-block-preformatted">sudo /etc/init.d/apache2 restart
```

es probable que nos muestre un mensaje del tipo:  
**apache2: Could not reliably determine the server’s fully qualified domain name, using 127.0.1.1 for ServerName.**

para solucionar esto tenes que abrir una consola / terminal y ejecutar la siguiente linea

```
<pre class="wp-block-preformatted">echo "ServerName localhost" | sudo tee /etc/apache2/conf-available/fqdn.conf
sudo ln -s /etc/apache2/conf-available/fqdn.conf /etc/apache2/conf-enabled/fqdn.conf
```

una vez realizado esto ya podes reiniciar el apache que no te tendría que mostar ningun error del tipo **apache2: Could not reliably determine the server’s fully qualified domain name, using 127.0.1.1 for ServerName.**

Por otro lado yo tengo en mi configuración cargadas **virtual-host** y estós también dejaron de funcionar, porque cambiaron la forma en que se llaman a los archivos de configuración, para solucionar esto tenes que ir a:

```
<pre class="wp-block-preformatted">cd /etc/apache2/sites-available
```

una vez dentro de este directorio listas todos tus sitios virtuales avilitados por ejemplo:

```
<pre class="wp-block-preformatted">-rw-r--r-- 1 root root 782 abr 5 10:59 sito1
-rw-r--r-- 1 root root 342 abr 9 08:16 sito2
```

lo que debemos hacer es cambiarles el nombre a de sitio1 a sitio1.conf es decir agregarle el .conf al final del archivo  
Para renombrarlo ejecutamos esto en la consola

```
<pre class="wp-block-preformatted">mv sitio1 sitio.conf
```

Repetimos este último paso con cada sitio virtual que tengamos. Luego reiniciamos el apache

```
<pre class="wp-block-preformatted">sudo /etc/init.d/apache2 restart
```

Listo ya deberías tener como antes tu sitio funcionando.  
*Enjoy!!!*
