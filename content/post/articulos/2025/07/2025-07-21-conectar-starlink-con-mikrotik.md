---
author: fideo
description: Descripción paso a paso de como conectar starlink con mikrotik
categories:
  - tecnología
  - redes
  - mikrotik
date: 2025-07-22T14:05:00Z
excerpt: Te muestro los pasos a seguir para conectar starlink con mikrotik
status: future
tags:
  - mikrotik
  - starlink
thumbnail: /assets/uploads/2017/11/cabeceraUbuntu-1.jpg
title: Conectar Starlink con Mikrotik
type: post
url: /2025/07/2025-07-21-conectar-starlink-con-mikrotik.html
usemathjax: true
---

# Conectar Starlink con Mikrotik

### Configuración para Starlink (modo bridge)

  
Entrar a la aplicación de Starlink que se usó para configurar la antena y bajar hasta configuración.  
Dentro de configuración ir a la opción modo de derivación y deslizar para activar derivación.  
<span style="color:red">(ACLARACIÓN IMPORTANTE PARA REVERTIR ESTO SE NECESITA HARD RESET)</span>

  

Conectar el conector rj45 del modem de Starlink al puerto número 1 del Mikrotik.

### Conectarse al Mikrotik


Conectarse a Mikrotik con el usuario y contraseña correspondiente; si el mikrotik es nuevo entonces buscar la mac address del mikrotik y conectarse; acto seguido crear usuario y password y cambiar la pass de admin.

  

Pasos a seguir dentro del MikroTik:

  

1. Ir a **Interface List** y renombrar ó comentar el ether1 como “WAN STARLINK”
    
2. Crear un bridge, ir a **Bridge** darle al botón de más (+) ó agregar y crear una nueva interface con el nombre “**bridge1**” que viene por defecto o ponerle el nombre “**puente**”
    

	1. Ir a Ports y asignar el resto de los puertos al modo bridge (o puente) salvo el puerto ether1 que es la entrada WAN de STARLINK (ether2,ether3,ether4,ether5)
    

3. Ir a **IP → Adressess** darle click al botón de más (+) para agregar una nueva Address y le asignamos los valores de **192.168.10.1/24** en Address y en Interface seleccionamos en el combobox **dridge1** o puente según lo hayamos nombrado.
    
4. Ir a **IP → DHCP Client** darle click al botón de más (+) y en Interface seleccionar ether1 veremos que nos asigna en IP Address la IP de STARLINK.
    
5. Ir a **IP → DHCP Server** y presionar **DHCP Setup** y buscar en el combobox bridge1 o puente darle siguiente hasta terminar el setup aunque se puede cambiar la asignación por ip a un tiempo de 2 horas.
    
6. Ir a **IPv6 → DHCP** Client darle click al botón de más (+) y en la solapa DHCP en el combobox de **Interface** buscamos **ether1** y lo asignamos. Luego le damos click para activar **Add Default Route**, y le damos click al checkbox de prefix; asignamos un nombre al Pool Name que puede ser **IPV6-STARLINK** y aceptamos.  
    Observamos que nos asigna en **Prefix** un prefijo /56. Podemos mirar los DNS y observar también que nos asignó IPv6 como Dynamic Server.  
    Ir a DHCP Client y en la solapa Status copiar el valor que tiene el renglón de Server (copy all).
    
7. Ir a **IPv6 → Address** darle click al botón de más (+)  y en Address colocar lo que está en el buffer (copiado anteriormente) y sacarle el valor asignado **1 cambiarlo por 2 y agregarle /126** en el combobox de Interface seleccionar ether1 deschequear el checkbox de **Advertise** y aceptamos.  
    Para verificar vamos a abrir una terminal y copiar uno de los valores de los DNS de IPv6 y le realizamos un ping tendríamos que ver que responde.
    
8. Ir a **IPv6 → Route** y observar si asigno el valor de Gateway aceptar. Volvemos a IPv6 Address y al valor asignado o creado recién con 2/126 le ponemos el comentario de WANSTARLINK.
    
9. Ir a **IPv6 → Address** darle click al botón de más (+) y en el combobox de Interface seleccionar **bridge1** dejar tildado **Advertise** y en el combobox de From Pool seleccionar **IPV6-STARLINK** y aceptamos.
    
10. Ir a IPv6 → ND (Neighbor Discover) ver si hay valores asignados y luego ir a una consola en una PC dentro de la red y hacer un ping6 a los DNS IPv6 y observar si responde.  
    Hacer doble click sobre los valores asignados en ND y tildar la opción **Other Configuration** y aceptamos.
    
11. Ir a **IP → Firewall → NAT →** ir a la solapa **Action** y en el combobox de **Action** seleccionar **masquerable** luego ir a la solapa General y el combobox de **Out**. **Interface** seleccionar **ether1** y aceptamos.
    

  

Con esto ya deberíamos tener internet en las terminales y en el mikrotik respondiendo a IP e IPv6 haciendo ping y ping6 respectivamente.

