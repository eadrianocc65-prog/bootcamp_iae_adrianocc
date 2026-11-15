# Apuntes del bootcamp · 1

*Elaborados con ayuda de Claude IA.*

## Índice

- [Parte 1. VS Code](#parte-1-vs-code)
  - [1. Barra de actividad (columna de iconos de la izquierda)](#1-barra-de-actividad-columna-de-iconos-de-la-izquierda)
  - [2. El explorador: letras y colores junto a los archivos](#2-el-explorador-letras-y-colores-junto-a-los-archivos)
  - [3. Las pestañas de los archivos abiertos](#3-las-pestañas-de-los-archivos-abiertos)
  - [4. Encima del contenido](#4-encima-del-contenido)
  - [5. El panel inferior](#5-el-panel-inferior)
  - [6. La barra de estado (franja inferior)](#6-la-barra-de-estado-franja-inferior)
  - [7. Ayudas al escribir código](#7-ayudas-al-escribir-código)
  - [8. Acciones frecuentes, por menú](#8-acciones-frecuentes-por-menú)
  - [9. Ejecutar celdas sin sorpresas](#9-ejecutar-celdas-sin-sorpresas)
- [Parte 2. Python](#parte-2-python)
  - [1. Lo que los cuadernos piden sin explicarlo](#1-lo-que-los-cuadernos-piden-sin-explicarlo)
  - [2. Hallazgos propios](#2-hallazgos-propios)

---

## Parte 1. VS Code

Lo que aparece en VS Code y qué significa, por zonas de la pantalla.

### 1. Barra de actividad (columna de iconos de la izquierda)

| Icono | Qué abre |
|---|---|
| Dos hojas | **Explorer:** el árbol de carpetas y archivos |
| Lupa | **Search:** buscar texto en todos los archivos |
| Ramas con círculos | **Source Control:** los cambios para Git; el número indica cuántos archivos han cambiado |
| Triángulo con insecto | **Run and Debug:** ejecutar y depurar programas |
| Cuatro cuadrados | **Extensions:** las extensiones; un número indica actualizaciones pendientes |
| Matraz | **Testing:** pruebas automáticas |
| Serpiente | **Python Environments:** los entornos de Python, como `.venv` |
| Asterisco | **Claude Code:** la extensión de Claude |

---

### 2. El explorador: letras y colores junto a los archivos

| Marca | Significado |
|---|---|
| `U`, en verde | *Untracked*: archivo nuevo que Git no controla |
| `M`, en amarillo | *Modified*: modificado desde el último *commit* |
| `D`, en rojo | *Deleted*: borrado |
| Punto en una carpeta | Hay cambios en algún archivo de dentro |
| Nombre en gris | Archivo ignorado por el `.gitignore`, como la carpeta `privado` |

---

### 3. Las pestañas de los archivos abiertos

| Marca | Significado |
|---|---|
| Punto blanco en vez de la `X` | Cambios sin guardar. Se guarda con `File` > `Save` |
| Nombre en cursiva | **Vista previa:** el archivo se abrió con un solo clic y lo sustituirá el siguiente que se abra. Con doble clic queda fijo |

---

### 4. Encima del contenido

- **Línea de ruta:** dónde está el archivo abierto. Para trabajar, debe empezar por `bootcamp_iae_adrianocc`.
- **Barra del cuaderno:**
  - `+ Code` y `+ Markdown`: añaden celdas.
  - `Run All`: ejecuta todas las celdas.
  - `Clear All Outputs`: borra los resultados.
  - `Outline`: muestra el índice de títulos.
  - A la derecha: el selector de *kernel* (debe ser el de `.venv`).
- **Barra de cada celda:** aparece al pasar el ratón. Incluye `▶` para ejecutarla y la papelera para borrarla.

---

### 5. El panel inferior

| Pestaña o botón | Qué hace |
|---|---|
| `Problems` | Avisos sobre el código |
| `Output` | Mensajes internos de las extensiones |
| `Terminal` | La terminal |
| `+` | Abre una terminal nueva |
| Flecha `v` junto al `+` | Elige el tipo de terminal: PowerShell o Git Bash |
| Papelera | Cierra la terminal del todo |
| `X` | Solo oculta el panel; se recupera con `View` > `Terminal` |

---

### 6. La barra de estado (franja inferior)

| Elemento | Significado |
|---|---|
| `main` | La rama de Git en la que estás |
| Flechas en círculo | Sincronizar con GitHub (`pull` y `push`) |
| ⊗ y ⚠ con números | Errores y avisos detectados en el código |
| `Cell 5 of 188` | La celda en la que estás dentro del cuaderno |
| `Spaces: 4` | La sangría que se aplica al pulsar el tabulador |

---

### 7. Ayudas al escribir código

| Ayuda | Qué hace | Recomendación mientras se aprende |
|---|---|---|
| Lista desplegable de sugerencias (IntelliSense) | Al escribir, por ejemplo, `colores.`, muestra los nombres disponibles: `append`, `insert`… | Dejarla activada: recuerda nombres, pero el razonamiento es propio |
| Texto gris que completa líneas enteras (sugerencias en línea de GitHub Copilot) | Propone el código antes de pensarlo | Desactivada: quita el esfuerzo que fija lo aprendido |

**Dónde se cambia:** `File` > `Preferences` > `Settings`, buscar `inline suggest` y marcar o desmarcar `Editor › Inline Suggest: Enabled`. El cambio se guarda solo.

---

### 8. Acciones frecuentes, por menú

| Acción | Cómo |
|---|---|
| Guardar | `File` > `Save` |
| Guardar con otro nombre (para no escribir nunca en el original) | `File` > `Save As...` |
| Buscar dentro de un archivo | `Edit` > `Find` |
| Renombrar un archivo | Botón derecho sobre él en el explorador > `Rename` |
| Ver un Markdown formateado | Icono de la lupa sobre un cuadrado, arriba a la derecha del editor |
| Mostrar un archivo añadido desde fuera que no aparece | Flecha circular junto al nombre de la carpeta, en el explorador |
| Recuperar el panel de la terminal | `View` > `Terminal` |
| Abrir una carpeta de trabajo | `File` > `Open Folder...` |

---

### 9. Ejecutar celdas sin sorpresas

| Situación | Qué significa o qué hacer |
|---|---|
| `▶` en el margen izquierdo de la celda | Ejecuta **solo esa celda**. Es el botón que se debe usar |
| Barra flotante a la derecha de la celda: `▷` con flecha arriba | Ejecuta **todas las celdas anteriores** |
| Barra flotante a la derecha de la celda: `▷` con flecha abajo | Ejecuta **esta celda y todas las siguientes**, incluidas las soluciones del final |
| `Run All`, en la barra del cuaderno | Ejecuta todas las celdas, también las soluciones |
| Icono de reloj en una celda | La celda está en cola, esperando turno |
| Cuadro de texto que aparece arriba, en el centro | Es donde se responde a `input()`: se escribe la respuesta y se pulsa `Enter`. No es un error |
| `Interrupt`, en la barra del cuaderno | Detiene la ejecución. Solo aparece mientras algo se está ejecutando |
| Mensaje «Session has been disposed» | La sesión del *kernel* se cerró: pulsar `Restart` |
| Después de `Restart` | El *kernel* olvida las variables: hay que volver a ejecutar las celdas que las crean |

---

## Parte 2. Python

### 1. Lo que los cuadernos piden sin explicarlo

| Elemento | Qué hace | Ejemplo |
|---|---|---|
| `input()` | Detiene el programa, pide un dato al usuario y lo guarda como texto. Lo que va entre paréntesis es solo el mensaje que se muestra; puede ser una pregunta o cualquier frase | `nombre = input("¿Cómo te llamas? ")` |
| `texto.count("palabra")` | Cuenta cuántas veces aparece la palabra. Distingue letra a letra y mayúsculas de minúsculas | `"Python y Python".count("Python")` → `2` |
| `:.2f` | Dentro de las llaves de un *f-string*, muestra el número con dos decimales | `f"{20:.2f}"` → `20.00` |

### 2. Hallazgos propios

- `strip()` quita los espacios de los extremos de un texto, no los interiores: `"bici cleta"` queda igual.
- `split()` separa por espacios y deja los signos pegados a la palabra: `"Buenos días, María"` da `['Buenos', 'días,', 'María']`.
- En un *f-string*, la `f` va pegada a las comillas: `f"..."`.
- Dentro de las llaves de un *f-string* se pueden hacer operaciones: `{precio / 1.21:.2f}` calcula la base imponible con dos decimales.
- No se usan como nombres de variables los de las funciones de Python (`print`, `len`, `input`, `list`…). `print = "texto"` anula la función `print` hasta reiniciar el *kernel*, y entonces cualquier `print(...)` da `TypeError: 'str' object is not callable`.
- Un texto sin comillas se interpreta como el nombre de una variable: `frutas = uva` da `NameError` si no existe la variable `uva`.
- Asignar en una posición que no existe da error: en una lista de 3 elementos, `frutas[3] = "uva"` da `IndexError`.
- `insert` en la posición igual a la longitud de la lista añade al final, como `append`. Para añadir al final, lo habitual es `append`, que no depende de la longitud.
- `remove` recibe el valor del elemento que se quiere borrar, no su posición, y elimina solo la primera aparición.
