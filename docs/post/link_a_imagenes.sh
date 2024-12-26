#!/bin/bash

# Validar que se pase un argumento
if [ $# -ne 1 ]; then
  echo "Uso: $0 <directorio_base>"
  exit 1
fi

# Directorio base
DIRECTORIO_BASE="$1"

# Verificar que el directorio exista
if [ ! -d "$DIRECTORIO_BASE" ]; then
  echo "El directorio especificado no existe: $DIRECTORIO_BASE"
  exit 1
fi

# Archivo para guardar los resultados
ARCHIVO_RESULTADOS="referencias_imagenes.txt"
>"$ARCHIVO_RESULTADOS" # Limpiar contenido previo

# Recorrer directorios y buscar archivos .md
find "$DIRECTORIO_BASE" -type f -name "*.md" | while read -r archivo_md; do
  # Buscar referencias a imágenes en el archivo
  IMAGENES=$(grep -oE "\!\[.*\]\((.*\.(jpg|jpeg|png|gif|svg))\)" "$archivo_md" | sed -E 's/.*\((.*)\).*/\1/')

  # Verificar si se encontraron imágenes
  if [ -n "$IMAGENES" ]; then
    echo "Procesando archivo: $archivo_md" >>"$ARCHIVO_RESULTADOS"
    echo "$IMAGENES" >>"$ARCHIVO_RESULTADOS"
    echo "----------------------------------------" >>"$ARCHIVO_RESULTADOS"
  fi
done

echo "Procesamiento completado. Resultados guardados en $ARCHIVO_RESULTADOS"
