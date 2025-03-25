---
author: fideo
description: Movernos dentro de VIM con los archivos abiertos
categories:
- VIM
date: "2025-03-07T11:00:00Z"
excerpt: ""
status: publish
tags:
- vim
- linux
- software
thumbnail: /assets/uploads/2017/11/cabeceraUbuntu-1.jpg
title: Movernos dentro de VIM con los archivos abiertos
type: post
url: /2025/03/2025-03-07-movernos-dentro-de-VIM-con-los-archivos-abiertos.html
usemathjax: true
---

## Vim movernos entre documentos

En vim tenemos varias formas de movernos entre archivos abiertos.
Lo que más uso yo es la Ctrl+6 que te permite cambiar entre los 2 últimos archivos abiertos. Pero si tenemos más de un archivo abierto en el buffer, podemos escribir : (dos puntos) buffers y muestra una lista de todos los archivos abiertos en este momento o que se encuentran en el buffer.
`:buffers`

Mostrará algo similar a esto con los archivos que tengan abierto

> :buffers
  1 %a          "textoAOrdenar.txt"                                     línea 7
  2                     "README.md"                                                     línea 1
  3 #           "codigo-ejemplo.php"                    línea 10

Como pueden observar lo que nos muestra es que tenemos tres archivos abiertos donde el primer archivo el cursor está parado en la línea 7, el segundo en la línea 1 y el tercero en la línea 10
El archivo que estás parado actualmente te lo muestra con `%a` por eso en mi caso se pude ver que estoy en _textoAOrdenar.txt_ y el que está marcado con `#` es el siguiente que irá si presionamos `Ctrl+6` asi lo repitamos varias veces va a ir saltando de un archivo a otro.

## Movernos entre varios archivos abiertos

En el buffer que se muestra arriba tenemos tres archivos abiertos, si quisieramos ir al archivos README.md con `Ctrl + 6` no podríamos, pero para eso escribimos : (dos puntos ) b y el número que nos muestra a la izquierda del documento abierto en este caso el 2 y nos llevará a README.md

`:b2`

Automáticamente _README.md_ pasa a tener  el `%a` indicandonos que ese el archivo abierto actualmente y _codigo-ejemplo.php_ sigue conservando el `#` entonces si ahora presionamos varias veces `Ctrl+6` vamos a cambiar entre estos dos archivos abiertos.

Entonces, escribiendo dos puntos b `:b`y el número de archivo que se quiere traer al frente alcanza para movernos entre archivos abiertos.

Otra de las formas que tenemos para movernos dentro de VIM entre archivos abiertos es escribir dos puntos b y n `:bn`donde la b corresponde a buffer y n de next, entonces buffer next es la orden que le estamos dando a VIM para ir navegando hacia adelante entre el buffer que tengamos.
Así como tenemos buffer next, también existe el buffer previous y para esto solo necesitamos escribir dos puntos b y p `:bp` donde la b es de buffer y la p de previous y con esto pasamos al buffer anterior.

Una forma más de navegar entre el buffer abierto en VIM es escribir dos puntos b y una parte del nombre del archivo a traer al frente; para mi caso según el buffer que se mostró mas arriba si yo escribiese `:b  REA`me traería al frente el archivo _README.md_ y si pusiera `:b cod`me traería el archivo _codigo-ejemplo.php_ .

Como se puede ver existen multiples formas de pasar de un buffer a otro dentro de VIM, acá les dejo una lista de las distintas formas de moverse entre archivos abiertos en Vim:

Buffers:

    :ls: Lista todos los buffers abiertos, mostrando su número.
    :bnext o :bn: Va al siguiente buffer en la lista.
    :bprevious o :bp: Va al buffer anterior en la lista.
    :b [número]: Va al buffer con el número especificado.
    :b [nombre_parcial]: Va al buffer cuyo nombre contiene la parte especificada.

_Enjoy!!!_

<div class="video-container">
<iframe src="https://www.youtube.com/embed/mx7Ict9VbAk?si=LhuNH9p_p50QTAmf" title="Manejo de buffers movernos entre archivos con VIM" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" referrerpolicy="strict-origin-when-cross-origin" allowfullscreen></iframe>
</div>
