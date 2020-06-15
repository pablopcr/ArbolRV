//Este codigo es un Fork del programa realizado por DavidKing que se encuentra en el siguiente enlace https://www.openprocessing.org/sketch/153474

//CÓDIGO NECESARIO PARA EL MENÚ

//Variables controladoras 
final int MENUSCREEN = 0;
final int GAMESCREEN = 1;
 int screenState = 0; //Cuando está en 0 estaremos en el menu y cuando está en 1 estaremos en el árbol


//El método draw pintará el árbol o el menú dependiendo de la variable controladora 'screenState'
void draw() {
  if (screenState == MENUSCREEN) {
    drawMenu();
  } else if (screenState == GAMESCREEN) {
    drawArbolB();
  } else {
    //printlin("Something went wrong!");
  }
}

//                          -----------DISEÑO GRÁFICO DEL MENÚ------------
void drawMenu() {
  
  clear();
  //TÍTULO MENU
  fill(0,255,255,255); //Para que las letras siempre sean de ese color
  String s = "MENU";
  textSize(20);
  text(s, 165, 20);
  
  // CADA BLOQUE DE CÓDIGO IMPLICA EL DISEÑO DE UNA VARIABLE DISTINTA. EL USO DE CADA VARIABLE SE EXPLICA EN EL README.MD DE GITHUB
  
  //VARIABLE SPLIT
  textSize(15);
  text("- Flecha Abajo",10,70);
  String StringSplit = "Split -->";
  text(StringSplit,140,70);
  text(splits,210,70);  //Para que se actualice el valor de la variable en el menú
  text("Flecha Arriba +",280,70);
  
  //VARIABLE BRANCHDEPTH
    text("- Tecla A",10,90);
  String StringBrach = "Branch -->";
  text(StringBrach,140,90);
  text(branchDepth,250,90); //Para que se actualice el valor de la variable en el menú
  text("Tecla D +",280,90);
  
  //VARIABLE ANCHURA
    text("- Tecla Z",10,110);
  String StringAnchura = "Anchura -->";
  text(StringAnchura,140,110);
  text(anchura,250,110); //Para que se actualice el valor de la variable en el menú
  text("Tecla C +",280,110);
  
  // VARIABLE LONGITUD
    text("- Tecla Q",10,130);
  String StringLongitud = "Longitud -->";
  text(StringLongitud,140,130);
  text(longitud,250,130); //Para que se actualice el valor de la variable en el menú
  text("Tecla E +",280,130);
  
  //VARIABLE VARIABILIDADSPLIT
    text("- Tecla T",10,150);
  String StringVarSplit = "varSplits -->";
  text(StringVarSplit,140,150);
  text(variabilidadSplits ,250,150); //Para que se actualice el valor de la variable en el menú
  text("Tecla U +",280,150);
  
  //VARIABLE angleSplit
    text("- Flecha izq",10,170);
  String StringangleSplit = "angleSplit -->";
  text(StringangleSplit,120,170);
  text(angleSplit ,230,170); //Para que se actualice el valor de la variable en el menú
  text("Flecha der +",300,170);
  
  //VARIABLE longitudPlantas
    text("- Tecla G",10,190);
  String StringlongitudPlantas = "longitudPlantas -->";
  text(StringlongitudPlantas,110,190);
  text(longitudPlantas ,260,190); //Para que se actualice el valor de la variable en el menú
  text("Tecla J +",300,190);
  
  //VARIABLE cambioRotacion
    text("- Tecla V",10,210);
  String StringCambioRotacion = "CambioRotacion -->";
  text(StringCambioRotacion,110,210);
  text(cambioRotacion ,260,210); //Para que se actualice el valor de la variable en el menú
  text("Tecla N +",300,210);
  
  //VARIABLE nivelesVecinos
    text("- Tecla I",10,230);
  String StringnivelesVecinos = "NivelesVecino -->";
  text(StringnivelesVecinos,110,230);
  text(nivelesVecinos ,260,230); //Para que se actualice el valor de la variable en el menú
  text("Tecla P +",300,230);
  
  //VARIABLE Bhojas (pintar hojas o no)
  // Al ser una variable booleana controlamos con un if si mostrar True (S) o False (No)
  String StringBhojas = "Bhojas (pintar hojas) --> ";
  text(StringBhojas,70,260);
  String siOno;
  if(Bhojas) siOno = "Si"; else siOno = "No";   // Al ser una variable booleana controlamos con un if si mostrar True (S) o False (No)
  text(siOno ,260,260);
  
  //COLOR ARBOL
  String ca = "Color del Arbol: ";
 // textSize(20);
  text(ca, 150, 292);
  text("1.- Tono 1 de marrón ", 70, 310);
  text("2.- Tono 2 de marrón ", 70, 330);
  text("3.- Tono 3 de marrón ", 70, 350);
  
  // El siguiente if indicará con una flecha el color seleccionado en cada momento
  if(colorarbol==marron1){
   text("<--", 240, 310); 
  }else if(colorarbol==marron2){
    text("<--", 240, 330);
  }else if(colorarbol==marron3){
    text("<--", 240, 350);
  }
  
  // INICIO DEL ÁRBOL: SI SE PULSA LA R, PASAREMOS A PINTAR EL ÁRBOL
  if(keyPressed==true){
    
    if(key=='r'){
      surface.setSize(1000,1000);
      screenState=1;
    }
}
}

// ---------DISEÑO DEL FUNCIONAMIENTO DEL MENÚ------------
void keyPressed(){  //Cuando se detecte una tecla...
  if(screenState==0){  //Solo se podrán modificar los datos si estamos en el menú. Si se quieren modificar los parámetros  viendo a la vez el árbol, quitar este if.
      
    if(key == CODED){
      
      // VARIABLE SPLITS
     if(keyCode == UP){ //Si se pulsa flecha arriba...
       splits++;  //Incrementa variable splits
       if(splits > 5){  //Para que no supere el valor 5
         splits = 5;
       }
       myShape = new MyShape(0,0,0,0,0,0,anchura,longitud,0); //Se vuelve a dibujar el árbol con los cambios
       raiz = new Raices(0,0,0,0,0,0,anchura*1.2,longitud-0.2*longitud,0);//Se inicializa la raiz
     }
     else if(keyCode == DOWN){ //Si se pulsa flecha abajo...
       splits--; //Decrementa la variable splits
       if(splits < 1){
         splits = 1;
       }
       myShape = new MyShape(0,0,0,0,0,0,anchura,longitud,0);  //Se vuelve a dibujar el árbol con los cambios
       raiz = new Raices(0,0,0,0,0,0,anchura*1.2,longitud-0.2*longitud,0);//Se inicializa la raiz
     }
     
     //La metodología es la misma para el resto de variables.
     
     //VARIABLE angleSplit
     else if(keyCode == LEFT){
       angleSplit-= 0.05;
       if(angleSplit < -PI/2){
         angleSplit = -PI/2;
       }
       myShape.updateAngle(0,0,0);
     }
     else if(keyCode == RIGHT){
       angleSplit+= 0.05;
       if(angleSplit > PI/2){
         angleSplit = PI/2;
       }
       myShape.updateAngle(0,0,0);
     }
     
    } 
    //branchdepth
    else if(key == 'd'){
      branchDepth++;
      if(branchDepth > 7){
         branchDepth = 7;
       }
      myShape = new MyShape(0,0,0,0,0,0,anchura,longitud,0);
      raiz = new Raices(0,0,0,0,0,0,anchura*1.2,longitud-0.2*longitud,0);//Se inicializa la raiz
    } 
    else if(key == 'a'){
      branchDepth--;
      if(branchDepth < 2){
         branchDepth = 2;
       }
      myShape = new MyShape(0,0,0,0,0,0,anchura,longitud,0);
      raiz = new Raices(0,0,0,0,0,0,anchura*1.2,longitud-0.2*longitud,0);//Se inicializa la raiz
    }

    //anchura
    else if(key == 'z'){
      anchura=anchura-5;
      if(anchura < 5){
         anchura = 5;
       }
      myShape = new MyShape(0,0,0,0,0,0,anchura,longitud,0);
      raiz = new Raices(0,0,0,0,0,0,anchura*1.2,longitud-0.2*longitud,0);//Se inicializa la raiz
    }
    else if(key == 'c'){
      anchura=anchura+5;;
      if(anchura >50){
         anchura = 50;
       }
      myShape = new MyShape(0,0,0,0,0,0,anchura,longitud,0);
      raiz = new Raices(0,0,0,0,0,0,anchura*1.2,longitud-0.2*longitud,0);//Se inicializa la raiz
    }
    
    //longitud
    else if(key == 'q'){
      longitud=longitud-5;
      if(longitud < 15){
         longitud = 15;
       }
      myShape = new MyShape(0,0,0,0,0,0,anchura,longitud,0);
      raiz = new Raices(0,0,0,0,0,0,anchura*1.2,longitud-0.2*longitud,0);//Se inicializa la raiz
    }
    else if(key == 'e'){
      longitud=longitud+5;
      if(longitud >70){
         longitud = 70;
       }
      myShape = new MyShape(0,0,0,0,0,0,anchura,longitud,0);
      raiz = new Raices(0,0,0,0,0,0,anchura*1.2,longitud-0.2*longitud,0);//Se inicializa la raiz
    }
    
    //variabilidad
    else if(key == 't'){
      variabilidadSplits--;
      if(variabilidadSplits < 1){
         variabilidadSplits = 1;
       }
      myShape = new MyShape(0,0,0,0,0,0,anchura,longitud,0);
      raiz = new Raices(0,0,0,0,0,0,anchura*1.2,longitud-0.2*longitud,0);//Se inicializa la raiz
    }
    else if(key == 'u'){
      variabilidadSplits++;
      if(variabilidadSplits >5){
         variabilidadSplits = 5;
       }
      myShape = new MyShape(0,0,0,0,0,0,anchura,longitud,0);
      raiz = new Raices(0,0,0,0,0,0,anchura*1.2,longitud-0.2*longitud,0);//Se inicializa la raiz
    }
    
    //longitudPlantas
    else if(key == 'g'){
      longitudPlantas-=2;;
      if(longitudPlantas < 0){
         longitudPlantas = 0;
       }
      myShape = new MyShape(0,0,0,0,0,0,anchura,longitud,0);
      raiz = new Raices(0,0,0,0,0,0,anchura*1.2,longitud-0.2*longitud,0);//Se inicializa la raiz
    }
    else if(key == 'j'){
      longitudPlantas+=2;
      if(longitudPlantas >20){
         longitudPlantas = 20;
       }
      myShape = new MyShape(0,0,0,0,0,0,anchura,longitud,0);
      raiz = new Raices(0,0,0,0,0,0,anchura*1.2,longitud-0.2*longitud,0);//Se inicializa la raiz
    }
    
    //cambioRotacion
    else if(key == 'v'){
      cambioRotacion--;;
      if(cambioRotacion < 0){
         cambioRotacion = 0;
       }
      myShape = new MyShape(0,0,0,0,0,0,anchura,longitud,0);
      raiz = new Raices(0,0,0,0,0,0,anchura*1.2,longitud-0.2*longitud,0);//Se inicializa la raiz
    }
    else if(key == 'n'){
      cambioRotacion++;
      if(cambioRotacion >7){
         cambioRotacion = 7;
       }
      myShape = new MyShape(0,0,0,0,0,0,anchura,longitud,0);
      raiz = new Raices(0,0,0,0,0,0,anchura*1.2,longitud-0.2*longitud,0);//Se inicializa la raiz
    }
    
    //nivelesVecinos
     else if(key == 'i'){
      nivelesVecinos--;;
      if(nivelesVecinos < 0){
         nivelesVecinos = 0;
       }
      myShape = new MyShape(0,0,0,0,0,0,anchura,longitud,0);
      raiz = new Raices(0,0,0,0,0,0,anchura*1.2,longitud-0.2*longitud,0);//Se inicializa la raiz
    }
    else if(key == 'p'){
      nivelesVecinos++;
      if(nivelesVecinos >3){
         nivelesVecinos = 3;
       }
      myShape = new MyShape(0,0,0,0,0,0,anchura,longitud,0);
      raiz = new Raices(0,0,0,0,0,0,anchura*1.2,longitud-0.2*longitud,0);//Se inicializa la raiz
    }
    
    //Bhojas (Pintar hojas o no)
    else if(key == 'h'){ //Pulsando la h, la variable cambia al otro estado booleano.
      if(Bhojas == true){
        Bhojas = false;
      }else Bhojas = true;
    }
    
    //COLOR DEL ARBOL. Se selecciona pulsando el número del color que se quiera
    else if(key == '1'){
      colorarbol=marron1;
    }
    else if(key == '2'){
      colorarbol=marron2;
    }
     else if(key == '3'){
      colorarbol=marron3;
    }
    
    
   // PARA VOLVER A VISUALIZAR EL MENÚ ESTANDO EN EL ÁRBOL, SE PULSA LA M
  }else {
   if(key=='m'){
      surface.setSize(400,400);
      screenState=0;
    } 
  }
}

//-----------CÓDIGO DEL ÁRBOL--------------
MyShape myShape;
Raices raiz;

float angleView = 0;
float distance = 20;

float lengthRatio = 1;
float angleSplit = PI/3;//angulo de division
float splits = 2.0;//divisiones
int variabilidadSplits=4;//lo que puede cambiar el numero de divisiones (0,1--> no cambia, 2--> va de splis+0 a splist+1, 3--> va de splits+0 a splist+2)
int branchDepth = 7;//cuantos niveles hay
int anchura=10;
int longitud=30;
int longitudPlantas=10;//tamaño medio de las plantitas
int cambioRotacion=0;//Este valor se mete en un random para que cambien los angulos del arbol


boolean Bhojas = true;

//Colores que pueden tener el árbol
color marron1=color(141,73,37);
color marron2=color(108, 59, 42);
color marron3=color(41, 26, 17);
color colorarbol=marron1;

 int nivelesVecinos = 0; // Cuantos árboles vecinos tendra el árbol central.

int startTime = 0;
float timeForLastFrame = 0;

//elementos de la camara
float ejez=0;
float ejey=0;

void setup(){
  //Inicialmente el tamaño de ventana (del menú) será el siguiente:
  size(400,400,P3D);
  rectMode(CENTER);
  
  myShape = new MyShape(0,0,0,0,0,0,anchura,longitud,0);//Se inicializa el arbol
  raiz = new Raices(0,0,0,0,0,0,anchura*1.2,longitud-0.2*longitud,0);//Se inicializa la raiz
  
}

/*
*En este metodo, vamos a controlar la camara y es el encargado de llamar al método que dibuja los árboles.
*/
void drawArbolB(){
  
    background(50);//color de fondo
  
  translate(width/2,height*0.9);
  scale(4);
  
  //control de la cámara
  if(key=='d')ejey=ejey-0.01;
  if(key=='a')ejey=ejey+0.01;
  if(key=='w'){
    ejez=ejez-10;
    if(ejez<-400) ejez=-400;
  }
  if(key=='s'){
    ejez=ejez+10;
    if(ejez>700) ejez=700;
  }
  
  camera(0,mouseY-500,ejez+500,0,mouseY-500,0, 0, 1,0);
  rotateY(mouseX*3.14/180/2);
  //fin control de cámara
  
 
 //Control de pintar todos los arboles
 for(int i=-nivelesVecinos; i<=nivelesVecinos;i++){
    for(int j=-nivelesVecinos; j<=nivelesVecinos;j++){
      pushMatrix();
 translate(195*i,0,195*j);
   drawArbol();
  popMatrix();
  
    }
 }
 
 //Vamos a dibujar la superficie del suelo
 color suelo=color(53,104,45);
  fill(suelo);
  drawSuelo(100+200*nivelesVecinos);//dibujamos el suelo verde
  
  //Vamos a dibujar el interior del suelo
  translate(0,100+200*nivelesVecinos+0.2,0);
  color barro=color(78,59,49,150);
   fill(barro);
  box(2*(100+200*nivelesVecinos));//dibujamos el suelo inferior
 }


void drawArbol(){ //Encargado de dibujar el arbol y las raices
     
   fill(colorarbol);// Ponemos el color del árbol
  myShape.drawIt();//dibujamos el arbol

  color hierba=color(53,104,45);
  fill(hierba);
  int zaux=0;//esto lo utilizo para que no sean filas paralelas y vayan cambiando un poco
  
  // Este bucle es el encargado de dibujar toda la hierba del suelo.
  for(int z=-100;z<100;z=z+10){//vamos a pintar hierba en el suelo del arbol
    
    for(int x=-100;x<100;x=x+10){
    pushMatrix();
      if(z%20==0 && x==-100) x=-95;//esto lo utilizo para que no sean filas paralelas y vayan cambiando un poco
      if(x%20==0) zaux=z+5;
      else zaux=z;
      translate(x,0,zaux);
       int tamanoPlanta=longitudPlantas;
       if(x%20==0) tamanoPlanta=int(longitudPlantas+0.5*longitudPlantas); //hacemos que tenga distintos tamaños
       else if(x%25==0) tamanoPlanta=int(longitudPlantas-0.5*longitudPlantas);
    MyShape planta = new MyShape(0,0,0,0,0,0,0.5,tamanoPlanta,branchDepth);
    planta.drawIt();
    if(x>-40 && x<40 && z>-40 && z<40 ) x=x-5;// esto es para que cerca del arbol haya mas plantas
   popMatrix();
   }
 }
 
 // Esta parte se encarga de dibujar las raices.
  color Craiz=color(78,59,49);
   fill(Craiz);
   stroke(0,0,0,0);//es lo que hace que no se dibuje el contorno.
  pushMatrix();
 translate(0,-longitud+0.2*longitud,0);
 raiz.drawIt();//Aquí vamos a dibujar la raíz
  popMatrix();
  
}

//Clase que crea y dibuja cada rama del arbol.
class MyShape{
  
  MyShape[] nextShape; //lista de las ramas

  PVector[] points = new PVector[8];
 
  float baseWidth = 10;
  float topWidth;
  float tall = longitud;
  
  PVector startP;
  PVector endP;
  
  PVector xyzAngles;
  
  int numberDepth;
  int divisiones;
  float cambioshift;
  
  MyShape(float tX, float tY, float tZ, float tAx, float tAy, float tAz, float tBW, float tT, int tN){ //Constructor del arbol
 /*
 *Es el encargado de guardar todos los datos (vértices, ángulos,tamaño,etc) necesario para dibujar posteriormente cada rama del árbol.
 */
    xyzAngles = new PVector(tAx,tAy,tAz);
    
    numberDepth = tN;
    startP = new PVector(tX, tY, tZ);
    endP = new PVector(tX, tY - tT, tZ);
    
    baseWidth = tBW;
    topWidth = baseWidth / 2;
    if(numberDepth == branchDepth){//Cuando estamos en el ultimo nivel, la ramas son mas pequeñas.
      
      tall = tT*0.7;
    }
    
    
    points[0] = new PVector(-baseWidth/2.0, 0,  baseWidth/2.0);
    points[1] = new PVector( baseWidth/2.0, 0,  baseWidth/2.0);
    points[2] = new PVector( baseWidth/2.0, 0, -baseWidth/2.0);
    points[3] = new PVector(-baseWidth/2.0, 0, -baseWidth/2.0);
    
    points[4] = new PVector(-topWidth/2.0, -tall,  topWidth/2.0);
    points[5] = new PVector( topWidth/2.0, -tall,  topWidth/2.0);
    points[6] = new PVector( topWidth/2.0, -tall, -topWidth/2.0);
    points[7] = new PVector(-topWidth/2.0, -tall, -topWidth/2.0);
    
    /*
    * Aquí vamos a calcular los ángulos de rotación segun el número de ramas hijas que haya y llamarlas recursivamente.
    * El número de ramas hijas, puede cambiar para cada rama, segun la variable "variabilidadSplits".
    */
    if(numberDepth < branchDepth){
      divisiones=(int)(splits+random(variabilidadSplits));
      nextShape = new MyShape[divisiones];
      cambioshift = random(cambioRotacion)+1;
      for(int i = 0; i < divisiones; i++){
        float angleShift = i*cambioshift * ((2*PI) / divisiones);
        float angleRot = (2*PI) / (divisiones * 2);
        nextShape[i] = new MyShape(endP.x,endP.y,endP.z,angleSplit,angleRot,xyzAngles.z + angleShift,topWidth,tall,numberDepth+1);
      }
    }

  }
  
  void updateAngle(float tAx, float tAy, float tAz){//Este es el encargado de colocar las ramas en el angulo correcto
    
    xyzAngles = new PVector(tAx,tAy,tAz);
    
    if(numberDepth < branchDepth){
      for(int i = 0; i < divisiones; i++){
        float angleShift = i*cambioshift * ((2*PI) / divisiones);
        float angleRot = (2*PI) / (divisiones * 2);
        nextShape[i].updateAngle(angleSplit,angleRot,xyzAngles.z + angleShift);
      }
    }
  }
  
  void drawIt(){    //Dibujamos cada rama, con los datos calculados en el constructor.
    translate(startP.x,startP.y,startP.z);
    
    rotateZ(xyzAngles.z); 
    rotateX(xyzAngles.x);
    if(Bhojas)//Si Bhojas es true, las ultimas hojas se pintan de verde.
     {
       if(numberDepth == branchDepth)
         fill(0,147,57);
       else
         fill(colorarbol);
       
     }
   
    // bottom
    beginShape();
    vertex(points[0].x,points[0].y,points[0].z);
    vertex(points[1].x,points[1].y,points[1].z);
    vertex(points[2].x,points[2].y,points[2].z);
    vertex(points[3].x,points[3].y,points[3].z);
    endShape(CLOSE);
    
    // top
    beginShape();
    vertex(points[4].x,points[4].y,points[4].z);
    vertex(points[5].x,points[5].y,points[5].z);
    vertex(points[6].x,points[6].y,points[6].z);
    vertex(points[7].x,points[7].y,points[7].z);
    endShape(CLOSE);

    for(int i = 0; i < 4; i++){
      rotateY((2*PI)/4);
      // side          
      beginShape();
      vertex(points[0].x,points[0].y,points[0].z);
      vertex(points[4].x,points[4].y,points[4].z);
      vertex(points[7].x,points[7].y,points[7].z);
      vertex(points[3].x,points[3].y,points[3].z);
      endShape(CLOSE);
    }
    
    
    float temp = map(mouseX,0,width,0,4);
    
    rotateY(xyzAngles.y);
    translate(0,-tall,-tall * (numberDepth+1));
    
    rotateX(-PI/2); 
    
    if(numberDepth < branchDepth){
      for(int i = 0; i < nextShape.length; i++){
        if(nextShape[i] != null){
          nextShape[i].drawIt();// llamamos recursivamente a las hojas hijas para que se pinten.
        }
      }
    }
        
    rotateX(PI/2);
    
    translate(0,tall,tall* (numberDepth+1));
    
    rotateY(-xyzAngles.y);
    rotateX(-xyzAngles.x);
    rotateZ(-xyzAngles.z);
     
    translate(-startP.x,-startP.y,-startP.z);
    
  }
}

 void drawSuelo(int s){//Es donde se dibuja el suelo
   
   beginShape();
    vertex(-s,0,-s);
    vertex(-s,0,s);
     vertex(s,0,s);
    vertex(s,0,-s);
  
    endShape(CLOSE);
 }
 ///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
 
 
 class Raices{//Esta es la clase de la raíz.
  //Funciona igual que la clase del árbol, con algunas diferencias.
  Raices[] nextShape;

  PVector[] points = new PVector[8];
 
  float baseWidth = 10;
  float topWidth;
  float tall = 30;
  
  PVector startP;
  PVector endP;
  
  PVector xyzAngles;
  
  int numberDepth;
  int divisiones;
  
  Raices(float tX, float tY, float tZ, float tAx, float tAy, float tAz, float tBW, float tT, int tN){//Constructor de las raices
 
    xyzAngles = new PVector(tAx,tAy,tAz);
    
    
    numberDepth = tN;

    startP = new PVector(tX, tY, tZ);
    endP = new PVector(tX, tY - tT, tZ);
    
    baseWidth = tBW;
    topWidth = baseWidth / 2;
    tall = tT;
    if(tN==0){//La primera raíz, es muy mequeña para que se oculte dentro del tronco del árbol. Así el 2º nivel, es el nivel visible.
    points[0] = new PVector(-baseWidth/10.0, 0,  baseWidth/10.0);
    points[1] = new PVector( baseWidth/10.0, 0,  baseWidth/10.0);
    points[2] = new PVector( baseWidth/10.0, 0, -baseWidth/10.0);
    points[3] = new PVector(-baseWidth/10.0, 0, -baseWidth/10.0);
    
    points[4] = new PVector(-topWidth/10.0, 1,  topWidth/10.0);
    points[5] = new PVector( topWidth/10.0, 1,  topWidth/10.0);
    points[6] = new PVector( topWidth/10.0, 1, -topWidth/10.0);
    points[7] = new PVector(-topWidth/10.0, 1, -topWidth/10.0);
    topWidth = baseWidth/1.5;
    }
    else{
    points[0] = new PVector(-baseWidth/2.0, 0,  baseWidth/2.0);
    points[1] = new PVector( baseWidth/2.0, 0,  baseWidth/2.0);
    points[2] = new PVector( baseWidth/2.0, 0, -baseWidth/2.0);
    points[3] = new PVector(-baseWidth/2.0, 0, -baseWidth/2.0);
    
    points[4] = new PVector(-topWidth/2.0, tall,  topWidth/2.0);
    points[5] = new PVector( topWidth/2.0, tall,  topWidth/2.0);
    points[6] = new PVector( topWidth/2.0, tall, -topWidth/2.0);
    points[7] = new PVector(-topWidth/2.0, tall, -topWidth/2.0);
    }
    
    if(numberDepth < branchDepth){
      divisiones=3;//Cada raíz, va a tener solo 3 hijas.
      nextShape = new Raices[divisiones];
      for(int i = 0; i < divisiones; i++){
        float angleShift = i * ((2*PI) / divisiones);
        float angleRot = (2*PI) / (divisiones * 2);
        float anguloRaices=PI/3.2; //anglesplit
        nextShape[i] = new Raices(endP.x,endP.y,endP.z,anguloRaices,angleRot,xyzAngles.z + angleShift,topWidth,tall*lengthRatio,numberDepth+1);
      }
    }

  }
  
  void updateAngle(float tAx, float tAy, float tAz){
    
    xyzAngles = new PVector(tAx,tAy,tAz);
    
    if(numberDepth < branchDepth){
      for(int i = 0; i < divisiones; i++){
        float angleShift = i * ((2*PI) / divisiones);
        float angleRot = (2*PI) / (divisiones * 2);
        nextShape[i].updateAngle(angleSplit,angleRot,xyzAngles.z + angleShift);
      }
    }
  }
  
  void drawIt(){    
    translate(startP.x,startP.y,startP.z);
    
    rotateZ(xyzAngles.z); 
    rotateX(xyzAngles.x);
    
    
    // bottom
    beginShape();
    vertex(points[0].x,points[0].y,points[0].z);
    vertex(points[1].x,points[1].y,points[1].z);
    vertex(points[2].x,points[2].y,points[2].z);
    vertex(points[3].x,points[3].y,points[3].z);
    endShape(CLOSE);
    
    // top
    beginShape();
    vertex(points[4].x,points[4].y,points[4].z);
    vertex(points[5].x,points[5].y,points[5].z);
    vertex(points[6].x,points[6].y,points[6].z);
    vertex(points[7].x,points[7].y,points[7].z);
    endShape(CLOSE);

    for(int i = 0; i < 4; i++){
      rotateY((2*PI)/4);
      // side          
      beginShape();
      vertex(points[0].x,points[0].y,points[0].z);
      vertex(points[4].x,points[4].y,points[4].z);
      vertex(points[7].x,points[7].y,points[7].z);
      vertex(points[3].x,points[3].y,points[3].z);
      endShape(CLOSE);
    }
    
    
    rotateY(xyzAngles.y);
    translate(0,tall,-tall * (numberDepth+1));
    
    rotateX(-PI/2); 
    
    if(numberDepth < branchDepth && numberDepth<5){ //Si se pasa de cuatro branch, se deja en 4. Luego será 4+1=5 branch para las raices
      for(int i = 0; i < nextShape.length; i++){
        if(nextShape[i] != null){
          nextShape[i].drawIt();
        }
      }
    }
        
    rotateX(PI/2);
    
    translate(0,-tall,tall* (numberDepth+1));
    
    rotateY(-xyzAngles.y);
    
    rotateX(-xyzAngles.x);
    rotateZ(-xyzAngles.z);
     
    translate(-startP.x,-startP.y,-startP.z);
    
  }
}
