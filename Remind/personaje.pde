class personaje {
  float xP;
  float yP;
  float xP_mas_ancho, yP_mas_alto;
  int diametro = 40, radio;
  boolean moviendo=false;

  personaje(float x, float y) {
    xP= x;
    yP= y;
    radio = diametro/2;
  }

  void controles() {
    if (keyPressed) {
      if (key ==CODED) {
        moviendo= true;
        if (keyCode==UP ) {
          yP=yP-10;
        }
        if (keyCode==DOWN) {
          yP=yP+10;
        }
        if (keyCode==RIGHT  ) {
          xP=xP+10;
        }
        if (keyCode==LEFT) {
          xP=xP-10;
        }
      }
    }
  }

  void move() {

    if (moviendo==true) {
      if (keyPressed && key==CODED )
      {
        if (keyCode==UP) {
          caminar.setFrameSequence(7, 7, 0.7);
        }
        if (keyCode==DOWN) {
          caminar.setFrameSequence(6, 6, 0.7);
        }

        if (keyCode==RIGHT  ) {
          caminar.setFrameSequence(0, 2, 0.7);
        }
        if (keyCode==LEFT) {
          caminar.setFrameSequence(3, 5, 0.7);
        }
      }
    }
    if (moviendo==false) {
      caminar.setFrameSequence(7, 7, 0.5);
    }

    pushMatrix();
    translate(xP, yP);
    scale(0.1);
    caminar.draw();
    popMatrix();
  }
}
