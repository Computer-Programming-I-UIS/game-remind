class personaje {
  float xP;
  float yP;
  float vely;
  boolean saltando;
  boolean Arr;
  boolean Izq;
  boolean Der;

  personaje(int _xP, int _yP) {
    xP=_xP;
    yP=_yP;
  }//cierra el constructor
  //boolean up=false,donw=false,rith=false,left=false;

  void controles() {
    if (keyPressed) {
      if (key ==CODED) {
        if (keyCode==UP ) {
          vely=-60;
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
    }
      else{
        caminar.setFrameSequence(0,0,0.1);
      }
      
      if(Arr && !Izq && !Der){
        caminar.setFrameSequence(0, 1, 3.1);
      }
      if(!Arr &&!Izq && Der){
        caminar.setFrameSequence(0, 3, 0.1);
      }
      if(!Arr && Izq && !Der){
        caminar.setFrameSequence(5, 7, 0.1);
      }
      pushMatrix();
      translate(xP, yP);
      scale(0.1);
      caminar.draw();
      popMatrix();
      
      yP= constrain(yP+vely, 400, suelo);
      if(saltando){
        vely += 40;
        if(y >=suelo)
        saltando = false;
      }
      
  }
}
