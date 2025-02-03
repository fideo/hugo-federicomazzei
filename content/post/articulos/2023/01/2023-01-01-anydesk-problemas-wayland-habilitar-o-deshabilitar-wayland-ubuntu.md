---
author: fideo
date: "2023-01-01T10:25:36Z"
excerpt: No se admite el servidor remoto de pantalla wayland, AnyDesk ubuntu
footnotes:
- ""
id: 52098
post_format: []
status: publish
tags:
- comando
- linux
- sistema operativo
- software
- ubuntu
thumbnail: ../../../uploads/2017/11/cabeceraUbuntu-1.jpg
title: Cómo solucionar el error "No se admite el servidor remoto de pantalla Wayland" en AnyDesk para Ubuntu 22.04
type: post
url: /2023/01/anydesk-problemas-wayland-habilitar-o-deshabilitar-wayland-ubuntu.html
---

# Cómo solucionar el error "No se admite el servidor remoto de pantalla Wayland" en AnyDesk para Ubuntu 22.04

## Introducción

Si estás utilizando AnyDesk en Ubuntu 22.04 y te encuentras con el mensaje de error **"No se admite el servidor remoto de pantalla Wayland"**, no te preocupes. Este problema es común y tiene una solución sencilla. En esta guía, te explicaré cómo habilitar o deshabilitar Wayland en Ubuntu 22.04 para que puedas usar AnyDesk sin problemas.

## ¿Qué es Wayland y por qué causa problemas con AnyDesk?

Wayland es un protocolo de servidor gráfico utilizado en lugar de Xorg en algunas distribuciones de Linux, incluido Ubuntu. Sin embargo, no todos los programas son compatibles con Wayland, lo que puede causar errores como el que estás experimentando con AnyDesk.

## Solución: Deshabilitar Wayland en Ubuntu 22.04

Para solucionar este problema, necesitas deshabilitar Wayland en tu sistema. Esto se hace modificando un archivo de configuración específico. Sigue estos pasos:

### Paso 1:
Abre una terminal en modo administrador (sudo).

### Paso 2:
Edita el archivo de configuración de GDM3 (Gestor de Display de GNOME) usando tu editor de texto preferido. Por ejemplo, si usas `vim`, ejecuta:

```
sudo vim /etc/gdm3/custom.conf
```

### Paso 3:
Busca la línea que dice:
```
#WaylandEnable=false
```

### Paso 4:
Descomenta la línea eliminando el símbolo # al principio, y asegúrate de que quede así:
```
WaylandEnable=false
```

### Paso 5:
Guarda los cambios y cierra el editor.

### Paso 6:
Reinicia el servicio GDM3 para aplicar los cambios. Ejecuta:
```
sudo systemctl restart gdm3
```
### Paso 7:
Una vez reiniciado el servicio, intenta conectarte nuevamente con AnyDesk. El error debería desaparecer.
¿Cómo volver a habilitar Wayland?

Si en algún momento necesitas volver a habilitar Wayland, simplemente abre el archivo `/etc/gdm3/custom.conf` nuevamente y cambia la línea a:
```
#WaylandEnableylandEnable=false
```
Luego, reinicia el servicio GDM3 como se indicó anteriormente.

## Conclusión

Deshabilitar Wayland es una solución efectiva para resolver el problema de compatibilidad con AnyDesk en Ubuntu 22.04. Sin embargo, recuerda que esto puede afectar otras aplicaciones que dependen de Wayland, así que asegúrate de que esta configuración sea adecuada para tus necesidades.

#### Más información
Si deseas aprender más sobre Ubuntu y otros temas relacionados, visita nuestra sección de posts sobre Ubuntu.

_***Enjoy!!!***_

