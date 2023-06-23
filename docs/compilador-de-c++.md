# Instala el compilador de C++ en Windows

## Descargar MSYS2

El primer paso para instalar el compilador de C++ en Windows es descargar e instalar **MSYS2**. MSYS2 es un sistema de emulación de entornos Unix que permite utilizar herramientas de desarrollo Linux en Windows.

Para descargar MSYS2, dirígete al sitio web oficial en https://www.msys2.org/ y haz clic en el botón **"Download MSYS2"** de la página de inicio. Descargue la versión adecuada para su sistema operativo (32 bits o 64 bits) y siga las instrucciones de instalación.

### Actualización de MSYS2

Una vez instalado MSYS2, abra el programa MSYS2 MSYS, que muestra un **terminal**. En la terminal, ejecute el siguiente comando para actualizar MSYS2:

```bash
pacman -Syu
```

Este comando actualizará el sistema operativo y todos los paquetes instalados.

### Instalar las herramientas de desarrollo

Después de actualizar MSYS2, ejecuta el siguiente comando para instalar las herramientas de desarrollo necesarias para compilar código C++:

```bash
pacman -S --needed base-devel mingw-w64-x86_64-toolchain
```

Este comando instalará un conjunto de herramientas de desarrollo que incluye el compilador de C++ **(GCC)**, el conjunto de herramientas de desarrollo básicas **(base-devel)** y el conjunto de herramientas de desarrollo de 64 bits **(mingw-w64-x86_64-toolchain)**.

### Añadir el directorio del compilador al PATH

Por último, para que Windows pueda encontrar el compilador de C++, hay que añadir el directorio del compilador al **PATH** del sistema. El directorio del compilador se encuentra en `C:\msys64\mingw64\bin` para sistemas de 64 bits.

Para añadir el directorio del compilador al PATH, siga estos pasos:

- Abra el menú de inicio y busque **variables de entorno**.
- Seleccione **Editar variables de entorno del sistema**.
- En la pestaña "Avanzadas", haz clic en el botón "Variables de entorno".
- Busca la variable PATH en la lista de variables de entorno del sistema y selecciónala.
- Haz clic en el botón "Editar".
- Añada la ruta `C:\msys64\mingw64\bin` al final del valor de la variable PATH.
- Haz clic en "Aceptar" para guardar los cambios.

Ya está. Ya tienes el compilador de C++ instalado en tu sistema Windows y estás listo para empezar a programar.
