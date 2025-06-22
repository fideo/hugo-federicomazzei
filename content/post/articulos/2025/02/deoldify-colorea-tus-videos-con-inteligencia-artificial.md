---
author: fideo
description: DeOldify - Colorea tus videos con Inteligencia Artificial
categories:
- AI Inteligencia Artificial
date: "2025-02-03T11:00:00Z"
excerpt: ""
status: publish
tags:
- Inteligencia artificial
- software
thumbnail: /assets/uploads/2017/11/cabeceraUbuntu-1.jpg
title: DeOldify - Colorea tus videos con Inteligencia Artificial
type: post
url: /2025/02/deoldify-colorea-tus-videos-con-inteligencia-artificial.html
usemathjax: false 
---

# DeOldify - Colorea tus videos con Inteligencia Artificial

Hace unos días, mi papá encontró un DVD en su ropero con videos familiares grabados en distintas épocas, desde 1960 hasta aproximadamente 1980. Claro que la tecnología de aquella época no era la mejor para conservar la calidad con el paso del tiempo. <!--more--> Las primeras grabaciones fueron hechas con una cámara Super 8, luego transferidas a VHS y, posteriormente, digitalizadas en formato DVD (VOB).
Colorear películas antiguas

Buscando en internet cómo mejorar esas grabaciones, me encontré con DeOldify, un proyecto de código abierto cuyo repositorio está disponible en GitHub:

🔗 [DeOldify en GitHub]

[DeOldify en GitHub]: https://github.com/jantic/DeOldify

Si bien el proyecto fue archivado en octubre de 2024 debido a la falta de tiempo del desarrollador, el código sigue disponible para quienes quieran utilizarlo y dispongan de una buena tarjeta gráfica para el procesamiento.

Para usar DeOldify, hay que seguir una serie de pasos detallados en el README.md del repositorio. No es extremadamente complicado, pero tampoco es un proceso trivial; se requiere cierto conocimiento técnico. No soy un experto en el tema, pero con un poco de paciencia logré hacerlo funcionar y colorear los videos de mi familia.

También existe una opción más sencilla: en el repositorio hay un enlace a Google Colab que permite realizar el coloreado de videos utilizando los recursos de procesamiento de Google. Es una alternativa más limitada, pero ideal para probar la herramienta sin necesidad de una GPU potente.

🔗 [DeOldify VideoColorizer en Google Colab]

[DeOldify VideoColorizer en Google Colab]: https://colab.research.google.com/github/jantic/DeOldify/blob/master/VideoColorizerColab.ipynb

## Colorear imágenes

Además de videos, DeOldify permite colorear imágenes con muy buenos resultados. Tal vez alguien extremadamente exigente note ciertas imperfecciones, pero en mi caso, quedé bastante satisfecho con el resultado.

🔗 [DeOldify ImageColorizer en Google Colab]

[DeOldify ImageColorizer en Google Colab]: https://colab.research.google.com/github/jantic/DeOldify/blob/master/ImageColorizerColabStable.ipynb

Aquí les dejo un ejemplo del proceso de restauración con una foto de mi infancia:

📷 Imagen original:
![Fede de chiquito - imagen original](/images/fede_chiquito.jpg)
Fede de chiquito - imagen original

🎨 Imagen coloreada con DeOldify:
![Fede de chiquito - imagen mejorada](/images/fede_chiquito_mejorado.webp)
Fede de chiquito - imagen mejorada

Espero que este post les sea útil. Si prueban DeOldify, me encantaría saber cómo les fue. ¿Conocen otras herramientas similares? ¡Déjenme sus comentarios! 🚀🎨
