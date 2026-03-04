---
author: fideo
description: Cómo actualizar Debian 12 a Debian 13 paso a paso
categories:
  - tecnología
  - Software
  - Linux
  - debian
date: 2026-01-08T15:10:01Z
excerpt: Cómo actualizar Debian 12 a Debian 13 paso a paso
status: publish
tags:
  - linux
  - debian
  - sysadmin
  - servidores
  - escritorio
thumbnail: /assets/uploads/2017/11/cabeceraUbuntu-1.jpg
title: Cómo actualizar Debian 12 a Debian 13 paso a paso
type: post
draft: false
toc: false
summary: Cómo actualizar Debian 12 a Debian 13 paso a paso. Todos los comandos y modificaciones que deben realizarse para hacer esta actualización.
url: /2026/01/2026-01-08-como-actualizar-debian-12-a-debian-13-paso-a-paso.html
usemathjax: true
expiryDate:
---
# Cómo actualizar Debian 12 a Debian 13 paso a paso

Actualizar una versión estable de Debian es un procedimiento **robusto y confiable**, siempre que se realice siguiendo buenas prácticas.  
En esta guía vas a ver **cómo actualizar Debian 12 (Bookworm) a Debian 13 (Trixie)** paso a paso, con comandos claros y explicaciones pensadas tanto para **usuarios principiantes** como para **administradores de sistemas**.

{< toc >}

---

## Antes de empezar: recomendaciones importantes

Antes de iniciar la actualización, asegurate de cumplir con lo siguiente:

- Realizá un **backup completo** de tus datos importantes
- Verificá que tengas una **conexión a Internet estable**
- Si trabajás por **SSH**, evitá conexiones inestables
- Reservá tiempo: el proceso puede demorar
- Leé los mensajes que muestre `apt`, especialmente sobre archivos de configuración

---

## 1. Verificar la versión actual de Debian

Confirmá que tu sistema esté ejecutando Debian 12:

```bash
lsb_release -a
```

O bien:

```bash
cat /etc/debian_version
```

---

## 2. Actualizar completamente Debian 12

Antes de cambiar de versión, Debian 12 debe estar **100% actualizado**.

```bash
sudo apt update
sudo apt upgrade
sudo apt full-upgrade
```

Una vez finalizado, limpiá paquetes innecesarios:

```bash
sudo apt autoremove
sudo apt autoclean
```

Si el kernel fue actualizado, reiniciá el sistema:

```bash
sudo reboot
```

---

## 3. Revisar los repositorios configurados

Editá el archivo principal de repositorios:

```bash
sudo vim /etc/apt/sources.list
```

En Debian 12 deberías ver algo similar a:

```text
deb http://deb.debian.org/debian bookworm main contrib non-free non-free-firmware
deb http://deb.debian.org/debian bookworm-updates main contrib non-free non-free-firmware
deb http://security.debian.org/debian-security bookworm-security main contrib non-free non-free-firmware
```

---

## 4. Cambiar los repositorios a Debian 13 (Trixie)

Reemplazá todas las apariciones de `bookworm` por `trixie`:

```text
deb http://deb.debian.org/debian trixie main contrib non-free non-free-firmware
deb http://deb.debian.org/debian trixie-updates main contrib non-free non-free-firmware
deb http://security.debian.org/debian-security trixie-security main contrib non-free non-free-firmware
```

Guardá los cambios y cerrá el editor.

---

## 5. Actualizar el índice de paquetes

```bash
sudo apt update
```

Es normal que aparezcan advertencias relacionadas con cambios de versión.

---

## 6. Actualización mínima (fase segura)

Este paso reduce el riesgo de conflictos importantes:

```bash
sudo apt upgrade --without-new-pkgs
```

Si el sistema pregunta qué hacer con archivos de configuración:

- Si **no los modificaste**, aceptá la versión del mantenedor
- Si **los personalizaste**, revisá las diferencias antes de decidir

---

## 7. Actualización completa del sistema

Ahora sí, completamos la migración:

```bash
sudo apt full-upgrade
```

Este comando puede instalar paquetes nuevos y eliminar otros obsoletos.

---

## 8. Limpieza final

```bash
sudo apt autoremove
sudo apt autoclean
```

---

## 9. Reiniciar el sistema

```bash
sudo reboot
```

---

## 10. Verificar la actualización a Debian 13

Una vez reiniciado el sistema:

```bash
lsb_release -a
```

O:

```bash
cat /etc/debian_version
```

Deberías ver **Debian GNU/Linux 13 (trixie)**.

---

## Recomendaciones posteriores a la actualización

- Verificá el estado de los servicios:
  ```bash
  systemctl status
  ```
- Revisá los logs de APT:
  ```bash
  ls /var/log/apt/
  ```
- Si usás drivers propietarios (por ejemplo NVIDIA o Wi‑Fi), puede ser necesario reinstalarlos
- Probá aplicaciones críticas antes de dar el sistema por productivo

---

## Conclusión

Actualizar Debian entre versiones estables es un proceso maduro y confiable. Siguiendo este procedimiento, vas a poder migrar a **Debian 13** de forma segura y ordenada, aprovechando mejoras en rendimiento, soporte de hardware y software actualizado sin perder estabilidad.

Si usás Debian tanto en escritorio como en servidores, este método es el recomendado por la propia filosofía del proyecto.