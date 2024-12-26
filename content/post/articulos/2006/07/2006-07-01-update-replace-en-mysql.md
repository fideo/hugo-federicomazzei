---
author: fideo
date: "2006-07-01T10:01:51Z"
excerpt: ""
id: 80
post_format: []
status: publish
tags: []
title: Update - Replace en MySQL
type: post
url: /2006/07/update-replace-en-mysql.html
---
Tenía que reemplazar unas palabras en mi base de datos, consulte en el manual y busque varios ejemplo en google hasta que por fin encontré un ejemplo bien explícito.

Lo anoto acá para tenerlo bien a mano para cuando lo vuelva a necesitar y por si alguien por ahi anda necesitando reemplazar una parte de un texto en un o en varios campos de su base de datos.

**update** \[table\_name\] set \[field\_name\] = **replace**(\[field\_name\],'\[string\_to\_find\]’,'\[string\_to\_replace\]’);
