![cabecera](../../assets/cabecera_jupyter_markdown.png)

## Introducción a Markdown

**Markdown** es un lenguaje de marcado **ligero**: permite **escribir** texto plano con **pocas convenciones** (símbolos como `#`, `*`, `` ` ``) y las herramientas lo convierten en HTML con títulos, listas, enlaces, código resaltado, etc.

No sustituye a un procesador de textos al estilo Word: su fuerza es **ser simple, legible en crudo y versionable con Git**.

**Otra de las ventajas de usar Markdown es que el mundo de la IA está tomando cada vez más importancia, y Markdown es un lenguaje de marcado que se puede usar para generar contenido de forma automática. El contexto de la IA entiende muy bien el Markdown y podemos utilizarlo para dar instrucciones precisas.**

Actualmente, se utiliza GFM (GitHub Flavored Markdown) como estándar de facto para Markdown.

Dejamos recursos para profundizar en Markdown:
* [Markdown Guide](https://www.markdownguide.org/)
* [GFM (GitHub Flavored Markdown)](https://github.github.com/gfm/)
* [Markdown Cheatsheet](https://github.com/adam-p/markdown-here/wiki/Markdown-Cheatsheet)
* [The Ultimate Guide to Markdown](https://gist.github.com/cuonggt/9b7d08a597b167299f0d)

---

## ¿Para qué utilizar Markdown?

* **Celdas Markdown en Jupyter** (y en Colab): explicar el enunciado, el contexto y los resultados junto al código.
* **README y documentación** en GitHub: describir proyectos, instalación y uso.
* **Comentarios y notas** en foros, *issues* y *pull requests* (muchas plataformas entienden Markdown).

---

## Cómo usar Markdown en Jupyter

1. Añadir una celda y cambiarla a tipo **Markdown** (menú o atajo, según el entorno).
2. Escribir el contenido con la sintaxis de abajo.
3. **Ejecutar** la celda (como con el código) para ver el resultado renderizado.
4. **Volver a editar** la misma celda haciendo doble clic en el texto renderizado.

Las celdas de **código** siguen siendo código; Markdown es solo para texto formateado.

---

## Sintaxis para trabajar con Markdown

Cada apartado tiene **Escribir así** (fuente en recuadro) y **Vista previa** (aspecto al renderizar en GitHub, Jupyter o la vista previa del editor). En las vistas previas de **títulos** se usan aquí niveles `###` / `####` / `#####` solo para no generar un ítem `#` suelto en el índice de *esta* guía; en tus propios ficheros **sí** debes usar `#`, `##`, `###`, etc.

**Evitar** saltar niveles de encabezado sin sentido (p. ej. de `#` a `###`) cuando sea posible: mejora la jerarquía y la accesibilidad.

### Títulos y subtítulos

**Escribir así:**

```markdown
# Título grande
## Sección
### Subsección
```

**Vista previa** (misma jerarquía de tamaños que con `#` / `##` / `###` en tu archivo):

### Título grande
#### Sección
##### Subsección

### Énfasis

*Cursiva*: `*texto*` o `_texto_` · **Negrita**: `**texto**` · ***Ambos***: `***texto***` · **Tachado** (GFM): `~~texto~~`

**Escribir así:**

```markdown
Texto en *cursiva*, **negrita**, ***ambos*** y ~~tachado~~.
```

**Vista previa:**

Texto en *cursiva*, **negrita**, ***ambos*** y ~~tachado~~.

### Listas

**Escribir así:**

```markdown
- Primer ítem
- Segundo ítem
  - Subítem

1. Paso uno
2. Paso dos
```

**Vista previa:**

- Primer ítem
- Segundo ítem
  - Subítem

1. Paso uno
2. Paso dos

**Listas de tareas** (GFM: GitHub, etc.)

**Escribir así:**

```markdown
- [x] Completado
- [ ] Pendiente
```

**Vista previa:**

- [x] Completado
- [ ] Pendiente

### Enlaces e imágenes

**Escribir así:**

```markdown
[Web de Python](https://www.python.org)
![Logo de Python](https://www.python.org/static/img/python-logo.png)
```

**Vista previa:**

[Web de Python](https://www.python.org)

![Logo de Python](https://www.python.org/static/img/python-logo.png)

Enlaces e imágenes **por referencia**: `[texto][id]` y al final del documento `[id]: url` (ver ejemplos más abajo).

### Código en línea y bloques

**Escribir así** (cuatro acentos graves en el exterior porque dentro hay un bloque con tres):

````markdown
La función `print()` muestra texto.

```python
def hola():
    print("Hola")
```
````

**Vista previa:**

La función `print()` muestra texto.

```python
def hola():
    print("Hola")
```

Si en un **documento de ayuda** se incrusta un bloque con tres acentos graves dentro de otro ejemplo Markdown, el fence exterior debe usar **cuatro** acentos graves:

````markdown
```python
def hola():
    print("Hola")
```
````

### Citas y reglas horizontales

**Escribir así:**

```markdown
> Una cita puede ocupar
> varias líneas.

---
```

**Vista previa:**

> Una cita puede ocupar
> varias líneas.

---

### Tablas

**Escribir así:**

```markdown
| Columna A | Columna B |
|-----------|-----------|
| dato      | dato      |
```

**Vista previa:**

| Columna A | Columna B |
|-----------|-----------|
| dato      | dato      |

Con **alineación**: en la fila de guiones, `:` a izquierda, derecha o ambos lados para centrar (ejemplo en la siguiente sección).

---

## Ejemplos de Markdown 

### Énfasis, listas, tareas y separador

**Escribir así:**

```markdown
Cursiva con *asteriscos* o _subrayado_. Negrita con **doble** o __doble__.
Combinado: **_cursiva dentro de negrita_**. ~~Tachado GFM~~.

---

- Ítem
- Otro ítem
  - Subítem indentado

1. Paso uno
2. Paso dos

- [x] Completado
- [ ] Pendiente
```

**Vista previa:**

Cursiva con *asteriscos* o _subrayado_. Negrita con **doble** o __doble__.
Combinado: **_cursiva dentro de negrita_**. ~~Tachado GFM~~.

---

- Ítem
- Otro ítem
  - Subítem indentado

1. Paso uno
2. Paso dos

- [x] Completado
- [ ] Pendiente

### Enlaces, imagen y enlace por referencia

**Escribir así:**

```markdown
[Enlace a Example](https://example.com)
[Con título al pasar el ratón](https://example.com "Título opcional")

![Logo Python](https://www.python.org/static/img/python-logo.png)

[Ver documentación Python][docs]

[docs]: https://docs.python.org/3/ "Documentación de Python"
```

**Vista previa:**

[Enlace a Example](https://example.com)
[Con título al pasar el ratón](https://example.com "Título opcional")

![Logo Python](https://www.python.org/static/img/python-logo.png)

[Ver documentación Python][docs]

[docs]: https://docs.python.org/3/ "Documentación de Python"

### Cita, código en línea, bloque Python y tabla alineada

**Escribir así** (fence de cuatro acentos graves por el bloque Python interior):

````markdown
> Una línea citada.
> Segunda línea de la misma cita.

Usar `variables` y `comandos` en la misma línea.

```python
def ejemplo():
    return "bloque con resaltado"
```

| Izquierda | Centro | Derecha |
| :-------- | :----: | ------: |
| a         |   b    |       1 |
````

**Vista previa:**

> Una línea citada.
> Segunda línea de la misma cita.

Usar `variables` y `comandos` en la misma línea.

```python
def ejemplo():
    return "bloque con resaltado"
```

| Izquierda | Centro | Derecha |
| :-------- | :----: | ------: |
| a         |   b    |       1 |

### Nota al pie (GFM; en Jupyter a veces no)

**Escribir así:**

```markdown
El bootcamp usa Jupyter y GitHub[^nota-ejemplo].

[^nota-ejemplo]: Comprobar si el visor soporta notas al pie.
```

**Vista previa:**

El bootcamp usa Jupyter y GitHub[^nota-ejemplo].

[^nota-ejemplo]: Comprobar si el visor soporta notas al pie.

### Caracteres reservados

**Escribir así:** `\*literal\*` → **Vista previa:** \*literal\*

(Sin barra, el asterisco activaría cursiva.)

### Títulos con subrayado (solo H1 y H2 en el fuente)

**Escribir así:**

```markdown
Título estilo H1
================

Subtítulo estilo H2
-------------------
```

**Vista previa:**

Título estilo H1
================

Subtítulo estilo H2
-------------------

### Lista con párrafo largo dentro de un ítem

**Escribir así:**

```markdown
1. Primer ítem.
2. Segundo ítem con texto largo:

   Párrafo indentado tras una línea en blanco.

   - Sublista
3. Tercer ítem.
```

**Vista previa:**

1. Primer ítem.
2. Segundo ítem con texto largo:

   Párrafo indentado tras una línea en blanco.

   - Sublista
3. Tercer ítem.

### Salto de línea dentro del párrafo

**Escribir así:** dos espacios al final de la primera línea, luego Enter (en el recuadro se marcan como `·` solo para que se vean):

```markdown
Primera línea··
Segunda línea del mismo párrafo.
```

**Vista previa:**

Primera línea  
Segunda línea del mismo párrafo.

*(En el fichero real no uses `·`; son dos espacios en blanco tras «línea».)*

### URL entre angulares y referencia numérica

**Escribir así:**

```markdown
Documentación: <https://docs.python.org/3/>

Enlace [Python][1] y otra vez [aquí][1].

[1]: https://www.python.org/ "Sitio oficial"
```

**Vista previa:**

Documentación: <https://docs.python.org/3/>

Enlace [Python][1] y otra vez [aquí][1].

[1]: https://www.python.org/ "Sitio oficial"

### Imagen por referencia

**Escribir así:**

```markdown
![Logo de Python][pylogo]

[pylogo]: https://www.python.org/static/img/python-logo.png "Python"
```

**Vista previa:**

![Logo de Python][pylogo]

[pylogo]: https://www.python.org/static/img/python-logo.png "Python"

### Tabla mínima de dos columnas y reglas horizontales

**Escribir así:**

```markdown
Rápido | Pretty
--- | ---
*cursiva* | `código`

---

***
```

**Vista previa:**

Rápido | Pretty
--- | ---
*cursiva* | `código`

---

***

### HTML embebido (`<details>`, lista de definiciones)

En GitHub suele funcionar; en Jupyter **a menudo no**.

**Escribir así:**

```html
<details>
<summary>Pulsar para expandir</summary>

Texto colapsable.

</details>

<dl>
  <dt>Término</dt>
  <dd>Definición breve.</dd>
</dl>
```

**Vista previa:**

<details>
<summary>Pulsar para expandir</summary>

Texto colapsable.

</details>

<dl>
  <dt>Término</dt>
  <dd>Definición breve.</dd>
</dl>

---

## Cómo estructurar un buen documento

1. **Empezar por el propósito**: una o dos frases sobre qué es el notebook o el README.
2. **Un solo `#`** como título del documento (o el nombre del proyecto).
3. **Secciones claras** con `##` y `###`: contexto, requisitos, pasos, resultados, referencias.
4. **Listas** para pasos o comprobaciones; **párrafos cortos** mejor que un bloque enorme.
5. **Código** en bloques con el lenguaje correcto; variables o nombres de fichero en código en línea.
6. **Enlaces** a documentación oficial al **citar** librerías.

En informes o entregas, una estructura típica es: **introducción → datos/método → resultados → conclusiones → referencias**.

---

## Tips y buenas prácticas

* **Vista previa**: si algo no se ve bien, **revisar** que no falten líneas en blanco alrededor de listas o encabezados (según el renderizador).
* **Consistencia**: mismos estilos para títulos y listas en todo el documento.
* **Rutas de imágenes**: en Jupyter, las rutas suelen ser **relativas** al notebook; si **se mueve** el fichero, pueden romperse.
* **Markdown “GitHub”**: en GitHub se usa **GFM** (*GitHub Flavored Markdown*), con algunas extensiones (p. ej. tablas, tachado `~~texto~~`, listas de tareas `- [ ]`).
* **Seguridad**: Markdown puede incluir enlaces; **no ejecutar** código de procedencia dudosa solo porque figure en un documento.
* **Colab y Markdown**: el renderizado es muy similar a Jupyter; si algo falla, **probar** a simplificar la celda (menos HTML mezclado, más sintaxis Markdown pura).

