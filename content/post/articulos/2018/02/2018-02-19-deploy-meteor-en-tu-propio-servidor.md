---
ao_post_optimize:
- a:6:{s:16:"ao_post_optimize";s:2:"on";s:19:"ao_post_js_optimize";s:2:"on";s:20:"ao_post_css_optimize";s:2:"on";s:12:"ao_post_ccss";s:2:"on";s:16:"ao_post_lazyload";s:2:"on";s:15:"ao_post_preload";s:0:"";}
author: fideo
date: "2018-02-19T11:28:42Z"
excerpt: ""
id: 1284
post_format: []
status: publish
tags: []
thumbnail: ../../../uploads/2017/11/cabeceraMeteor-1.jpg
title: Deploy Meteor en tu propio servidor
type: post
url: /2018/02/deploy-meteor-en-tu-propio-servidor.html
---

Hoy voy a dejar en mi blog asentado como hice para hacer que una aplicación [Meteor](https://guide.meteor.com/deployment.html) esté corriendo en mi servidor / hosting.  
Por el momento yo tengo mis sites alojados en DonWeb con un servicio de Cloud Server.  
Accedo a este servicio a través de una consola y en ese server tengo instalado CentOS al momento de escribir esta nota.

<table>
    <tbody>
        <tr>
            <td align="center">
                <img src="/assets/uploads/2018/02/nodejs-new-pantone-white.png" alt="Node Js" title="Node Js" width="100" />
            </td>
            <td align="center">
                <img src="/assets/uploads/2018/02/Meteor-logo.png" alt="Meteor js" width="100" />
            </td>
        </tr>
        <tr>
            <td align="center">
                <img src="/assets/uploads/2018/02/nginx-logo-1000x1000.png" alt="nginx" title="nginx"  width="100" />
            </td>
            <td align="center">
                <img src="/assets/uploads/2018/02/centos_logo.png" alt="Centos OS 7" title="Centos OS 7" width="100">
            </td>
        </tr>
    </tbody>
</table>

#### Si ejecutamos 

```
cat /etc/redhat-release
```

#### devuelve
CentOS Linux release 7.3.1611 (Core)

Primero hay que instalar [nginx](https://nginx.org/en/) , [mongodb](https://www.mongodb.com/es) , [meteor](https://www.meteor.com/) y [Passenger](https://www.phusionpassenger.com/) para esto pueden seguir las instrucciones de cada uno de las app en sus respectivos sitios o ver como lo hice yo en el video 😉

<iframe allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen="" frameborder="0" height="525" loading="lazy" referrerpolicy="strict-origin-when-cross-origin" src="https://www.youtube.com/embed/5sbQyFfw3N8?feature=oembed" title="Deploy Meteor en tu propio servidor" width="100%"></iframe>

Igualmente acá les dejo un resumen de los comando a utilizar para instalar cada uno de los servicios en CentOS 7

Instalando nginx
----------------

1)
```
sudo yum install epel-release
```
2)
```
sudo yum install nginx
```
3)
```
sudo yum install nginx
``` 
4)
```
sudo systemctl start nginx
``` 


Instalando MongoDB
------------------

1)
```
sudo vi /etc/yum.repos.d/mongodb-org.repo

[mongodb-org-3.4]
name=MongoDB Repository
baseurl=https://repo.mongodb.org/yum/redhat/$releasever/mongodb-org/3.4/x86_64/
gpgcheck=1
enabled=1
gpgkey=https://www.mongodb.org/static/pgp/server-3.4.asc
```

2) 
```
sudo yum repolist

Salida  
. . .  
repo id repo name  
base/7/x86\_64 CentOS-7 – Base  
extras/7/x86\_64 CentOS-7 – Extras  
mongodb-org-3.2/7/x86\_64 MongoDB Repository  
updates/7/x86\_64 CentOS-7 – Updates  
. . .
```

3)
```
sudo yum install mongodb-org
```

4)
``` 
sudo systemctl start mongod
```

5)
``` 
sudo systemctl reload mongod
```

Instalando Meteor
-----------------

```
curl https://install.meteor.com/ | sh
```

Instalando Node JS
------------------

1)
```
sudo yum install epel-release
```

2)
```
sudo yum install nodejs
```

3) 
```
node --version
```

#### Salida

v0.10.30

4) 
```
sudo yum install npm
```

Instalando Passenger
--------------------

1)
```
sudo yum install -y epel-release yum-utils
```

2) 
```
sudo yum-config-manager –enable epel
```

3) 
```
sudo yum clean all &amp;&amp; sudo yum update -y
```

4)
```
sudo yum install -y pygpgme curl
```

5)
```
sudo curl –fail -sSLo /etc/yum.repos.d/passenger.repo https://oss-binaries.phusionpassenger.com/yum/definitions/el-passenger.repo
```

6)
```
sudo yum install -y nginx passenger || sudo yum-config-manager –enable cr &amp;&amp; sudo yum install -y nginx passenger
```

Una vez realizado todos estos pasos hay que editar el archivo passenger.conf ubicado /etc/nginx/conf.d/passenger.conf . Esto nos permitirá hacer un **deploy meteor en tu propio servidor**.

```
#passenger_root /some-filename/locations.ini;

#passenger_ruby /usr/bin/ruby;

#passenger_instance_registry_dir /var/run/passenger-instreg;

```

Hay que sacarle el comentario ( # ) y grabarlo

```
passenger_root /some-filename/locations.ini;

passenger_ruby /usr/bin/ruby;

passenger_instance_registry_dir /var/run/passenger-instreg;

```

Luego se reinicia el servidor nginx

```
sudo service nginx restart
```

Se puede chequear la instalación ejecutando esta linea

```
sudo /usr/bin/passenger-config validate-install
```

Y tiene que devolver algo similar a esto

```
* Checking whether this Phusion Passenger install is in PATH... ?

* Checking whether there are no other Phusion Passenger installations... ?

```

 **Listo ya podés hacer un Deploy de Meteor en tu propio servidor.**

[En este link les muestro como realizo un deploy con reaction commerce corriendo en mi propio servidor.](/2017/09/reaction-commerce-usando-propio-servidor)
