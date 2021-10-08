class personaje {
  int xP;
  int yP;


  personaje(int _xP, int _yP) {
    xP=_xP;
    yP=_yP;
  }//cierra el constructor
  //boolean up=false,donw=false,rith=false,left=false;

  void controles() {
    if (keyPressed) {
      if (key ==CODED) {
        if (keyCode==UP ) {
          yP= yP-5;
        }
        if (keyCode==RIGHT  ) {
          xP=xP+3;
        }
        if (keyCode==LEFT) {
          xP=xP-3;
        }
      }
    }
  }

  void moveP() {
    if (keyPressed && key==CODED )
    {
      if (keyCode==UP ) {
        caminar.setFrameSequence(0, 6, 0.1);
      }

      if (keyCode==RIGHT  ) {
        caminar.setFrameSequence(0, 6, 0.1);
      }
      if (keyCode==LEFT) {
        caminar.setFrameSequence(6, 11, 0.1);
      }
      pushMatrix();
      translate(xP, yP);
      scale(0.4);
      caminar.draw();
      popMatrix();
    }
  }
}
