---
ao_post_optimize:
- a:5:{s:16:"ao_post_optimize";s:2:"on";s:19:"ao_post_js_optimize";s:2:"on";s:20:"ao_post_css_optimize";s:2:"on";s:12:"ao_post_ccss";s:2:"on";s:16:"ao_post_lazyload";s:2:"on";}
author: fideo
date: "2017-09-25T19:49:48Z"
excerpt: ""
id: 1278
post_format: []
status: publish
tags:
- software
thumbnail: ../../../uploads/2017/11/cabeceraReactionCommerce-1.jpg
title: Reaction Commerce usando propio servidor
type: post
url: /2017/09/reaction-commerce-usando-propio-servidor.html
---
Les comparto este video que le prometí a Alexander Ditzend, el cual muestra como subo al servidor de hosting (en mi caso por el momento DonWeb) la plataforma de Reaction Commerce.

<iframe allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen="" frameborder="0" height="281" loading="lazy" referrerpolicy="strict-origin-when-cross-origin" src="https://www.youtube.com/embed/du7gkeJniu8?feature=oembed" title="Reaction Commerce corriendo en servidor propio" width="500"></iframe>

Estos son los dos comandos que utilicé en el video.
---------------------------------------------------

#### deployreaction.sh

```
#!/bin/sh<br></br>
echo "Generando el deploy de Reaction"<br></br>echo "meteor build --server-only ../new_package/ && mv ../new_package/*.tar.gz ./reaction.tar.gz"<br></br>
fecha=$(date +%d-%m-%Y)<br></br>fechahora=$(date +%Y%m%d%H%M%S)<br></br>
meteor build --server-only ../new_package/ && mv ../new_package/*.tar.gz ./reaction_$fechahora.tar.gz<br></br>
```

Lo que hago es simplemente ejecutar el comando [**meteor build**](https://guide.meteor.com/deployment.html#custom-deployment) pero con el agregado de que cuando termine, mueva el .tar.gz que genera en ../new\_package/ a mi directorio de proyecto insertandole la fecha de deploy al nombre del archivo .tzr.gz  
Esto es para tener un versionado de los deploys.

Luego subo el .tar.gz generado al servidor ya sea por ftp, scp o algún otro método disponible para subirlo.

Una vez arriba el archivo ejecuto el segundo comando

```
#!/bin/bash<br></br>
clear<br></br>
echo "Realizando el update del deploy de Reaction"<br></br>
echo "Descomprimo el archivo .tar.gz dejado en este mismo directorio"<br></br>
tar vxzf *.tar.gz<br></br>
echo "entrando al directorio /home/fideo/proyectos/reaction/tmp/bundle/programs/server"<br></br>
cd /home/fideo/proyectos/reaction/tmp/bundle/programs/server<br></br>
echo "npm install --production"<br></br>
npm install --production<br></br>
echo "npm prune --production"<br></br>
npm prune --production<br></br>
directorio="/home/fideo/proyectos/reaction/bundle.old"<br></br>
# Controlo que exista el $DIRECTORY .<br></br>
if [ -d "$directorio" ]; then<br></br>
rm -Rf /home/fideo/proyectos/reaction/bundle.old<br></br>
fi<br></br>
echo "cambio de nombre el bundle actual por bundle.old"<br></br>
mv /home/fideo/proyectos/reaction/bundle /home/fideo/proyectos/reaction/bundle.old<br></br>
echo "Cambio el nuevo bundle generado en /tmp al directorio de produccion"<br></br>

mv /home/fideo/proyectos/reaction/tmp/bundle /home/fideo/proyectos/reaction/bundle<br></br>
echo ""<br></br>passenger-config restart-app /home/fideo/proyectos/reaction/bundle<br></br>
```

<figure class="wp-block-image size-large">![](http://federicomazzei.com.ar/blog/wp-content/uploads/2017/09/reactionCommerce.png)</figure>
