---
author: fideo
date: "2024-05-13T12:02:51Z"
excerpt: como obtener el id de AnyDesk desde la linea de comandos de linux
id: 52279
post_format: []
status: publish
tags:
- comando
- linux
- sistema operativo
- software
- ubuntu
thumbnail: ../../../uploads/2020/08/cabeceraDefaulCodigo-1.jpg
title: Como averiguar el id de AnyDesk por consola o terminal en linux
type: post
url: /2024/05/como-averiguar-el-id-de-anydesk-por-consola-o-terminal-en-linux.html
---
Como averiguar el id de AnyDesk por consola o terminal en linux. Si por casulidad tenes instalado AnyDesk y no conoces el id de tu cuenta con AnyDesk la podes averiguar accediendo desde consola o terminal a tu equipo.
<!--more-->
Claro si accedes por consola o terminal a tu equipo podrías decir para que si ya tengo conexión con mi computadora a través de mi linea de comandos si puede ser… pero muchas veces necesitas ver o acceder visualmente a tu computadora y esto lo podes hacer con AnyDesk o un servicio de VNC activo en la computadora. Si tu caso es el de AnyDesk y no conoces el id lo podes averiguar con este comando.

```
anydesk --get-id
```


Esto te devolverá un número que luego con el cliente de AnyDesk podrás acceder remotamente a tu computadora.

También tendrías que tener configurado el “permitr acceso no presencial” con una contraseña para que al conectarte no tengas que pedir la autorización del otro lado de la PC para acceder a ella.

[Otras entradas sobre linux](/tags/#linux)  
  
También te recomiendo que veas todo lo que podes hacer desde la linea de comandos en el manual que ofrece <a href="https://support.anydesk.com/es/knowledge/command-line-interface-for-linux" target="_blank">AnyDesk en su sitio oficial hacé click acá para verlo</a>

También podes acceder por VNC a tu computadora pero AnyDesk te ofrece el poder del filetransfer que te permite subir o bajar archivos a desde o hacia tu computadora remota a la local y viceversa. Muchas veces te vas a encontrar con la necesidad de querer bajar un archivo que tenías en la computadora de tu casa a la computadora del trabajo y en este caso AnyDesk puede ser tu mejor aliado.

Espero que te haya servido tener un apunte de Como averiguar el id de AnyDesk por consola o terminal en linux

***Enjoy!!!***
