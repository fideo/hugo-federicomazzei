---
ao_post_optimize:
- a:5:{s:16:"ao_post_optimize";s:2:"on";s:19:"ao_post_js_optimize";s:2:"on";s:20:"ao_post_css_optimize";s:2:"on";s:12:"ao_post_ccss";s:2:"on";s:16:"ao_post_lazyload";s:2:"on";}
author: fideo
date: "2021-09-30T19:51:24Z"
excerpt: ""
id: 51866
post_format: []
status: publish
tags:
- comando
- git
- github
- linux
- software
thumbnail: ../../../uploads/2017/11/cabeceraGit-1.jpg
title: Github pide usuario y contraseña siempre
type: post
url: /2021/09/github-pide-usuario-y-contrasena-siempre.html
---

Si sos uno de los tantos que se cansa cada vez que tienes que hacer pull o push a un repositorio en github poniendo el usuario y la contraseña, puedes realizar estos pasos y dejará de pedirte user y pass cada vez que quieras realizar un pull o push a github.

Primero tienes que ver que esté funcionando el ssh-agent para eso ejecutar este comando en la consola de linux

```
eval $(ssh-agent -s)
```

Te debería salir un número de proceso PID, algo similar a esto “*Agent pid 932381*“

Una vez que comprobaste que el ssh-agent está corriendo tienes que generar la clave pública

Para esto podes tienes que correr este comando, yo recomiendo correr este comando en ~/.ssh/

```
ssh-keygen -t ed25519 -C "<em>coloca_tu_email@example.com</em>"
```

Te va a pedir en el proceso una serie de datos lo primero es el nombre de la llave; luego una frase (yo la suelo dejar vacía); luego una contraseña

Agregamos la llave (key) generada. ***Importante, si cambiaste el nombre debes reemplazar id\_ed25519 por el que hayas puesto***

```
ssh-add ~/.ssh/id_ed25519
```

Ahora copiamos la clave

```
cat ~/.ssh/id_ed25519.pub
```

Seleccionamos lo que muestra en consola y nos vamos a la página de github –&gt; settings –&gt; SSH and GPG keys –&gt; y presionamos el botón verde que dice New SSH Key.  
Identificamos con un nombre a la llave que acabamos de copiar por consola y el campo que indica github que hay que pegar la key pagamos lo que copiamos.

Una vez que hicimos todo esto podemos realizar una modificación en nuestro código y hacer un push (por ejemplo) **y nos va a pedir user y pass (usuario y contraseña)**.   
Hace poco github solicita que saques un Access Token para esto vas a la página de GitHub –&gt; Settings –&gt; developer settings –&gt; Personal access tokens; **ahí generamos un token y lo usamos como contraseña**.

Esto nos permitirá realizar el git push, pero para que nos quede registrado y no nos pida mas el user y pass (usuario y contraseña) debemos correr el siguiente comando en la consola de linux.

```
git config --global credential.helper store
```

Listo luego de esto no nos va a pedir más usuario y contraseña.

***Enjoy!!!***
