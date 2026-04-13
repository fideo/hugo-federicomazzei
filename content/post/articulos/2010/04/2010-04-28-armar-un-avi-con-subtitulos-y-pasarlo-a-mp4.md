---
author: fideo
date: "2010-04-28T15:07:10Z"
excerpt: ""
id: 504
post_format: []
status: publish
tags: []
title: Armar un avi con subtitulos y pasarlo a mp4
type: post
url: /2010/04/armar-un-avi-con-subtitulos-y-pasarlo-a-mp4.html
---
<figure aria-describedby="caption-attachment-506" class="wp-caption alignleft" id="attachment_506" style="width: 300px">[![mencoder](http://www.fideox.com.ar/wp-content/uploads/2010/04/mencoder-300x123.png "mencoder")](http://www.fideox.com.ar/wp-content/uploads/2010/04/mencoder.png)<figcaption class="wp-caption-text" id="caption-attachment-506">mencoder avi to avi with sub</figcaption></figure>

Ando corto de tiempo y necesitaba llevar conmigo las series que quiero ver, para eso estuve investigando (googleando) como podía hacer para obtener un mp4 con los subtitulos incluidos.

Para eso en linux podemos usar ***mencoder*** es una aplicación que con esta linea de comando

mencoder -sub archivodesubtitulos.srt -subcp iso-8857-9 -ovc xvid -xvidencopts bitrate=687 -oac copy -o nombrearchivonuevo.avi nombreoriginal.avi

<span>mencoder -ovc lavc -oac mp3lame pelicula.avi -o pelicula\_con\_subtitulos.avi -sub subtitulos.xxx</span>

pasamos un .avi (peícula) con su .srt (subtítulo) a un solo avi con el subtitulo embebido. Por algún motivo que por el momento desconozco cuando realizo esto desde consola conectado remotamente no me agrega el subtitulo :S

<figure aria-describedby="caption-attachment-508" class="wp-caption alignright" id="attachment_508" style="width: 300px">[![handbreak para pasar a MP4](http://www.fideox.com.ar/wp-content/uploads/2010/04/handbreak-300x209.png "handbreak")](http://www.fideox.com.ar/wp-content/uploads/2010/04/handbreak.png)<figcaption class="wp-caption-text" id="caption-attachment-508">handbreak para pasar a MP4</figcaption></figure>

Una vez que terminamos de embeber el subtitulo dentro del avi pasamos ese avi con subtitulo a mp4, para eso uso un programita que se llama handbreak.

Muy bueno y muy simple de usar.

Bueno espero que les haya servido.

Tengo que investigar un poco mas si directamente con mencoder puedo pasar el subtitulo y convertirlo en mp4

***Enjoy!!!***
