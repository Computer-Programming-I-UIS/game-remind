PImage botonA, botonC, botonD, botonB;

class boton {
  float posx;
  float posy;
  int ancho;
  int alto;
  boolean mousedentro2;
  String texto;

  boton(float A, float B, int W, int H, String T) {
    posx= A;
    posy= B;
    ancho= W;
    alto= H;
    texto= T;
    botonA= loadImage("boton1.png");
    botonB= loadImage("boton2.png");
    botonC= loadImage("boton3.png");
    botonD= loadImage("boton4.png");
  }
  boolean mousedentro(){
    if (mouseX >= posx && mouseX<= posx + ancho && mouseY >= posy  && mouseY <= posy + alto) {
      return true;
    } else {
      return false;
    }
  }

  void botonmenu() { //botones cambio escenario

    if (mousedentro() == true) { 

      botonB.resize(ancho, alto);
      image(botonB, posx, posy);
      fill(#C9AE4D);
      textSize(22);
      textAlign(CENTER, CENTER);
      text(texto, posx + ancho/2, posy + alto/3);
    } else {

      botonA.resize(ancho, alto);
      image(botonA, posx, posy);
      fill(#C9AE4D);
      textSize(22);
      textAlign(CENTER, CENTER);
      text(texto, posx + ancho/2, posy + alto/3);
    }
  }
  void Bpersonaje(){//botones eleccion personaje
    
    if (mousedentro() == true) { 

      botonD.resize(ancho+40, alto+40);
      image(botonD, posx, posy);
      fill(0);
      textSize(22);
      textAlign(CENTER, CENTER);
      text(texto, posx + ancho-80, posy + alto -20);
    } else {

      botonC.resize(ancho+40, alto+40);
      image(botonC, posx, posy);
      fill(0);
      textSize(22);
      textAlign(CENTER, CENTER);
      text(texto, posx + ancho-80, posy + alto - 20);
    }
  }
  void BColor(){//botones despues de elegir personaje
    if (mousedentro() == true) { 

      botonA.resize(ancho, alto);
      image(botonA, posx, posy);
      fill(#C9AE4D);
      textSize(22);
      textAlign(CENTER, CENTER);
      text(texto, posx + ancho/2, posy + alto/3);
    } else {

      botonB.resize(ancho, alto);
      image(botonB, posx, posy);
      fill(#C9AE4D);
      textSize(22);
      textAlign(CENTER, CENTER);
      text(texto, posx + ancho/2, posy + alto/3);
    }
  }
  
  void Bcicular(){//boton circular x
    if (mouseX >= posx- ancho/2 && mouseX<= posx + ancho/2 && mouseY >= posy - alto/2 && mouseY <= posy + alto/2) {
      mousedentro2= true;
    } else {
      mousedentro2 = false;
    }
    if (mousedentro2== true) {
      strokeWeight(5);
      fill(#3143FF);
      ellipse(posx, posy, ancho, alto);
      fill(0);
      textSize(22);
      textAlign(CENTER, CENTER);
      text(texto, posx, posy-5);
    } else {
      strokeWeight(5);
      fill(#0B1798);
      ellipse(posx, posy, ancho, alto);
      fill(0);
      textSize(22);
      textAlign(CENTER, CENTER);
      text(texto, posx, posy-5);
    }
  }
  boolean click2() { //identifica el click para cambiar de escenario
    if (mousedentro2== true && seleccion[0]==true) {
      return true;
    } else {
      return false;
    }
  }
  boolean click() { //identifica el click para cambiar de escenario
    if (mousedentro()== true && seleccion[0]==true) {
      return true;
    } else {
      return false;
    }
  }
}

//boton musica

class boton5 {

  float posx5;
  float posy5;
  int ancho5;
  int alto5;

  boton5(float A5, float B5, int W5, int H5) {
    posx5= A5;
    posy5= B5;
    ancho5= W5;
    alto5= H5;
  }
  void sonidoON() {
    PImage botonM;
    botonM= loadImage("botonM1.png");
    botonM.resize(ancho5, alto5);
    image(botonM, posx5, posy5);
  }
  void sonidoOFF() {
    PImage botonS;
    botonS= loadImage("botonM2.png");
    botonS.resize(ancho5, alto5);
    image(botonS, posx5, posy5);
  }
  boolean click5() {
    boolean press = false;
    if (mousePressed) {
      if (mouseX >= posx5 && mouseX<= posx5 + ancho5 && mouseY >= posy5  && mouseY <= posy5 + alto5) {
        press=true;
      }
    }
    return press;
  }
}
