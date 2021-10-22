/*

Autores: 
-Karen Dayana Valencia Correa
-Maria Fernanda Valenzuela Sanchez

Descripción: Remind es un juego que consiste en ayudar a Alegría recorrer un camino,
he ir recolectando bolitas (recuerdos) que se encuentran distribuidas por los niveles
cuidando no tocar al monstruo de la amnesia y así evitando que esté elimine los recuerdos.

Nota: Descargar las librerias minim y sprites que encontrara en la ruta Sketch>Importar biblioteca...>añadir biblioteca

*/


import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;

import sprites.*;
import sprites.maths.*;
import sprites.utils.*;



PImage fondoEscenario;
PImage GameOver;
Sprite caminar;
StopWatch reloj;
float tiempo;
personaje alegria;
Enemigo enemigo;
int escenarios= 0;

ArrayList<Recuerdo> Recuerdos;
int cantRecuerdos = 20;

boton5 musica;
boolean press;


Minim minim;
AudioPlayer musicafondo;

int escenario= 0;
boton[] botones= new boton[20];

void setup() {
  fullScreen();
  fondoEscenario= loadImage("fondoV2.png");
  reloj = new StopWatch();
  caminar=new Sprite(this, "newspritesalegria.png", 8, 1, 0);
  alegria= new personaje((width/2)+20, (height/2)+150);
  enemigo= new Enemigo();
  GameOver=loadImage("gameover.png");

  //recuerdos
  Recuerdos= new ArrayList<Recuerdo>();


  Recuerdos.add(new Recuerdo(110, 120));
  Recuerdos.add(new Recuerdo(110, 170));
  Recuerdos.add(new Recuerdo(160, 120));
  Recuerdos.add(new Recuerdo(110, 650));
  Recuerdos.add(new Recuerdo(110, 600));
  Recuerdos.add(new Recuerdo(160, 650));
  Recuerdos.add(new Recuerdo(1280, 130));
  Recuerdos.add(new Recuerdo(1230, 130));
  Recuerdos.add(new Recuerdo(1280, 180));
  Recuerdos.add(new Recuerdo(1280, 660));
  Recuerdos.add(new Recuerdo(1280, 610));
  Recuerdos.add(new Recuerdo(1230, 660));
  Recuerdos.add(new Recuerdo(880, 500));
  Recuerdos.add(new Recuerdo(540, 500));
  Recuerdos.add(new Recuerdo(880, 270));
  Recuerdos.add(new Recuerdo(545, 270));
  Recuerdos.add(new Recuerdo(250, 500));
  Recuerdos.add(new Recuerdo(253, 420));
  Recuerdos.add(new Recuerdo(1130, 360));
  Recuerdos.add( new Recuerdo(1180, 360));

  minim= new Minim(this);
  musicafondo= minim.loadFile("sonido/audio.mpeg");
  // musicafondo.loop();
  //boton musica
  musica= new boton5 (1250, 140, 50, 50);


  //botones cambio escenario
  botones[1] = new boton (1050, 300, 200, 70, "Iniciar");
  botones[2] = new boton (1050, 400, 200, 70, "Controles");
  botones[3] = new boton (1050, 500, 200, 70, "Créditos");
  botones[8] = new boton (1050, 600, 200, 70, "Salir");
  botones[4] = new boton (600, 300, 150, 50, "audio");
  botones[5] = new boton (616, 660, 150, 50, "Atrás");
  botones[6] = new boton (600, 300, 150, 50, "niveles");
  botones[7] = new boton (800, 660, 150, 50, "Continuar");
  
  botones[17] = new boton (1100, 600, 200, 70, " ");

  //botones despues de elegir personaje
  botones[16] = new boton (50, 6, 130, 35, "Jugar");
  botones[9] = new boton (200, 6, 130, 35, "Inicio");

  //boton circular x
  botones[10]= new boton (1235, 55, 50, 50, "X");

  //botones eleccion personaje
  botones[11] = new boton (70, 230, 200, 250, "Alegría");
  botones[12] = new boton (320, 230, 200, 250, "Tristeza");
  botones[13] = new boton (570, 230, 200, 250, "Desagrado");
  botones[14] = new boton (820, 230, 200, 250, "Furia");
  botones[15] = new boton (1070, 230, 200, 250, "Miedo");
}

void draw() {
  tiempo=(float)reloj.getElapsedTime();
  S4P.updateSprites(tiempo);

  switch(escenario) {
  case 0:
    menu();
    break;
  case 1:
    iniciar();
    break;
  case 2:
    ayuda();
    break;
  case 3:
    personajes();
    break;
  case 4:
    alegria();
    break;
  case 5:
    jugar();
    break;
  case 6:
    GameOver();
    break;
  case 7:
    credit();
    break;
  }
  descseleccion();
}
boolean[] seleccion= new boolean[2];

void mousePressed() { //identifica cuando se hace click izquierdo
  if (mouseButton==LEFT) {
    seleccion[0]= true;
    seleccion[1]= true;
  }
}


void descseleccion() { //despues del primer click ya no contara los siguientes

  if (seleccion[0])
    seleccion[0]= false;
}

void verficarContactoRecuerdoPersonaje() {
  cantRecuerdos = Recuerdos.size();
  int recuerdoAEliminar = -1;
  for (int i = 0; i < cantRecuerdos; i++) {

    Recuerdo recuerdo = Recuerdos.get(i);
    if ( dist(alegria.xP, alegria.yP, recuerdo.x_mas_ancho, recuerdo.y_mas_alto) <= alegria.radio + recuerdo.radio ) {
      recuerdoAEliminar = i;
    }
  }

  if ( recuerdoAEliminar != -1 ) {
    Recuerdos.remove(recuerdoAEliminar);
  }
}
