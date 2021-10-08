
PImage fondoMenu;
PImage D_alegria;
PImage A_alegria;
PImage NoSelec;
PImage Fpersonaje;
PImage prueba;
PImage fondoH;

void loadImages(){

  //imagen iniciar y personajes
  prueba= loadImage ("base.png");
  prueba.resize(width, height);
  
  //imagen menu
  fondoMenu= loadImage("fondomenuP.png");
  fondoMenu.resize(width, height);
  
  fondoH= loadImage("historiafondo.png");
  fondoH.resize(width, height);
  
  //imagen seleccion alegria como personaje 
  D_alegria= loadImage ("alegriapres.png");
  D_alegria.resize(width, height+20);
  //imagen perfil de personajes 
  
    //alegria
    A_alegria= loadImage ("alegriaperfil.png");
    A_alegria.resize(190, 190);
    //personajes bloqueados
    NoSelec= loadImage ("candado.png");
    NoSelec.resize(190, 190);
}


void menu(){
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

void iniciar(){

  image(fondoH, 0, 0);
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
  image(prueba, 0, 0);
  botones[4].drawboton();
  botones[5].drawboton();
  
  if (botones[5].click()){
    escenario= 0;
  }
}

void personajes(){
  image(prueba, 0, 0);
  botones[5].drawboton();
  botones2[1].drawboton2();
  botones2[2].drawboton2();
  botones2[3].drawboton2();
  botones2[4].drawboton2();
  botones2[5].drawboton2();
  
  image(A_alegria, 95, 250);
  
  image(NoSelec, 345, 250);
  image(NoSelec, 595, 250);
  image(NoSelec, 845, 250);
  image(NoSelec, 1095, 250);
  if (botones[5].click()){
    escenario= 0;
  }
  
  if(botones2[1].click2()){
    escenario= 4;
  }
}


void alegria(){
  image(D_alegria, 0, 0); 
  botones3[0].drawboton3();
  botones3[1].drawboton3();
  botones4[0].drawboton4();
  
  if(botones3[1].click3()){
    escenario= 0;
  }
  if(botones4[0].click4()){
    escenario=3;
  }
  if(botones3[0].click3()){
    escenario= 5;
  }
}

void jugar2() //escenario 5
{
  background(178,245,100);
  jugar();
}

  
