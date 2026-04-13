---
ao_post_optimize:
- a:6:{s:16:"ao_post_optimize";s:2:"on";s:19:"ao_post_js_optimize";s:2:"on";s:20:"ao_post_css_optimize";s:2:"on";s:12:"ao_post_ccss";s:2:"on";s:16:"ao_post_lazyload";s:2:"on";s:15:"ao_post_preload";s:0:"";}
author: fideo
date: "2015-11-18T10:39:30Z"
excerpt: Como hacer para eliminar una contraseña de un documento en word. Muy simple
  y rápido. Un truco que puede salvarte el día a mas de uno si tiene un word protejido
  con contraseña.
footnotes:
- ""
id: 977
post_format: []
status: publish
tags:
- contraseña
- password
- truco
- word
thumbnail: ../../../uploads/2015/11/microsoftWord-1.webp
title: Eliminar la contraseña y protección de archivos Word
type: post
url: /2015/11/eliminar-la-contrasena-y-proteccion-de-archivos-word.html
---
<div class="wp-block-image size-full wp-image-979"><figure class="alignleft">![MS Word](http://federicomazzei.com.ar/blog/wp-content/uploads/2015/11/icono-word.gif)<figcaption class="wp-element-caption">Editor de texto</figcaption></figure></div>Un truco que encontré por ahí y que puede salvarle el día a más de uno es tratar de recuperar el contenido de un documento que no se puede editar dentro de un documento Word.

Para esto vamos a guardar el archivo Word en cuestion en formato .HTML luego lo abrimos con un editor de html preferido y buscamos las lineas

```
<pre class="wp-block-preformatted">[w:DocumentProtection]......[/w:DocumentProtection]
[w:UnprotectPassword]00000000[/w:UnprotectPassword]
```

Eliminamos esas dos lineas.  
Grabamos y abrimos desde el Word el archivo html que acabamos de editar.

Volvemos a cambiar la extensión del documento y WUALAAAA!!! listo… desbloqueado el archivo Word.

***Enjoy!!!***
