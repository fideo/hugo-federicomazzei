---
author: fideo
date: "2023-09-14T15:52:22Z"
excerpt: Si necesitas copiar y pegar entre Vim y tu sistema operativo este es tu post.
  Nos pasa muy seguido querer copiar y pegar entre vim y tu S.O.
id: 52237
post_format: []
status: publish
tags:
- comando
- linux
- software
- vim
thumbnail: ../../../uploads/2022/02/cabeceraVim-1.jpg
title: Copiar y pegar entre Vim y tu sistema operativo
type: post
url: /2023/09/copiar-y-pegar-entre-vim-y-tu-sistema-operativo.html
---

Si necesitas copiar y pegar entre Vim y tu sistema operativo este es tu post. Pasa y muy seguido que tengas que copiar algo desde lo que estas editando con Vim y llevarlo a otro “contexto” que es tu sistema operativo

Esto puede ser un dolor de cabeza si no se entiende bien como es que funcionan los registros de vim.

En Vim existen registros donde uno pueda guardar lo que llevamos al portapapeles por ejemplo, si nosotros quisiesemos copiar una línea y grabarla en el registro “a” solo tendríamos que seleccionar lo que necesitamos copiar y luego ejecutar:

```
"ayy
```

Ahora si ejecutamos **:registers** de esta forma podemos ver en el registro a (“a) lo que señalamos y copiamos a ese registo

Hasta acá todo muy lindo dentro de Vim pero que pasa si queremos llevar esto que tenemos copiado en el registro “a a nuestro sistema operativo por ejemplo vemos que si ejecutamos Ctrl+V (el comando por defecto para pegar lo último que hay en el buffer del sistema operativo) vemos que no hace nada o pega lo último que tenga este buffer que difiere de lo que copiamos.

Para esto se necesita hacer copiar en un registro específico el registro “**+**” es decir seleccionamos lo que necesitamos copiar y presionamos:

```
"+yy
```

Ahora si vamos a nuestro sistema operativo y presionamos Ctrl + V vemos que si pega lo que tenemos en ese registro.

[Para mas videos sobre vim presioná haciendo click acá](/tags/#vim)

Copiar y pegar entre Vim y tu sistema operativo
