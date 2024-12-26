---
ao_post_optimize:
- a:5:{s:16:"ao_post_optimize";s:2:"on";s:19:"ao_post_js_optimize";s:2:"on";s:20:"ao_post_css_optimize";s:2:"on";s:12:"ao_post_ccss";s:2:"on";s:16:"ao_post_lazyload";s:2:"on";}
author: fideo
date: "2022-01-06T12:02:22Z"
excerpt: ""
id: 51921
post_format: []
status: publish
tags:
- comando
- linux
- sistema operativo
thumbnail: ../../../uploads/2020/08/cabeceraDefaulCodigo-1.jpg
title: Comando para obtener la dirección ip interna de una PC
type: post
url: /2022/01/comando-para-obtener-la-direccion-ip-interna-de-una-pc.html
---

En linux podemos obtener de varias formas la ip interna de una PC; lo más común es ejecutar `ifconfig` directamente en la consola, pero para esto tenemos que tener instalado net-tools.

```
sudo apt install net-tools
```

  
Pero yo no quería instalar nada (de caprichoso nomás) y fui por la forma tradicional que tiene linux para mostrarte las ip y es con el comando ip propiamente dicho que acompañado por el objeto address te muestra las direcciones ip creadas para tu PC. Pero si ejecutamos esto en nuestro linux

```
ip address
```

  
Podemos ver que nos trae un montón de información que al momento de saber cuál es nuestra dirección ip interna; en el bash de linux podemos hacer tuberías y limpiar todo eso y obtener solo la dirección ip interna.

```
ip address | grep 192.168. | awk '{ print $2 }' | awk '{print substr($0,1,length($0)-3)}'
```

  
Con este comando de arriba le decimos que nos traiga las direcciones ip `(ip address)` luego que seleccione o separe solo las que coinciden con 192.168. `(grep 192.168.)` luego tomamos solamente el segundo grupo o patrón `(awk ‘{print$2}’)` y por último le saco los tres últimos carácteres para que me quede la ip interna limpia sin el base /24 `(awk ‘{print substr($0,1,length($0)-3)}’)`

También es muy interesante el objeto neigh

```
ip neigh
```

Muestra todas las ips “vecinas” que tenemos en nuestra red, es decir todas las que son accedidas desde la ip interna o de la pc que estamos ejecutando el comando.
