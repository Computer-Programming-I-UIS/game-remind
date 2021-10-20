class Recuerdo {
  PImage recuerdo1;
  int x = int(random(0, 900)), y = int(random(0, 500)), ancho = 55, alto = 50;
  int x_mas_ancho, y_mas_alto, diametro = 40, radio;
  //int x, yancho = 55, alto = 50;

  Recuerdo() {
    //int _x,int _y
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
  int xd, vx;
  PImage ene1;
  PImage ene2;
  Enemigo()
  {
    xd=100;
    vx=4;
    ene1= loadImage("enemigo1.png");
    ene2= loadImage("enemigo2.png");
  }
  void draw() {
   // enemigoP();
    image(ene1, xd, 500, 50, 80);
    xd=xd+vx;
    if (xd>500)
    {
      vx=-4;
    }
    if (xd<100)
      vx=4;
  }
}
