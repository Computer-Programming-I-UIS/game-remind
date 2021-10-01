
PImage fondoMenu;


void menu(){
  
  fondoMenu= loadImage ("prueba1.jpg");
  fondoMenu.resize(width, height);
  image(fondoMenu, 0, 0);
  boton1.drawboton();
  boton2.drawboton();
  
  if(boton1.click()){
    escenario= 1;
  }
  if(boton2.click()){
    exit();
  }
}

void juego(){
  background(#FA3D3D);
}


  
