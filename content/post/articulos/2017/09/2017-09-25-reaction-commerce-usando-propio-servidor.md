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

<iframe allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen="" frameborder="0" height="281" loading="lazy" referrerpolicy="strict-origin-when-cross-origin" src="https://www.youtube.com/embed/du7gkeJniu8?feature=oembed" title="Reaction Commerce corriendo en servidor propio" width="100%"></iframe>

Estos son los dos comandos que utilicé en el video.
---------------------------------------------------

#### deployreaction.sh

```
#!/bin/sh
echo "Generando el deploy de Reaction"
echo "meteor build --server-only ../new_package/ && mv ../new_package/*.tar.gz ./reaction.tar.gz"
fecha=$(date +%d-%m-%Y)fechahora=$(date +%Y%m%d%H%M%S)
meteor build --server-only ../new_package/ && mv ../new_package/*.tar.gz ./reaction_$fechahora.tar.gz
```

Lo que hago es simplemente ejecutar el comando [**meteor build**](https://guide.meteor.com/deployment.html#custom-deployment) pero con el agregado de que cuando termine, mueva el .tar.gz que genera en ../new\_package/ a mi directorio de proyecto insertandole la fecha de deploy al nombre del archivo .tzr.gz  
Esto es para tener un versionado de los deploys.

Luego subo el .tar.gz generado al servidor ya sea por ftp, scp o algún otro método disponible para subirlo.

Una vez arriba el archivo ejecuto el segundo comando

```
#!/bin/bash
clear
echo "Realizando el update del deploy de Reaction"
echo "Descomprimo el archivo .tar.gz dejado en este mismo directorio"
tar vxzf *.tar.gz
echo "entrando al directorio /home/fideo/proyectos/reaction/tmp/bundle/programs/server"
cd /home/fideo/proyectos/reaction/tmp/bundle/programs/server
echo "npm install --production"
npm install --production
echo "npm prune --production"
npm prune --production
directorio="/home/fideo/proyectos/reaction/bundle.old"
# Controlo que exista el $DIRECTORY .
if [ -d "$directorio" ]; then
rm -Rf /home/fideo/proyectos/reaction/bundle.old
fi
echo "cambio de nombre el bundle actual por bundle.old"
mv /home/fideo/proyectos/reaction/bundle /home/fideo/proyectos/reaction/bundle.old
echo "Cambio el nuevo bundle generado en /tmp al directorio de produccion"

mv /home/fideo/proyectos/reaction/tmp/bundle /home/fideo/proyectos/reaction/bundle
echo ""passenger-config restart-app /home/fideo/proyectos/reaction/bundle
```

![Reaction Commerce](/assets/uploads/2017/09/reactionCommerce.png)
