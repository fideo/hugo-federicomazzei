---
ao_post_optimize:
- a:5:{s:16:"ao_post_optimize";s:2:"on";s:19:"ao_post_js_optimize";s:2:"on";s:20:"ao_post_css_optimize";s:2:"on";s:12:"ao_post_ccss";s:2:"on";s:16:"ao_post_lazyload";s:2:"on";}
author: fideo
date: "2015-02-19T08:00:19Z"
excerpt: ""
id: 808
post_format: []
status: publish
tags: []
thumbnail: ../../../uploads/2021/08/cabeceraBash-1.jpg
title: Cuanto pesa un directorio en linux
type: post
url: /2015/02/cuanto-pesa-un-directorio-en-linux.html
---
![System linux](http://federicomazzei.com.ar/blog/wp-content/uploads/2015/02/System-linux-150x150.png)Cuanto pesa un directorio en linux , si quiero conocer cuanto **pesa** (**que tamaño ocupa**) un directorio en **linux** puedo usar este comando:

```
<pre class="wp-block-preformatted">du -hlsc /diretorio/hasta/donde/este/lo/que/queremos/
```

y te va a mostar algo así:

```
<pre class="wp-block-preformatted">usuario@servidor:/tmp# du -hlsc /tmp/
199M /tmp/
199M total
usuario@servidor:/tmp#
```

La opción -h –human-readable (como leen los humanos) imprime el tamaño en un formato legible por humanos por ejemplo 1K (KiloByte) 234M (MegaByte) 2G (GigaByte).  
La opción -l –count-links (cuenta enlaces) esto realiza la sumatoria de lineas en una sola, simplifica la salida por consola.  
La opción -s –summarize (resume) muestra un total por cada argumento / linea.  
La opción -c –total muestra el total general

Es muy simple y potente rápido también, ya que si queremos hacer esto mismo en windows tenemos que resar para que otros procesos no ocupen el cpu y pueda hacer los calculos necesarios para poder mostrarme cuanto ocupa un directorio.

Esto también puede servir para realizar tareas de mantenimiento a travéz de bash <span class="st">(Bourne again shell) o mas conocida como consola. Conociendo que tamaño ocupa cada directorio podemos listarlos y luego realizar una depuración de los mas pesado.</span>

Cuanto pesa un directorio en linux

Si queres ver la documentación oficial de du podés visitar este sitio [www.gnu.org](http://www.gnu.org/software/coreutils/manual/html_node/du-invocation.html#du-invocation "du - Página oficial")

Dentro de este sitio podes encontrar comandos muy útiles como:

‘<samp><span class="nocodebreak">–time</span></samp>’

Show time of the most recent modification of any file in the directory, or any of its subdirectories.

donde te mostrará como dice en inglés que archivo a sido recientemente modificado dentro de ese directorio.

También podes definisle el formato o el estilo de la fecha / hora de salida.

‘<samp>+<var>format</var></samp>’

List timestamps using <var>format</var>, where <var>format</var> is interpreted like the format argument of `date` (see [date invocation](http://www.gnu.org/software/coreutils/manual/html_node/date-invocation.html#date-invocation)). For example, <samp><span class="nocodebreak">–time-style=”+%Y-%m-%d</span> %H:%M:%S”</samp> causes `du` to list timestamps like ‘<samp><span class="nocodebreak">2002-03-30</span> 23:45:56</samp>’. As with `date`, <var>format</var>’s interpretation is affected by the `<span class="nocodebreak">LC_TIME</span>` locale category.

‘<samp><span class="nocodebreak">full-iso</span></samp>’

List timestamps in full using ISO 8601 date, time, and time zone format with nanosecond precision, e.g., ‘<samp><span class="nocodebreak">2002-03-30</span> 23:45:56.477817180 <span class="nocodebreak">-0700</span></samp>’. This style is equivalent to ‘<samp><span class="nocodebreak">+%Y-%m-%d</span> %H:%M:%S.%N %z</samp>’.

‘<samp><span class="nocodebreak">long-iso</span></samp>’

List ISO 8601 date and time in minutes, e.g., ‘<samp><span class="nocodebreak">2002-03-30</span> 23:45</samp>’. These timestamps are shorter than ‘<samp><span class="nocodebreak">full-iso</span></samp>’ timestamps, and are usually good enough for everyday work. This style is equivalent to ‘<samp><span class="nocodebreak">+%Y-%m-%d</span> %H:%M</samp>’.

‘<samp>iso</samp>’

List ISO 8601 dates for timestamps, e.g., ‘<samp><span class="nocodebreak">2002-03-30</span></samp>’. This style is equivalent to ‘<samp><span class="nocodebreak">+%Y-%m-%d</span></samp>’.

*Enjoy!!!*
