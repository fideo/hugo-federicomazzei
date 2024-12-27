---
author: fideo
date: "2023-09-03T15:43:59Z"
excerpt: Vimdiff nos permite comparar dos archivos, este comando es muy bueno cuando
  por ejemplo bajamos un archivo de un servidor y lo queremos comparar con lo que
  tenemos localmente
id: 52203
post_format: []
status: publish
tags:
- comando
- linux
- vim
thumbnail: ../../../uploads/2022/02/cabeceraVim-1.jpg
title: Vimdiff comparar dos archivos con VIM
type: post
url: /2023/09/vimdiff-comparar-dos-archivos-con-vim.html
---

Hoy vamos a usar Vimdiff (vim -d) para comparar dos archivos con VIM.

Vimdiff nos permite comparar dos archivos, este comando es muy bueno cuando por ejemplo bajamos un archivo de un servidor y lo queremos comparar con lo que tenemos localmente.

Para ejecutar este comando es muy fácil solo tenemos que seleccionar dos archivos que queremos comparar para eso yo generé dos archivos de muestra que los dejo en el repositorio de github <a href="https://github.com/fideo/vim" target="_blank">https://github.com/fideo/vim</a>

Si quiero comparar textoAOrdenar.txt contra textoAOrdenar2.txt lo único que tengo que realizar es:

```
vimdiff textoAOrdenar.txt y textoAOrdenar2.txt
```

Esto me permitirá ver de forma simple marcado con rojo y verde lo que difiere entre ambos archivos; pudiendo así realizar los cambios necesarios tanto en uno como otro archivo.

Recuerden que en vim se puede pasar de una solapa a otra con el comando **control + ww** alternando de un lado a otro de las solapas abiertas.

De esta manera podremos grabar las modificaciones que necesitemos de un lado u otro dejando el archivo que necesitemos “modificar” haciendo una comparación con el archivo base o local.

También con vimdiff podemos usar la opción **-o** que nos permitirá ver las diferencias con modo horizontal en lugar de tenerlas vertical.

Vimdiff comparar dos archivos con VIM en YouTube
------------------------------------------------

<iframe allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen="" frameborder="0" height="525" loading="lazy" referrerpolicy="strict-origin-when-cross-origin" src="https://www.youtube.com/embed/EZsv8hBFyXU?feature=oembed" title="Usando vimdiff para comparar dos archivos" width="100%"></iframe>

Vimdiff se puede ejecutar con VIM usando la opción -d es decir que podemos comparar los dos archivos ejecutando lo siguienete:

```
vim -d textoAOrdenar.txt y textoAOrdenar2.txt
```

y podríamos usar ambas opciones juntas por ejemplo

```
vim -do textoAOrdenar.txt y textoAOrdenar2.txt
```

De esta forma podemos ver lo mismo que con vimdiff pero en forma horizontal y ejecutando el comando vim en lugar de vimdiff. A efecto es lo mismo usar uno u otro comando ya que los dos ejecutan o muestran exactamente el mismo resultado.

Si quisieras hacer que escrolee de un solo lado se puede usar el comando **set noscrollbind** y esto hará que se pueda escrolar de un solo lado mientras que en el otro lado de la comparación hace la escrolación de ambas ventanas.

[Si desean ver mas publicaciones sobre vim pueden hacer click en este enlace](/tags/#vim)

Espero que les guste el contenido de este post y si te gustó podes dejar un comentario acá o dejarlo en mi canal de YouTube y no te olvides de suscribirte y activar la campanita.

<a href="https://bit.ly/suscribiteamicanalYouTube" target="_blank">Suscribite a mi Canal de YouTube</a>