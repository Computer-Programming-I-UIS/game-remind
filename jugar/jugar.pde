
//importamos libreria para sprites
import sprites.*;
import sprites.maths.*;
import sprites.utils.*;

PImage fondoEscenario;
Sprite caminar;
StopWatch reloj;
float tiempo;
personaje alegria;
int escenarios= 0;

void setup() {
  fullScreen();
  fondoEscenario= loadImage("fondoV2.png");
  reloj = new StopWatch();
  caminar=new Sprite(this, "newspritesalegria.png", 8, 1, 0);
  alegria= new personaje((width/2)+20, (height/2)+150);

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
  }
    
  
  //

}
