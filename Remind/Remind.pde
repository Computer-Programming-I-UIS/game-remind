int escenario= 0;
boton boton1;
boton boton2;

void setup(){
  fullScreen(); 
  boton1 = new boton (1100, 500, 150, 50, "jugar");
  boton2 = new boton (1100, 570, 150, 50, "salir");
}

void draw(){
  switch(escenario){
    case 0:
    menu();
    break;
    case 1: 
    juego();
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
