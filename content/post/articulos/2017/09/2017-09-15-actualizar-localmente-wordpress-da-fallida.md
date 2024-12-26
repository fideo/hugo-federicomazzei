---
ao_post_optimize:
- a:6:{s:16:"ao_post_optimize";s:2:"on";s:19:"ao_post_js_optimize";s:2:"on";s:20:"ao_post_css_optimize";s:2:"on";s:12:"ao_post_ccss";s:2:"on";s:16:"ao_post_lazyload";s:2:"on";s:15:"ao_post_preload";s:0:"";}
author: fideo
date: "2017-09-15T11:23:47Z"
excerpt: ""
id: 1254
post_format: []
status: publish
tags: []
title: Actualizar localmente wordpress da fallida
type: post
url: /2017/09/actualizar-localmente-wordpress-da-fallida.html
---
Tengo algunos clientes que usan WordPress como CMS de su sitio y para actualizarles los plugins o a la versión mas reciente de este CMS prefiero hacerlo localmente (es decir en una máquina que no sea producción) para / por si hay errores que no impacten directamente al cliente que estaría visitando la página. También de esta forma logramos que no se pierda acceso al sitio.

<div class="wp-block-image"><figure class="alignleft">![](http://federicomazzei.com.ar/blog/wp-content/uploads/2017/09/php_logo.png)</figure></div>Cuando lo quería actualizar, ya sea plugins o versión de wordpress, me encontraba con un error que dice conexión fallida. Esto se debe a que no está habilitado en el servidor php la extensión php\_curl que permite por este medio descargar esas actualizaciones.

Para esto lo que necesitamos es editar el php.ini que se encutra en la raiz de nuestro php en windows en mi caso es c:\\php\\php.ini

Editar el php.ini
-----------------

```
<pre class="wp-block-preformatted">;extension=php_curl.dll
```

y lo dejamos así

```
<pre class="wp-block-preformatted">extension=php_curl.dll
```

Para los que usan linux el php.ini se encuentra en /etc/php/7.0/apache2/php.ini para los que usan Ubuntu como yo.  
Mismo caso que Windows para editar este archivo, buscamos

```
<pre class="wp-block-preformatted">;extension=php_curl.dll
```

y lo dejamos así

```
<pre class="wp-block-preformatted">extension=php_curl.dll
```

En ambos casos (Windows y Linux) una vez realizada esta modificación hay que reiniciar el servidor.  
Esto va a depender si tienen instalado Apache o nginx.

También podemos agregar en el archivo de configuración wp-config.php al siguiente linea

```
<pre class="wp-block-preformatted">define('FS_METHOD', 'direct');
```

Estas opciones son las que se necesitan para poder actualizar wordpress en una instalación local; es decir en tu http://localhost/

***Enjoy!!!***
