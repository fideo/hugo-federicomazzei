---
author: fideo
date: "2010-09-07T00:33:24Z"
excerpt: ""
id: 549
post_format: []
status: publish
tags: []
title: rtorrent - descargar torrents desde la consola
type: post
url: /2010/09/rtorrent-descargar-torrents-desde-la-consola.html
---
Encontré otro cliente torrent para linux y que se puede usar por consola.

Lo encontré en esta página <http://www.techtear.com/2007/07/24/rtorrent-descarga-torrents-desde-la-consola/>

El resumen de ese post es este:

Instalar: **$ sudo aptitude install rtorrent**

Configurar: **$ cp /usr/share/doc/rtorrent/examples/rctorrent ~/.rtorrent.rc**

Ejecución: **$ rtorrent**

cargar:

1. Apretamos **Enter**
2. Abajo del rTorrent, va a aparecer algo que dice **load&gt;**, para lo cual vamos a tipear la carpeta en donde se encuentran nuestros documentos… supongamos, **~/torrents** (que sería, /home/tu\_usuario/torrents). Si desconocemos la ruta, podemos iniciar escribiendo **/**, luego apretar **TAB** e ir descubriendo cuales son las rutas posibles para llegar a donde están nuestros archivos.
3. Una vez allí dentro, apretamos **TAB**, para ver la lista de archivos disponibles, escribimos las primeras letras que corresponden al mismo y luego nuevamente **TAB** para autocompletar lo que falta del texto.
4. Acto seguido, apretamos **Enter** para cargar el archivo torrent que elegimos.

Modificar velocidades:

- a/A =&gt; subir ancho de banda de subida/bajada +1 KB
- s/S =&gt; subir ancho de banda de subida/bajada +5 KB
- d/D =&gt; subir ancho de banda de subida/bajada +50 KB
- z/Z =&gt; bajar ancho de banda de subida/bajada -1 KB
- x/X =&gt; bajar ancho de banda de subida/bajada -5 KB
- c/C =&gt; bajar ancho de banda de subida/bajada -50 KB

y listo 😀

***Enjoy!!!***
