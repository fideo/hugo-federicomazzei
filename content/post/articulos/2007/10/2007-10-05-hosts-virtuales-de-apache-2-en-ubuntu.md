---
author: fideo
date: "2007-10-05T07:00:40Z"
excerpt: ""
id: 125
post_format: []
status: publish
tags: []
title: Hosts Virtuales de Apache 2 en Ubuntu
type: post
url: /2007/10/hosts-virtuales-de-apache-2-en-ubuntu.html
---
Lo primero, creo una nueva entrada en /etc/hosts (mantengo lo que había y añado lo siguiente):

127.0.0.1 www.fideox.com.ar

Copio los archivos del nuevo site en /var/www/fideox

Comienza el procedimiento de configuración del nuevo virtualhost en Apache2:

$ cd /etc/apache2/sites-available

Edito las dos primeras líneas del fichero default para que queden así:

NameVirtualHost \*  
&lt;VirtualHost \*&gt;  
$ cp default www.fideox.com.ar

Edito www.fideox.com.ar para que las primeras líneas queden así:

&lt;VirtualHost \*&gt;  
ServerAdmin webmaster@fideox.com.ar

ServerName www.fideox.com.ar

DocumentRoot /var/www/fideox  
&lt;Directory /&gt;  
Options FollowSymLinks  
AllowOverride None  
&lt;/Directory&gt;  
&lt;Directory /var/www/fideox&gt;  
$ cd /etc/apache2

El siguiente comando, a2ensite (available2enablesite) crea un enlace en sites-enable al site que le indiquemos (es decir, activa el virtualhost que acabamos de crear)

\# a2ensite www.fideox.com.ar

Comprobamos:

$ ls -al sites-enabled/

Recargamos apache2:

\#/etc/init.d/apache2 force-reload  
Listo!

Esta nota fue tomada de [diariolinux.com](http://diariolinux.com/2007/05/29/hosts-virtuales-en-apache-2-ubuntu/ "diariolinux.com") muchas gracias por la nota.
