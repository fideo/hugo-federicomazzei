---
ao_post_optimize:
- a:6:{s:16:"ao_post_optimize";s:2:"on";s:19:"ao_post_js_optimize";s:2:"on";s:20:"ao_post_css_optimize";s:2:"on";s:12:"ao_post_ccss";s:2:"on";s:16:"ao_post_lazyload";s:2:"on";s:15:"ao_post_preload";s:0:"";}
author: fideo
date: "2022-02-18T11:15:41Z"
excerpt: Cree un repositorio en github para publicar mi configuración de Tmux; también
  la configuración de powerline y el .bashrc de mi PC por si alguien quiere usar esta
  configuración.
footnotes:
- ""
id: 51944
post_format: []
status: publish
tags:
- git
- github
- linux
- powerline
- sistema operativo
- tmux
thumbnail: ../../../uploads/2017/11/cabeceraGit-1.jpg
title: Tmux github powerline status
type: post
url: /2022/02/tmux-github-powerline-status.html
---

Tmux github powerline status. Cree un repositorio en github para publicar mi configuración de Tmux; también la configuración de powerline y el .bashrc de mi PC por si alguien quiere usar esta configuración.

![Pantalla de Tmux donde se muestran tres promp de linux en una sola ventana.](https://raw.githubusercontent.com/fideo/tmux.conf/main/asset/TerminalMultiplexer.png)

Este es el la dirección en github del repositorio desde ahí se puede descargar y/o clonar <a href="https://github.com/fideo/tmux.conf" target="_blank">https://github.com/fideo/tmux.conf</a>

Hay que crear en el home de su usuario (en mi caso /home/fideo/) el archivo .tmux.conf y copiar el contenido de lo que publiqué en github o directamente descargarlo pegarlo en su home.

La primera vez que iniciamos tmux debemos ejecutar el prefix (prefijo) Ctrl+B y luego las teclas Shift+I . Esto hará que se active las configuraciones realizadas en .tmux.conf

Al usar Tmux y ejecutar el prefix (prefijo) Ctrl+B es el que viene por defecto para Tmux se activa un ícono mostrando que se ha introducido el prefijo. Este ícono está en la parte inferior izquierda representado con un círculo y al ejecutar el prefix (Ctrl+B) se llena o completa ese círculo.

Para que se vean los íconos correctamente tenés que tener instalado las tipografías que ofrece <a href="https://www.nerdfonts.com/" target="_blank">Nerd fonts</a>. (instala todas las que creas necesarias 🙂)

Para poder tener la consola de linux como se ve arriba primero tenés que tener instalado <a href="https://powerline.readthedocs.io/en/master/" target="_blank">powerline</a>, para los que usamos ubuntu o distribuciones derivadas de debian o debian es tan simple como ejecutar`:`

```
sudo apt install powerline
```

Instalar otros componentes importantes
--------------------------------------

Para que se vea con colores como el lado izquierdo de la imágen se debe tener instalado <a href="https://the.exa.website/" target="_blank">exa</a>

```
sudo apt install exa
```

Configuré un alias dentro de mi .bashrc que ejecute exa -alFh esto hará que muestre la salida como se ve en la imagen ustedes pueden armar sus propios alias ayudándose de las opciones de comandos que se muestran en el sitio de <a href="https://the.exa.website/" target="_blank">exa</a>).

Tmux github powerline status, también tienen que tener instalado <a href="https://github.com/sharkdp/bat" target="_blank">bat</a> que mejora la salida de cat y lo integra con git.

Te muestra el estado de tu CPU, la temperatura del microprocesador y el porcentaje de memoria RAM utilizada; también las cantidades de bytes subidos y descargados.

Los leo en los comentarios por si tiene alguna duda o sugerencia.

Pasen por <a href="https://bit.ly/suscribiteamicanalYouTube" target="_blank">mi canal de YouTube que tengo videos usando esta configuración.</a>

<a href="http://federicomazzei.com.ar/blog/tag/linux" target="_blank">Ver mas post sobre linux</a>
