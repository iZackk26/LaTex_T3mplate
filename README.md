# Crear Documento Script

Este repositorio contiene un script Bash llamado create_document.sh que
automatiza la creación y compilación de proyectos basados en una plantilla de
documentación LaTeX. A continuación, se detallan los pasos para configurar y
utilizar el script desde cualquier ubicación en tu sistema.

# Requisitos Previos
Antes de utilizar el script, asegúrate de tener instalados los siguientes programas:

* Bash: La mayoría de los sistemas Unix/Linux y macOS lo incluyen por defecto.
* pdflatex: Parte de la distribución TeX Live o MiKTeX para compilar documentos LaTeX.
* Biber: Utilizado para gestionar bibliografías en documentos LaTeX.

Instalación de Requisitos en macOS
```bash
brew install --cask mactex
brew install biber
```

# Configuración
1. Configurar la Ruta de la Plantilla (TEMPLATE_DIR)
El script utiliza una plantilla de documentación ubicada en una ruta específica. Para adaptarlo a tu entorno, sigue estos pasos:

Identifica la Ruta de tu Plantilla

Asegúrate de tener una plantilla de documentación en una ubicación accesible. Por ejemplo:

* macOS/Linux: `/home/tu_usuario/.config/documentation/Template01`
* Windows (usando WSL o Git Bash): `/c/Users/tu_usuario/.config/documentation/Template01`

2. Editar el Script para Establecer TEMPLATE_DIR

Abre create_document.sh en tu editor de texto favorito y modifica la línea que
define TEMPLATE_DIR para que apunte a la ruta correcta según tu sistema
operativo. Por ejemplo:

```bash
# Ruta a la plantilla
TEMPLATE_DIR="$HOME/.config/documentation/Template01"
```
Esta configuración utiliza la variable de entorno $HOME, lo que hace que el script sea más portable entre diferentes sistemas operativos.

# Instalación
Clona el Repositorio

### Abre una terminal y clona este repositorio en tu directorio deseado:
```
# HTTPS
git clone https://github.com/iZackk26/LaTex_T3mplate.git

#SSH
git@github.com:iZackk26/LaTex_T3mplate.git
```

### Navega al Directorio del Proyecto
```
cd LaTex_T3mplate/
```

### Haz Ejecutable el Script
```
chmod +x create_document.sh
```

## Agregar el Script al PATH

Para poder ejecutar `create_document.sh` desde cualquier ubicación en tu sistema, debes agregar su directorio al `PATH`. A continuación, se detallan los pasos para lograr esto de manera eficiente:

### 1. Verificar los Directorios Actuales en el PATH

Primero, identifica los directorios que actualmente están incluidos en tu `PATH`. Esto te ayudará a determinar dónde puedes colocar el script sin necesidad de crear nuevos directorios.

```bash
echo $PATH
```

Este comando mostrará una lista de rutas separadas por dos puntos :. Por ejemplo:
```
/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/home/tu_usuario/bin
```

2. Seleccionar un Directorio para el Script

Elige uno de los directorios existentes en el PATH donde tengas permisos de escritura. Algunas opciones comunes incluyen:

* ~/bin: Directorio personal para binarios. Muchos sistemas lo incluyen automáticamente en el PATH.
* ~/.local/bin: Otra ubicación común para scripts personales.
* /usr/local/bin: Directorio para binarios locales (puede requerir permisos de superusuario).

Nota: Es recomendable usar directorios dentro de tu directorio de usuario para
evitar conflictos y no necesitar permisos de administrador.

4. Mover el Script al Directorio Seleccionado
Una vez que hayas decidido el directorio, mueve el script create_document.sh a ese directorio. Por ejemplo, si elegiste ~/bin:

```
mv create_document.sh ~/bin/
```

Ahora podrás ejecutar el script simplemente con:
```
create_document nombre_proyecto
```
