---
author: fideo
date: "2024-08-09T09:13:36Z"
excerpt: ""
id: 52292
post_format: []
status: publish
tags:
- comando
- linux
- vim
thumbnail: ../../../uploads/2022/02/cabeceraVim-1.jpg
title: Convertir texto de minúscula a MAYÚSCULA en Vim
type: post
url: /2024/08/convertir-texto-de-minuscula-a-mayuscula-en-vim.html
---
Para convertir texto de minúscula a MAYÚSCULA en Vim se puede realizar una convinación de tres o cuatro teclas para conseguir este resultado.
<!--more-->
Estando en modo NORMAL en vim y presionando las teclas **gUw** cambian la palabra siguiente de minúscula a MAYÚSCULA y si queremos hacer el paso inverso la convinación de teclas es **guw** como se puede apreciar el único cambio significativo es la letra **u** que cambia de minúscula a mayúscula según se necesite cambiar de un estado a otro.

Ahora si quisieramos cambiar toda la linea en la que nos encontramos posicionados deberíamos cambiar la tecla **w** por **$** ya que la primera indica palabra (w de word) y la segunda indica linea completa ($).  
Entonces el comando para pasar de una linea completa de minúscula a mayúscula es **gU$** y para pasar de mayúscula a minúscula las teclas que hay que presionar son **gu$**

Les dejo un video que publiqué en YouTube donde muestro como convertir texto de minúscula a MAYÚSCULA en Vim.

<iframe allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen="" frameborder="0" height="525" loading="lazy" referrerpolicy="strict-origin-when-cross-origin" src="https://www.youtube.com/embed/67I9Y5bw2o0?feature=oembed" title="Cambiar texto a minúscula o MAYÚSCULA en VIM" width="100%"></iframe>

<a href="https://youtube.com/playlist?list=PLEwU9ammVfH8b0g6pRuV6OggPw0Mxuhqm&si=miXN869jnHjbhiS6" target="_blank">Podés ver mas videos sobre vim en este enlace presionando acá.</a>

Si queres ver mas publicaciones sobre vim te dejo el link a las entradas con etiquetas de vim:  
[VIM](/tags/#vim)
