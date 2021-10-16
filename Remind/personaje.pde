class personaje {
  float xP;
  float yP;
  float vely;
  boolean saltando;
  boolean Arr;
  boolean Izq;
  boolean Der;
  
  int ancho = int(0.108*694);
  int alto = int(976*0.108);

  personaje(int _xP, int _yP) {
    xP=_xP;
    yP=_yP;
  }//cierra el constructor
  //boolean up=false,rith=false,left=false;

  void controles() {
    if (keyPressed) {
      if (key ==CODED) {
        if (keyCode==UP ) {
          vely=-80;
          saltando= true;
        }
        if (keyCode==RIGHT  ) {
          xP=xP+30;
        }
        if (keyCode==LEFT) {
          xP=xP-30;
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
