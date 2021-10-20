import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;

import sprites.*;
import sprites.maths.*;
import sprites.utils.*;

//recuerdos
ArrayList<Recuerdo> misRecuerdos;
int cantRecuerdos = 10;

PImage prueba;
Sprite caminar;
StopWatch reloj;
float tiempo=0;
personaje jugador;
int suelo= 500;
boton5 musica;
boolean press;

Enemigo enemigo;

Minim minim;
AudioPlayer musicafondo;

int escenario= 0;
boton[] botones= new boton[20];

void setup() {
  fullScreen();
  reloj = new StopWatch();
  caminar=new Sprite(this, "spritesalegria.png", 8, 1, 0);
  jugador= new personaje();
  enemigo= new Enemigo();

  minim= new Minim(this);
  musicafondo= minim.loadFile("sonido/audio.mpeg");
  // musicafondo.loop();
  //boton musica
  musica= new boton5 (1250, 140, 50, 50);

  //recuerdos
  misRecuerdos = new ArrayList<Recuerdo>();
  for (int i = 0; i < cantRecuerdos; i++) {
    Recuerdo recuerdo = new Recuerdo();
    misRecuerdos.add(recuerdo);
  }

  //botones cambio escenario
  botones[1] = new boton (1050, 300, 200, 70, "Iniciar");
  botones[2] = new boton (1050, 400, 200, 70, "Controles");
  botones[3] = new boton (1050, 500, 200, 70, "Créditos");
  botones[8] = new boton (1050, 600, 200, 70, "Salir");
  botones[4] = new boton (600, 300, 150, 50, "audio");
  botones[5] = new boton (616, 660, 150, 50, "Atrás");
  botones[6] = new boton (600, 300, 150, 50, "niveles");
  botones[7] = new boton (800, 660, 150, 50, "Continuar");

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
    jugar2();
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
  cantRecuerdos = misRecuerdos.size();
  int recuerdoAEliminar = -1;
  for (int i = 0; i < cantRecuerdos; i++) {

    Recuerdo recuerdo = misRecuerdos.get(i);

    if ( dist(jugador.xP, jugador.yP, recuerdo.x_mas_ancho, recuerdo.y_mas_alto) <= jugador.radio + recuerdo.radio ) {
      recuerdoAEliminar = i;
    }
  }

  if ( recuerdoAEliminar != -1 ) {
    misRecuerdos.remove(recuerdoAEliminar);
  }
}
