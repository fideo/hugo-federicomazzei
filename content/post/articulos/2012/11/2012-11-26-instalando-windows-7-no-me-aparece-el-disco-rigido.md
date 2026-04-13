---
author: fideo
date: "2012-11-26T15:47:58Z"
excerpt: ""
id: 736
post_format: []
status: publish
tags: []
title: Instalando Windows 7 no me aparece el disco rígido
type: post
url: /2012/11/instalando-windows-7-no-me-aparece-el-disco-rigido.html
---
Hace poco mi hermana me trajo la notebook para que se la arreglara (usa windows 7), después de luchar para recuperar los datos se decidió formatear la notebook.  
El intentar instalar **Windows 7** otra vez me encontré con la sorpresa de que **no me detectaba el disco duro**  de la notebook (sony vaio vgn-nm240f). Googlé varios días hasta que encontré la **solución**, y es la siguiente:

- Ponemos el cd de instalación de Windows 7
- Cuando llega a la opción de seleccionar idioma presionamos las teclas “Shift+F10”
- Se abre una consola (prompt) donde ahí colocamos los siguientes valores: 
  - **diskpart**
  - **list disk** (para mostrar el número de identificación de cada partición del disco duro, generalmente Disk 0)
  - **select disk 0** (cambiar 0 por otro número si es necesario)
  - **clean** (esto elimina todas las particiones)
  - **create partition primary size=200000** (crea una partición con 200GB; para usar el disco entero como una partición se debe omitir el parámetro “size=value”)
  - **select partition 1**
  - **active**
  - **format fs=ntfs quick** (este proceso puede demorar varios minutos)
  - **exit**
  - **exit**

Una vez terminado este proceso siguen con la instalación de Windows como siempre…

***Enjoy!!!***
