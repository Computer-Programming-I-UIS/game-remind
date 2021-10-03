int escenario= 0;
boton[] botones= new boton[15];


void setup(){
  fullScreen(); 
  botones[1] = new boton (1100, 500, 150, 50, "jugar");
  botones[2] = new boton (1100, 570, 150, 50, "opciones");
  botones[3] = new boton (1100, 640, 150, 50, "salir");
  botones[4] = new boton (600, 300, 150, 50, "audio");
  botones[5] = new boton (600, 440, 150, 50, "atrás");
  botones[6] = new boton (600, 300, 150, 50, "niveles");
  botones[7] = new boton (600, 370, 150, 50, "personajes");
  botones[8] = new boton (50, 80, 200, 200, "alegria");
  botones[9] = new boton (70, 80, 150, 50, "jugar");
  botones[10] = new boton (70, 150, 150, 50, "atrás");
}

void draw(){
  switch(escenario){
    case 0:
    menu();
    break;
    case 1: 
    jugar();
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
  }
  descseleccion();
  
}
boolean[] seleccion= new boolean[2];

void mousePressed() { //identifica cuando se hace click izquierdo  
  if(mouseButton==LEFT){
    seleccion[0]= true;
  }
}

void descseleccion(){ //despues del primer click ya no contara los siguientes 
  
  if(seleccion[0])
    seleccion[0]= false;
}
