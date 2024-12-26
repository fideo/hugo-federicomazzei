---
author: fideo
date: "2010-11-10T21:36:07Z"
excerpt: ""
id: 572
post_format: []
status: publish
tags: []
title: Truco de CSS para centrar el contenido
type: post
url: /2010/11/truco-de-css-para-centrar-el-contenido.html
---
Si alguna vez te preguntas como centrar el contenido de una página maquetandolo en css bueno acá está la solución es simple solo tenes que copiar este código de acá abajo y listo.

`<br></br>.contenedor {<br></br>position: absolute;<br></br>top: 50%;<br></br>left: 50%;<br></br>width: 800px;<br></br>height: 600px;<br></br>margin-left: -400px; /* 1/2 del elemento width */<br></br>margin-top: -300px; /* 1/2 del elemento height*/<br></br>background-color:#CCC;<br></br>}`

[para ver el ejemplo presioná acá.](http://www.fideox.com.ar/wp-content/uploads/2010/11/divcentrado.html)
