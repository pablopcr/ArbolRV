# Representación de árboles con Procesing
:office: Universidad de Huelva (UHU)  
:calendar: Curso 2019-2020  
:mortar_board: Realidad Virtual 
:octocat: José David Ortiz y Pablo Cáceres

## Introducción
La representación gráfica de la naturaleza de un árbol debe conllevar el manejo de múltiples variables que modifiquen su apariencia.

En este proyecto, se ha conseguido una aproximación bastante cercana a lo que podría ser un árbol en la realidad, pudiendo ajustar la altura del árbol, número de ramas, ángulos etc. Además, se podrá observar cómo quedarían varios árboles juntos a modo de bosque.

## Menú de ajuste de parámetros
El ajuste de parámetros del árbol es esencial para darle personalidad y realismo. Cuando se ejecuta el proyecto en Procesing, lo primero que se verá será un menú desde el que poder configurarlos.

El control del menú es tan sencillo como pulsar la tecla correspondiente para subir o bajar el valor del parámetro, o seleccionar un número para cambiar el color. Por ejemplo, para aumentar la altura del árbol, basta con pulsar la tecla 'C'. Se disminuye con la tecla 'Z'. Se podrá visualizar el valor que va tomando cada parámetro. 

Una vez hayamos decidido la configuración, **con la tecla 'R' arrancaremos el programa** y se podrá visualizar el/los árboles.

A continuación se explica qué es cada parámetro:
### Definición de parámetros
* **Split:** Número de divisiones de cada rama. Si por ejemplo marcamos en uno este parámetro, el árbol solo será un tronco que cambia de ángulos. Si se pone un 2, de cada rama saldrán otras dos. (Esto también depende del parámetro varSplits).

* **Branch:** Cuántos niveles tiene el árbol. Si se pone en uno, el árbol solo tendrá un tronco, un solo nivel. Si se coloca en tres, el árbol tendrá tres niveles. Cada nivel puede contener más de una rama.

* **Anchura:** Como su propio nombre indica, este parámetro ajusta la anchura del árbol. Un valor mayor se traduce en una mayor anchura.

* **Longitud:** Varía la longitud de cada nivel del árbol. Un valor mayor se traduce en troncos y ramas más largas.

* **varSplits:** Complementaria a *Splits*, este parámetro actúa como un actor de aleatoriedad. Indica la variabilidad que se podrá dar en el árbol con esta variable, siguiendo la siguiente fórmula: SplitsFinal=(Splits+0, Splits+(varSplits-1)). Si se coloca por ejemplo en 2, significa que el parámetro *Splits* podrá variar entre Splits+0 y Splits+1. 

* **angleSplit:** Modifica el ángulo de las ramas con respecto al suelo. Para conseguir un mayor realismo se aconseja que el valor sea próximo a '1'.

* **LongitudPlantas:** Se ha implementado la creación de hierba alrededor del árbol. Este parámetro modifica su tamaño.

* **CambioRotación:** Complementario a *angleSplit*. Crea un efecto de aleatoriedad en los ángulos de las ramas, para evitar simetrías poco reales. Un valor mayor significará ángulos más diferentes.

* **NivelesVecino:** Este parámetro es usado para definir un bosque. Si el valor está en 0, el árbol principal estará solo: solo se verá un árbol. Conforme se aumenta el parámetro, se van creando árboles iguales al principal por niveles. *Un valor alto puede consumir muchos recursos y hacer la ejecución lenta*.

* **Color del árbol:** Pulsando el número correspondiente, se puede seleccionar el color que se quiera. La flecha indicará el color activo.


## MANEJO DEL PROGRAMA
**Manejo de la cámara**
*  **w**: La cámara se acerca al árbol.
*  **s**: La cámara se aleja del árbol.
*  **Subir ratón**: La cámara sube.
*  **Bajar ratón**: La cámara baja.
*  **Desplazar ratón a la derecha**: La cámara gira a la izquierda.
*  **Desplazar ratón a la izquierda**: La cámara gira a la derecha.
**Manejo del menú**
## METODOLOGÍA USADA
Como se ha implementado
