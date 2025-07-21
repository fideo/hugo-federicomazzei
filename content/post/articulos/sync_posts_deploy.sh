#!/bin/bash

# Configuración
ORIGEN="/home/fideo/proyectos/PostFedericoMazzei/"
DESTINO="/home/fideo/proyectos/hugo-federicomazzei/content/post/articulos/"

# Verificar rsync
if ! command -v rsync &>/dev/null; then
  echo "❌ Error: rsync no está instalado. Instálalo con:"
  echo "  Ubuntu/Debian: sudo apt install rsync"
  echo "  macOS: brew install rsync"
  exit 1
fi

# Sincronizar SOLO archivos .md (conserva estructura de carpetas)
rsync -avm \
  --include="*/" \
  --include="*.md" \
  --exclude="./Templates/" \
  \
  "$ORIGEN" "$DESTINO" # --delete \

# Mostrar resumen
echo -e "\n✅ Sincronización completada:"
echo "  Origen: $ORIGEN"
echo "  Destino: $DESTINO"
echo "  Filtro: *.md"

cd /home/fideo/proyectos/hugo-federicomazzei/
sh deploy.sh
