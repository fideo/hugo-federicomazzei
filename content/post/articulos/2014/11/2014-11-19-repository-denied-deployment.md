---
author: fideo
date: "2014-11-19T12:07:12Z"
excerpt: conq repository access denied. access via a deployment key is read-only solución
  casera pero "creo" que efectiva.
id: 840
post_format: []
status: publish
tags: []
title: conq repository access denied. access via a deployment key is read-only
type: post
url: /2014/11/repository-denied-deployment.html
---
Si alguna vez se toparon con este mensaje “*conq repository access denied. access via a deployment key is read-only*” dentro de **bitbucket** lo que les recomiendo es que borren el repositorio y lo vuelvan a crear.  
Se que no es una solución muy ortodoxa pero es la que me solucionó el problema; después buscar y probar varias formas de solucionarlo en google intenté hacer esto y me funcionó.

Bitbucket
---------

Pasos que realicé:  
Fui a mi carpeta de proyecto y borré el .git  
Me dirigí a https://bitbucket.org/ y eliminé el repositorio el cual da error de “*conq repository access denied. access via a deployment key is read-only*”  
Cree el repositorio nuevamente (hasta con el mismo nombre si quieren)  
Seguí estos pasos que recomienda bitbucket para realizar una repositorio desde cero.

<figure aria-describedby="caption-attachment-1045" class="wp-caption alignleft" id="attachment_1045" style="width: 622px">![bitbucket](http://federicomazzei.com.ar/blog/wp-content/uploads/2014/11/bitbucket-logo-blue.jpg)<figcaption class="wp-caption-text" id="caption-attachment-1045">bitbucket</figcaption></figure>

*Enjoy!!!*
