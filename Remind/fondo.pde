class Fondo
{
  PImage mySprite1[], bgFondo;
  float sizeSprite1;
  Fondo (String name, String tilemap, float size)
  {
    sizeSprite1=size;
    mySprite1= new LeerArchivo (8,5,tilemap).getHoja();

    
    bgFondo=loadImage("fondo1.jpeg");

  }
  void mostrar()
  {
    image(bgFondo,683,350,width,height);


  }
  }
 
