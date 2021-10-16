import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;

import sprites.*;
import sprites.maths.*;
import sprites.utils.*;


PImage prueba;
Sprite caminar;
StopWatch reloj;
float tiempo=0;
personaje personaje1;
int suelo= 500;
boton5 musica;
boolean press;

Minim minim;
AudioPlayer musicafondo;

int escenario= 0;
boton[] botones= new boton[20];

void setup() {
  fullScreen();
  reloj = new StopWatch();
  caminar=new Sprite(this, "spritesalegria.png", 8, 1, 0);
  personaje1= new personaje(150, 500);

  minim= new Minim(this);
  musicafondo= minim.loadFile("sonido/audio.mpeg");
  // musicafondo.loop();
  //boton musica
  musica= new boton5 (1250, 140, 50, 50);

  //botones cambio escenario
  botones[1] = new boton (1050, 300, 200, 70, "Iniciar");
  botones[2] = new boton (1050, 400, 200, 70, "Opciones");
  botones[3] = new boton (1050, 500, 200, 70, "Créditos");
  botones[8] = new boton (1050, 600, 200, 70, "Salir");
  botones[4] = new boton (600, 300, 150, 50, "audio");
  botones[5] = new boton (616, 660, 150, 50, "atrás");
  botones[6] = new boton (600, 300, 150, 50, "niveles");
  botones[7] = new boton (800, 660, 150, 50, "continuar");

  //botones despues de elegir personaje
  botones[16] = new boton (50, 6, 130, 35, "Jugar");
  botones[9] = new boton (200, 6, 130, 35, "Inicio");

  //boton circular x
  botones[10]= new boton (1235, 55, 50, 50, "X");

  //botones eleccion personaje
  botones[11] = new boton (70, 230, 200, 250, "alegría");
  botones[12] = new boton (320, 230, 200, 250, "tristeza");
  botones[13] = new boton (570, 230, 200, 250, "desagrado");
  botones[14] = new boton (820, 230, 200, 250, "furia");
  botones[15] = new boton (1070, 230, 200, 250, "miedo");
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
    jugar2();
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
