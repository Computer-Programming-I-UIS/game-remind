class boton{
  float posx;
  float posy;
  int ancho;
  int alto;
  boolean mousedentro; 
  String texto;
  PImage botonA;
  PImage botonB;

  
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

class boton2{
  float posx2;
  float posy2;
  float ancho2;
  float alto2;
  boolean mousedentro2; 
  String texto2;


  
  boton2(float A2, float B2, float W2, float H2, String T2){
    posx2= A2;
    posy2= B2;
    ancho2= W2;
    alto2= H2;
    texto2= T2;
  }

  void drawboton2(){ //cuando el mouse esta sobre el boton cambia de color el boton
    
    if(mouseX >= posx2 && mouseX<= posx2 + ancho2 && mouseY >= posy2  && mouseY <= posy2 + alto2){
      mousedentro2 = true;
    }
    else {
      mousedentro2 = false;
    }
    
    if(mousedentro2 == true){ // si el valor en linea() es verdadero 

      fill(#966FEA, 30);
      rect(posx2,posy2,ancho2,alto2);
      fill(0);
      textSize(22);
      textAlign(CENTER,CENTER);
      text(texto2, posx2 + ancho2/2,posy2 + alto2 -22);
    }
    else {
      noStroke();
      fill(#71F9FF, 20);    
      rect(posx2,posy2,ancho2,alto2);
      fill(0);
      textSize(22);
      textAlign(CENTER,CENTER);
      text(texto2, posx2 + ancho2/2,posy2 + alto2 - 22);      
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
