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
  - [10. Teclado de repuesto (distribución de EE. UU.)](#10-teclado-de-repuesto-distribución-de-ee-uu)
- [Parte 2. Python](#parte-2-python)
  - [1. Lo que los cuadernos piden sin explicarlo](#1-lo-que-los-cuadernos-piden-sin-explicarlo)
  - [2. Hallazgos propios](#2-hallazgos-propios)
  - [3. Variables, comillas y comentarios](#3-variables-comillas-y-comentarios)
  - [4. Mensajes de error y qué significan](#4-mensajes-de-error-y-qué-significan)
  - [5. Funciones que devuelven un valor](#5-funciones-que-devuelven-un-valor)
  - [6. Números: int y float](#6-números-int-y-float)
- [Parte 3. Terminal: PowerShell y Git](#parte-3-terminal-powershell-y-git)
  - [1. Moverse y manejar archivos](#1-moverse-y-manejar-archivos)
  - [2. Git](#2-git)

---

## Parte 1. VS Code

Lo que aparece en VS Code y qué significa, por zonas de la pantalla.

### 1. Barra de actividad (columna de iconos de la izquierda)

| Icono | Qué abre |
|---|---|
| Dos hojas | **Explorer:** el árbol de carpetas y archivos |
| Lupa | **Search:** buscar texto en todos los archivos |
| Ramas con círculos | **Source Control:** los cambios para Git; el número indica cuántos archivos han cambiado. Muestra cada repositorio por separado: sirve para comprobar en cuál ha quedado un archivo nuevo |
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

**Cuidado:** arrastrar un archivo con el ratón a otra carpeta lo **mueve**. Como los repositorios tienen la misma estructura de carpetas, es fácil soltarlo en el que no es.

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
  - `+ Code` y `+ Markdown`: añaden una celda **debajo de la celda seleccionada**.
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
| Copiar la ruta de un archivo o carpeta (para construir un comando) | Botón derecho sobre él en el explorador > `Copy Path`. En la terminal, se pega entre comillas detrás del comando |
| Ir desde `Source Control` al archivo en el explorador | Botón derecho sobre el archivo > `Reveal in Explorer View` |
| Copiar el código de una celda a otra | Seleccionarlo con el ratón, botón derecho > `Copy`; en la otra celda, botón derecho > `Paste` |

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
| Un `SyntaxError` en cualquier línea | Python lee la celda entera antes de ejecutarla: si hay un error de escritura, **no ejecuta ninguna línea**, ni las correctas. Para probar varias líneas dudosas, cada una en su propia celda |

---

### 10. Teclado de repuesto (distribución de EE. UU.)

Con Windows configurado en español, cada tecla escribe el carácter de su **posición** en un teclado español, no el que tiene impreso. Equivalencias de los caracteres más usados:

| Carácter | Tecla que hay que pulsar |
|---|---|
| `ñ` | `;` (a la derecha de la `L`) |
| Tilde (´) | `'` (a la derecha de la `;`), y después la vocal |
| `\` | `Alt` derecho + `` ` `` (a la izquierda del `1`) |
| `"` | `Mayús` + `2` |
| `'` | `-` (a la derecha del `0`) |
| `(` `)` | `Mayús` + `8` y `Mayús` + `9` |
| `=` | `Mayús` + `0` |
| `+` | `]` (a la derecha de la `[`) |
| `[` `]` | `Alt` derecho + `[` y `Alt` derecho + `]` |
| `:` | `Mayús` + `.` |
| `-` | `/` (a la derecha del `.`) |
| `_` | `Mayús` + `/` |
| `#` | `Alt` derecho + `3` |
| `?` | `Mayús` + `-` (a la derecha del `0`) |
| `¿` | `Mayús` + `=` (a la izquierda de la tecla de borrar) |

`<` y `>` no tienen tecla: en el teclado español van en una tecla junto a la `Z` que este teclado no tiene. Pendiente de resolver antes del cuaderno 11.

---

## Parte 2. Python

### 1. Lo que los cuadernos piden sin explicarlo

| Elemento | Qué hace | Ejemplo |
|---|---|---|
| `input()` | Detiene el programa, pide un dato al usuario y lo guarda como texto. Lo que va entre paréntesis es solo el mensaje que se muestra; puede ser una pregunta o cualquier frase | `nombre = input("¿Cómo te llamas? ")` |
| `texto.count("palabra")` | Cuenta cuántas veces aparece la palabra. Distingue letra a letra y mayúsculas de minúsculas | `"Python y Python".count("Python")` → `2` |
| `:.2f` | Dentro de las llaves de un *f-string*, muestra el número con dos decimales | `f"{20:.2f}"` → `20.00` |
| Palabras reservadas | Palabras que Python usa con un significado fijo y no pueden ser nombres de variable: `True`, `False`, `import`, `def`, `if`, `for`… El cuaderno 09 (ejercicio 4) las pone a prueba; el prework no las explica, solo `Basics_I` | `import = 40` → `SyntaxError` |
| `exec` | Función integrada de Python (ejecuta código escrito como texto). El cuaderno 09 la usa como trampa: se puede usar como nombre, pero anula la función. No la explica ningún material del Sprint 1 | `exec = True` funciona, pero no se debe hacer |
| `del` | Borra una variable. Sirve para recuperar una función cuyo nombre se ha reutilizado. Está en `Basics_I`, no en el prework | `del exec` |
| `import` | Carga un módulo con funciones extra. Lo pide el cuaderno 10 para usar pi; está en `Basics_II` | `import math` y después `math.pi` |

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
- **Reasignar usando la propia variable:** para sumar dos años a `edad`, se escribe `edad = edad + 2`, no `edad = 30 + 2`. Python calcula primero la parte derecha con el valor actual y guarda el resultado en la misma variable. Si se repite el número a mano, el programa deja de funcionar cuando el valor cambia.
- **Concatenar con `+` frente a usar comas en `print`:** con comas, `print` pone un espacio entre cada elemento; con `+`, los textos se pegan tal cual y los espacios hay que escribirlos dentro de las comillas: `"Los beneficios de " + mes + " han sido de "`. Los espacios que hay fuera de las comillas, alrededor del `+`, no cuentan: solo sirven para leer mejor el código.
- **En Python importa el tipo del dato, no su aspecto.** `85.71` (número) y `'85.71'` (texto) se ven casi igual y se comportan de forma distinta. Tres casos del mismo problema: `'5'` entre comillas es texto; `input()` devuelve siempre texto; y `:.2f` convierte un número en texto.
- El resultado de `f"{x:.2f}"` es un texto, aunque parezca un número: con él no se puede calcular. Sumarle `1` da `TypeError`, y multiplicarlo por 2 repite el texto (`'85.7185.71'`). Además, `:.2f` solo funciona dentro de las llaves de un *f-string*: `print(x:.2f)` da `SyntaxError`.

| Para qué | Qué usar | Resultado |
|---|---|---|
| Mostrar un número con dos decimales | `f"{x:.2f}"` | Texto (`str`) |
| Seguir calculando con el número redondeado | `round(x, 2)` | Número (`float`) |

El formato se aplica al final, al mostrar; los cálculos se hacen siempre con la variable numérica.

### 3. Variables, comillas y comentarios

**Variables y asignación**

- Una variable tiene dos partes: el **nombre** o identificador (a la izquierda del `=`) y el **valor** (a la derecha). Toda variable se crea mediante una asignación.
- `=` es **asignación**: guarda el valor de la derecha en el nombre de la izquierda. La comparación de igualdad es otro operador, `==`.
- Una variable guarda un **valor**. «Elementos» es vocabulario de las listas.

**Comillas: solo para los textos**

- Los textos (`str`) van entre comillas: `"Economía"`, `'5'`.
- Los números (`40`, `6`) y los booleanos (`True`, `False`) van **sin comillas**. Con comillas dejan de serlo y pasan a ser texto: `"True"` es un texto de cuatro letras.
- Si el texto contiene comillas dobles, se encierra entre comillas simples (`'… "Albert Einstein"'`) o se escribe `\"` delante de cada comilla interior.
- Dentro de un texto, `\n` salta de línea y `\t` añade una sangría. Se pueden encadenar: `\n\t\t` salta de línea y añade dos sangrías.
- Los corchetes crean listas: `['Calle de Python']` es una lista con un texto dentro, no un texto. Sumar listas con `+` da una lista más larga.

**Concatenar textos con `+`**

- `+` une los textos tal cual, sin añadir nada entre ellos. Los espacios y las comas se escriben como textos sueltos: `calle + " " + numero + ", " + cp`.
- Cada variable guarda solo su dato; los separadores van en la concatenación, no dentro de las variables.
- Dos textos escritos seguidos se unen solos: `'5,' " "` equivale a `'5, '`.

**Nombres de variable**

- Sin espacios: `mi variable` da error. Se separan con guion bajo: `mi_variable`.
- No pueden empezar por un número: `81mi_variable` da error; `mi_variable10` es correcto.
- No pueden ser palabras reservadas, como `True` o `import`.
- No deben ser nombres de funciones de Python, como `print` o `exec`. Python lo permite, pero anula la función. Se recupera con `del`: `del exec`.
- Sin tildes ni ñ en los nombres, aunque Python 3 las admita. Dentro de los textos sí pueden ir.
- Cuidado con `l` y `1`, y con `O` y `0`: `variab1e` lleva un uno.

**Comentarios**

- `#` comenta desde ese punto hasta el final de la línea. Puede ir solo en su línea o a la derecha del código.
- Python ignora el comentario entero: `\t` o `\n` dentro de un comentario se ven tal cual y no hacen nada.
- Para continuar un comentario en la línea siguiente, se empieza con `#` y unos espacios.
- Comentario de varias líneas: varias líneas con `#`, o un texto entre comillas triples (`'''` … `'''`) que no se guarda en ninguna variable.

### 4. Mensajes de error y qué significan

La información útil está en la última línea del mensaje. La flecha `^` señala dónde detectó Python el problema.

| Mensaje | Qué significa | Ejemplo |
|---|---|---|
| `SyntaxError: unterminated string literal` | Texto sin terminar: falta la comilla de cierre | `otra_var = "Ejercicio` |
| `SyntaxError: cannot assign to True` | Se intenta usar un valor reservado como nombre de variable | `True = "Ejercicio"` |
| `SyntaxError: invalid syntax` | Algo que no se puede escribir así: un espacio en el nombre, una palabra reservada… | `mi variable = "Alpha"`, `import = 40` |
| `SyntaxError: invalid decimal literal` | Un número mal escrito: el nombre empieza por un número | `81mi_variable = "Agua"` |
| `NameError: name '…' is not defined` | El nombre no existe: variable sin crear, mal escrita o texto sin comillas | `frutas = uva` |
| `TypeError: 'str' object is not callable` | Se usa como función algo que ya no lo es, por haber reutilizado su nombre | `print = "texto"` y después `print(...)` |
| `IndexError` | Posición que no existe en una lista | `frutas[3]` en una lista de 3 elementos |

### 5. Funciones que devuelven un valor

`int()`, `float()`, `str()`, `len()`, `round()`, `input()` o `math.sqrt()` **devuelven un valor nuevo**. No cambian la variable que reciben: `int(texto)` no convierte `texto`, sino que calcula un número aparte. Si ese valor no se guarda ni se usa en el momento, se pierde.

Hay tres formas de usarlo:

```python
numero = int("22")       # 1. guardarlo en una variable
print(int("22"))         # 2. pasárselo a otra función (anidada)
total = int("22") + 5    # 3. usarlo dentro de una operación
```

En la forma anidada, Python resuelve primero lo de dentro: `int("22")` da `22`, y ese `22` es lo que recibe `print`.

Las lecciones 8 y 9 de Deck presentan casi todas estas funciones dentro de `print` (`print(int("98"))`, `print(math.sqrt(25))`) y no muestran que el resultado se pueda guardar. Por eso la forma 1 es la que falta practicar.

| Error típico | Por qué falla | Forma correcta |
|---|---|---|
| `int(texto)` en una línea suelta | El resultado no se guarda | `texto_num = int(texto)` |
| `texto_num = 22` | Escribe el valor a mano; no convierte nada | `texto_num = int(texto)` |

**`f` frente a `len`:**

| | `f` | `len` |
|---|---|---|
| Qué es | Un prefijo pegado a las comillas de un texto. No es una función | Una función integrada de Python |
| Para qué sirve | Construir un texto insertando valores dentro de las llaves `{ }` | Contar los elementos de algo: los caracteres de un texto o los elementos de una lista |
| Sintaxis | `f"Tengo {edad} años"` | `len("Hola")` |
| Qué devuelve | Siempre un texto (`str`) | Siempre un número entero (`int`) |

Se pueden combinar, porque dentro de las llaves cabe cualquier expresión: `f"Tu nombre tiene {len(nombre)} letras"`.

### 6. Números: int y float

| Tipo | Qué es | Ejemplos |
|---|---|---|
| `int` | Números enteros, sin punto decimal | `22`, `-3`, `0` |
| `float` | Números con punto decimal. La lección 8 de Deck los llama «reales» | `22.45`, `-0.5`, `3.14159` |

- **El punto decide el tipo:** `22` es `int` y `22.0` es `float`, aunque valgan lo mismo.
- **Toda división con `/` da `float`:** `4 / 1` da `4.0`.
- **`math.sqrt()` también devuelve siempre `float`:** `math.sqrt(25)` da `5.0`.
- **Un `float` es una aproximación:** el ordenador guarda unos 15 o 16 dígitos, así que no puede representar 1/3 ni π enteros. De ahí salen decimales residuales como `…00006`.
- **`int()` trunca, no redondea:** `int(24.69)` da `24`. Para redondear se usa `round()`: `round(24.69)` da `25`, y `round(24.686, 2)` da `24.69`.
- **Solo hay que convertir lo que no es número:** en `anio_actual - int(edad)`, `edad` viene de `input()` y es texto; `anio_actual = 2026` ya es entero y no necesita `int()`.

En matemáticas, los números reales incluyen los enteros, las fracciones (decimales exactos o periódicos) y los irracionales, como π o √2. Python solo distingue entre `int` y `float`.

---

## Parte 3. Terminal: PowerShell y Git

La terminal que se abre en VS Code con `Terminal` > `New Terminal` es **PowerShell**. Los comandos de Git funcionan dentro de ella.

**Rutas con espacios:** van siempre entre comillas, como `"C:\Users\ADRIANO CONTRERAS\..."`. Sin comillas, PowerShell corta la ruta en el espacio y da error («No se encuentra ningún parámetro de posición…»). Forma fácil de construir un comando: clic derecho sobre la carpeta o el archivo en el `Explorer` de VS Code > `Copy Path`, y pegar la ruta entre comillas detrás del comando.

### 1. Moverse y manejar archivos

| Comando | Qué hace | Ejemplo |
|---|---|---|
| `cd carpeta` | Entra en una carpeta | `cd bootcamp_iae_adrianocc` |
| `cd ..` | Sube a la carpeta superior | |
| `ls` | Lista el contenido de la carpeta | |
| `ls -Recurse carpeta` | Lista la carpeta y el contenido de todas sus subcarpetas | `ls -Recurse mis_soluciones` |
| `mkdir ruta\nueva` | Crea la carpeta y, si no existen, todas las intermedias | `mkdir mis_soluciones\Sprint_01\02_Python_I` |
| `cp archivo destino` | Copia un archivo; el original se queda | `cp logo_tb_b.png mis_soluciones\Sprint_01\01_Herramientas\` |
| `cp -r carpeta destino` | Copia una carpeta con todo su contenido. Sin `-r`, no copia carpetas | `cp -r img mis_soluciones\Sprint_01\01_Herramientas\` |
| `mv origen destino` | Mueve o cambia el nombre de un archivo | `mv nombre.ipynb.ipynb nombre.ipynb` |
| `rm archivo` | Borra un archivo **sin pasar por la papelera** | |

### 2. Git

| Comando | Qué hace |
|---|---|
| `git status` | Muestra qué ha cambiado desde el último *commit* y qué está preparado para el siguiente |
| `git add archivo` | Prepara un archivo para el *commit* |
| `git add carpeta` | Prepara todo lo nuevo o cambiado dentro de esa carpeta |
| `git commit -m "descripción"` | Guarda los cambios preparados, con una descripción |
| `git push` | Sube a GitHub los *commits* guardados |
| `git pull` | Trae de GitHub las novedades. Se usa en los repositorios de consulta |
| `git mv origen destino` | Mueve un archivo que Git ya controla, conservando su historial |
| `git restore archivo` | Devuelve un archivo a su última versión guardada. Borra los cambios sin guardar |

**`mv` frente a `git mv`:** `mv` mueve el archivo, pero Git cree que se ha borrado uno y ha aparecido otro nuevo. `git mv` le dice a Git que es el mismo archivo en otro sitio, y en `git status` sale como `renamed:`. `git mv` solo sirve para archivos que Git ya controla; para uno que nunca se ha subido, se usa `mv`.

**Doble extensión:** el Explorador de Windows oculta las extensiones. Al cambiar el nombre de un archivo, no se escribe `.ipynb` si ya estaba: se duplicaría (`archivo.ipynb.ipynb`).

