---
author: fideo
date: "2023-06-20T10:18:11Z"
excerpt: ""
id: 52128
post_format: []
status: publish
tags:
- comando
- comandos
- linux
- software
- vim
thumbnail: ../../../uploads/2022/02/cabeceraVim-1.jpg
title: Comandos básicos para VIM
type: post
url: /2023/06/comandos-basicos-para-vim.html
---

Estos son algunos de los comandos básicos que uso a diario cuando utilizo VIM.

Iniciar VIM
-----------

Si usas por primera vez vim tal vez no sepas por donde empezar y deberías empezar por instalar vim aunque hoy en día la mayoría de las distribuciones linux traen instalado vim; si esto no es así solo bastará con realizar

```
sudo apt install vim 
```

o el comando similar a este último que tu distribución necesite para instalarlo; en este caso esa instrucción sirve para las distribuciones basadas en debian como por ejemplo Ubuntu.

Una vez instalado podés abrir vim solo escribiendo esto en la consola –&gt; vim y luego presionas enter. Pero… que pasas si

Movimientos
-----------

Una vez que iniciamos vim podemos movernos entre el texto utilizando las teclas “**h**“, “**j**“, “**k**” y “**l**”   

La “**h**” te permite moverte hacia la izquierda.  

La “**j**” te permite moverte hacia abajo.  

La “**k**” te permite moverte hacia arriba.  

La “**l**” te permite moverte hacia la derecha.  

Para movernos al final del documento presiono la tecla **Shift + g** (es decir la **G** mayúscula)  

Para ir al inicio del documento presiono la tecla g 2 veces seguidas (es decir “**gg**“)  

Para ir a una línea determinada del documento que estoy editando puedo usar las siguientes convinaciones por ejemplo si quiero ir a la línea 10 presiono la tecla 1 + 0 + shift g (primero el uno y luego el 0 para escribir 10 (diez que es el número de línea al cual quiero ir) y luego el comando shift + g (que es “G”))  

Para avanzar entre palabras puedo presionar la tecla “**w**” con la tecla “**b**” hago el paso inverso.

Si quiero posicionarme en el final de cada palabra tengo que presionar la tecla “**e**“.

Edición de texto
----------------

Para borrar una línea completa se presiona dos veces la tecla “d” –&gt; **dd**  

Para borrar solo un caracter en donde está el cursor posicionado debemos presionar la tecla “**x**” si presionamos la tecla “**X**” borra el caracter siguiente en donde me encuentro posicionado.  

Para borrar desde donde me encuentro posicionado hasta el final de la linea se hace con **shift + d**  

Para borrar desde donde me encuentro posicionado hasta el final pero que se cambie a modo insertar se hace con **shift + c**  

Para borrar la linea completa lo hago con **shift + s** y me deja en modo insertar para empezar a escribir.  

Para deshacer un cambio realizado dentro de vim se presiona la tecla “**u**“  

Si quiero rehacer un cambio tengo que presionar la tecla “**Ctrl + r**” esto vuelve hacia atrás un cambio.  

Si quiero copiar la linea en la que estoy parado o donde está pocisionado el cursor tengo que presionar dos veces la tecla “**y**“.  

Para pegar lo que acabamos de copiar solo presionar la tecla “p” y pega en la linea siguiente a la que estoy posicionado, si quisiera pegarlo por arriba de donde estoy posicionado tengo que presionar las teclas **shift + p**.  

Para insertar texto en la linea siguiente a la que me encuentro parado puedo presionar la tecla “**o**” (o de oral)  

Pero si yo quisiera insertar texto en la linea superior a la que me encuentro parado puedo presionar la tecla “**O**” (es decir shift + “o”) 

Para empezar a escribir en el inicio de una linea donde me encuentro posicionado puedo usar el comando **shift + i**

Para escribir en el final de la linea donde me encuentro posicionado puedo hacerlo con el comando **shift +a**.

Para insertar texto luego de la posición en la que me encuentro parado tengo que presionar la tecla “**a**” y cambia a modo insertar inmediatamente después del lugar donde me encontraba posicionado.

<iframe allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen="" frameborder="0" height="525" loading="lazy" referrerpolicy="strict-origin-when-cross-origin" src="https://www.youtube.com/embed/e4VVd6dooNc?feature=oembed" title="Comandos básicos en Vim" width="100%"></iframe>
