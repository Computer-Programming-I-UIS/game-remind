
PImage fondoMenu;
PImage D_alegria;
PImage A_alegria;
PImage NoSelec;
PImage Fpersonaje;
PImage prueba;

void loadImages(){

  //imagen iniciar y personajes
  prueba= loadImage ("base.png");
  prueba.resize(width, height);
  
  //imagen menu
  fondoMenu= loadImage("fondomenuP.png");
  fondoMenu.resize(width, height);
  
  //imagen seleccion alegria como personaje 
  D_alegria= loadImage ("alegriapres.png");
  D_alegria.resize(width, height);
  //imagen perfil de personajes 
  
    //alegria
    A_alegria= loadImage ("alegriaperfil.png");
    A_alegria.resize(190, 190);
    //personajes bloqueados
    NoSelec= loadImage ("candado.png");
    NoSelec.resize(190, 190);
}


void menu(){//escenario 0 
  loadImages();
  image(fondoMenu, 0, 0);
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


void iniciar(){ //escenario 1
  image(prueba, 0, 0);
  botones[7].drawboton();
  botones[5].drawboton();
  
  if (botones[5].click()){
    escenario= 0;
  }  
  
  if (botones[7].click()){
    escenario= 3;
  }
}

void opciones(){ //escenario 2
  image(prueba, 0, 0);
  botones[4].drawboton();
  botones[5].drawboton();
  
  if (botones[5].click()){
    escenario= 0;
  }
}

void personajes(){ //escenario 3
  image(prueba, 0, 0);
  botones[5].drawboton();
  botones2[1].drawboton2();
  botones2[2].drawboton2();
  botones2[3].drawboton2();
  botones2[4].drawboton2();
  botones2[5].drawboton2();
  
  image(A_alegria, 75, 85);
  
  image(NoSelec, 325, 85);
  image(NoSelec, 575, 85);
  image(NoSelec, 825, 85);
  image(NoSelec, 1075, 85);
  if (botones[5].click()){
    escenario= 0;
  }
  
  if(botones2[1].click2()){
    escenario= 4;
  }
}

void alegria(){ //escenario 4
  image(D_alegria, 0, 0); 
  botones[8].drawboton();
  botones[9].drawboton();
  if(botones[9].click()){
    escenario= 0;
  }
  if(botones[8].click()){
    escenario= 5;
  }
}

void jugar() //escenario 5
{
  background(178,245,100);
  scroll();
  player.mostrar();
}

  
