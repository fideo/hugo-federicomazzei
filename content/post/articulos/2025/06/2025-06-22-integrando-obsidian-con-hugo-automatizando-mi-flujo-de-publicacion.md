---
author: fideo
description: Integrando Obsidian con Hugo Automatizando mi Flujo de Publicación.
categories: 
  - ChatGPT
  - Obsidian
  - hugo
date: 2025-06-22T11:00:00Z
excerpt: ""
status: publish
tags: 
  - chatgpt
  - ai
  - tecnologia
  - obsidian
  - hugo
thumbnail: /assets/uploads/2017/11/cabeceraUbuntu-1.jpg
title: Integrando Obsidian con Hugo Automatizando mi Flujo de Publicación.
type: post
url: /2025/06/2025-06-22-integrando-obsidian-con-hugo-automatizando-mi-flujo-de-publicacion.html
usemathjax: true
---

# **Integrando Obsidian con Hugo: Automatizando mi Flujo de Publicación**

_¿Cómo gestiono mis artículos en Obsidian y los publico automáticamente en mi blog estático con Hugo?_

En los últimos meses, he estado usando **[Obsidian](https://obsidian.md/)** como mi herramienta principal para escribir notas y borradores de artículos. Su sistema de _markdown puro_ y enlaces bidireccionales lo hacen perfecto para organizar ideas. Pero, ¿cómo llevo ese contenido a mi blog, que está construido con **[Hugo](https://gohugo.io/)**?

La respuesta: **automatización + scripts personalizados**.

---

## **El Problema: Dos Directorios Separados**

En mi flujo de trabajo tengo:

- **`/mis-notas-obsidian`**: Donde escribo en markdown (.md) con Obsidian.
    
- **`/mi-proyecto-hugo`**: La estructura del sitio web (contenido en `/content/posts`).
    

Quería:

1. **Sincronizar solo los archivos `.md`** de Obsidian a Hugo.
    
2. **Mantener una estructura organizada por fecha** (ej: `/2023/10/mi-post.md`).
    
3. **Evitar copiar archivos que no son posts** (como notas personales o templates).
    

---

## **La Solución: Scripts + Rsync**

Para lograrlo, creé algunos scripts (los compartí antes en este post) que hacen lo siguiente:

### **1. Sincronización Selectiva con Rsync**

Uso `rsync` para copiar **solo los archivos markdown** desde Obsidian a Hugo, ignorando el resto:

```
rsync -avm --include="*/" --include="*.md" --exclude="*" --delete /mis-notas-obsidian/ /mi-proyecto-hugo/content/posts/
```

_(Este comando mantiene la estructura de carpetas y solo pasa archivos `.md`)._

### **2. Organización Automática por Fecha**

Un script en Python se encarga de mover los posts a subdirectorios según su fecha de creación:

```
# (Código simplificado: agrupa posts en /año/mes/)

import os
import shutil
from datetime import datetime

for archivo in os.listdir("content/posts"):
    if archivo.endswith(".md"):
        fecha = datetime.fromtimestamp(os.path.getctime(archivo))
        nuevo_dir = f"content/posts/{fecha.year}/{fecha.month:02d}/"
        os.makedirs(nuevo_dir, exist_ok=True)
        shutil.move(archivo, nuevo_dir + archivo)
```

### **3. Limpieza de Archivos No Deseados**

A veces tengo drafts o archivos temporales que no quiero publicar. Para evitarlo, uso:

```
find /mi-proyecto-hugo/content/posts -type f -not -iname "*.md" -delete
```

_(Borra todo lo que no sea markdown)._

---

## **Beneficios de Este Flujo**

✅ **Escritura cómoda en Obsidian** (con plugins como _Dataview_ y _Templates_).  
✅ **Publicación automática en Hugo** (sin copiar/pegar manualmente).  
✅ **Estructura ordenada por fecha** sin esfuerzo.  
✅ **Cero archivos residuales** en el blog.

---

## **¿Por qué no usar un plugin?**

Podría haber usado [Obsidian-to-Hugo](https://github.com/devidw/obsidian-to-hugo), pero quería control total sobre:

- **Qué archivos se copian**.
    
- **Cómo se organizan**.
    
- **Cuándo se ejecuta la sincronización**.
    

Los scripts me dan esa flexibilidad.

---

## **Conclusión**

Si usas **Obsidian para escribir** y **Hugo para publicar**, automatizar el proceso con scripts ahorra tiempo y reduce errores.

**¿Has probado algo similar?** ¡Cuéntame en los comentarios!

