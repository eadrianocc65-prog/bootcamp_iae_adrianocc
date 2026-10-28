![cabecera](../../assets/cabecera_sdd.png)

## Introducción a Spec-Driven Development (SDD)

**Spec-Driven Development (SDD)** es una forma de trabajar con asistentes de IA de código en la que **primero escribes qué quieres que haga el programa (la especificación o *spec*) y después le pides a la IA que lo implemente a partir de ella**.

Es la alternativa a lo que se conoce como ***vibe coding***: pedir cosas sueltas al asistente, copiar lo que devuelve y comprobar solo si "parece que funciona".

No necesitas saber programar para entender SDD. Lo único que necesitas es saber **explicar con claridad qué quieres**, y para eso ya cuentas con Markdown: **una spec es un documento Markdown**.

---

## ¿Por qué importa?

Un asistente de IA es muy rápido, pero **no adivina lo que tienes en la cabeza**. Si tu petición es vaga, rellena los huecos por su cuenta: inventa casos, cambia nombres, añade cosas que no pediste o ignora las que sí.

| | Vibe coding | SDD |
|---|---|---|
| Punto de partida | Un prompt suelto | Una spec escrita |
| Quién decide los detalles | La IA, sin avisar | Tú, por escrito |
| Cómo sabes que está bien | "Parece que va" | Compruebas cada criterio de la spec |
| Si algo falla | Vuelves a pedirlo y rezas | Corriges la spec o la implementación |
| Resultado | Cambia cada vez que lo pides | Reproducible y revisable |

Escribir la spec es **pensar antes de programar**. Eso es lo que hacen los ingenieros, con o sin IA; la diferencia es que ahora el "ayudante" ejecuta literalmente lo que le dices.

---

## Las ideas clave

1. **La spec dice el *qué*, no el *cómo*.** Describe el comportamiento esperado, no el código.
2. **Los criterios de aceptación son comprobables.** "Que funcione bien" no vale; "con la entrada `10` devuelve `12`" sí.
3. **Los ejemplos valen más que las explicaciones.** Unas pocas entradas con su salida esperada eliminan casi toda la ambigüedad.
4. **Lo que no escribes, la IA lo inventa.** Si algo importa (límites, casos raros, qué no debe hacer), ponlo en la spec.
5. **Tú sigues al mando.** La IA propone; tú revisas, ejecutas y decides.

---

## El ciclo mínimo de SDD

Para trabajos pequeños, como los ejercicios de programación, basta con cuatro pasos:

```text
1. Especificar   →  2. Planificar   →  3. Implementar   →  4. Verificar
   (qué quiero)      (pasos)            (código)            (¿cumple la spec?)
```

1. **Especificar.** Escribes la spec en un `.md` (plantilla más abajo).
2. **Planificar.** Le pides a la IA que lea la spec y te proponga los pasos **sin escribir código todavía**. Revisas el plan y lo corriges si algo no cuadra.
3. **Implementar.** Le pides que implemente el plan. En proyectos pequeños, de una vez; en grandes, paso a paso.
4. **Verificar.** Ejecutas el código y compruebas **cada criterio de aceptación** de la spec, uno por uno. Si falla alguno, vuelves a la spec o al código, pero con un criterio concreto delante.

Si durante el proceso cambias de idea, **cambia primero la spec** y después el código. Así la spec siempre refleja lo que el programa hace de verdad.

---

## Plantilla de mini-spec

Copia esto en un archivo `spec.md` junto a tu código y rellénalo:

```markdown
# Nombre de la funcionalidad

## Objetivo
Una o dos frases: qué problema resuelve y para quién.

## Entradas
- Qué recibe el programa o la función (tipo y significado).

## Salidas
- Qué devuelve o muestra.

## Reglas
- Comportamiento esperado, una regla por línea.

## Casos límite
- Qué pasa con entradas raras: vacío, negativo, texto en vez de número...

## Ejemplos
| Entrada | Salida esperada |
|---|---|
| ... | ... |

## Fuera de alcance
- Qué NO debe hacer (evita que la IA añada de más).

## Criterios de aceptación
- [ ] Criterio comprobable 1
- [ ] Criterio comprobable 2
```

Las listas de tareas `- [ ]` son Markdown (GFM): márcalas con `- [x]` según vayas verificando.

---

## Ejemplo completo

Imagina que quieres una función que calcule el precio final de una compra aplicando un descuento.

### Con vibe coding

> *"Hazme una función en Python para calcular descuentos."*

La IA decidirá sola si el descuento es un porcentaje o una cantidad, qué hace con descuentos negativos, si redondea... y cada vez que lo pidas puede decidir distinto.

### Con SDD

```markdown
# Precio final con descuento

## Objetivo
Calcular el precio que paga el cliente tras aplicar un descuento porcentual.

## Entradas
- `precio`: número (float) mayor o igual que 0, en euros.
- `descuento`: número (float) entre 0 y 100, porcentaje a descontar.

## Salidas
- El precio final como float, redondeado a 2 decimales.

## Reglas
- precio final = precio − (precio × descuento / 100).
- Con descuento 0, el precio no cambia.

## Casos límite
- Si `precio` es negativo, lanza `ValueError`.
- Si `descuento` está fuera de 0–100, lanza `ValueError`.

## Ejemplos
| precio | descuento | resultado |
|---|---|---|
| 100 | 20 | 80.0 |
| 59.99 | 10 | 53.99 |
| 50 | 0 | 50.0 |
| 50 | 100 | 0.0 |
| -5 | 10 | ValueError |
| 50 | 120 | ValueError |

## Fuera de alcance
- No pide datos por teclado ni imprime nada: solo la función.

## Criterios de aceptación
- [ ] Los seis ejemplos de la tabla dan el resultado indicado.
- [ ] Los errores son `ValueError`, no otro tipo.
- [ ] La función tiene un nombre claro y una docstring.
```

Con esta spec, dos personas distintas (o la misma IA en dos días distintos) obtendrán prácticamente la misma función, y tú sabes exactamente cómo comprobarla.

---

## Cómo pedírselo al asistente (GitHub Copilot en VS Code)

El plan gratuito de GitHub Copilot en VS Code es suficiente. Abre el chat, adjunta tu `spec.md` como contexto (botón de adjuntar o escribiendo `#file:spec.md`) y trabaja en dos mensajes:

**Primero, el plan (sin código):**

```text
Lee #file:spec.md. Antes de escribir código, dime en una lista numerada
qué pasos seguirías y qué dudas tienes sobre la spec. No implementes nada todavía.
```

Si el asistente te hace preguntas, esas son las partes ambiguas de tu spec: **respóndelas en la spec**, no solo en el chat.

**Después, la implementación:**

```text
Implementa lo que describe #file:spec.md siguiendo el plan acordado.
No añadas funcionalidades que no estén en la spec.
```

**Por último, verifica tú:** ejecuta el código con los ejemplos de la tabla y marca los criterios cumplidos.

---

## Errores comunes

- **Spec demasiado vaga:** "que sea robusto", "que funcione bien". Sustitúyelo por criterios que puedas comprobar.
- **Spec que explica el código línea a línea:** entonces estás programando en español. Describe el comportamiento, no los pasos internos.
- **Olvidar los casos límite:** son justo donde la IA suele inventar.
- **No ejecutar nunca el código:** la IA puede equivocarse con total seguridad. Verificar es tu parte.
- **Cambiar el código sin actualizar la spec:** a la semana ya no se parecen.
- **Una spec gigante para todo:** divide en funcionalidades pequeñas, cada una con su spec.

---

## Ejercicio de práctica

1. Elige un programa pequeño, por ejemplo: *"convertir una temperatura de Celsius a Fahrenheit"* o *"decir si una palabra es un palíndromo"*.
2. Escribe su `spec.md` con la plantilla (al menos 4 ejemplos y 2 casos límite).
3. Pide a Copilot **solo el plan** y mejora tu spec con sus dudas.
4. Pide la implementación.
5. Comprueba cada criterio de aceptación y marca los que se cumplen.
6. Compara con lo que habría salido de un prompt de una sola línea. ¿Qué detalles habría decidido la IA por ti?

---

## Para seguir aprendiendo

- Vídeo: [El fin del Vibe Coding (MoureDev)](https://www.youtube.com/results?search_query=El+fin+del+Vibe+Coding+MoureDev)
- Repositorio de ejemplo: [mouredev/hello-sdd](https://github.com/mouredev/hello-sdd)
- [Markdown Guide](https://www.markdownguide.org/): para escribir specs claras.
