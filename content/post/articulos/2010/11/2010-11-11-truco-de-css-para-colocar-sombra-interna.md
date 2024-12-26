---
author: fideo
date: "2010-11-11T21:55:55Z"
excerpt: ""
id: 579
post_format: []
status: publish
tags: []
title: Truco de CSS para colocar sombra interna
type: post
url: /2010/11/truco-de-css-para-colocar-sombra-interna.html
---
Si bien esto no funciona en todos los navegadores a alguien le puede interesar colocar dentro de un div una sombra interna, ya sea por diseño u otra indole.

Imaginemos que tenemos un contenedor de 800px de ancho por 600px de alto (px = pixel) y a ese contenedor le aplicamos la sombra interna en cuestión, bueno lo único que tienen que hacer es colocar las lineas de código que marco con comentarios.

`<br></br>.contenedor {<br></br>position: absolute;<br></br>width: 800px;<br></br>height: 600px;<br></br>background-color:#CCC;<br></br>/* sombra interna */<br></br>-moz-box-shadow:inset 0 0 10px #000000;<br></br>-webkit-box-shadow:inset 0 0 10px #000000;<br></br>box-shadow:inset 0 0 10px #000000;<br></br>/* termina sombra interna*/<br></br>}<br></br>`

[Para ver el resultado final hacer click acá.](http://www.fideox.com.ar/wp-content/uploads/2010/11/divsombra.html)
