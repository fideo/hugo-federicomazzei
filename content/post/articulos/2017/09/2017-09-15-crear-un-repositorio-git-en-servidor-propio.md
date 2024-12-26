---
ao_post_optimize:
- a:5:{s:16:"ao_post_optimize";s:2:"on";s:19:"ao_post_js_optimize";s:2:"on";s:20:"ao_post_css_optimize";s:2:"on";s:12:"ao_post_ccss";s:2:"on";s:16:"ao_post_lazyload";s:2:"on";}
author: fideo
date: "2017-09-15T12:17:37Z"
excerpt: ""
footnotes:
- ""
id: 1251
post_format: []
status: publish
tags:
- comando
- git
- linux
thumbnail: ../../../uploads/2017/11/cabeceraGit-1.jpg
title: Crear un repositorio git en servidor propio
type: post
url: /2017/09/crear-un-repositorio-git-en-servidor-propio.html
---
Para crear un repositorio git en servidor propio hay que seguir algunos pasos muy simples, pero deben hacerse en esta secuencia sin alterar nada.

#### Servidor

Primero entramos al servidor una vez dentro ejecutamos lo siguiente:

```
<pre class="wp-block-preformatted">cd ~<br></br>mkdir repositorio.git<br></br>cd repositorio.git<br></br>git --bare init<br></br>git config core.sharedRepository true
```

La primer linea cd ~ nos lleva a la home del usuario, es decir que si el usuario que está logueado es fideo la home sería /home/fideo/ para corroborar esto pueden ejecutar pwd y les mostrará donde están parados luego de ejecutar cd ~  
La segunda linea crea un directorio llamado repositorio.git el cual tendrá la información que git necesita para llevar nuestro log de archivos.  
La tercer linea ingresa al directorio.  
La cuarta linea le decimos a git inicialize ese directorio como un repositorio git para realizar los pull y push de ese repositorio.  
La quinta y última linea de esta parte se configura en true la variable core.sharedRepository informandole a git que es un repositorio compartido.

<div aria-hidden="true" class="wp-block-spacer" style="height:50px"></div>#### Local

Una vez terminado lo anterior vamos a la máquina local donde tenemos el código a subir.

```
<pre class="wp-block-preformatted">mkdir repositorio<br></br>cd repositorio<br></br>git init<br></br>git add *<br></br>git commit -m "Initial import"<br></br>git remote add origin git+ssh://user@server/home/user/git/repositorio.git<br></br>git push origin master
```

Para poder bajar / clonar con git ese ropositorio solo tenemos que ejecutar este comando

```
<pre class="wp-block-preformatted">git clone git+ssh://user@server/home/user/git/repositorio.git
```

Algunas de las cositas que pueden servir para usar al crear un repositorio git en servidor propio.

```
<pre class="wp-block-preformatted">git pull<br></br>git status<br></br>git log archivo<br></br>git diff 84de2396c3f0fcdc9994028b5bf5f0005c763496 3c933adaf627bc8a58cfefb62ff0f2d5df640673 archivo
```

Eliminar archivos

```
<pre class="wp-block-preformatted">git rm archivo<br></br>git commit -m "borro archivo" archivo<br></br>git push
```

Revertir cambios realizados en un archivo específico el cual no hayamos realizado commit

```
<pre class="wp-block-preformatted">git checkout -- file
```

Deshacer el último commit no enviado con push

```
<pre class="wp-block-preformatted">$ git reset --hard HEAD~1
```

Revertir el último cambiado, al que se le ha hecho push

```
<pre class="wp-block-preformatted">git push -f origin last_commit:branch
```

Cambiando de ramas

Es posible que tengamos varias ramas por ejemplo production (prod) y master. Si estamos en master y queremos pasar los cambios a production se puede hacer lo siguiente:

```
<pre class="wp-block-preformatted">git branch origin/prod # en caso de no tenerla se crea la rama origin/prod<br></br>git branch -a # comprobar que realmente estamos en master<br></br>git branch --track prod origin/prod # si no lo tenemos ya asocia prod a origin/prod<br></br>git checkout prod # cambiamos a la rama prod<br></br>git merge master # se merguean los cambios desde master a prod<br></br>git push # se suben los cambios
```

Mas documentación sobre git

[Documentación oficial](https://git-scm.com/documentation)  
[GitHub](https://github.com/)  
[Mas información sobre git en este sitio](http://federicomazzei.com.ar/blog/category/git/)

Crear un repositorio git en servidor propio
