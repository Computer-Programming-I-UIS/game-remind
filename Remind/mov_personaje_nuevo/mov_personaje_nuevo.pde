import sprites.*;
import sprites.maths.*;
import sprites.utils.*;

PImage prueba;
Sprite caminar;
StopWatch reloj;
float tiempo;

void setup(){
  size(1000,400);
  reloj = new StopWatch();
  caminar= new Sprite(this, "prueba1.png",12, 1,0);
  //prueba= loadImage("prueba1.png");
  caminar.setFrameSequence(0,6,0.15);
}

void draw(){
 
 //permite actualizar el tiempo transcurrido funciona con todos los sprites
 tiempo= (float) reloj.getElapsedTime();
 S4P.updateSprites(tiempo);
 background(0);
 scale(0.4);
 //image(prueba, 0, 0);
 pushMatrix();
 translate(150,200);
 caminar.draw();
 popMatrix();
}
