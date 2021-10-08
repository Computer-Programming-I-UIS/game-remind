import sprites.*;
import sprites.maths.*;
import sprites.utils.*;

PImage prueba;
Sprite caminar;
StopWatch reloj;
float tiempo=0;
personaje personaje1;
int suelo= 500;

int escenario= 0;
boton[] botones= new boton[15];
boton2[] botones2= new boton2[10];
boton3[] botones3= new boton3[2];
boton4[] botones4= new boton4[5];

void setup() {
  fullScreen();
  reloj = new StopWatch();
  caminar=new Sprite(this, "spritesalegria.png", 8, 1, 0);
  personaje1= new personaje(150, 500);

  //botones cambio escenario
  botones[1] = new boton (1050, 400, 180, 70, "Iniciar");
  botones[2] = new boton (1050, 500, 180, 70, "Opciones");
  botones[3] = new boton (1050, 600, 180, 70, "Salir");
  botones[4] = new boton (600, 300, 150, 50, "audio");
  botones[5] = new boton (616, 630, 150, 50, "atrás");
  botones[6] = new boton (600, 300, 150, 50, "niveles");
  botones[7] = new boton (800, 630, 150, 50, "continuar");

  //bootones color invertido
  botones3[0] = new boton3 (50, 6, 130, 35, "Jugar");
  botones3[1] = new boton3 (200, 6, 130, 35, "Inicio");

  botones4[0]= new boton4 (1255, 55, 50, 50, "X");

  //botones seleccion personaje
  botones2[1] = new boton2 (70, 230, 200, 250, "alegría");
  botones2[2] = new boton2 (320, 230, 200, 250, "tristeza");
  botones2[3] = new boton2 (570, 230, 200, 250, "desagrado");
  botones2[4] = new boton2 (820, 230, 200, 250, "furia");
  botones2[5] = new boton2 (1070, 230, 200, 250, "miedo");
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
    opciones();
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
  }
}

void descseleccion() { //despues del primer click ya no contara los siguientes

  if (seleccion[0])
    seleccion[0]= false;
}