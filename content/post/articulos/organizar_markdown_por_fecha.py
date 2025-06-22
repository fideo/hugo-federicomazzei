import os
import shutil
from datetime import datetime

def organizar_markdown_por_fecha(directorio_base):
    """
    Organiza archivos .md en subdirectorios según su año y mes de creación/modificación.
    Ejemplo: 
        - /directorio_base/2023/10/documento.md
        - /directorio_base/2024/01/notas.md
    """
    for nombre_archivo in os.listdir(directorio_base):
        if not nombre_archivo.lower().endswith('.md'):
            continue  # Ignorar archivos que no son .md

        ruta_archivo = os.path.join(directorio_base, nombre_archivo)
        
        if os.path.isfile(ruta_archivo):
            # Obtener fecha de creación o modificación
            timestamp_creacion = os.path.getctime(ruta_archivo)
            timestamp_modificacion = os.path.getmtime(ruta_archivo)
            fecha = datetime.fromtimestamp(timestamp_creacion if timestamp_creacion else timestamp_modificacion)
            
            año = str(fecha.year)
            mes = f"{fecha.month:02d}"  # Formato 2 dígitos (ej: "05")
            
            # Crear directorios si no existen
            dir_año_mes = os.path.join(directorio_base, año, mes)
            os.makedirs(dir_año_mes, exist_ok=True)
            
            # Mover archivo
            shutil.move(ruta_archivo, os.path.join(dir_año_mes, nombre_archivo))
            print(f"Movido: {nombre_archivo} -> {dir_año_mes}/")

if __name__ == "__main__":
    import sys
    if len(sys.argv) != 2:
        print("Uso: python organizar_markdown_por_fecha.py <directorio_base>")
        sys.exit(1)
    
    directorio_base = sys.argv[1]
    if not os.path.isdir(directorio_base):
        print(f"Error: {directorio_base} no es un directorio válido.")
        sys.exit(1)
    
    print(f"Organizando archivos .md en {directorio_base}...")
    organizar_markdown_por_fecha(directorio_base)
    print("¡Proceso completado!")