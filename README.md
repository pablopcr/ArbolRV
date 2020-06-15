# Representación de árboles con Procesing
:office: Universidad de Huelva (UHU)  
:calendar: Curso 2019-2020  
:mortar_board: Realidad Virtual 
:octocat: José David Ortiz y Pablo Cáceres

## Introducción
En este proyecto, se ha utilizado el programa Procesing para conseguir una aproximación bastante cercana a lo que podría ser un árbol real, pudiendo ajustar la altura del árbol, cantidad de las ramas, ángulos de las ramas etc. Además, se podrá observar cómo quedarían varios árboles diferentes formando un pequeño bosque.

## Menú de ajuste de parámetros
El ajuste de parámetros es esencial para darle personalidad al árbol. Cuando se ejecuta el proyecto en Procesing, lo primero que se verá será un menú desde el que se pueden configurar las posibles variables.

El control del menú es tan sencillo como pulsar la tecla correspondiente para subir o bajar el valor del parámetro, o seleccionar un número para cambiar el color. Por ejemplo, para aumentar la altura del árbol, basta con pulsar la tecla 'C', o 'Z' para disminuirla. Se podrá visualizar el valor que va tomando cada parámetro en tiempo real. 

Una vez hayamos decidido la configuración, **con la tecla 'R' pasaremos a visualizar los árboles**.

A continuación se explica qué es cada parámetro:
### Definición de parámetros
* **Split:** Número de divisiones de cada rama. Si por ejemplo marcamos en 1 este parámetro, el árbol solo será un tronco que cambia de ángulos. Si se pone un 2, de cada rama saldrán otras dos. (Esto también depende del parámetro varSplits).

* **Branch:** Cantidad de niveles de ramas que tiene el árbol. Si se pone en uno, el árbol solo tendrá un tronco, un solo nivel. Si se coloca en tres, el árbol tendrá tres niveles. Cada nivel puede contener más de una rama.

* **Anchura:** Este parámetro ajusta la anchura de las ramas del árbol.

* **Longitud:** Esta variable define la longitud de cada rama.

* **varSplits:** Complementario a *Splits*, este parámetro funciona como un actor de aleatoriedad. Indica el número máximo de ramas que se añaden al *Split* a cada bifurcación, siguiendo la siguiente fórmula: SplitsFinal=(Splits+0, Splits+(varSplits-1)). Si se coloca por ejemplo en 2, significa que el parámetro *Splits* podrá variar entre Splits+0 y Splits+1. 

* **angleSplit:** Modifica el ángulo de las ramas con respecto a la rama anterior. Para conseguir un mayor realismo se aconseja que el valor sea próximo a '1'.

* **LongitudPlantas:** Se ha implementado la creación de hierba alrededor del árbol. Este parámetro modifica su tamaño.

* **CambioRotación:** Complementario a *angleSplit*. Crea un efecto de aleatoriedad en los ángulos de las ramas, para evitar simetrías. Un valor mayor significará mayor diferencia en los ángulos.

* **NivelesVecino:** Este parámetro es usado para implementar un bosque. Si el valor está en 0, el árbol principal estará solo: solo se verá un árbol. Conforma aumenta el parámetro, más niveles de árboles rodean al principal.. *Un valor alto puede consumir muchos recursos y hacer la ejecución lenta*.

* **Color del árbol:** Pulsando el número correspondiente, se puede seleccionar el color que se quiera. La flecha indicará el color activo.


## Manejo del programa
**Activar o desasctivar el menú**
* **r:** Estando en el menú, iniciar modo visualización del árbol.
* **m:** Estando en modo visualización del árbol, volver al menú.

**Manejo de la cámara**
*  **w**: La cámara se acerca al árbol.
*  **s**: La cámara se aleja del árbol.

*Si se pulsa cualquier tecla cuando la cámara se acerca o se aleja, se para el movimiento.*

*  **Subir ratón**: La cámara sube.
*  **Bajar ratón**: La cámara baja.
*  **Desplazar ratón a la derecha**: La cámara gira a la izquierda.
*  **Desplazar ratón a la izquierda**: La cámara gira a la derecha.

## Implementación del código
Como se ha implementado
