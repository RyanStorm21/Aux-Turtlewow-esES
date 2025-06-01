# Aux Addon - Edición en Español

Esta es una traducción completa al español del addon **Aux** para World of Warcraft (cliente 1.12.x), enfocada en proporcionar una experiencia de usuario enteramente en castellano.

Este proyecto de traducción se basa en la versión del addon Aux desarrollada/mantenida por **gwetchen/Geojak**. Un agradecimiento especial al creador(es) original(es) de Aux y a gwetchen/Geojak por su trabajo en este avanzado addon para la casa de subastas.

Aux es reconocido como uno de los addons más avanzados para la casa de subastas en el cliente 1.12 de WoW, ofreciendo características que incluso superan a algunas funcionalidades modernas. Reemplaza completamente la interfaz de la casa de subastas de Blizzard por una propia, más elegante y funcional.

**Nota Importante sobre esta Versión:**
Toda la interfaz de usuario de esta versión del addon, incluyendo menús, botones, tooltips y mensajes, ha sido traducida al español por `Ryan`. El objetivo es que los jugadores de habla hispana puedan utilizar todas sus potentes funciones sin la barrera del idioma.

## Características Específicas para Turtle WoW (traducidas de README_Geojak.md)

* Comparte algunos datos de precios a través del chat LFT al buscar en la Casa de Subastas (CS), usa `**/aux sharing**` para activar/desactivar el envío y recepción de datos.
* Duraciones de subasta precisas para Turtle WoW.
* Autocompletado para objetos personalizados de Turtle WoW.

## Características Principales del Addon Aux

### General
* Reemplazo completamente independiente de la interfaz de Blizzard.
* Aspecto elegante basado en el addon TSM del retail.
* Múltiples atajos convenientes.
* Acceso conveniente a la interfaz de Blizzard sin alteraciones.

### Búsqueda
* Escaneo automático de todas las páginas para una consulta.
* Guardado de consultas recientes y favoritas.
* Historial de listados de resultados con una interfaz similar a la de un navegador de internet.
* Filtros de búsqueda avanzados que se pueden combinar con operadores lógicos.
* Autocompletado al ingresar filtros.
* Listados concisos que muestran claramente la información más importante.
* Clasificación por porcentaje del valor histórico y precio unitario.
* Clasificación a través de todas las páginas escaneadas.
* Compra rápida desde cualquier página sin necesidad de reescanear todo.
* Modo en tiempo real que escanea continuamente la última página.

### Publicar
* Ensamblaje y publicación automática de múltiples pilas (stacks).
* Escaneo automático de subastas existentes.
* Listado conciso de subastas existentes.
* Rebaja (undercutting) de subastas existentes con un clic.
* Listado conciso de objetos del inventario, excluyendo los no subastables.
* Exclusión manual de objetos específicos del listado del inventario.
* Guardado de la configuración de publicación por objeto.
* Entrada de precios eficiente inspirada en el addon TSM del retail.

### Historial
* Recopilación automática de datos históricos de todos los escaneos.
* Recopilación automática de precios de vendedor.
* Cálculos detallados para un valor histórico fiable.
* Información en la descripción emergente (tooltip) con valor histórico, precios de vendedor y valor de desencantamiento.
* Almacenamiento eficiente de datos.

## Comandos de Barra

Los comandos de barra y sus respuestas también han sido traducidos al español.

### Generales
* `**/aux**` (Lista las configuraciones)
* `**/aux scale <factor>**` (Escala la interfaz gráfica de aux por el _factor_)
* `**/aux ignore owner**` (Desactiva la espera de nombres de propietarios al escanear. Recomendado)
* `**/aux post bid**` (Añade un listado de precios de puja a la pestaña de Publicar)
* `**/aux crafting cost**` (Activa/desactiva la información de costes de fabricación)
* `**/aux post duration <horas>**` (Establece la duración de subasta por defecto a _2_/_8_/_24_ horas)

### Descripción Emergente (Tooltip)
* `**/aux tooltip value**` (valor)
* `**/aux tooltip daily**` (diario)
* `**/aux tooltip disenchant value**` (valor de desencantamiento)
* `**/aux tooltip disenchant distribution**` (distribución de desencantamiento)
* `**/aux tooltip vendor buy**` (compra a vendedor)
* `**/aux tooltip vendor sell**` (venta a vendedor)

## Uso

### General
* Para los listados de subastas en las pestañas de búsqueda, subastas y pujas, están disponibles los siguientes atajos:
    * Doble clic en una fila con el contador en color azul para expandirla.
    * Alt+clic izquierdo en la fila seleccionada para compra directa/cancelar.
    * Alt+clic derecho en la fila seleccionada para pujar/cancelar.
    * Clic derecho en una fila para iniciar una búsqueda del objeto subastado.
    * Control+clic en una fila para mostrar una vista previa en la ventana del probador.
    * Shift+clic en una fila para copiar el enlace al cuadro de chat.
    * Clic izquierdo en un encabezado para ordenar.
    * Clic derecho en el encabezado de una columna de precios para cambiar entre precio unitario y precio por pila (stack).
* Además:
    * Doble clic en los cuadros de edición resaltará todo el texto.

### Búsqueda
* Pulsar Tab en el cuadro de búsqueda aceptará una sugerencia de autocompletado.
* Arrastrar objetos del inventario al cuadro de búsqueda o hacer clic derecho sobre ellos iniciará una búsqueda.
* Hacer clic derecho en los enlaces de objetos iniciará una búsqueda.

#### Resultados de Búsqueda
* Los precios de puja para tus propias pujas activas se colorean en verde.
* Los precios de puja para otras subastas con una puja activa se colorean en naranja.

#### Búsquedas Guardadas
* Al pasar el cursor sobre una entrada, la descripción emergente muestra una versión más larga y mejor formateada.
* Clic izquierdo en una entrada iniciará una búsqueda.
* Clic derecho en una entrada mostrará un menú con varias opciones, incluyendo activar/desactivar la Compra Automática.
* Shift+clic izquierdo en una entrada copiará una búsqueda al cuadro de búsqueda.
* Shift+clic derecho en una entrada añadirá una búsqueda a la consulta existente en el cuadro de búsqueda.

#### Constructor de Filtros
* Aunque es más rápido escribir los filtros directamente en el cuadro de búsqueda, esta subpestaña sirve como un tutorial para aprender a formular consultas. Los filtros del lado izquierdo son filtros de Blizzard que pueden reducir el número de páginas a escanear, y los del lado derecho son post-filtros que no afectan el tiempo de escaneo pero pueden combinarse con operadores lógicos para formular filtros muy complejos.

### Publicar
* Al introducir precios, **g**, **s** y **c** denotan oro, plata y cobre respectivamente.
* Un valor de precio sin denotaciones explícitas contará como oro (ej., 10.5 = 10o50p).
* Los valores de precio pueden contener decimales (ej., 1.5o = 1o50p).
* Hacer clic derecho en un objeto del listado del inventario iniciará una búsqueda.
* Hacer clic derecho en un objeto de la bolsa lo seleccionará en el listado.
* En el listado de pujas/compras directas, un precio en rojo está rebajando (undercutting) el precio por pila/unidad.
* Hacer clic en una entrada en los listados de pujas/compras directas de subastas existentes rebajará con tu precio de puja por pila/compra directa por unidad.
* Hacer doble clic en los listados de pujas/compras directas también igualará el tamaño de la pila.

## Filtros de Búsqueda
Los AddOns no tienen filtros de Blizzard adicionales disponibles más allá de los que están en la interfaz predeterminada de la casa de subastas, ni tienen otras formas de combinarlos. Por supuesto, es posible que un addOn aplique filtros arbitrarios después de la consulta de Blizzard, pero solo la consulta de Blizzard afectará el número de páginas a escanear y, por lo tanto, el tiempo que toma un escaneo. Dado que la API de Vanilla solo te permite solicitar una página cada 4 segundos, no tener una consulta de Blizzard en tu filtro puede llevar a tiempos de escaneo muy largos.

Las consultas de aux están separadas por puntos y comas y siempre contienen exactamente una consulta de Blizzard. La consulta de Blizzard puede estar vacía, es decir, se escanean todas las páginas, lo que puede ser útil para recopilar datos históricos. El modo en tiempo real solo admite consultas de Blizzard vacías. Los puntos y comas siempre significan "o", es decir, `q1;q2;q3` significa que se listarán todos los objetos que coincidan con `q1` o `q2` o `q3`.

Las partes de las consultas individuales están separadas por barras diagonales, ej., `q1p1/q1p2;q2p1/q2p2/q2p3`. Todas las partes pertenecen al filtro de Blizzard o al filtro de postprocesamiento.

Los filtros de Blizzard se pueden crear a través del formulario en el lado izquierdo de la subpestaña "Nuevo Filtro" de la pestaña "Búsqueda" o escribirse directamente en el cuadro de búsqueda. Para aprender a escribir consultas, puedes completar el formulario, agregar la consulta al cuadro de búsqueda con los botones "Añadir" o "Reemplazar" e inspeccionar la salida generada hasta que te sientas cómodo escribiéndolas tú mismo. En su mayor parte, debería ser bastante intuitivo.
La primera parte es especial, ya que si no coincide con ninguna palabra clave de filtro específica, se tratará como una búsqueda de nombre de Blizzard. Por ejemplo, una consulta que consista solo en `paño vil` listaría los objetos Paño vil, Patrón: capucha de paño vil, Bolsa de paño vil, etc. Normalmente, querrás usar el modificador `exacto` que solo coincide con las subastas donde el nombre, aparte de las mayúsculas y minúsculas, es exactamente igual a la primera parte de la consulta.
`Exacto` es el único modificador que es en parte filtro de Blizzard y en parte post-filtro, aunque se trata principalmente como un filtro de Blizzard. `Exacto` adaptará la consulta de Blizzard lo mejor posible hacia el objeto buscado (rango de nivel, clase/subclase/ranura del objeto, calidad...) y no se puede usar junto con filtros de Blizzard para estas propiedades.

Los filtros de postprocesamiento son más flexibles. Se especifican usando las primitivas de filtro que encuentras en el lado derecho de la subpestaña "Nuevo Filtro" y se pueden combinar con `y`, `o` y `no` usando notación polaca (https://es.wikipedia.org/wiki/Notaci%C3%B3n_polaca). Las partes del filtro que no sean la primera y que no coincidan con ningún filtro específico, al igual que la primera parte se trata como un filtro de nombre de Blizzard, se tratan como un filtro de descripción emergente (tooltip). Para usar un filtro de descripción emergente como la primera parte del filtro, existe un modificador explícito `tooltip`.

Aquí hay algunas consultas que uso yo mismo como ilustración:

`or/and2/profit/5g/percent/60/and3/bid-profit/5g/bid-percent/60/left/30m`
Este filtro buscará en toda la casa de subastas aquellas subastas con un precio de compra directa de 5o o más por debajo del valor de mercado y 60% o menos del valor de mercado, O un precio de puja para el cual se cumpla lo mismo y que además tengan solo 30m o menos de tiempo restante.

`wrangler's wristbands/exact/or2/and2/+3 agility/+3 stamina/+5 stamina/price/1g`
Esto buscará muñequeras de luchador (wrangler's wristbands) con sufijos de +3 agilidad/+3 aguante (del mono) o +5 aguante (del oso, etc.) por un precio de compra directa máximo de 1o.

`recipe/usable/not/libram`
Esto escaneará recetas utilizables y excluirá aquellas con "libram" en la descripción emergente (es decir, libram).

`armor/cloth/50/intellect/stamina`
Esto escaneará la casa de subastas en busca de armaduras de tela que tengan un requisito de al menos nivel 50 y que además tengan estadísticas tanto de intelecto como de aguante.

## Valor Histórico
aux condensa los precios que has escaneado durante un día (de medianoche a medianoche) en un solo valor, de forma similar al módulo "stat-simple" de Auctioneer del retail. Este valor diario se calcula como la compra directa mínima del día, lo que en la práctica da un valor suficientemente similar al de TSM del retail utilizando mucha menos memoria. Limitar el uso de memoria es importante porque, al igual que Auctioneer y a diferencia de TSM, aux utiliza un intervalo basado en el día en lugar de en el escaneo y, por lo tanto, tiene que almacenar el progreso diario en las variables guardadas (SavedVariables). Finalmente, estos valores diarios se recopilan en una lista de los últimos 11, de la cual se toma el valor de mercado como la mediana. Los valores se ponderan por su antigüedad, pero esto no tiene un gran efecto a menos que tengan más de un mes.

En resumen, obtienes un valor de mercado bastante preciso tanto para mercados muy activos como para objetos más raros, que tiene un tiempo de reacción razonablemente corto a los cambios del mercado, se recupera fácilmente y nunca necesita ser reiniciado, al mismo tiempo que es razonablemente estable y difícil de manipular, y maneja muy bien los valores atípicos, no se distorsiona por múltiples escaneos al día, no necesita un solo escaneo completo al día, sino que recoge naturalmente cada precio que escaneas mientras realizas tus actividades habituales, permitiéndote concentrarte en una cierta parte de la casa de subastas escaneando solo esa parte regularmente y evitando la sobrecarga de información al darte un solo valor conciso para la descripción emergente.

## Créditos de Traducción

* **Traducción al español por**: `Ryan`
* **Repositorio Original (versión base para esta traducción)**: (https://github.com/gwetchen/aux-addon)

## Contribuciones y Errores

Si encuentras algún error en la traducción, erratas o tienes sugerencias para mejorarla, por favor.
---

*(Este README es una plantilla que combina la información del README original de Aux y las notas de Geojak, todo traducido. Siéntete libre de adaptarlo y añadir más secciones o información que consideres relevante para tu versión traducida. Las imágenes del README original no se pueden incrustar directamente aquí, pero puedes referenciarlas o añadirlas a tu repositorio y enlazarlas).*
