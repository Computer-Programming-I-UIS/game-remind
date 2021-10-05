
PImage fondoMenu;
PImage D_alegria;
PImage A_alegria;


void menu(){
  
  fondoMenu= loadImage ("prueba1.jpg");
  fondoMenu.resize(width, height);
  image(fondoMenu, 0, 0);
  D_alegria= loadImage ("alegriapres.png");
  A_alegria= loadImage ("alegriaperfil.png");
  botones[1].drawboton();
  botones[2].drawboton();
  botones[3].drawboton();
  
  if(botones[1].click()){
    escenario= 1;
  }
  if(botones[3].click()){
    exit();
  }
  if(botones[2].click()){
    escenario= 2;
  }
}

void jugar(){
  background(#464AAD);
  botones[7].drawboton();
  botones[5].drawboton();
  
  if (botones[5].click()){
    escenario= 0;
  }  
  
  if (botones[7].click()){
    escenario= 3;
  }
}

void opciones(){
  background(#464AAD);
  botones[4].drawboton();
  botones[5].drawboton();
  
  if (botones[5].click()){
    escenario= 0;
  }
}

void personajes(){
  background(#464AAD);
  botones[5].drawboton();
  botones[8].drawboton();
  A_alegria.resize(190, 190);
  image(A_alegria, 55, 85);
  if (botones[5].click()){
    escenario= 0;
  }
  
  if(botones[8].click()){
    escenario= 4;
  }
}

void niveles(){
  background(#464AAD);
  botones[5].drawboton();
  
  if (botones[5].click()){
    escenario= 0;
  }    
}

void alegria(){
  D_alegria.resize(width, height);
  image(D_alegria, 0, 0); 
  botones[9].drawboton();
  botones[10].drawboton();
  if(botones[10].click()){
    escenario= 0;
  }
}


  
