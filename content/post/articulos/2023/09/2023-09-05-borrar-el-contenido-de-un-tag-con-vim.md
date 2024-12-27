---
author: fideo
date: "2023-09-05T15:44:41Z"
excerpt: Para borrar el contenido de un tag con vim solo necesitamos usar o presionar
  tres teclas
footnotes:
- ""
id: 52227
post_format: []
status: publish
tags:
- comando
- linux
- vim
thumbnail: ../../../uploads/2022/02/cabeceraVim-1.jpg
title: Vim - Borrar el contenido de un tag con vim
type: post
url: /2023/09/borrar-el-contenido-de-un-tag-con-vim.html
---

Para borrar el contenido de un tag con vim solo necesitamos usar o presionar tres teclas

```
dit
```

la “d” de delete  
la “i” de inside  
la “t” de tag

Entonces parados sobre el tag que queremos borrar el contenido ejecutamos esas tred teclas y el contenido se borrará

También podemos utilizar la combinación de teclas dat para borrar el tag completo incluido en el que estamos posicionado.

También se puede borrar por ejemplo el contenido de una llave o un corchete o lo que está encerrado entre una comilla simple o doble.

El comando es muy similar solo debemos cambiar la última tecla a utilizar antes usabamos la t para borrar el tag ahora deberíamos usar la tecla que encierra lo que queremos borrar

Por ejemplo si tenemos este contenido

```
<?php get_template_part( 'template-parts/content', 'single' ); ?>
```

Solo debemos posicionarnos dentro de las comillas simples **' '** y presionar las teclas **d + i + '** con esto borramos el contenido de lo que encierra la comilla simple.

<iframe allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen="" frameborder="0" height="525" loading="lazy" referrerpolicy="strict-origin-when-cross-origin" src="https://www.youtube.com/embed/Yn8Wsb-Vkjo?feature=oembed" title="Vim - Borrar el contenido de un tag con vim" width="100%"></iframe>

[Si te gustó **Borrar el contenido de un tag con vim** podes visitar mas post sobre vim acá](/tags/#vim)

<a href="https://bit.ly/suscribiteamicanalYouTube" target="_blank">No se olviden de suscribirse a mi canal de YouTube donde hay mucho mas material sobre vim</a>
