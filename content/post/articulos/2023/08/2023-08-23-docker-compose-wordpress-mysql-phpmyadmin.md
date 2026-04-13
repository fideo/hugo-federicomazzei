---
author: fideo
date: "2023-08-23T13:08:58Z"
excerpt: En este post dejo un código de docker compose que te permite levantar un
  docker con wordpress que usa una base de datos mysql y para poder administrarla
  usar el phpmyadmin
footnotes:
- ""
id: 52187
post_format: []
status: publish
tags:
- docker
- linux
thumbnail: ../../../uploads/2021/11/cabeceraDocker-1.jpg
title: Docker Compose WordPress MySQL PhpMyAdmin
type: post
url: /2023/08/docker-compose-wordpress-mysql-phpmyadmin.html
---

En este post dejo un código de docker compose que te permite levantar un docker con wordpress que usa una base de datos mysql y para poder administrarla usar el phpmyadmin.

Esto es muy recomendable para aquellos desarrolladores que tienen que estar levantando ambientes de desarrollos con distintas versiones de wordpress ó mysql ya sea para actualizarlas o para probar algo en particular.

En lo particular me sirve mucho para dejar reflejado en un ambiente local tal cual las características que tiene el sitio en producción; es decir que si el sitio de un cliente tiene en producción wordpress 5 mientras ya está vigente la versión 6 yo puedo seguir manteniendo esa versión ya sea para luego actualizarla o por resguardo (backup)  
Lo mismo pasa con las bases de datos si hay varias versiones y tal vez algunas tengan algunas características más o menos dependiendo de la versión y con esto podemos reflejar exactamente lo mismo que tenemos en producción.

<a href="https://github.com/fideo/docker-compose-wordpress/" target="_blank">Dejo el código fuente de este docker en mi repositorio de github</a>

```
  1 version: "3"
  2 networks:
  3     fideo-wordpress-net:
  4         driver: bridge
  5  
  6 services:
  7     mysql:
  8         image: mysql:5.7
  9         container_name: fideo-wordpress-6.1.1-mysql
 10         tty: true
 11         ports:
 12             - "4406:3306"
 13         volumes:
 14             - "./data/mysql/:/var/lib/mysql"
 15         environment:
 16             MYSQL_ROOT_PASSWORD: password
 17             MYSQL_DATABASE: nombrebasededatos
 18             MYSQL_USER: usuario
 19             MYSQL_PASSWORD: password
 20         networks:
 21             - fideo-wordpress-net
 22  
 23     server:
 24         image: wordpress:latest
 25         container_name: fideo-wordpress-6.1.1
 26         ports:
 27             - "8080:80"
 28         volumes:
 29             - "./wordpress/:/var/www/html"
 30         environment:
 31             WORDPRESS_DB_USER: nombredeusuario
 32             WORDPRESS_DB_PASSWORD: password
 33             WORDPRESS_DB_NAME: nombrebasededatos
 34             WORDPRESS_DB_HOST: fideo-wordpress-6.1.1-mysql
 35         depends_on:
 36             - mysql
 37         networks:
 38             - fideo-wordpress-net
 39 
 40      phpmyadmin:
 41         image: phpmyadmin/phpmyadmin
 42         container_name: fideo-phpmyadmin
 43         ports:
 44             - "8081:80"
 45         environment:
 46             PMA_HOST: fideo-wordpress-6.1.1-mysql
 47             MYSQL_ROOT_PASSWORD: password
 48         depends_on:
 49             - mysql
 50         networks:
 51             - fideo-wordpress-net
```

También recomiendo poner a tu usuario dentro del grupo root esto evitará algunas molestias en el uso diario; entiendo que tal vez no sea lo mejor por seguridad pero si somos usuarios prudentes no habría problemas en hacer esto.

editar con este comando

```
sudo /usr/sbin/visudo
```

Luego buscamos donde dice root ALL=(ALL:ALL) ALL y agregamos nuestro usuario me manejamos habitualmente y lo dejamos así:

```
# User privilege specification 
root  ALL=(ALL:ALL) ALL 
nombreusuario ALL=(ALL:ALL) ALL
```

Levantando nuestro Docker
-------------------------

Una vez que tengamos esto tenemos que probar nuestro docker compose ejecutando lo siguiente:

```
docker compose up 
```

recordemos que podemos utilizar el parámetro -d para dejarlo que corra en background **docker compose up -d**

### [Para ver mas post sobre docker te invito a que sigas leyendo mi blog haciendo click acá.](/tags/#docker)

Aumentar el tamaño de subida de archivos a PhpMyAdmin
-----------------------------------------------------

Seguramente si estás trabajando con sitios de wordpress vas a necesitar subir archivos superiores a 2MB que es lo que viene por defecto en PhpMyAdmin; para esto tenes que crear un archivo que se llame **uploads.ini** y que contenga lo siguiente:

```
file_uploads = On
memory_limit = 500M
upload_max_filesize = 500M
post_max_size = 500M
max_execution_time = 600
```

Luego se vuelve a levantar el docker compose y listo ya se podría subir archivos de hasta 500M

Espero que te sirva y si te sirvió no te olvides de dejarme un comentario 🙂
