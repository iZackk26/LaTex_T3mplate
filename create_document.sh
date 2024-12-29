#!/bin/bash

if [ -z "$1" ]; then
  echo "Uso: ./crear_documento.sh nombre_proyecto"
  exit 1
fi

PROJECT_NAME=$1

# Directorio actual
CURRENT_DIR=$(pwd)

# Ruta a la plantilla
TEMPLATE_DIR="/Users/izack/.config/documentation/Template01"

# Ruta al nuevo proyecto
NEW_PROJECT_DIR="$CURRENT_DIR/$PROJECT_NAME"

# Copiar la plantilla al nuevo proyecto
cp -r "$TEMPLATE_DIR" "$NEW_PROJECT_DIR"

# Navegar al directorio del nuevo proyecto
cd "$NEW_PROJECT_DIR"

# Compilar el documento
pdflatex main.tex
biber main
pdflatex main.tex

echo "Proyecto '$PROJECT_NAME' creado y compilado exitosamente en '$NEW_PROJECT_DIR'."
