---
author: fideo
description: Migré de Plez a Jellyfin porque plex empezó a cobrar por el stream.
categories:
  - tecnología
date: 2025-07-23T11:00:00Z
excerpt: No me parece justo que plex cobre si el contenido está mi servidor; por esto migré a Jellyfin, mucho mas poderoso que Plex.
status: future
tags:
  - linux
thumbnail: /assets/uploads/2017/11/cabeceraUbuntu-1.jpg
title: Migré de Plex a Jellyfin
type: post
url: 2025-07-23-migré-de-plex-a-jellyfin-mi-experiencia-completa.html
usemathjax: true
---

# Migré de Plex a Jellyfin: Mi Experiencia Completa

Hace unos días descubrí algo que me hizo reconsiderar mi uso de Plex: **para transmitir contenido remotamente desde mi propio servidor, ahora es necesario pagar**. Lo más frustrante es que el contenido ni siquiera pasa por los servidores de Plex (o al menos eso creo), por lo que no entendía la necesidad de este cobro.

## ¿Por qué el cambio?

Ya había escuchado a varios colegas hablar maravillas de Jellyfin, pero como tenía todo funcionando con Plex, nunca me planteé migrar. Sin embargo, cuando Plex implementó el cobro por streaming (aunque el costo sea bajo), consideré que era el momento perfecto para hacer el cambio. **¿Por qué pagar por algo que no me aporta ningún beneficio adicional?**

## El proceso de migración

La migración de Plex a Jellyfin me llevó apenas un fin de semana. Estos fueron los pasos clave:

1. **Configuración con Docker**: Utilicé la imagen oficial de Docker Compose que aparece en la página de Jellyfin, adaptando los parámetros a mis necesidades.

2. **Estructura de directorios**: Mapeé mis bibliotecas multimedia existentes para que Jellyfin las reconociera inmediatamente.

Aquí comparto mi archivo `docker-compose.yml` que actualmente funciona en mi Raspberry Pi 5:

```yaml
services:
  jellyfin:
    image: jellyfin/jellyfin
    container_name: jellyfin
    user: "1000:1000"
    network_mode: "host"
    ports:
      - 8096:8096
      - 8920:8920
    volumes:
      - ./config:/config
      - ./cache:/cache
      - type: bind
        source: /path/to/Series/
        target: /series
        read_only: true
      - type: bind
        source: /path/to/Peliculas/
        target: /peliculas
        read_only: true
      - type: bind
        source: /path/to/Musica/
        target: /musica
        read_only: true
      - type: bind
        source: /path/to/OtrosVideos/
        target: /otrosvideos
        read_only: true
    restart: unless-stopped
```

## Configuración adicional

Para completar la implementación:

- **Acceso remoto seguro**: Configuré Nginx con mi dominio personalizado y añadí certificados SSL para encriptar todas las conexiones.
    
- **Acceso local optimizado**: Modifiqué el archivo `/etc/hosts` en los dispositivos de mi red local para que el dominio apunte directamente a la IP local de mi Raspberry Pi.
    

## Personalización de la experiencia

Después de la instalación básica, me dediqué a personalizar Jellyfin:

- **Interfaz similar a Netflix**: Encontré un plugin genial que transforma la interfaz para que se parezca notablemente a Netflix, mejorando mucho la experiencia de usuario.
    
- **Organización de bibliotecas**: Aproveché las opciones avanzadas de categorización que ofrece Jellyfin para mantener mi colección perfectamente organizada.
    

## Conclusión

El cambio resultó mucho más sencillo de lo que esperaba. Jellyfin ofrece **todas las funciones que necesito sin costos ocultos**, y lo mejor de todo: **mantengo el control total sobre mi servidor y mis datos**.

¿Has considerado migrar a Jellyfin? ¿Qué experiencias has tenido con estos servicios? ¡Déjame tus comentarios!

