---
author: fideo
date: 2015-10-20T08:31:22Z
excerpt: ""
id: 939
post_format: []
status: publish
tags: []
title: Buscar por tamaño y antiguedad en gmail
type: post
url: /2015/10/buscar-por-tamano-y-antiguedad-en-gmail.html
description: Buscar correos electrónicos por su tamaño y la antigüedad.
---
# Optimización de Almacenamiento en Gmail: Estrategias Avanzadas de Depuración y Filtros

Mantener una casilla de correo con una década de antigüedad bajo el límite de almacenamiento gratuito (o incluso planes pagos) requiere algo más que borrar correos al azar. Gmail indexa cada mensaje con metadatos que podemos explotar mediante operadores de búsqueda específicos.

A continuación, detallo una guía técnica para auditar, filtrar y automatizar la limpieza de tu bandeja de entrada.

![Gmail es uno de los mejores clientes de correo electrónico](http://lh4.ggpht.com/_7ZYqYi4xigk/TaM87JTwNoI/AAAAAAAAH3I/o4Kc7yR9ZOQ/d/mail_logo_rgb_web.png) 

## 1. Auditoría de Espacio mediante Operadores de Tamaño

El primer paso es identificar los "objetos pesados". Gmail permite filtrar por bytes, pero es más práctico usar modificadores de magnitud.

- **Búsqueda de archivos mayores a 10MB:**
    
    `larger:10m`
    
- **Búsqueda en un rango específico (ej. entre 5MB y 10MB):**
    
    `larger:5m smaller:10m`
    

**Consejo Técnico:** Combina esto con el operador `has:attachment` para ignorar correos que son puramente texto largo o hilos de conversación extensos sin archivos adjuntos.

## 2. Segmentación por Antigüedad (Precisión Temporal)

En lugar de navegar por etiquetas de fecha, utiliza los operadores de tiempo relativo o absoluto:

- **Relativo (más de 5 años):**
    
    `older_than:5y` (puedes usar `m` para meses o `d` para días).
    
- **Absoluto (antes de una fecha específica):**
    
    `before:2018/01/01`
    

**Estrategia de depuración:**

Para eliminar correos antiguos que ya no tienen relevancia técnica o legal:

`before:2019/12/31 category:promotions`

## 3. Limpieza de Categorías y Notificaciones Automáticas

Gmail categoriza el tráfico entrante. A menudo, las pestañas de "Social" y "Promociones" acumulan el 80% del ruido.

- **Eliminar notificaciones de redes sociales antiguas:**
    
    `category:social older_than:2y`
    
- **Forzar la visualización de correos de sistemas (logs, alertas):**
    
    `from:system@tu-dominio.com older_than:1y`
    

## 4. Gestión de Suscripciones (The Unsubscribe Header)

Muchos correos de marketing incluyen una cabecera `List-Unsubscribe`. Puedes listar estos correos para darte de baja masivamente antes de borrar:

- `label:^unsub` o simplemente busca la palabra `"unsubscribe"` en el cuerpo del mensaje combinada con antigüedad:
    
    `unsubscribe older_than:1y`
    

## 5. Selección Masiva: El "Select All" Invisible

Un error común es borrar solo los 50 o 100 correos que se muestran en la primera página.

1. Realiza tu búsqueda (ej. `larger:10m`).
    
2. Haz clic en el checkbox superior para seleccionar todos los mensajes.
    
3. Aparecerá un enlace azul sobre la lista que dice: **"Seleccionar todas las conversaciones que coincidan con esta búsqueda"**.
    
4. Haz clic allí antes de presionar el icono de la papelera.
    

## 6. Automatización mediante Filtros de Retención

Si recibes reportes diarios de servidores, logs de compilación o alertas de monitoreo que solo necesitas durante 30 días, no los borres manualmente. Crea una regla de flujo:

1. En la barra de búsqueda, escribe el remitente o asunto (ej. `subject:"Cron Job Success"`).
    
2. Haz clic en el icono de configuración de búsqueda -> **Crear filtro**.
    
3. Selecciona **Eliminar** o **Archivar**.
    
4. _Nota:_ Gmail no permite "borrar después de X días" nativamente en filtros, pero puedes usar **Google Apps Script** para automatizar esta tarea.
    

## 7. Power User Tip: Google Apps Script para Auto-limpieza

Para usuarios que buscan un nivel de control programático, puedes ejecutar un script en la nube de Google que limpie etiquetas específicas cada noche:

JavaScript

```
function autoCleanGmail() {
  // Busca correos con más de 30 días en la etiqueta "Logs" y los mueve a la papelera
  var threads = GmailApp.search('label:logs older_than:30d');
  for (var i = 0; i < threads.length; i++) {
    threads[i].moveToTrash();
  }
}
```

## Resumen de Comandos Rápidos para tu Consola de Búsqueda:

|**Objetivo**|**Comando**|
|---|---|
|PDFs pesados antiguos|`filename:pdf larger:5m older_than:3y`|
|Facturas (no borrar)|`subject:factura OR subject:invoice`|
|Logs de sistema pesados|`from:noreply@servidor.com larger:1m`|
|Chats antiguos de Hangouts/Meet|`in:chats older_than:2y`|

---

### Notas de administración:

- **Vaciar Papelera:** Recuerda que los elementos en la papelera siguen ocupando espacio durante 30 días. Para liberar espacio de inmediato, debes forzar el vaciado.
    
- **Google Drive:** Muchas veces la cuota está saturada por archivos en Drive y no por Gmail. Usa `https://drive.google.com/drive/quota` para auditar archivos por tamaño de forma descendente.