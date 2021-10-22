
PImage fondoMenu;
PImage D_alegria;
PImage A_alegria;
PImage NoSelec;
PImage Fpersonaje;
PImage prueba1;
PImage fondoH;
PImage ayudaI;
PImage gameov;
PImage creditfondo;

void loadImages() {

  //imagen iniciar y personajes
  prueba1= loadImage ("base.png");
  prueba1.resize(width, height);

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

  ayudaI= loadImage ("menuayuda.png");
  ayudaI.resize(width, height);

  gameov= loadImage("gameover.png");
  gameov.resize(width, height);

  creditfondo= loadImage("fondocreditos.png");
  creditfondo.resize(width, height);
}


void menu() {
  loadImages();
  image(fondoMenu, 0, 0);
  botones[1].botonmenu();
  botones[2].botonmenu();
  botones[3].botonmenu();
  botones[8].botonmenu();
  musica.click5();

  if (mousePressed) {
    if (mouseButton==LEFT) {
      if (mouseX >= 1250 && mouseX<= 1250 + 50 && mouseY >= 140  && mouseY <= 140 + 50) {
        press=!press;
      }
    }
  }
  if (press==false) {
    musica.sonidoOFF();
    if (musicafondo.isPlaying())musicafondo.pause();
  }

  if (press==true) {
    musica.sonidoON();
    if (musicafondo.isPlaying() == false ) {
      musicafondo.play();
      musicafondo.loop();
    }
  }


  if (botones[1].click()) {
    escenario= 1;
  }
  if (botones[8].click()) {
    exit();
  }
  if (botones[2].click()) {
    escenario= 2;
  }
  if (botones[3].click()) {
    escenario= 7;
  }
}

void iniciar() {

  image(fondoH, 0, 0);
  botones[7].botonmenu();
  botones[5].botonmenu();

  if (botones[5].click()) {
    escenario= 0;
  }

  if (botones[7].click()) {
    escenario= 3;
  }
}

void ayuda() {
  image(ayudaI, 0, 0);
  botones[5].botonmenu();

  if (botones[5].click()) {
    escenario= 0;
  }
}

void personajes() {
  image(prueba1, 0, 0);
  botones[5].botonmenu();
  botones[11].Bpersonaje();
  botones[12].Bpersonaje();
  botones[13].Bpersonaje();
  botones[14].Bpersonaje();
  botones[15].Bpersonaje();

  image(A_alegria, 95, 250);

  image(NoSelec, 345, 250);
  image(NoSelec, 595, 250);
  image(NoSelec, 845, 250);
  image(NoSelec, 1095, 250);

  if (botones[5].click()) {
    escenario= 0;
  }

  if (botones[11].click()) {
    escenario= 4;
  }
}


void alegria() {
  image(D_alegria, 0, 0);
  botones[16].BColor();
  botones[9].BColor();
  botones[10].Bcicular();

  if (botones[9].click()) {
    escenario= 0;
  }
  if (botones[10].click2()) {
    escenario=3;
  }
  if (botones[16].click()) {
    escenario= 5;
  }
}

void jugar() //escenario 5
{
  pushMatrix();
  translate(683, 384);
  image(fondoEscenario, 0, 0, width, height);
  popMatrix();

  alegria.move();
  alegria.controles();
  enemigo.draw();
  cantRecuerdos = Recuerdos.size();
  for (int i = 0; i < cantRecuerdos; i++) {
    Recuerdo recuerdo = Recuerdos.get(i);
    recuerdo.draw();
  }
  verficarContactoRecuerdoPersonaje();
  
  verficarContactoRecuerdoPersonaje();//verifica en que momento chocan el recuerdo y el personaje
  if ( dist(alegria.xP, alegria.yP, enemigo.xd, enemigo.yd) <= alegria.radio + enemigo.radio ) {
      escenario= 6;
    }
}

void GameOver()
{
  
  pushMatrix();
  translate(683, 384);
  image(GameOver, 0, 0, width, height);
  popMatrix();

  botones[17].botonmenu();

  if (botones[17].click()) {
    exit();
  }
}

void credit() {
  image(creditfondo, 0, 0);
  botones[5].botonmenu();

  if (botones[5].click()) {
    escenario= 0;
  }
}
