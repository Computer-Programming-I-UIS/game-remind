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
  int xd,yd, vx,ancho,alto, x_mas_ancho, y_mas_alto, diametro = 40, radio;
  PImage ene1;
  PImage ene2;
  Enemigo()
  {
    xd=280;
    yd=540;
    vx=4;
    ancho=80;
    alto= 90;
    ene1= loadImage("enem.png");
    x_mas_ancho= int(xd + (ancho/2));
    y_mas_alto= int(yd + (alto/2));
    radio = diametro/2;
  }
  void draw() {
   // enemigoP();
    image(ene1, xd,yd ,ancho ,alto );
    xd=xd+vx;
    if (xd>380)
    {
      vx=-4;
    }
    if (xd<280)
      vx=4;
  }
}
