---
author: fideo
date: "2013-02-17T11:14:24Z"
excerpt: Que hacer para poder actualizar ubuntu si el servidor de ubuntu argentina
  no funciona.
id: 745
post_format: []
status: publish
tags: []
title: Repositorio de Ubuntu Argentina no funciona
type: post
url: /2013/02/repositorio-de-ubuntu-argentina-no-funciona.html
---
Tal vez experimentaste alguna vez que al queres actualizar algo de tu ubuntu no te funciona. Eso puede deberse por varios motivos y puede pasar muy rara vez, pero puede pasar.  
Si esto ocurre lo que te recomiendo que hagas en los siguiente, que vayas a tu centro de software ubuntu una vez dentro presionar sobre editar y elegir la opción Origenes de Software.  
Se abrirá una nueva ventana similar a la de aquí abajo y debemos seleccionar donde dice Descargar desde, seleccionar Servidor principal.

<figure aria-describedby="caption-attachment-746" class="wp-caption alignnone" id="attachment_746" style="width: 300px">![Repositorio Ubuntu](http://federicomazzei.com.ar/blog/wp-content/uploads/2013/02/Captura-de-pantalla-de-2013-02-17-110634-300x197.png "Servidor Principal en Repositorio Ubuntu")<figcaption class="wp-caption-text" id="caption-attachment-746">Seleccionar Servidor Pincipal</figcaption></figure>

Una vez realizado esto ejecutamos el siguiente comando desde una terminal

```
<pre class="wp-block-preformatted">sudo apt-get update
```

Listo ya podremos realizar las actualizaciones deseadas.

*Enjoy!!!*
