---
author: fideo
date: "2024-03-01T09:42:36Z"
excerpt: ""
id: 52263
post_format: []
status: publish
tags:
- comando
- linux
- sistema operativo
- software
- ubuntu
thumbnail: ../../../uploads/2017/11/cabeceraUbuntu-1.jpg
title: No funciona Wi-Fi en tu notebook con Linux
type: post
url: /2024/03/no-funciona-wi-fi-en-tu-notebook-con-linux.html
---
Si terminaste de instalar Linux y no te funciona el Wi-Fi tenes que realizar los siguientes pasos para que empiece a funcionar.
<!--more-->
> Estos pasos a continuación son para distribuciones basadas en Debian
> 
> <cite>Ubuntu y sus sabores, Neon, Loc-Os, Linux Mint, PureOS, Deepin, Kali Linux, etc. etc.</cite>

Antes de empezar a ejecutar los comandos que siguen a continuación tenemos que conseguir una conexión por cable de red para poder ejecutar algunos comando y descargar algunos componentes desde internet. Luego de conectarnos a la red de internet con cable lo primero que vamos a realizar es ejecutar la actualización de los repositorios; para esto ejecutamos este comando

```
sudo apt update
```

Primero instalamos net-tools porque mas que seguro que no funcione porque en la mayoría de las distribuciones linux no viene instalado por defecto. Para esto tenes que ejecutar el siguiente comando.

```
sudo apt install net-tools
```

Una vez que está instalado ejecutamos el comando ifconfig

```
ifconfig
```

Este comando nos mostrará o no el nombre de nuestro controlador Wi-Fi; si no lo muestra no te preocupes ya que el firmware que se instalará luego es un genérico y servirá para la gran mayoría de los controladores de Wi-Fi.

Luego tenemos que eliminar el paquete bcmwl-kernel-source este paquete debe ser eliminado para poder instalar el nuevo firmware; para esto ejecutamos el comando

```
sudo apt remove bcmwl-kernel-source
```

Una vez que haya terminado de removerlo se procede con la instalación del firmware Broadcom que nos servirá para tener un controlador de Wi-Fi genérico

```
sudo apt install firmware-b43-installer
```

Luego de instalar el firmware-b43-installer tenes que reiniciar la PC para eso ejecutamos este comando

```
sudo reboot
```

Listo al reiniciar la PC deberías tener ya el ícono de Wi-Fi en la barra de tareas que te mostrará todas las señales de Wi-Fi captadas por tu controlador.

***Enjoy!!!***

```
sudo apt install net-tools  
sudo apt update  
sudo apt remove bcmwl-kernel-source  
sudo apt install firmware-b43-installer  
sudo reboot
```
