# Resumen Estructurado Maestro — Notebook 1: Variables
**Curso:** Prework de Python aplicado a IA  
**Fecha de elaboración:** 2 de noviembre de 2026  
**Objetivo del documento:** Andamiaje base para la elaboración del manual personal. El detalle de errores, dudas y descubrimientos se encuentra en el archivo JSON/TXT del chat.

## 1. Asignar un número a una variable
- **Sintaxis:** `variable = valor`
- **Identificador:** nombre que se le da a la variable (lado izquierdo del `=`)
- **Operador `=`:** asignación, no igualdad matemática
- **Convención PEP 8:** usar `snake_case` (minúsculas con guiones bajos) para variables

## 2. Asignar un texto a una variable
- Las cadenas (strings) se escriben entre comillas dobles `""` o simples `''`
- La comilla de apertura debe coincidir con la de cierre
- Sin comillas, Python busca una variable con ese nombre → `NameError`

## 3. Asignar el resultado de una operación matemática
- Operadores aritméticos: `+` (suma), `-` (resta), `*` (producto), `/` (división)
- Python evalúa primero el lado derecho y asigna el resultado
- **Regla de oro:** nunca usar nombres de funciones integradas (`print`, `sum`, `list`, etc.) como identificadores → provoca `TypeError: 'int' object is not callable`. Solución: `del print`

## 4. Modificar una variable (reasignación)
- Patrón: `variable = variable operador valor`
- Python calcula el lado derecho y sobrescribe el valor anterior
- **Precedencia de operadores:** `**` antes que `*` y `/`, y estos antes que `+` y `-`

## 5. Asignar un valor booleano
- Solo dos valores válidos: `True` y `False` (primera letra en mayúscula)
- Python es sensible a mayúsculas/minúsculas
- `true` (minúsculas) → `NameError: name 'true' is not defined` (Python lo interpreta como referencia a un nombre inexistente)

## 6. Asignar una lista a una variable
- Sintaxis: corchetes `[ ]` y elementos separados por comas `,`
- La coma es **separador**, no elemento
- El espacio tras la coma es opcional (solo por legibilidad)

## 7. Operaciones con cadenas (concatenación)
- El operador `+` entre strings **concatena**, no suma
- `print(a, b, c)` con comas → imprime en una línea con espacios automáticos (más elegante que concatenar con `+`)
- Mezclar `str` + `int` con `+` → `TypeError: can only concatenate str (not "int") to str`

## 8. Uso de variables para cálculos (área de un círculo)
- Operador de potencia: `**` (doble asterisco), no `^`
- Fórmula: `area = 3.14 * radio ** 2`
- Los floats pueden mostrar imprecisiones residuales (ej: `...00006`) por la representación en punto flotante

## 9. Asignar un número flotante
- El decimal en Python se escribe **siempre con punto** `.` (estándar inglés)
- Usar coma `,` en una asignación → Python crea una **tupla implícita**: `peso = 70,55` produce `(70, 55)`, no un decimal

## 10. Intercambiar valores entre dos variables
- Sintaxis idiomática: `a, b = b, a` (intercambio múltiple / tuple unpacking)
- No requiere variable auxiliar
- Aplicar directamente sobre las variables originales, sin crear intermediarias

## 11. Conversión entre tipos de datos
- `int(x)` → entero (trunca decimales, no redondea)
- `float(x)` → decimal
- `str(x)` → texto
- `type(x)` → devuelve el tipo de dato de la variable

## Problemas Propuestos

### Problema 1
**Enunciado:** Crea dos variables `a` y `b`, asígnales valores e imprime suma, resta, multiplicación y división.

**Solución de referencia del notebook:**
a = 8
b = 4
print("Suma: ", a + b)
print("Resta: ", a - b)
print("Multiplicación: ", a * b)
print("División: ", a / b)

### Problema 2
**Enunciado:** Crea una variable `precio`. Si es ≥ 100, imprime "Producto costoso"; si no, "Producto económico".

**Solución de referencia del notebook:**
precio = 120
if precio >= 100:
    print("Producto costoso")
else:
    print("Producto económico")

**Reglas críticas de `if`/`else`:**
1. Los dos puntos `:` son obligatorios al final de `if` y `else`
2. La indentación (4 espacios) es obligatoria dentro de los bloques
3. `else` debe estar alineado verticalmente con su `if` correspondiente

## Errores comunes detectados durante el aprendizaje
| Error | Causa | Solución |
|---|---|---|
| `TypeError: 'int' object is not callable` | Se sobrescribió `print` con un número | `del print` |
| `NameError: name 'true' is not defined` | `true` en minúsculas no es booleano válido | Usar `True` con mayúscula |
| `TypeError: can only concatenate str (not "int") to str` | Mezclar texto y número con `+` | Convertir con `str()` o usar comas en `print()` |
| Tupla inesperada `(70, 55)` | Usar coma `,` en lugar de punto `.` para decimales | Usar siempre `.` para decimales |

## Buenas prácticas consolidadas
- Usar `snake_case` para variables
- No reutilizar nombres de funciones integradas
- Preferir `print(a, b, c)` con comas sobre concatenación con `+`
- Aplicar intercambio múltiple directamente, sin variables auxiliares
- Leer siempre la **última línea** del mensaje de error para diagnosticar