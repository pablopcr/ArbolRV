# Representación de árboles con Procesing
:office: Universidad de Huelva (UHU)  
:calendar: Curso 2019-2020  
:mortar_board: Realidad Virtual 
:octocat: José David Ortiz y Pablo Cáceres

## Introducción
En este proyecto, se ha utilizado el programa Procesing para conseguir una aproximación bastante cercana a lo que podría ser un árbol real, pudiendo ajustar la altura del árbol, cantidad de las ramas, ángulos de las ramas etc. Además, se podrá observar cómo quedarían varios árboles diferentes formando un pequeño bosque.
<p align="center">
  <img width="700" height="300" src="Imagenes Readme/Arboles.png">
</p>

## Menú de ajuste de parámetros
El ajuste de parámetros es esencial para darle personalidad al árbol. Cuando se ejecuta el proyecto en Procesing, lo primero que se verá será un menú desde el que se pueden configurar las posibles variables.

El control del menú es tan sencillo como pulsar la tecla correspondiente para subir o bajar el valor del parámetro, o seleccionar un número para cambiar el color. Por ejemplo, para aumentar la altura del árbol, basta con pulsar la tecla 'C', o 'Z' para disminuirla. Se podrá visualizar el valor que va tomando cada parámetro en tiempo real. 

<p align="center">
  <img width="350" height="400" src="Imagenes Readme/Captura menú final.PNG">
</p>

Una vez hayamos decidido la configuración, **con la tecla 'R' pasaremos a visualizar los árboles**.

<p align="center">
  <img width="400" height="300" src="Imagenes Readme/ArbolPequeño.png">
</p>

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

* **Bhoja:** Cuando esta activado, pinta el último nivel de ramas en verde.


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

Nuestro programa empieza con el control del menú, donde se recogen las teclas que se pulsan por teclado y mediante una serie de if, se modifican las variables.

El código del árbol, comienza en la línea 330,y empieza declarando todas las variables que vamos a utilizar. También encontramos el setup, cuya función es crear el objeto raíz y myShape(Árbol), y llama a el método "drawArbolB".

**drawArbolB**

En drawArbolB, nos encargamos de controlar el movimiento de la cámara, y llamar al método "drawArbol", tantas veces como arboles vayamos a dibujar.


<p align="center">
  <img width="483" height="183" src="Imagenes Readme/Captura bucle bosque.PNG">
</p>

Este método, también se encarga de pintar la superficie del suelo, y su interior. Su tamaño viene definido por el número de árboles que se dibujan.

<p align="center">
  <img width="483" height="183" src="Imagenes Readme/Captura pintar suelo.PNG">
</p>

**drawArbol**

En el método drawArbol, vamos a pintar la hierba, el árbol y las raíces. Para pintar la hierba, vamos a utilizar dos bucles para recorrer todo el terreno, y una serie de variables para que no todas tengan el mismo tamaño, ni estén colocadas en filas paralelas.



<p align="center">
  <img width="933" height="331" src="Imagenes Readme/Captura pintar hierba.PNG">
</p>

**MyShape**

La clase "MyShape", que es la encargada de dibujar el árbol. Para ello, va a utilizar la recursividad, donde cada rama va creando a otras n ramas, hasta llegar al último nivel, donde no se crean más ramas.


<p align="center">
  <img width="1084" height="182" src="Imagenes Readme/Captura recursiva.PNG">
</p>

**Raices**

La clase "Raices", encargada de dibujar las raíces, funciona igual que la clase "MyShape" pero con algunas variaciones, como los ángulos de rotación, los cambios de niveles y principalmente variando el tamaño del primer nivel para que se oculte dentro del tronco del árbol.

<p align="center">
  <img width="1119" height="422" src="Imagenes Readme/Captura raices.PNG">
</p>

**drawIt**

Cuando llamamos al método "drawIt" de la clase "MyShape" o "Raices", se dibuja cada rama creada en el constructor, teniendo en cuenta su posición inicial, final y su rotación.


<p align="center">
  <img width="441" height="276" src="Imagenes Readme/Captura dibujar ramas.PNG">
</p>

## Resultados

<p align="center">
  <img width="800" height="800" src="Imagenes Readme/arbol1.png">
</p>

<p align="center">
  <img width="500" height="500" src="Imagenes Readme/arbol2.png">
</p>

<p align="center">
  <img width="800" height="500" src="Imagenes Readme/bosque pequeño.png">
</p>

<p align="center">
  <img width="800" height="500" src="Imagenes Readme/Bosque 2.PNG">
</p>

<p align="center">
  <img width="441" height="276" src="Imagenes Readme/Raices.PNG">
</p>

<p align="center">
  <img width="400" height="500" src="Imagenes Readme/Arbol sin hojas 2.PNG">
</p>
