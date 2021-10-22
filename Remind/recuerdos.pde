class Recuerdo {
  PImage recuerdo1;
  int x, y, ancho = 55, alto = 50;
  int x_mas_ancho, y_mas_alto, diametro = 70, radio;
  //int x, yancho = 55, alto = 50;

  Recuerdo(int _x, int _y) {
    //int _x,int _y
    x= _x;
    y=_y;
    recuerdo1= loadImage("recuerdo.png");
    recuerdo1.resize(ancho, alto);
    x_mas_ancho = x + (ancho/2);
    y_mas_alto = y +(alto/2);
    radio = diametro/2;
  }


  void draw() {

    image(recuerdo1, x, y);

    //fill(255);
    //circle(x + (ancho/2), y +(alto/2), diametro);
  }
}

class Enemigo
{
  float xd,yd, vx,ancho,alto, x_mas_ancho, y_mas_alto, diametro = 20, radio;
  PImage ene1;
  PImage ene2;
  Enemigo()
  {
    xd=110;
    yd=640;
    vx=4;
    ancho=70;
    alto= 80;
    ene1= loadImage("enem.png");
    radio = diametro/2;
  }
  void draw() {
   // enemigoP();
    image(ene1, xd,yd ,ancho ,alto );
    xd=xd+vx;
    if (xd>1280)
    {
      vx=-15;
    }
    if (xd<120)
      vx=15;
  }
}
