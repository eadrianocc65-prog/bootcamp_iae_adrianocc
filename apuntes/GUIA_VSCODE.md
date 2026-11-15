# VS Code: mapa de la pantalla

*Elaborada con ayuda de Claude IA.*

Lo que aparece en VS Code y qué significa, por zonas de la pantalla.

---

## 1. Barra de actividad (columna de iconos de la izquierda)

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

## 2. El explorador: letras y colores junto a los archivos

| Marca | Significado |
|---|---|
| `U`, en verde | *Untracked*: archivo nuevo que Git no controla |
| `M`, en amarillo | *Modified*: modificado desde el último *commit* |
| `D`, en rojo | *Deleted*: borrado |
| Punto en una carpeta | Hay cambios en algún archivo de dentro |
| Nombre en gris | Archivo ignorado por el `.gitignore`, como la carpeta `privado` |

---

## 3. Las pestañas de los archivos abiertos

| Marca | Significado |
|---|---|
| Punto blanco en vez de la `X` | Cambios sin guardar. Se guarda con `File` > `Save` |
| Nombre en cursiva | **Vista previa:** el archivo se abrió con un solo clic y lo sustituirá el siguiente que se abra. Con doble clic queda fijo |

---

## 4. Encima del contenido

- **Línea de ruta:** dónde está el archivo abierto. Para trabajar, debe empezar por `bootcamp_iae_adrianocc`.
- **Barra del cuaderno:**
  - `+ Code` y `+ Markdown`: añaden celdas.
  - `Run All`: ejecuta todas las celdas.
  - `Clear All Outputs`: borra los resultados.
  - `Outline`: muestra el índice de títulos.
  - A la derecha: el selector de *kernel* (debe ser el de `.venv`).
- **Barra de cada celda:** aparece al pasar el ratón. Incluye `▶` para ejecutarla y la papelera para borrarla.

---

## 5. El panel inferior

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

## 6. La barra de estado (franja inferior)

| Elemento | Significado |
|---|---|
| `main` | La rama de Git en la que estás |
| Flechas en círculo | Sincronizar con GitHub (`pull` y `push`) |
| ⊗ y ⚠ con números | Errores y avisos detectados en el código |
| `Cell 5 of 188` | La celda en la que estás dentro del cuaderno |
| `Spaces: 4` | La sangría que se aplica al pulsar el tabulador |

---

## 7. Ayudas al escribir código

| Ayuda | Qué hace | Recomendación mientras se aprende |
|---|---|---|
| Lista desplegable de sugerencias (IntelliSense) | Al escribir, por ejemplo, `colores.`, muestra los nombres disponibles: `append`, `insert`… | Dejarla activada: recuerda nombres, pero el razonamiento es propio |
| Texto gris que completa líneas enteras (sugerencias en línea de GitHub Copilot) | Propone el código antes de pensarlo | Desactivada: quita el esfuerzo que fija lo aprendido |

**Dónde se cambia:** `File` > `Preferences` > `Settings`, buscar `inline suggest` y marcar o desmarcar `Editor › Inline Suggest: Enabled`. El cambio se guarda solo.

---

## 8. Acciones frecuentes, por menú

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
