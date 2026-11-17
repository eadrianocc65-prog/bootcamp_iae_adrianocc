# Consolidación — Notebook 2: Listas
## Desde el inicio del cuaderno hasta el Ejemplo 1
Prework de Python aplicado a Inteligencia Artificial · Método de Acompañamiento Tutorial

---

## 1. Entorno de trabajo: la advertencia de Google Colab

El cuaderno comienza con una advertencia que debe leerse y practicarse antes de escribir código:

> ⚠️ Colab es un entorno temporal: todo lo que generes (archivos, datos descargados) se elimina al cerrar la sesión. Guarda una copia del notebook en Drive (Archivo > Guardar una copia en Drive) y descarga cualquier dato que quieras conservar.

De esta advertencia se derivan **dos acciones de protección distintas y complementarias**:

| Acción | Qué protege | Cómo se realiza |
|---|---|---|
| Guardar una copia en Drive | El código (el notebook y sus celdas) | Menú Archivo → Guardar una copia en Drive |
| Descargar los datos generados | El resultado del trabajo (archivos, CSV, salidas) | Descarga manual al PC o a la nube antes de cerrar la sesión |

**Práctica realizada:** se creó la copia personal en Drive antes de ejecutar la primera celda, de modo que todo el trabajo posterior queda recogido en un archivo propio y editable.

**Recuperación tras un reinicio del entorno:** si al volver a abrir el cuaderno aparece un error de tipo `NameError: name 'X' is not defined` en código que antes funcionaba, la causa no está en el código, sino en que la memoria se ha vaciado. La solución es Entorno de ejecución → Ejecutar todo (atajo Ctrl + F9), que vuelve a ejecutar las celdas en orden y reconstruye las variables.

---

## 2. Parte teórica: 2. Listas — ¿Qué es una lista?

Definición del cuaderno:

> Una lista es un tipo de variable que puede almacenar varios valores a la vez. Es como una caja especial que puede contener más de un objeto dentro. Los elementos dentro de una lista pueden ser números, textos o incluso otras listas. Las listas son muy útiles cuando necesitas almacenar y trabajar con varios datos relacionados.

**Puntos clave:**

1. Es una variable con nombre, igual que las del Notebook 1, pero capaz de guardar múltiples valores en lugar de uno solo.
2. Se define con corchetes: `[ ]`.
3. Los elementos se separan con comas: `,`.
4. Es flexible: admite números, textos e incluso otras listas en su interior.
5. Es una colección ordenada: los elementos ocupan posiciones fijas y consecutivas.

**Comprobación conceptual superada:** se identificaron correctamente los símbolos de definición y separación, la capacidad de mezclar tipos de datos, la causa real de un NameError tras cerrar el navegador y la necesidad de descargar los datos generados antes de cerrar la sesión.

---

## 3. Ejemplo 1: Crea una lista de números

**Código del cuaderno:**

`numeros = [1, 2, 3, 4, 5]  # usamos corchetes porque es una lista`

`print(numeros)`

**Resultado:** `[1, 2, 3, 4, 5]`

**Conceptos introducidos:**

- Asignación: `numeros = ...` crea la variable que contiene la lista.
- Sintaxis: los corchetes indican a Python que se trata de una lista.
- Separador: la coma distingue un elemento del siguiente.
- Visualización: `print()` muestra la lista completa, con sus corchetes y comas incluidos.

**Metodología aplicada:** cada variación se escribe en una celda nueva (+ Código), preservando la celda original del cuaderno como referencia.

---

## 4. Ejercicios prácticos realizados

### Ejercicio 1.1 — Lista heterogénea con números negativos

Código escrito:

`números = ['Esto es una lista de números negativos', -1, -2, -3, -4, -5]`

`print(números)`

Resultado obtenido: `['Esto es una lista de números negativos', -1, -2, -3, -4, -5]`

Aprendizaje: se confirma en la práctica la flexibilidad de las listas. La variable contiene un elemento de tipo texto (str) y cinco elementos de tipo entero negativo (int), y Python los acepta conviviendo en la misma estructura. El signo menos delante de un número define un valor negativo, y la coma separa correctamente todos los elementos.

### Ejercicio 1.2 — Error de sintaxis provocado por omisión de coma

Código escrito:

`números = ['Esto es una lista de números' 1, 2, 3 ]`

`print(números)`

Resultado obtenido: `SyntaxError: invalid syntax. Perhaps you forgot a comma?`

Aprendizaje: entre cada par de elementos de una lista debe existir siempre una coma. Sin ella, Python no puede determinar dónde termina un elemento y comienza el siguiente, y el fallo se detecta antes incluso de ejecutarse el código. El mensaje no solo señala el error, sino que sugiere la causa ("Perhaps you forgot a comma?"), lo que refuerza la importancia de leer la última línea del mensaje de error.

---

## 5. Aprendizajes consolidados

| Concepto | Punto clave |
|---|---|
| Definir una lista | Corchetes `[ ]` y elementos separados por comas `,` |
| Flexibilidad | Una misma lista admite números, textos y otras listas |
| Números negativos | Se escriben con el signo menos delante, por ejemplo `-3` |
| Regla de oro de sintaxis | Nunca omitir la coma entre elementos |
| Lectura de errores | La última línea del mensaje suele indicar la causa exacta |
| Orden en el cuaderno | Cada variación en una celda nueva, sin sobrescribir la original |
| Entorno Colab | Guardar copia en Drive y descargar los datos antes de cerrar sesión |
| Reinicio del entorno | Las variables se pierden, el código no: Entorno de ejecución → Ejecutar todo |

---

# Consolidación — Notebook 2: Listas
## Sección 2: Ejemplos 2 y 3
Prework de Python aplicado a Inteligencia Artificial · Método de Acompañamiento Tutorial

## 1. Ejemplo 2: Accede a un elemento de la lista

### Teoría de la sección
Para obtener un valor específico que está dentro de una lista, no imprimimos la lista entera, sino que le pedimos a Python un elemento concreto usando su índice (su posición).

**Regla fundamental de Python:** La numeración de los índices comienza en 0, no en 1.
- El primer elemento está en la posición 0.
- El segundo elemento está en la posición 1.
- El tercer elemento está en la posición 2, y así sucesivamente.

La sintaxis para acceder es: `nombre_de_la_lista[indice]` (usando corchetes, pero esta vez con un número dentro).

### Código del cuaderno
`colores = ["rojo", "verde", "azul"]`

`print(colores[1])  # Imprime "verde"`

`# siempre SE ACCEDE a un elemento usando corchetes`
`# los índices empiezan en 0 en Python`
`#            0        1       2`
`#            -3      -2       -1`
`# Y puedo contar hacia delante o hacia atrás, es lo mismo`

### Conceptos clave introducidos
- **Acceso con corchetes**: para obtener un elemento concreto de una lista, usamos `nombre_lista[indice]`.
- **Índices empiezan en 0**: el primer elemento está en la posición 0, el segundo en 1, el tercero en 2.
- **Índices negativos**: Python permite contar desde el final. -1 es el último elemento, -2 el penúltimo, -3 el antepenúltimo, etc.

### Ejercicio 2.1: Obtener elementos concretos de una lista
**Código escrito:**
- `colores = ["rojo", "verde", "azul"]`
- `print(colores[0])`
- `print(colores[2])`
- `print(colores[-1])`
- `print(colores[-2])`
- `print(colores[-3])`
- `print(colores[0], colores[1], colores[2])`

**Resultado obtenido:**
- `rojo`
- `azul`
- `azul`
- `verde`
- `rojo`
- `rojo verde azul`

**Aprendizaje:** Se confirmó en la práctica el dominio completo de la numeración en ambas direcciones (positiva y negativa). El último `print()` demostró que cuando se pasan múltiples argumentos separados por comas, Python los muestra separados por espacios.

### Ejercicio 2.2: Intentamos acceder a un índice que NO existe
**Código escrito:**
- `colores = ["rojo", "verde", "azul"]`
- `print(colores[-4])`

**Error obtenido:**
- `IndexError: list index out of range`

**Aprendizaje:** Este error significa que intentamos acceder a una posición que está "fuera del rango" de la lista. Como la lista colores tiene solo 3 elementos, sus índices negativos válidos son únicamente -1 (azul), -2 (verde) y -3 (rojo). Al solicitar -4, Python no encuentra ningún elemento en esa posición y lanza el error. Saber leer esta última línea permite identificar y corregir este fallo rápidamente.

---

## 2. Ejemplo 3: Modifica un elemento de la lista

### Teoría de la sección
Las listas en Python son mutables (modificables). Esto significa que puedes cambiar el valor de un elemento concreto sin tener que crear una lista nueva desde cero.

La sintaxis para modificar es: `nombre_de_la_lista[indice] = nuevo_valor`

Es la misma sintaxis que usamos para acceder a un elemento (`lista[indice]`), pero ahora añadimos un `=` y un nuevo valor para sobrescribir lo que había.

### Código del cuaderno
`frutas = ["manzana", "naranja", "kiwi"]`
`frutas[1] = "pera"`

`print(frutas)`

`# accedo con los corchetes y sobrescribo el elemento`
`# ¡las listas son modificables!`

### Conceptos clave introducidos
- Se crea una lista con tres frutas.
- Se accede al elemento del índice 1 (que es "naranja").
- Se le asigna un nuevo valor ("pera"), sobrescribiendo el anterior.
- La lista original queda modificada permanentemente (no se crea una nueva).

### Ejercicio 3.1: Ejecución original
**Código ejecutado:**
- `frutas = ["manzana", "naranja", "kiwi"]`
- `frutas[1] = "pera"`
- `print(frutas)`

**Resultado obtenido:**
- `['manzana', 'pera', 'kiwi']`

**Aprendizaje:** Al ejecutar `frutas[1] = "pera"`, se le indicó a Python que buscara el elemento en la posición 1 (el segundo elemento, que originalmente era "naranja") y lo reemplazara por "pera". La lista original se modificó directamente en la memoria, confirmando que las listas son mutables.

### Ejercicio 3.2: Modificamos el primer elemento de una lista usando un índice negativo
**Código escrito:**
- `frutas = ["fresa", "pera", "kiwi"]`
- `frutas[-3] = 'mango'`
- `print(frutas)`

**Resultado obtenido:**
- `['mango', 'pera', 'kiwi']`

**Aprendizaje:** Se utilizó el índice [-3]. Dado que la lista tiene exactamente tres elementos, el -3 corresponde al primer elemento (contando desde el final: -1 es kiwi, -2 es pera, -3 es fresa). Esto demostró que los índices negativos abarcan toda la lista y pueden usarse en el lado izquierdo del = para sobrescribir cualquier posición.

### Ejercicio 3.3: Provocamos un error asignando un índice fuera del rango de la lista al intentar cambiar el valor de uno de sus elementos
**Código escrito:**
- `frutas = ['plátano', 'pera', 'piña']`
- `frutas[3] = 'uva'`
- `print(frutas)`

**Error obtenido:**
- `IndexError: list assignment index out of range`

**Aprendizaje:** Este error es diferente al del Ejemplo 2. En el Ejemplo 2, al intentar leer un índice inexistente, el error fue `IndexError: list index out of range`. Ahora, al intentar asignar/escribir en un índice inexistente, el error es `IndexError: list assignment index out of range`. La diferencia está en la palabra "assignment" (asignación). Python indica: "intentaste asignar un valor a una posición que no existe en la lista".

---

## 3. Aprendizajes consolidados de la Sección 2

| Concepto | Punto clave |
|---|---|
| **Acceso a elementos** | Usar corchetes con el índice: `lista[indice]` |
| **Índices positivos** | Comienzan en 0: el primer elemento es 0, el segundo es 1, etc. |
| **Índices negativos** | Cuentan desde el final: -1 es el último, -2 el penúltimo, etc. |
| **Error de lectura** | `IndexError: list index out of range` al acceder a un índice inexistente |
| **Mutabilidad** | Las listas son modificables: se puede cambiar cualquier elemento existente |
| **Sintaxis de modificación** | `lista[indice] = nuevo_valor` |
| **Error de escritura** | `IndexError: list assignment index out of range` al asignar a un índice inexistente |
| **Diferencia clave** | "assignment" aparece solo cuando intentamos escribir, no cuando leemos |

---


**Siguiente sección del cuaderno:**
Ejemplo 4: Agregar un elemento al final de la lista, donde se introduce el método `append()`.

---

Documento de consolidación elaborado siguiendo el Método de Acompañamiento Tutorial.