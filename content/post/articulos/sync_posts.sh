#!/bin/bash

# Directorios a sincronizar
ORIGEN="/home/fideo/proyectos/PostFedericoMazzei/"
DESTINO="/home/fideo/proyectos/hugo-federicomazzei/content/post/articulos/"

# Verificar si rsync está instalado
if ! command -v rsync &>/dev/null; then
  echo "Error: rsync no está instalado. Instálalo con 'sudo apt install rsync' (Linux) o 'brew install rsync' (macOS)."
  exit 1
fi

# Opciones de rsync:
# -a: Modo archivo (conserva permisos, timestamps, etc.)
# -v: Verbose (muestra los cambios)
# --delete: Elimina archivos en DESTINO que ya no existen en ORIGEN
# --exclude: Opcionalmente, excluye archivos/directorios (ej: --exclude="*.tmp")
rsync -av --delete "$ORIGEN" "$DESTINO"

echo "✅ Sincronización completada: $ORIGEN → $DESTINO"
