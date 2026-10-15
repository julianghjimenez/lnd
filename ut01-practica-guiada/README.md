```
# Práctica guiada UT01 - Entorno y primeros commits

Microproyecto para preparar el entorno de trabajo del módulo LND.

## Qué

Configuro VSCode y git y creo un repositorio con un README documentado.

## Cómo

Comandos ejecutados:

- `git config --global user.name "alumno"`
- `git init`
- `git add README.md`
- `git commit -m "..." -m "..."`

## Resultado

Repositorio con historial de commits visible con `git log --oneline`.

## Problemas encontrados y soluciones

- Ninguno de momento (se completa al terminar la práctica).

## Qué has aprendido

- El ciclo modificar, git add, git commit y git log.
- Que cada cambio debe tener su propio commit con mensaje de dos partes.
```
# AE1: Clasificación y comparativa de lenguajes de marcas

## 1. Qué es un lenguaje de marcas, con ejemplo de etiqueta, elemento y atributo

Un __Lenguaje de marca__ o __Markup Language__ es un modo de escritura en texto plano que permite una presentación más explicita del contenido, estructura y semántica a traves de una codificación de etiquetas llamadas marcas.

[webgrafia]( https://lnd-pre-6f69bf.gitlab.io/ut01/teoria/01-lenguajes-de-marcas/ )

## 2. Ventajas en el tratamiento de la información

Los lenguajes de marcas y los formatos de datos estructurados tienen varias ventajas:

- Organizan mejor la información: permiten separar los datos por partes y saber qué representa cada una. Por ejemplo, en una página web podemos distinguir fácilmente los títulos, los párrafos y las imágenes.

- Facilitan el intercambio de datos: permiten que diferentes aplicaciones compartan información siguiendo una estructura común. Por ejemplo, una aplicación puede recibir datos de un servidor en formato JSON.

- Son fáciles de leer: muchos utilizan texto que podemos entender sin necesitar un programa especial. Por ejemplo, en Markdown podemos ver rápidamente dónde empieza un título o una lista.

- Permiten automatizar tareas: los programas pueden leer los datos y utilizarlos sin que una persona tenga que copiarlos manualmente. Por ejemplo, una tienda online puede procesar los datos de un producto para mostrar su nombre y precio.

## 3. Clasificación de los lenguajes de marcas

Existen diferentes lenguajes y formatos, y cada uno tiene sus propias características y usos.

| Lenguaje o formato | Tipo según su finalidad |Propósito |Ámbito principal |
| HTML | De presentación y estructuración | Específico | Páginas web |
| XML | Descriptivo y estructural | General | Intercambio de datos |
| Markdown | Ligero, para escribir documentos | Específico | Documentación |
| JSON | Formato de datos estructurados | General para intercambio de datos | Aplicaciones y API |
| YAML | Formato de datos estructurados | General para datos de configuración | Configuración de programas |
| SVG | Gráficos vectoriales basados en XML | Específico |Gráficos e imágenes web |

4. Comparativa con ejemplos reales

Para comparar los diferentes formatos, voy a utilizar el mismo ejemplo en todos ellos: un libro llamado El principito, escrito por Antoine de Saint-Exupéry en 1943.

HTML

<article>
  <h2>El principito</h2>
  <p>Autor: Antoine de Saint-Exupéry</p>
  <p>Año: 1943</p>
</article>

Comentario: HTML utiliza etiquetas para organizar el contenido de una página web.

XML

<libro>
  <titulo>El principito</titulo>
  <autor>Antoine de Saint-Exupéry</autor>
  <anio>1943</anio>
</libro>

Comentario: XML permite crear etiquetas propias según la información que queremos guardar.

Markdown

## El principito

- **Autor:** Antoine de Saint-Exupéry
- **Año:** 1943

Comentario: Markdown utiliza símbolos sencillos para crear títulos, listas y texto en negrita.

JSON

{
  "titulo": "El principito",
  "autor": "Antoine de Saint-Exupéry",
  "anio": 1943
}

Comentario: JSON organiza la información mediante claves y valores. Es muy utilizado para enviar datos entre aplicaciones, por ejemplo, cuando una web recibe información de un servidor.

YAML

titulo: El principito
autor: Antoine de Saint-Exupéry
anio: 1943

Comentario: YAML también permite organizar datos, pero utiliza una sintaxis más sencilla y no necesita llaves ni comas en este ejemplo.

 ### Tabla comparativa  
 
| Característica | HTML | XML | Markdown | JSON | YAML | 
| Utiliza etiquetas | Sí | Sí | No | No | No | 
| Permite crear etiquetas propias | No, usa elementos definidos por HTML | Sí | No | No | No |
| Organiza datos | Sí, para contenido web | Sí | De forma limitada | Sí | Sí |
| Uso principal | Páginas web | Intercambio de datos | Documentación | Intercambio de datos | Configuración |
| Facilidad de lectura | Alta | Alta | Muy alta | Alta |Muy alta |

Después de comparar los ejemplos, se puede ver que todos permiten representar información de alguna manera, pero no sirven exactamente para lo mismo. HTML está pensado para páginas web, XML permite definir estructuras de datos, Markdown facilita la documentación y JSON y YAML se utilizan para organizar e intercambiar información.