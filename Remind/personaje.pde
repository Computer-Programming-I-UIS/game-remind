class personaje {
  float xP=150;
  float yP= 500;
  float vely;
  boolean saltando;
  boolean Arr;
  boolean Izq;
  boolean Der;
  
  float xP_mas_ancho,yP_mas_alto;
 // = int(0.108*694);int(976*0.108);
  int diametro = 70, radio;

  personaje() {
    radio = diametro/2;
    xP_mas_ancho = xP -(0.108*694/2);
    yP_mas_alto = yP - (976*0.108/2);
  }//cierra el constructor
  //boolean up=false,rith=false,left=false;

  void controles() {
    if (keyPressed) {
      if (key ==CODED) {
        if (keyCode==UP ) {
          vely=-100;
          saltando= true;
        }
        if (keyCode==RIGHT  ) {
          xP=xP+20;
        }
        if (keyCode==LEFT) {
          xP=xP-20;
        }
      }
    }
  }

  void moveP() {
    if (keyPressed && key==CODED )
    {
      if (keyCode==UP) {
        Arr= true;
        Der= false;
        Izq= false;
      }

      if (keyCode==RIGHT  ) {
        Der= true;
        Izq= false;
        Arr= false;
      }
      if (keyCode==LEFT) {
        Izq= true;
        Arr= false;
        Der= false;
      }
    } else {
      caminar.setFrameSequence(0, 0, 0.1);
    }

    if (Arr && !Izq && !Der) {
      caminar.setFrameSequence(0, 1, 3.1);
    }
    if (!Arr &&!Izq && Der) {
      caminar.setFrameSequence(0, 3, 0.04);
    }
    if (!Arr && Izq && !Der) {
      caminar.setFrameSequence(5, 7, 0.04);
    }
    //circle(xP, yP, diametro);
    pushMatrix();
    translate(xP, yP);
    
    scale(0.108);
    caminar.draw();
    
    popMatrix();

    yP= constrain(yP+vely, 400, suelo);
    if (saltando) {
      vely += 40;
      if (y ==suelo)
        saltando = false;

      //for (Sprite1 p : plataforma){
      //  p.mostrar();
      //}
    }
  }
  float pospersonaje()
  {
    return xP;
  }
}
