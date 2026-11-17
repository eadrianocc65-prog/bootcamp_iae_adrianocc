# 📄 Resumen de la Lección 0: Fundamentos de Jupyter Notebooks

**Curso:** Prework de Python aplicado a Inteligencia Artificial  
**Objetivo:** Comprender y dominar el entorno de trabajo (Jupyter Notebooks / Google Colab) antes de comenzar a programar.  
**Fecha de elaboración:** 31 de octubre de 2026  

---

## 1. ¿Qué es un Jupyter Notebook?
Es un documento interactivo que combina dos elementos fundamentales:
- **Texto explicativo formateado:** Títulos, listas, tablas e instrucciones (Markdown).
- **Código Python real:** Instrucciones ejecutables celda a celda.

## 2. Tipos de Celdas
| Tipo de celda | Función | Apariencia típica |
| :--- | :--- | :--- |
| **Celda de texto (Markdown)** | Explicaciones, títulos, instrucciones. | Texto formateado visualmente. |
| **Celda de código** | Código Python ejecutable. | Fondo grisáceo con un botón ▶ a la izquierda. |

## 3. Gestión Básica de Celdas
- **Añadir:** Botones `+ Código` o `+ Texto` (en la barra superior o al pasar el ratón entre celdas).
- **Eliminar:** Menú de tres puntos (`...`) → *Eliminar celda*, o presionar la tecla `D` dos veces seguidas.
- **Mover:** Flechas arriba/abajo o arrastrando desde el margen izquierdo.
- **Ejecutar todo:** Menú `Entorno de ejecución` → `Ejecutar todo` (atajo: `Ctrl + F9`).

## 4. Cómo Ejecutar una Celda de Código
- **Opción 1:** Hacer clic en el botón ▶ a la izquierda de la celda.
- **Opción 2 (Recomendada):** Pulsar `Shift + Enter` con el cursor dentro de la celda (ejecuta y avanza a la siguiente).
- **Indicadores de éxito:** 
  - Aparece un número entre corchetes a la izquierda (ej. `[1]`), indicando el orden cronológico de ejecución.
  - El resultado (*output*) se muestra inmediatamente debajo de la celda.

## 5. El Orden de Ejecución es Fundamental
- Las celdas de un notebook **comparten la misma memoria**.
- Si se define una variable en una celda, puede utilizarse en las siguientes, **siempre y cuando** la celda de definición se haya ejecutado primero.
- **Regla de oro:** Al comenzar a trabajar, ejecutar siempre las celdas en orden secuencial, de arriba hacia abajo, sin saltarse ninguna.

## 6. Manejo de Errores
- Los errores (texto en rojo) son normales y no rompen el notebook.
- **Acción clave:** Leer siempre el mensaje completo, prestando especial atención a la **última línea**, que suele indicar la causa exacta.
- **Ejemplo típico:** `NameError: name 'variable_que_no_existe' is not defined` → Indica que se intentó usar una variable que aún no ha sido creada o que se perdió de la memoria.
- *Nota:* En el prework, las celdas marcadas con `# ESTO DA ERROR` son intencionales para practicar la lectura de estos mensajes.

## 7. Reinicio del Entorno de Ejecución
- **Causa:** Cerrar el navegador o inactividad prolongada.
- **Consecuencia:** Todas las variables definidas desaparecen de la memoria, pero **el código escrito permanece intacto**.
- **Solución:** Volver a ejecutar las celdas desde el principio (`Entorno de ejecución` → `Ejecutar todo`). Si aparece un `NameError` inesperado al volver, esta es casi siempre la causa.

## 8. Cómo Guardar el Trabajo
- Google Colab guarda automáticamente en Google Drive, pero es buena práctica usar `Ctrl + S` (o `Cmd + S` en Mac) o `Archivo` → `Guardar`.
- **⚠️ Importante:** Si abres un notebook compartido (como los del prework), tus cambios **no** se guardan en el original.
- **Procedimiento correcto al iniciar:** Ir a `Archivo` → `Guardar una copia en Drive` y trabajar exclusivamente sobre esa copia personal.

## 9. Estructura de los Notebooks del Prework
Cada cuaderno sigue esta organización para fomentar el aprendizaje activo:
1. **Ejemplos numerados (1 al 10):** Leer la explicación, ejecutar la celda y experimentar modificando valores.
2. **Problemas propuestos:** Celdas vacías donde el alumno escribe su propio código.
3. **Solución:** Disponible para consultar solo después de haber intentado resolver el problema por uno mismo.
- **Actitud recomendada:** Ejecutar, modificar, provocar errores controlados y corregirlos. Nada de lo que se haga en un notebook es irreversible.

---

## 10. Tabla de Puntos Esenciales

| Concepto | Punto clave |
| :--- | :--- |
| **Tipos de celdas** | Markdown (texto) y Código (Python). |
| **Ejecución** | `Shift + Enter` o botón ▶. |
| **Orden** | Siempre de arriba hacia abajo. |
| **Memoria compartida** | Las variables persisten entre celdas si se ejecutan en orden. |
| **Errores** | Leer la última línea del mensaje para identificar la causa. |
| **Reinicio del entorno** | Las variables se pierden; el código no. Usar "Ejecutar todo". |
| **Guardado** | Guardar una copia en Drive al empezar cada notebook. |
| **Actitud** | Experimentar y corregir sin miedo. |

---

## ⚠️ Trampas Comunes y Puntos de Atención

Bloque de refuerzo elaborado a partir de los dos puntos donde se produjeron tropiezos conceptuales durante la Lección 0.

### 1. Diferencia entre texto (string) y operación matemática

**Error común:** Escribir números y operadores entre comillas esperando que Python realice cálculos.

| Código escrito | Resultado | Explicación |
|---|---|---|
| `print("15+27")` | `15+27` | Python lo trata como texto literal, no como cálculo |
| `print(15+27)` | `42` | Python evalúa la operación matemática |

**Regla clave:**

- Las comillas `""` convierten todo en **texto** (string). Python lo imprime tal cual.
- Sin comillas, Python interpreta los números y operadores como **expresiones matemáticas** y las evalúa.

**Ejemplo adicional:**

| Código escrito | Resultado | Motivo |
|---|---|---|
| `print("2 + 2")` | `2 + 2` | Cadena de texto: se imprime literalmente |
| `print(2 + 2)` | `4` | Expresión aritmética: se calcula antes de imprimirse |

**Comprobación rápida antes de ejecutar:** si el resultado esperado es un número, la operación debe estar **fuera** de las comillas. Si el resultado esperado es un mensaje, debe estar **dentro**.

### 2. Causa raíz del NameError en Google Colab

**Error común:** Pensar que un `NameError` repentino significa que hay un error de escritura en el código.

**Situación típica:**

1. El código funcionaba correctamente antes.
2. Se cierra el navegador o transcurre un tiempo sin actividad.
3. Al volver y ejecutar una celda aparece: `NameError: name 'X' is not defined`.

**Causa real:** El entorno de ejecución se reinició automáticamente. Las variables creadas anteriormente desaparecieron de la memoria, pero el código del notebook sigue intacto.

**Solución correcta:** No es necesario editar ni corregir el código. El procedimiento es:

1. Ir al menú **Entorno de ejecución → Ejecutar todo** (atajo: `Ctrl + F9`).
2. Esto reconstruye la memoria ejecutando todas las celdas en orden, de arriba hacia abajo.

**Señal visual de reinicio del entorno:** Los números entre corchetes (`[1]`, `[2]`, `[3]`) que aparecían a la izquierda de las celdas ejecutadas desaparecen y vuelven a mostrarse como `[ ]`.

**Diagnóstico diferencial:**

| Síntoma | Causa probable | Solución |
|---|---|---|
| `NameError: name 'X' is not defined` en código que antes funcionaba | El entorno se reinició | Entorno de ejecución → Ejecutar todo |
| `NameError` en código nuevo que nunca funcionó | La variable no ha sido creada aún | Crear la variable antes de usarla |
| `NameError` tras ejecutar celdas en desorden | La celda que define la variable no se ha ejecutado | Ejecutar primero la celda de definición |

**Síntesis de ambos puntos:** Antes de modificar el código, conviene preguntarse si el problema está realmente en lo escrito o en el estado de la memoria y en el tipo de dato empleado. En la mayoría de los casos iniciales, el código es correcto y lo que falla es el orden de ejecución o el uso involuntario de comillas.

---
## 🚀 Próximo Paso
Una vez dominados estos fundamentos y completados los ejercicios prácticos de esta lección, el siguiente paso es continuar con el **Notebook 1: Variables**.

---
*Documento generado como material de apoyo para el prework de Python aplicado a IA, siguiendo el Método de Acompañamiento Tutorial.*