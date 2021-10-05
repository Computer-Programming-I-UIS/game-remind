int escenario= 0;
boton[] botones= new boton[25];


void setup(){
  fullScreen(); 
  botones[1] = new boton (1070, 525, 130, 40, " ");
  botones[2] = new boton (1105, 600, 155, 40, " ");
  botones[3] = new boton (1183, 670, 110, 35, " ");
  botones[4] = new boton (600, 300, 150, 50, "audio");
  botones[5] = new boton (600, 440, 150, 50, "atrás");
  botones[6] = new boton (600, 300, 150, 50, "niveles");
  botones[7] = new boton (600, 370, 150, 50, "personajes");
  botones[8] = new boton (70, 80, 200, 250, "alegría");
  botones[11] = new boton (320, 80, 200, 250, "tristeza");
  botones[12] = new boton (570, 80, 200, 250, "desagrado");
  botones[13] = new boton (820, 80, 200, 250, "furia");
  botones[14] = new boton (1070, 80, 200, 250, "miedo");
  botones[9] = new boton (78, 11, 120, 28, " ");//boton de jugar 2
  botones[10] = new boton (220, 3, 130, 40, " ");// boton de inicio
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
