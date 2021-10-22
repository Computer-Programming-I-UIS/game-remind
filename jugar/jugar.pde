
//importamos libreria para sprites
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
//Recuerdo[] Recuerdos= new Recuerdo [20];
ArrayList<Recuerdo> Recuerdos;
int cantRecuerdos = 20;
int y=120;

void setup() {
  fullScreen();
  fondoEscenario= loadImage("fondoV2.png");
  reloj = new StopWatch();
  caminar=new Sprite(this, "newspritesalegria.png", 8, 1, 0);
  alegria= new personaje((width/2)+20, (height/2)+150);
  enemigo= new Enemigo();
  GameOver=loadImage("gameover.png");

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
}

void draw() {

  //background(244,300,60);
  tiempo=(float)reloj.getElapsedTime();
  S4P.updateSprites(tiempo);
  switch(escenarios)
  {
  case 0:
    Iniciar();
    break;
  case 1: 
  pushMatrix();
  translate(683, 384);
  image(GameOver, 0, 0, width, height);
  popMatrix();

  break;
}
  
}

void verficarContactoRecuerdoPersonaje() {
  cantRecuerdos = Recuerdos.size();
  int recuerdoAEliminar = -1;
  for (int i = 0; i < cantRecuerdos; i++) {

    Recuerdo recuerdo = Recuerdos.get(i);
    //circle(alegria.xP, alegria.yP ,alegria.diametro);
    if ( dist(alegria.xP, alegria.yP, recuerdo.x_mas_ancho, recuerdo.y_mas_alto) <= alegria.radio + recuerdo.radio ) {
      recuerdoAEliminar = i;
    }
  }

  if ( recuerdoAEliminar != -1 ) {
    Recuerdos.remove(recuerdoAEliminar);
  }
}
