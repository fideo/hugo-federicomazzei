---
author: fideo
description: Rustdesk el reemplazo de AnyDesk o TeamViewer
categories:
- Software
date: "2025-02-05T11:00:00Z"
excerpt: ""
status: publish
tags:
- software
thumbnail: /assets/uploads/2017/11/cabeceraUbuntu-1.jpg
title: Rustdesk el reemplazo de AnyDesk o TeamViewer
type: post
url: /2025/02/rustdesk-el-reemplazo-de-anydesk-o-teamviewer.html
usemathjax: false 
---

## RustDesk: Una Alternativa Open-Source a AnyDesk y TeamViewer

Recientemente, descubrí **RustDesk**, una alternativa de código abierto a soluciones de escritorio remoto como AnyDesk y TeamViewer. Me encontré con este software a través de una publicación en redes sociales y, al investigar más, me llamó la atención su enfoque en la privacidad, la posibilidad de autoalojamiento y su rendimiento optimizado.
<!--more-->
## ¿Por qué elegir RustDesk?

Uno de los mayores atractivos de [RustDesk] es que permite a los usuarios autoalojar su propio servidor de conexión, lo que brinda un control total sobre los datos y mejora el rendimiento en las conexiones remotas. A diferencia de otras soluciones propietarias que dependen de servidores de terceros, con [RustDesk] puedes establecer tu propio **ID Server** y **Relay Server**, asegurando así una infraestructura privada y segura.

Además de las ventajas en seguridad y control de datos, [RustDesk] permite la personalización de su cliente. Esto significa que empresas de soporte técnico pueden adaptar la aplicación con su propia marca, como logotipos y colores corporativos, ofreciendo una experiencia más profesional a sus clientes. También es una solución multiplataforma, compatible con Windows, macOS, Linux, Android e iOS, e incluso permite el acceso remoto desde un navegador web.

## Instalación en Docker

Para gestionar mis conexiones de manera eficiente, decidí desplegar [RustDesk] en mi propio servidor utilizando **Docker Compose**. A continuación, comparto el archivo `docker-compose.yml` que utilicé:

```yaml
networks:
  rustdesk-net:
    external: false

services:
  hbbs:
    container_name: hbbs
    ports:
      - 21115:21115
      - 21116:21116
      - 21116:21116/udp
      - 21118:21118
    image: rustdesk/rustdesk-server:latest
    environment:
      - ALWAYS_USE_RELAY=Y
    command: hbbs -r rustdesk.tudominio.com.ar:21117
    volumes:
      - ./data:/root
    networks:
      - rustdesk-net
    depends_on:
      - hbbr
    restart: unless-stopped

  hbbr:
    container_name: hbbr
    ports:
      - 21117:21117
      - 21119:21119
    image: rustdesk/rustdesk-server:latest
    command: hbbr
    volumes:
      - ./data:/root
    networks:
      - rustdesk-net
    restart: unless-stopped
```

## Configuración de los Clientes

Una vez configurado el servidor, el siguiente paso fue ajustar los clientes para que se conectaran a mi infraestructura en lugar de utilizar los servidores públicos de [RustDesk]. Para ello, ingresé en la configuración de cada cliente y establecí mi propio **Servidor de ID** y **Servidor Relay**. Además, es fundamental utilizar la misma clave generada por el servidor en todos los dispositivos que desees administrar dentro de tu dominio.

### Conclusión

[RustDesk] se presenta como una alternativa sólida y confiable para quienes buscan una solución de escritorio remoto sin depender de servicios de terceros. Su capacidad de autoalojamiento, personalización y compatibilidad multiplataforma lo convierten en una excelente opción tanto para uso personal como empresarial. Si buscas mayor seguridad y control sobre tus conexiones remotas, te recomiendo darle una oportunidad.

[RustDesk]: https://rustdesk.com/es/

