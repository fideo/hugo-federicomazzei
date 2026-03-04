---
author: fideo
description: Conexión SSH Segura con Llaves Ed25519
categories:
  - tecnología
date: 2026-02-26T15:10:01Z
excerpt: Conexión SSH Segura con Llaves Ed25519
status: publish
tags:
  - linux
  - ssh
  - bash
thumbnail: /assets/uploads/2017/11/cabeceraUbuntu-1.jpg
title: Conexión SSH Segura con Llaves Ed25519
type: post
draft: false
toc: false
summary: Como crear una conexión por ssh de forma segura con una llave ed25519
url: 2026/02/2026-02-26-conexion-ssh-segura-con-llaves-ed25519
usemathjax: true
expiryDate:
---

# Conexión SSH Segura con Llaves Ed25519

En el flujo de trabajo de un desarrollador de sistemas, la seguridad y la velocidad deben ir de la mano. Esta guía detalla cómo configurar el acceso remoto a una **Raspberry Pi 5** (o cualquier servidor Linux) eliminando la necesidad de contraseñas mediante criptografía de curva elíptica.

---

## 🚀 ¿Por qué usar Ed25519?

Olvida las viejas llaves RSA. **Ed25519** es el estándar moderno por tres razones:
1. **Seguridad:** Resiste ataques mejor que RSA con menos bits.
2. **Velocidad:** Las firmas y verificaciones son notablemente más rápidas.
3. **Legibilidad:** Las llaves son mucho más cortas, facilitando su gestión.

---

## 🛠️ Configuración Paso a Paso

### 1. Generar tu Identidad
Desde tu terminal (Debian/KDE), genera un par de llaves único para tu dispositivo:

```
ssh-keygen -t ed25519 -f ~/.ssh/id_raspi -C "tu_usuario@oficina"
````

_Si quieres entrar sin escribir nada, deja la **passphrase** en blanco._

### 2. Autorizar la Llave en el Servidor

Copia la parte pública a tu Raspberry Pi:

```
ssh-copy-id -i ~/.ssh/id_raspi.pub usuario@ip_de_tu_raspi
```

### 3. Configuración de Acceso Rápido

Edita tu archivo de configuración local con `nvim ~/.ssh/config` para crear un alias:

```
Host raspi 
	HostName 192.168.1.XX 
	User tu_usuario 
	IdentityFile ~/.ssh/id_raspi
```

Ahora solo usa: `ssh raspi`

## 🏠 Portabilidad y Permisos

Si mueves tus llaves a otra computadora (ej. de la oficina a tu casa), SSH exige que los permisos sean estrictos o ignorará la llave por seguridad:

```
# Permisos correctos para Linux
chmod 700 ~/.ssh 
chmod 600 ~/.ssh/id_raspi 
chmod 644 ~/.ssh/id_raspi.pub
```

---
## 🛡️ Hardening: Nivel de Seguridad Profesional

Una vez que hayas comprobado que puedes entrar con tu llave **sin pedir contraseña**, el siguiente paso lógico de "Hardening" (endurecimiento) es prohibir por completo las contraseñas en el servidor. Esto evita ataques de fuerza bruta.

### Pasos para asegurar tu Raspberry Pi:

1. Entra a tu Raspberry y edita el archivo de configuración del demonio SSH:

```
sudo nvim /etc/ssh/sshd_config
```

2. Busca y modifica las siguientes líneas para que queden así:

```
PasswordAuthentication no
ChallengeResponseAuthentication no
UsePAM no
```

3.  Reinicia el servicio para aplicar los cambios:

```
sudo systemctl restart ssh
```

**⚠️ Advertencia:** Asegúrate de que tu llave funciona correctamente antes de hacer esto, de lo contrario quedarás fuera del sistema y necesitarás acceso físico (teclado y monitor) para revertirlo.