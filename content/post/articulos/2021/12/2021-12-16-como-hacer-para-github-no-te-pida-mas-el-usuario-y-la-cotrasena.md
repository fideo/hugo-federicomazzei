---
ao_post_optimize:
- a:5:{s:16:"ao_post_optimize";s:2:"on";s:19:"ao_post_js_optimize";s:2:"on";s:20:"ao_post_css_optimize";s:2:"on";s:12:"ao_post_ccss";s:2:"on";s:16:"ao_post_lazyload";s:2:"on";}
author: fideo
date: "2021-12-16T09:07:15Z"
excerpt: ""
id: 51906
post_format: []
status: publish
tags:
- comando
- git
- github
- linux
- software
- ubuntu
thumbnail: ../../../uploads/2017/11/cabeceraGit-1.jpg
title: Como hacer para GitHub no te pida mas el usuario y la cotraseña
type: post
url: /2021/12/como-hacer-para-github-no-te-pida-mas-el-usuario-y-la-cotrasena.html
---

Hace un tiempo <u>GitHub</u> hizo modificaciones en cuanto a su forma de autentificarse, existen muchas formas de autenticarse con <u>GItHub</u>; pero una de las mas comunes es que al momento de realizar un **push** o **pull** te pida un usuario y una contraseña. Pero ahora para poder realizar esto necesitas tener en tu poder un **Token**.

Esto es muy simple de realizar solo tienes que ir a Settings / Developer settings / Personal access token y ahí presionar el botón Generate new token. Te va a pedir un nombre para ese token la cantidad de días que deseas conservar ese token, por defecto viene 30 días, se puede personalizar esta cantidad de días o se puede poner que no expire aunque no es recomendable esto último.

Se puede ver una ayuda muy detallada en este link

Una vez que realizaste estos pasos y tienes tu **Token** solo tienes que realizar el **push** o **pull** y al momento de solicitar la contraseña copias el **Token** ofrecido por <u>GitHub</u> y lo pegas dentro de tu consola. Verás que los cambios se publican.

> Pero que pasa cuando tienes que realizar varios cambios o al día siguiente que cerraste tu navegador donde tenías tu token.

Para esto se puede habilitar con este comando que te recuerde las credenciales en tu PC para no te esté pidiendo siempre el usuario y contraseña (**Token**) de <u>GitHub</u>.

```
git config --global credential.helper cache
```
  
También se puede definir un tiempo para que queden cacheadas las credenciales, esto se hace ejecutando el siguiente comando y se le expresa la cantidad de segundos, por ejemplo 10800 para 3 horas.

```
git config --global credential.helper 'cache --timeout=10800'
```
