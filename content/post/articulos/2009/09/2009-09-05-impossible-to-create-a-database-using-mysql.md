---
author: fideo
date: "2009-09-05T16:05:30Z"
excerpt: ""
id: 266
post_format: []
status: publish
tags: []
title: Impossible to create a database using MySQL - No podes crear una base de datos
  en MySQL
type: post
url: /2009/09/impossible-to-create-a-database-using-mysql.html
---
Esto me ayudó muchísimo cuando me da el error 1006 (errno:13) en MySQL.

Este error significa es que no tenemos permiso de escritura en la carpeta donde se alojarán las bases de datos.

Esto se soluciona así:  
chown mysql.mysql -R /var/lib/mysql  
chmod 750 -R /var/lib/mysql

Este error no debería aparecer mas “Message : #1006 – Can’t create database ‘MyDataBase’. (errno: 13)”
