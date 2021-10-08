class recuerd
{
  float x=30, y=0;
float velocidad=2;
  PImage recuerdo;
 void rec()
 {
   recuerdo= loadImage("recuerdo.png");
 
    image(recuerdo,x,y,40,40);
    image(recuerdo,x+370,y);
    y +=3;
    x+=3;
    
    if (y>=450)
    {
      x=random(50,500);
      y=0;
    }   
}
}
