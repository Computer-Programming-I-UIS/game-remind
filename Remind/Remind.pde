int escenario= 0;
boton[] botones= new boton[15];
boton2[] botones2= new boton2[10];


void setup(){
  fullScreen(); 
  
  //botones cambio escenario
  botones[1] = new boton (1050, 400, 180, 70, "Iniciar");
  botones[2] = new boton (1050, 500, 180, 70, "Opciones");
  botones[3] = new boton (1050, 600, 180, 70, "Salir");
  botones[4] = new boton (600, 300, 150, 50, "audio");
  botones[5] = new boton (600, 440, 150, 50, "atrás");
  botones[6] = new boton (600, 300, 150, 50, "niveles");
  botones[7] = new boton (600, 370, 150, 50, "continuar");
  botones[8] = new boton (50, 6, 130, 35, "Jugar");
  botones[9] = new boton (200, 6, 130, 35, "Inicio");
  
  //botones seleccion personaje
  botones2[1] = new boton2 (70, 80, 200, 250, "alegría");
  botones2[2] = new boton2 (320, 80, 200, 250, "tristeza");
  botones2[3] = new boton2 (570, 80, 200, 250, "desagrado");
  botones2[4] = new boton2 (820, 80, 200, 250, "furia");
  botones2[5] = new boton2 (1070, 80, 200, 250, "miedo");
}

void draw(){
  switch(escenario){
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
    jugar();
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
