//----------------------------------------------------------------------------------------------------------Declaración de variables
int pantalla=0;

PFont font1;
PImage p1;
PImage p2;
PImage p3;
PImage p4;
PImage p5;
PImage p6;

PImage sp1;
PImage f1;
PImage f2;
PImage f3;
PImage cursor;
//----------------------------------------------------------------------------------------------------------V. Personajes
comidita c1;
comidita c2;
comidita c3;
comidita c4;
comidita c5;
comidita c6;
comidita j1;
comidita j2;


//---------------------------------------------------------------------------------------------------------V. Combate
int jugador1;
int jugador2;
int turno = 1;
int vida = 100;
int contador1 = 0;
int contador2 = 0;
int ganador = 0;

//---------------------------------------------------------------------------------------------------Descargar librería para audio
import ddf.minim.*;

Minim soundengine;
AudioSample sonido1;


//-----------------------------------------------------------------------------------------------------Personajes
void c1 (){
//----------------------------------------------------------------------------------P.HELADITO
  p1 = loadImage("Heladito.png");
 
}

void c2 (){ //-----------------------------------------------------------------P.GALLETITA
 p2 = loadImage("Donita.png"); 
 
}


void c3 (){//-------------------------------------------------------------P.DONITA
p3 = loadImage("Galletita.png");

}

void c4() { //----------------------------------------------------------------------------------------------------P. PAPITAS
p4 = loadImage("Pizzita.png");
}

void c5() { //---------------------------------------------------------------------P. PIZZITA
p5 = loadImage("Papitas.png");
}

void c6() {//---------------------------------------------------------P. TAQUITO
p6 = loadImage("Taquito.png");  
}

 void setup (){ //------------------------------------------------------------------------------------------Especifica nombre, vida, golpe de personajes e imágenes
  size (850, 600);
sp1 = loadImage("menu.jpg");
f1 = loadImage("fondo1.png");
f2 = loadImage("fondo2.jpg");
f3 = loadImage("fondo3.jpg");
p1 = loadImage("Heladito.png");
p2 = loadImage("Donita.png");
p3 = loadImage("Galletita.png");
p4 = loadImage("Pizzita.png");
p5 = loadImage("Papitas.png");
p6 = loadImage("Taquito.png");   

    c1 = new comidita("Heladito",100,8,0);
    c2 = new comidita("Donita",100,6,1);
    c3 = new comidita("Galletita",100,7,2);
    c4 = new comidita("Pizzita",100,6,3);
    c5 = new comidita("Papitas",100,7,4);
    c6 = new comidita("Taquito",100,8,4);
 
//-----------------------------------------------------------------------------------------------Cursor    
cursor(CROSS);
cursor = loadImage("boca.png");


//---------------------------------------------------------------------------------------------Audio que reproduce al hacer click
soundengine = new Minim(this);
sonido1 = soundengine.loadSample("eructo.wav", 1024);

 } 
 
 
 //----------------------------------------------------------------------------------------------------funciones de cada pantalla
void draw (){ 
{
  if(mouseX < 100) {
    cursor(cursor, 0, 0);
  } 
}
 switch (pantalla){
     case 0: //------------------------------------------------------------------------------------------------------INTRO

 
 image(f1 , 0 , 0);
 
 
     font1 = loadFont ("ComicSansMS-Bold-48.vlw");
   textFont (font1, 100);
     fill(random(200,87),random(10,136),3);
     text("Chatarra's",100,220);
     
   font1 = loadFont ("ComicSansMS-Bold-48.vlw");
   textFont (font1, 150);
     fill(random(136,100),random(90,109),random(189,160));
     text("BATTLE", 200,350);
     
    font1 = loadFont ("ComicSansMS-Bold-48.vlw");
   textFont (font1, 40);
     fill(255,255,255);
     text("Presiona ENTER para comenzar la batalla", 40,500);
    
    
       if (keyPressed){
       if (key==ENTER);
       pantalla = 1;
      
}
break;

  case 1://-----------------------------------------------------------------------------------------------------------------------INSTRUCCIONES
     f3 = loadImage("fondo3.jpg");
    image(f3 , 0 , 0);
    
     textSize(90);
     fill(#A20098);
     text("Instrucciones", 150,120);
     textSize (50);
     fill (random (255));
     text ("Jugador 1", 65, 230);
     textSize (50);
     fill (random (255));
     text ("Jugador 2", 555, 230);
     textSize (40);
     fill (255);
     text ("Golpea con tecla A", 20, 290);
     textSize (40);
     fill (255);
     text ("Golpea con tecla J", 485, 290);
      textSize (40);
     fill (random (112,153));
     text ("Da Click a la pantalla para continuar", 90, 500);
     
     
     if (mousePressed){
         pantalla = 2;
         sonido1.trigger();
       }
       break;
       
       case 2: //--------------------------------------------------------------------------------------------------------HISTORIA
    f3 = loadImage("fondo3.jpg");
    image(f3 , 0 , 0);
    
     textFont (font1, 30);
     fill(random (112,153));
     text("Hay un gran mundo de comidas deliciosas donde", 95,80);
     
     textFont (font1, 30);
     fill(random (112,153));
     text("existen las chatarras, que buscan conquistar", 107,120);
     
      textFont (font1, 30);
     fill(random (112,153));
     text("un paladar exigente. Provenientes de distintas", 97,160);
     
      textFont (font1, 30);
     fill(random (112,153));
     text("cocinas y de distintos sabores; dulces contra saladas.", 50,200);
     
      textFont (font1, 30);
     fill(random (112,153));
     text("Todas ellas luchan por el título de la mas deliciosa", 75,240);
     
      textFont (font1, 50);
     fill(random (112,153));
     text("¡La fuerza no lo es todo!", 140,320);
     
      textFont (font1, 70);
     fill(random (112,153));
     text("¡Que gane el más sabroso!", 10,480);
     
     textFont (font1, 30);
     fill (255);
     text ("Presiona ENTER para escoger tu comida", 140, 570);
           
        if (keyPressed){
          if (key== ENTER);
         pantalla = 3;
       }
       break;
       
  case 3://--------------------------------------------------------------------------------------------Selecionar jugador 1
    
    
    image(sp1 , 0 , 0);
    
    pushMatrix();//-----------------------------------------------------------------------------------P. HELADITO
    scale(.15);
    image(p1,1200,1470);
    popMatrix();
    
    pushMatrix();//-----------------------------------------------------------------------------------------P. DONITA
    scale(.15);
    image(p2,2700,1500);
    popMatrix();
    
    pushMatrix();//-----------------------------------------------------------------------------------P. GALLETITA
    scale(.15);
    image(p3,4200,1500);
    popMatrix();
    
    pushMatrix();//---------------------------------------------------------------------------------------------P. PIZZITA
    scale(.15);
    image(p4,1200,2500);
    popMatrix();
    
    pushMatrix();//---------------------------------------------------------------------------------------------P. PAPITAS
    scale(.15);
    image(p5,2700,2500);
    popMatrix();
    
    pushMatrix();//---------------------------------------------------------------------------------------------P. TAQUITO
    scale(.15);
    image(p6,4200,2500);
    popMatrix();
    
    
    
    //--------------------------------------------------------------------------------Texto
     textSize (40);
     fill (255);
     text ("¡Escoge tu comida para combatir!", 120, 550);
     textSize (30);
     fill (255);
     text ("1", 200, 330);  
     textSize (30);
     fill (255);
     text ("2", 430, 330);
      textSize (30);
     fill (255);
     text ("3", 660, 330);
       textSize (30);
     fill (255);
     text ("4", 200, 480);
       textSize (30);
     fill (255);
     text ("5", 430, 480);
       textSize (30);
     fill (255);
     text ("6", 660, 480);
     
    //------------------------------------------------------------------Para escoger personaje       
        
  if(keyPressed){
      if(key == '1'){
      j1 = c1;
      jugador1 = 0;
      pantalla = 4;
      }
      }
      
  if(keyPressed){
      if(key == '2'){
      j1 = c2;
      jugador1 = 1;
      pantalla = 4;
      }
      }
      
  if(keyPressed){
      if(key == '3'){
      j1 = c3;
      jugador1 = 2;
      pantalla = 4;
      }
      }
      
      if(keyPressed){
      if(key == '4'){
      j1 = c4;
      jugador1 = 3;
      pantalla = 4;
      }
      }
      
      
      if(keyPressed){
      if(key == '5'){
      j1 = c5;
      jugador1 = 4;
      pantalla = 4;
      }
      }
      
      if(keyPressed){
      if(key == '6'){
      j1 = c6;
      jugador1 = 5;
      pantalla = 4;
      }
      }
     
   break;
  
    
//-------------------------------------------------------------------------------------------------SELECCION PERSONAJE 2
    case 4:
     
    image(sp1 , 0 , 0);
   
   
    pushMatrix();//-----------------------------------------------------------------------------------P. HELADITO
    scale(.15);
    image(p1,1200,1470);
    popMatrix();
    
    pushMatrix();//-----------------------------------------------------------------------------------------P. DONITA
    scale(.15);
    image(p2,2700,1500);
    popMatrix();
    
    pushMatrix();//-----------------------------------------------------------------------------------P. GALLETITA
    scale(.15);
    image(p3,4200,1500);
    popMatrix();
    
    pushMatrix();//---------------------------------------------------------------------------------------------P. PIZZITA
    scale(.15);
    image(p4,1200,2500);
    popMatrix();
    
    pushMatrix();//---------------------------------------------------------------------------------------------P. PAPITAS
    scale(.15);
    image(p5,2700,2500);
    popMatrix();
    
    pushMatrix();//---------------------------------------------------------------------------------------------P. TAQUITO
    scale(.15);
    image(p6,4200,2500);
    popMatrix();
   
   
   
   //--------------------------------------------------------------------------------Texto  
    textSize (40);
     fill (255);
     text ("¡Escoge tu comida para combatir!", 120, 550);
     textSize (30);
     fill (255);
     text ("z", 200, 330);  
     textSize (30);
     fill (255);
     text ("x", 430, 330);
      textSize (30);
     fill (255);
     text ("c", 660, 330);
       textSize (30);
     fill (255);
     text ("v", 200, 480);
       textSize (30);
     fill (255);
     text ("b", 430, 480);
       textSize (30);
     fill (255);
     text ("n", 660, 480);
     
     
    //------------------------------------------------------------------Para escoger personaje             
  if(keyPressed){
      if(key == 'z'){
      j2 = c1;
      jugador2 = 0;
      pantalla = 5;
      }
      }
      
  if(keyPressed){
      if(key == 'x'){
      j2 = c2;
      jugador2 = 1;
      pantalla = 5;
      }
      }
      
  if(keyPressed){
      if(key == 'c'){
      j2 = c3;
      jugador2 = 2;
      pantalla = 5;
      }
      }
      
  if(keyPressed){
      if(key == 'v'){
      j2 = c4;
      jugador2 = 3;
      pantalla = 5;
      }
      }
      
      
  if(keyPressed){
      if(key == 'b'){
      j2 = c5;
      jugador2 = 4;
      pantalla = 5;
      }
      }
      
  if(keyPressed){
      if(key == 'n'){
      j2 = c6;
      jugador2 = 5;
      pantalla = 5;
      }
      }
     
   break;


 //-----------------------------------------------------------------------------------------------------------------PANTALLA COMBATE
  case 5:
  
    image(f2 , 0 , 0);
    
   textSize(25);
  fill(0);   
  text("Jugador 1",75,95);
   textSize(25);
  fill(0);   
  text("Jugador 2",650,95);
  
  
  
  
//--------------------------------------------Colocacion Jugador 1
  if(jugador1 == 0){
    pushMatrix();
    scale(.5);
   image(p1,150,400);
    popMatrix();
    }
    
  if(jugador1 == 1){
    pushMatrix();
    scale(.5);
    image(p2,150,400);
    popMatrix();
    }
    
  if(jugador1 == 2){
    pushMatrix();
    scale(.5);
    image(p3,150,400);
    popMatrix();
    }
    
  if(jugador1 == 3){
    pushMatrix();
    scale(.5);
    image(p4,150,400);
    popMatrix();
    }
  
  if(jugador1 == 4){
    pushMatrix();
    scale(.5);
    image(p5,150,400);
    popMatrix();
    }
    
  if(jugador1 == 5){
    pushMatrix();
    scale(.5);
    image(p6,150,400);
    popMatrix();
    }
 //-----------------------------------------------------------------------------------------------------------------------J2   
 
    if(jugador2 == 0){
     pushMatrix();
    scale(.5);
   image(p1,1150,400);
    popMatrix();
    }
    
  if(jugador2 == 1){
   pushMatrix();
    scale(.5);
    image(p2,1100,400);
    popMatrix();
    }
    
  if(jugador2 == 2){
   pushMatrix();
    scale(.5);
    image(p3,1100,400);
    popMatrix();
    }
    
  if(jugador2 == 3){
    pushMatrix();
    scale(.5);
    image(p4,1100,400);
    popMatrix();
    }
  
  if(jugador2 == 4){
    pushMatrix();
    scale(.5);
    image(p5,1100,400);
    popMatrix();
    }
    
  if(jugador2 == 5){
    pushMatrix();
    scale(.5);
    image(p6,1000,400);
    popMatrix();
    }
    
//------------------------------------------------------------------------------turnos


    if(turno == 1){
    if(keyPressed){
      if(key == 'a'){
      j2.vida = j2.vida - j1.golpe;
      turno = 1;
      contador1++;
      }
      
      else if(key == 'j'){
      j2.vida = j2.vida - j1.golpe;
      turno = 1;
      contador1++;
      }
      
      if(j2.vida <= 0){
      pantalla = 6;
      }
      }
      }
  
    if(turno == 2){
    if(keyPressed){
      if(key == 'a'){
      j1.vida = j1.vida - j2.golpe;
      turno= 0 ;
      contador2++;
      }
      
      else if(key == 'j'){
      j1.vida = j1.vida - j2.golpe;
      turno = 0;

      }
      if(j1.vida <= 0){
      pantalla = 6;
      }
    }
    
    
    if (keyPressed){
          if (key == ENTER);
         pantalla = 6;
       }
    }
       break;
  
//---------------------------------------------------------------------------------------------PANTALLA CONCLUSIÓN
case 6:

    image(f1 , 0 , 0);
    
      textSize (130);
     fill (random (255));
     text ("¡GANASTE!", 70, 280);
      // textSize (65);
     //fill (255);
     //text ("Jugador 1", 450, 360);
     textSize (30);
     fill (#950082);
     
     
     text ("Presiona CLICK para regresar al menú principal", 100, 480);
     
     if (mousePressed){
         pantalla = 0;
         sonido1.trigger();
       }
    
     }

 }