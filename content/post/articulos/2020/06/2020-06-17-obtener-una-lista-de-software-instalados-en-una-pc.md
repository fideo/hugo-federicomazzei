---
author: fideo
date: "2020-06-17T12:30:06Z"
excerpt: ""
id: 1446
post_format: []
status: publish
tags:
- comando
- sistema
- software
thumbnail: ../../../uploads/2020/08/cabeceraDefaulCodigo-1.jpg
title: Obtener una lista de software instalados en una PC
type: post
url: /2020/06/obtener-una-lista-de-software-instalados-en-una-pc.html
---

Si deseamos obtener una lista de todos los software que tenemos instalados en una pc solo basta con correr este comando a continuación y nos generará un archivo de salida ubicado en nuestra raíz del disco C. Se puede modificar esto para que lo escriba en donde uno lo necesite.

```
wmic product get name"," version| out-File "C:\lista_productos_instalados.txt"
```

Si quisiéramos tener también una lista de todos los servicios que están corriendo en una PC deberíamos utilizar este comando a continuación; el cual nos genera un archivo txt con la lista de todos los servicios encontrados.

```
wmic service get name"," startname| out-File "C:\lista_servicios_corriendo.txt"
```

***Enjoy!!!***
