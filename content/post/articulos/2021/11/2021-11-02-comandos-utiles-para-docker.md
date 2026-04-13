---
ao_post_optimize:
- a:5:{s:16:"ao_post_optimize";s:2:"on";s:19:"ao_post_js_optimize";s:2:"on";s:20:"ao_post_css_optimize";s:2:"on";s:12:"ao_post_ccss";s:2:"on";s:16:"ao_post_lazyload";s:2:"on";}
author: fideo
date: "2021-11-02T10:25:20Z"
excerpt: ""
id: 51877
post_format: []
status: publish
tags:
- comando
- docker
- linux
- wordpress
thumbnail: ../../../uploads/2021/11/cabeceraDocker-1.jpg
title: Comandos útiles para Docker
type: post
url: /2021/11/comandos-utiles-para-docker.html
---

Esto tal vez le puede servir a mas de uno y de paso me lo dejo como ayuda memoria

Usé un dockerfile para crear un esquema de wordpress es decir que ese docker contiene un nginx, una base mysql (mariadb) y el lenguaje PHP que utiliza WordPress; cuando levantaba el docker con docker-compose up la base me daba error entonces necesitaba ejecutar por consola algunos comandos para poder crear la base que no la había creado y también para darle privilegios al usuario en cuestión.

Para eso necesita ejecutar:

```
docker exec -it "el_id_del_docker_container" bash 
```

Si deseamos saber cuál es él id del container podemos ejecutar

```
docker ps 
```

Esto nos mostrará la consola de la imagen que crea para poder levantar el mysql y dentro de esa imagen debemos ejecutar el comando para poder ingresar a mysql

```
mysql -u root -p
```

Nos va a solicitar la contraseña de root o el usuario que usen para conectarse a la base y listo ya estamos dentro de MySQL

Ejecutamos `SHOW DATABASES;` para listar todas las bases de datos que existen en nuestro servidor MySQL o `CREATE DATABASE nombre\_baseDeDatos;` para crear una base de datos; si deseamos borrar una ejecutamos `DROP DATABASE nombre\_baseDeDatos`;

Cualquier duda lo dejan en los comentarios 😉
