---
author: fideo
date: "2020-06-08T13:49:52Z"
excerpt: ""
id: 1352
post_format: []
status: publish
tags: []
thumbnail: ../../../uploads/2017/11/cabeceraGoogleDrive-1.jpg
title: Sincronización con Google Drive en Linux usando grive
type: post
url: /2020/06/sincronizacion-con-google-drive-en-linux-usando-grive.html
---

Para poder tener sincronizado los archivos que tienes en tu google drive localmente en tu PC

Lo saqué del baúl del programador que el autor de esa nota a su vez lo sacó de una página que al momento de escribir esta nota da error 404, es decir no existe.

Lo primero que necesitamos es instalar grive  
Para esto si estamos con la distribución de Ubuntu

```
$ sudo add-apt-repository ppa:nilarimogard/webupd8
$ apt-get update
$ apt-get install grive
```

Una vez instalado creamos un directorio donde va a guardar toda la información que tenemos o sincronizaremos con google drive, para esto yo hice

```
$ mkdir ~/Drive
$ cd ~/Drive
$ grive -a
```

Con mkdir ~/Drive creo un directorio dentro de mi home “user” que se llame Drive, luego entro a ese directorio con cd ~/Drive y por último ejecuto el comando grive -a que este comando sirve para generar los permisos necesarios para poder utilizar la cuenta de google drive con grive.

> Acá es donde a veces nos encontramos con un problema que no nos podemos autentificar contra google drive ya que nos dá un error, el cual nos informa que NO tiene permisos o NO se encuentra disponible.
> 
> <cite>Solución alternativa (***workaround***) aquí abajo.</cite>

Para solucionar esto lo que hice fue lo siguiente, entré al repositorio oficial de grive <https://github.com/vitalif/grive2> en la sección que se llama Different OAuth2 client to workaround over quota and google approval issues y realicé los pasos del 1 al 9 tal cual los menciona ahí.

Una vez realizado esos pasos cree un cron que llamara directamente a grive con el y quedaría algo así:

```
grive --id --secret
```
