---
id:
author: fideo
description:
categories:
  - tecnología
date: 2026-04-26T08:08:01Z
excerpt: ""
status: publish
tags:
  - linux
  - debian
  - software
  - truco
thumbnail: /assets/uploads/2017/11/cabeceraUbuntu-1.jpg
title: Pasar PDF a Audio con pdftotext y gtts (Google Text-to-Speech)
summary: Convertir texto a audio con dos comandos por linea de comando o consola en linux.
type: post
url: 2026/04/2026-04-26-pasar-pdf-a-audio-con-pdftotext-y-gtts- Google-Text-to-Speech
usemathjax: false
draft: false
toc: true
expiryDate:
footnotes:
---
# Pasar PDF a Audio con pdftotext y gtts-cli

Es bueno tener a mano estas herramientas que te permiten pasar de un PDF a Audio, ya sea para ir escuchando el libro que querías leer mientras manejas o ese apunte de la facultad que tanto te cuesta leer, porque tiene palabras difíciles o porque simplemente cuesta leerlo.

---

Entonces para eso hay que poner manos a la obra y con dos simples comandos transformar ese PDF o Texto a Audio.

Yo lo que busco es que el texto suene lo mas natural posible; por eso lo que hay que lograr es que esté bien puntualizado, sin errores de sintaxis.

<!--more-->

### Pasar de PDF a Texto

Para poder usar la herramienta que hace la conversión debemos tener instalado poppler-utils, en [[Debian]] o sistemas que están basados en Debian como Ubuntu el comando que deben utilizar para instalar esa herramienta es:

`sudo apt-get install poppler-utils`

Una vez instalado, para poder pasar de pdf a texto se ejecuta este comando:

`pdftotxt /path/to/pdf/ManifiestoCyberciruja.pdf`

Esto da como resultado un archivo ManifiestoCyberciruja.txt es decir el mismo nombre de archivo que tiene la extensión .pdf pero con la extensión .txt  y ese archivo contiene todo el contenido en texto de ese PDF. 

	|Aclaración importante:
		Si el pdf tiene una foto de un texto este no podrá ser reconocido como texto, es decir no realiza OCR sobre la imagen.

### Pasar de TXT a MP3 es decir de Texto a Audio

Para poder utilizar este comando gtts-cli tenemos que generar un entorno virtual de [[Python]] para esto yo uso venv y el comando es así:

`python -m venv venv`

Esto genera un directorio que se llama venv y dentro tiene todo lo necesario para que podamos mantener ese entorno que necesitamos para poder instalar gtts-cli para activar ese entorno debemos ejecutar:

`source venv/bin/activate`

Una vez que se ejecute esto se verá que aparece el nombre de nuestro directorio donde creamos el entorno virtual con una (e) o similar; eso nos indica que estamos dentro del entorno virtual.

Cuando ya tenemos esto bien configurado, debemos instalar el gtts-cli y para esto ejecutamos este comando.

`pip install gtts`

Cuando termina de correr todo lo que necesita para poder ejecutar gtts-cli el comando que debemos utilizar para convertir texto en audio es el siguiente:

`gtts-cli -f ManifiestoCyberciruja.txt -l es -o documento.mp3`

`-f`  permite pasarle un archivo .txt para que convierta a audio.
`-l es` permite decirle en qué idioma queremos que convierta ese texto a audio.

Bueno eso es todo!!! Espero que a alguien le sea útil, para mi lo fué por eso lo comparto ;)

Algo a tener en cuenta... de un archivo de texto como el de ManifiestoCyberciruja.txt de un peso de 4.3Kb pasa a un ManifiestoCyberciruja.mp3 de 2.6Mb es decir que aumenta considerablemente el peso.

https://poppler.freedesktop.org/ --> Para saber mas sobre pdftotext
https://gtts.readthedocs.io/en/latest/ --> gtts (_Google Text-to-Speech_)

***Enjoy!!!***



