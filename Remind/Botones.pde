class boton{
  float posx;
  float posy;
  float ancho;
  float alto;
  boolean mousedentro; 
  String texto;


  
  boton(float A, float B, float W, float H, String T){
    posx= A;
    posy= B;
    ancho= W;
    alto= H;
    texto= T;
  }

  void drawboton(){ //cuando el mouse esta sobre el boton cambia de color el boton
    
    if(mouseX >= posx && mouseX<= posx + ancho && mouseY >= posy  && mouseY <= posy + alto){
      mousedentro = true;
    }
    else {
      mousedentro = false;
    }
    
    if(mousedentro == true){ // si el valor en linea() es verdadero 
      strokeWeight(5);
      fill(#966FEA, 30);
      rect(posx,posy,ancho,alto);
      fill(0);
      textSize(22);
      textAlign(CENTER,CENTER);
      text(texto, posx + ancho/2,posy + alto/3);
    }
    else {
      noStroke();
      fill(#71F9FF, 20);
      rect(posx,posy,ancho,alto);
      fill(0);
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
