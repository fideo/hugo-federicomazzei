---
author: fideo
description: Como ingresar fecha hora y día en el prompt de la línea de comandos en linux
categories:
  - tecnología
  - Software
  - Linux
date: 2025-12-16T01:00:00Z
excerpt: agregar información de este tipo de ayuda en el proceso diario
status: publish
tags:
  - linux
  - comandos
  - sysadmin
  - terminal
  - tmux
thumbnail: /assets/uploads/2017/11/cabeceraUbuntu-1.jpg
title: Agregar hora y fecha en el prompt de la linea de comandos de linux
summary: "Aprende a personalizar tu terminal de Linux para mostrar la hora y fecha actual en el prompt, una modificación simple que aumenta tu productividad diaria."
type: post
url: /2025/12/2025-12-16-agregar-hora-y-fecha-en-el-prompt-de-la-linea-de-comandos-de-linux
usemathjax: true
---

# Agregar hora y fecha en el prompt de la linea de comandos de linux

_Hace unos días tenía que correr un proceso en la linea de comandos de mi servidor linux con Ubuntu que no sabía cuanto iba a tardar; por eso luego de correr ese proceso me dije, sería bueno ponerle la hora y la fecha en la que inicié ese proceso así cuando termina tengo el registro de cuando inicia y cuando termina al devolverme el prompt._

---

## 📖 **¿Qué es el Prompt de Bash y por qué deberías personalizarlo?**

Si usas Linux, especialmente distribuciones basadas en Debian como **Ubuntu**, **Mint**, o **Pop!_OS**, el terminal es tu compañero diario. Ese texto que aparece antes de cada comando se llama **"prompt"** (PS1), y es mucho más que decoración: es tu panel de control en la terminal.

**El prompt por defecto** en Ubuntu/Debian suele ser algo como:

```
usuario@equipo:~$
```

Pero **¿sabías que puedes transformarlo** en un dashboard informativo que muestre fecha, hora, estado del sistema y más? Hoy te enseñaré cómo.
<!--more-->

---

## 🎨 **Desmitificando la Sintaxis del PS1**

Primero, entendamos las piezas básicas. Cuando editas tu `.bashrc`, estás modificando variables especiales:

```# Variables comunes en PS1:
\u = Nombre de usuario
\h = Nombre del host (equipo)
\w = Directorio actual completo
\W = Solo el nombre del directorio actual
\n = Nueva línea
\$ = Símbolo $ (o # para root)
```

**Los códigos de color** usan secuencias ANSI:

- `\[\e[0;38;5;XXXm\]` → Color del esquema 256 (XXX = 0-255)
- `\[\e[0m\]` → Resetear color
- `\D{formato}` → Fecha/hora personalizable

---

## ⚙️ **Paso a Paso: Agregar Fecha y Hora**

### **1. Accede a tu archivo de configuración**

``` 
# Abre tu .bashrc con nano (o tu editor preferido)
vim ~/.bashrc

# O para editarlo globalmente (afecta a todos los usuarios)
sudo vim /etc/bash.bashrc
```
### **2. Encuentra la línea PS1 existente**

Desplázate hacia abajo hasta encontrar algo como:

```
if [ "$color_prompt" = yes ]; then
    PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ '
else
    PS1='${debian_chroot:+($debian_chroot)}\u@\h:\w\$ '
fi
```

**¡Este es el código que vamos a mejorar!**

---

## 🔧 **Tres Implementaciones Prácticas**

### **Opción 1: Minimalista (Recomendada para Debian/Ubuntu)**

```
# Agrega esto en lugar del PS1 existente
PS1='\[\e[0;38;5;214m\][\D{%H:%M:%S}]\[\e[0m\] \[\e[0;38;5;32m\]\u@\h\[\e[0m\]:\[\e[0;38;5;45m\]\w\[\e[0m\]\$ '
```

**Resultado:**

[14:30:22] usuario@equipo:/home/usuario$

### **Opción 2: Informativa Completa**

```
# Muestra fecha completa y tiempo de ejecución
PS1='\n\[\e[0;38;5;226m\]═[\D{%d/%m/%Y %H:%M:%S}]═\[\e[0m\]\n\[\e[0;38;5;82m\]┌─[\u@\h]─[\w]\n\[\e[0;38;5;75m\]└─╼ \[\e[0m\]\$ '
```

**Resultado:**

═[12/03/2025 14:30:22]═
┌─[usuario@equipo]─[/home/usuario/proyectos]
└─╼ $

### **Opción 3: Estilo Powerline (Moderno)**

```
# Para usuarios que quieren un look más contemporáneo
PS1='\[\e[0;38;5;233m\]\[\e[48;5;214m\] \D{%H:%M} \[\e[0;38;5;214m\]\[\e[48;5;32m\]\[\e[0;38;5;255m\]\[\e[48;5;32m\] \u@\h \[\e[0;38;5;32m\]\[\e[48;5;45m\]\[\e[0;38;5;233m\]\[\e[48;5;45m\] \w \[\e[0;38;5;45m\]\[\e[0m\]\n\$ '
```

---

## 🎯 **Formatos de Fecha/Hora Más Útiles**

| Formato        | Resultado  | Uso Recomendado        |
| -------------- | ---------- | ---------------------- |
| `\D{%H:%M:%S}` | 14:30:22   | Para scripts y logging |
| `\D{%d/%m/%Y}` | 12/03/2025 | Formato internacional  |
| `\D{%a %d %b}` | Mié 12 Mar | Compacto y legible     |
| `\D{%Y-%m-%d}` | 2025-03-12 | Para ordenamiento      |
| `\D{%I:%M %p}` | 02:30 PM   | Formato 12h            |

---

## 🚀 **Funciones Avanzadas para tu Prompt**

¿Quieres ir más allá? Puedes agregar **información del sistema**:

### **1. Estado de la batería (ideal para laptops)**

```
# Agrega esta función en tu .bashrc
battery_status() {
    if [ -f /sys/class/power_supply/BAT0/capacity ]; then
        echo "[$(cat /sys/class/power_supply/BAT0/capacity)%]"
    fi
}

# Y úsala en tu PS1
PS1='\[\e[0;38;5;214m\]\D{%H:%M} $(battery_status)\[\e[0m\] \u@\h:\w\$ '
```
### **2. Indicador de Git Branch (para desarrolladores)**

```
parse_git_branch() {
    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

PS1='\[\e[0;38;5;214m\]\D{%H:%M}\[\e[0m\] \u@\h:\w\[\e[0;38;5;226m\]$(parse_git_branch)\[\e[0m\]\$ '
```

---

## ⚠️ **Errores Comunes y Soluciones**

### **Problema 1: Colores no se muestran**

```
# Asegúrate de que esto esté en tu .bashrc
force_color_prompt=yes
```
### **Problema 2: Prompt demasiado largo**

```
# Usa \w para ruta completa o \W para solo el nombre actual
# Limita la longitud del directorio
PROMPT_DIRTRIM=2  # Muestra solo los últimos 2 directorios
```
### **Problema 3: Caracteres extraños en SSH**

```
# Si usas SSH desde Windows/macOS
export TERM=xterm-256color
```

---

## 🧪 **Cómo Probar Sin Romper Nada**

```
# 1. Crea un backup primero
cp ~/.bashrc ~/.bashrc.backup

# 2. Prueba temporalmente en tu sesión actual
PS1='[prueba] \u@\h:\w\$ '

# 3. Si te gusta, edita el .bashrc
# 4. Aplica cambios
source ~/.bashrc
```

---

## 📊 **Beneficios de un Prompt Personalizado**

1. **Eficiencia**: Sabes la hora sin salir de la terminal
2. **Tracking**: Registras cuándo ejecutaste comandos
3. **Profesionalismo**: Tu terminal refleja tu expertise
4. **Debugging**: Identifica problemas por timestamp
5. **Personalización**: Tu terminal, tus reglas

---

## 🌟 **Mi Configuración Favorita para Debian/Ubuntu**

Aquí está mi **setup diario** que combina utilidad y estética:

```
# Agrega esto al final de tu ~/.bashrc
export PS1='\n\[\e[0;38;5;214m\]╭─[\D{%H:%M:%S}]─[\D{%d/%m/%y}]\[\e[0m\]\n\[\e[0;38;5;32m\]╰─[\u@\h]─[\w]\$ \[\e[0m\]'

# Bonus: Color diferente para usuario root
if [ $(id -u) -eq 0 ]; then
    export PS1='\n\[\e[0;38;5;196m\]╭─[\D{%H:%M:%S}]─ROOT─[\D{%d/%m/%y}]\[\e[0m\]\n\[\e[0;38;5;196m\]╰─[\u@\h]─[\w]\# \[\e[0m\]'
fi
```

---
## Configuración para Poweline agregando  fecha y hora

Aquí está mi setup diario para poder agregar la fecha y la hora sobre Powerline; para  una mejor organización de lo modificado se realiza una copia del archivo default_leftonly.json

```
# si no existe el directorio lo creamos
mkdir -p ~/.config/powerline/themes/shell/

# copiar el archivo default_leftonly.json a la configuración local
cp /usr/share/powerline/config_files/themes/shell/default_leftonly.json ~/.config/powerline/themes/shell/default_leftonly.json

```

Luego procedemos a editar el archivo y le agregamos la fecha y la hora en el sector que nosotros queremos; yo particularmente lo tengo con la fecha al inicio del prompt y la hora al final; esto me ayuda a saber cuando se inicia un proceso y cuando termina.

	Mi configuración de powerline para agregar fecha y hora

```
{
  "segments": {
    "left": [
      {
        "function": "powerline.segments.common.time.date",
        "name": "date",
        "args": {
          "format": "%Y-%m-%d",
          "istime": true
        }
      },
      {
        "function": "powerline.segments.common.net.hostname",
        "priority": 10
      },
      {
        "function": "powerline.segments.common.env.user",
        "priority": 30
      },
      {
        "function": "powerline.segments.common.env.virtualenv",
        "priority": 50
      },
      {
        "function": "powerline.segments.common.vcs.branch",
        "priority": 40
      },
      {
        "function": "powerline.segments.shell.cwd",
        "priority": 10
      },
      {
        "function": "powerline.segments.common.time.date",
        "name": "time",
        "args": {
          "format": "%H:%M:%S",
          "istime": true
        }
      },
      {
        "function": "powerline.segments.shell.jobnum",
        "priority": 20
      },
      {
        "function": "powerline.segments.shell.last_pipe_status",
        "priority": 10
      }
    ]
  }
}
```


---
## 🔗 **Recursos Adicionales**

- [Repositorio de prompts Bash](https://github.com/barryclark/bashstrap)
- [Guía oficial de Bash](https://www.gnu.org/software/bash/manual/)
- [Generador de colores ANSI](https://ansi.gabebanks.net/)

---

## 🎬 **Conclusión**

Personalizar tu prompt no es solo vanidad técnica; es sobre **eficiencia y contexto**. En un entorno Linux, especialmente en [[Debian]]/[[Ubuntu]] donde la terminal es central, tener información relevante a un vistazo te convierte en un usuario más efectivo.

---

**📌 Recuerda**: Después de editar tu `.bashrc`, ejecuta `source ~/.bashrc` para aplicar los cambios. ¡Feliz personalización!
