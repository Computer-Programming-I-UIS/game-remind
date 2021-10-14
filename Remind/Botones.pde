 PImage botonA;
 PImage botonB;

class boton{
  float posx;
  float posy;
  int ancho;
  int alto;
  boolean mousedentro; 
  String texto;
  
  boton(float A, float B, int W, int H, String T){
    posx= A;
    posy= B;
    ancho= W;
    alto= H;
    texto= T;
    botonA= loadImage("boton1.png");
    botonB= loadImage("boton2.png");
  }

  void drawboton(){ //cuando el mouse esta sobre el boton cambia de color el boton
    
    if(mouseX >= posx && mouseX<= posx + ancho && mouseY >= posy  && mouseY <= posy + alto){
      mousedentro = true;
    }
    else {
      mousedentro = false;
    }
    
    if(mousedentro == true){ // si el valor en linea() es verdadero 

      botonB.resize(ancho, alto);
      image(botonB, posx, posy); 
      fill(#C9AE4D);
      textSize(22);
      textAlign(CENTER,CENTER);
      text(texto, posx + ancho/2,posy + alto/3);
    }
    else {

      botonA.resize(ancho, alto);
      image(botonA, posx, posy);    
      fill(#C9AE4D);
      textSize(22);
      textAlign(CENTER,CENTER);
      text(texto, posx + ancho/2,posy + alto/3);      
    }
  }
  boolean click(){ //identifica el click para cambiar de escenario
    if (mousedentro== true && seleccion[0]==true){
      return true;
    }
    else {
      return false;
    }
  }
}

  PImage botonC;
  PImage botonD;

class boton2{
  float posx2;
  float posy2;
  int ancho2;
  int alto2;
  boolean mousedentro2; 
  String texto2;


  
  boton2(float A2, float B2, int W2, int H2, String T2){
    posx2= A2;
    posy2= B2;
    ancho2= W2;
    alto2= H2;
    texto2= T2;
    botonC= loadImage("boton3.png");
    botonD= loadImage("boton4.png");
  }

  void drawboton2(){ //cuando el mouse esta sobre el boton cambia de color el boton
    
    if(mouseX >= posx2 && mouseX<= posx2 + ancho2 && mouseY >= posy2  && mouseY <= posy2 + alto2){
      mousedentro2 = true;
    }
    else {
      mousedentro2 = false;
    }
    
    if(mousedentro2 == true){ // si el valor en linea() es verdadero 
      
      botonD.resize(ancho2+40, alto2+40);
      image(botonD, posx2, posy2); 
      fill(0);
      textSize(22);
      textAlign(CENTER,CENTER);
      text(texto2, posx2 + ancho2-80,posy2 + alto2 -20);
    }
    else {
      
      botonC.resize(ancho2+40, alto2+40);
      image(botonC, posx2, posy2); 
      fill(0);
      textSize(22);
      textAlign(CENTER,CENTER);
      text(texto2, posx2 + ancho2-80,posy2 + alto2 - 20);      
    }
  }
  boolean click2(){ //identifica el click para cambiar de escenario
    if (mousedentro2== true && seleccion[0]==true){
      return true;
    }
    else {
      return false;
    }
  }
}

class boton3{
  float posx3;
  float posy3;
  int ancho3;
  int alto3;
  boolean mousedentro3; 
  String texto3;
  
  boton3(float A3, float B3, int W3, int H3, String T3){
    posx3= A3;
    posy3= B3;
    ancho3= W3;
    alto3= H3;
    texto3= T3;
    botonA= loadImage("boton1.png");
    botonB= loadImage("boton2.png");
  }

  void drawboton3(){ //cuando el mouse esta sobre el boton cambia de color el boton
    
    if(mouseX >= posx3 && mouseX<= posx3 + ancho3 && mouseY >= posy3  && mouseY <= posy3 + alto3){
      mousedentro3 = true;
    }
    else {
      mousedentro3 = false;
    }
    
    if(mousedentro3 == true){ // si el valor en linea() es verdadero 

      botonA.resize(ancho3, alto3);
      image(botonA, posx3, posy3); 
      fill(#C9AE4D);
      textSize(22);
      textAlign(CENTER,CENTER);
      text(texto3, posx3 + ancho3/2,posy3 + alto3/3);
    }
    else {

      botonB.resize(ancho3, alto3);
      image(botonB, posx3, posy3);    
      fill(#C9AE4D);
      textSize(22);
      textAlign(CENTER,CENTER);
      text(texto3, posx3 + ancho3/2,posy3 + alto3/3);      
    }
  }
  boolean click3(){ //identifica el click para cambiar de escenario
    if (mousedentro3== true && seleccion[0]==true){
      return true;
    }
    else {
      return false;
    }
  }
}

//boton con colores invertidos

PImage botonE;
PImage botonF;

class boton4{//boton circular
  float posx4;
  float posy4;
  int ancho4;
  int alto4;
  boolean mousedentro4; 
  String texto4;
  
  boton4(float A4, float B4, int W4, int H4, String T4){
    posx4= A4;
    posy4= B4;
    ancho4= W4;
    alto4= H4;
    texto4= T4;
  }

void drawboton4(){ //cuando el mouse esta sobre el boton cambia de color el boton
    
    if(mouseX >= posx4- ancho4/2 && mouseX<= posx4 + ancho4/2 && mouseY >= posy4 - alto4/2 && mouseY <= posy4 + alto4/2){
      mousedentro4= true;
    }
    else {
      mousedentro4 = false;
    }
    if(mousedentro4== true){
      strokeWeight(5);
      fill(#3143FF);
      ellipse(posx4,posy4,ancho4,alto4);
      fill(0);
      textSize(22);
      textAlign(CENTER,CENTER);
      text(texto4, posx4,posy4-5);
    }
    else{
      strokeWeight(5);
      fill(#0B1798);
      ellipse(posx4,posy4,ancho4,alto4);
      fill(0);
      textSize(22);
      textAlign(CENTER,CENTER);
      text(texto4, posx4,posy4-5);
    }

}
  boolean click4(){ //identifica el click para cambiar de escenario
    if (mousedentro4== true && seleccion[0]==true){
      return true;
    }
    else {
      return false;
    }
  }
}

//boton musica

PImage botonM;
PImage botonS;

class boton5{
  float posx5;
  float posy5;
  int ancho5;
  int alto5;
  boolean mousedentro5; 
  
  boton5(float A5, float B5, int W5, int H5){
    posx5= A5;
    posy5= B5;
    ancho5= W5;
    alto5= H5;
    botonM= loadImage("botonM1.png");
    botonS= loadImage("botonM2.png");
  }

  void drawboton5(){ //cuando el mouse esta sobre el boton cambia de color el boton
     botonM.resize(ancho5, alto5);
       image(botonM, posx5, posy5);
       
    if(mouseX >= posx5 && mouseX<= posx5 + ancho5 && mouseY >= posy5  && mouseY <= posy5 + alto5){
      mousedentro5 = true;
      
    }
    if( mousedentro5 == true)
    {
      musicafondo.pause(); 
      botonS.resize(ancho5, alto5);
      image(botonS, posx5, posy5);
    }
    else if (mouseX >= posx5 && mouseX<= posx5 + ancho5 && mouseY >= posy5  && mouseY <= posy5 + alto5){
      botonM.resize(ancho5, alto5);
       image(botonM, posx5, posy5);
        musicafondo.loop();
        mousedentro5 = false;
    }
    return;
  }
}
