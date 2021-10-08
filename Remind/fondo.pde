class Fondo
{
  PImage mySprite1[], bgFondo;
  float sizeSprite1;
  Fondo (String name, String tilemap, float size)
  {
    sizeSprite1=size;
    mySprite1= new LeerArchivo (8,5,tilemap).getHoja();
    plataforma = new ArrayList <Sprite1> ();
    
    bgFondo=loadImage("fondo1.jpeg");
    crearPlataforma(name);
  }
  void mostrar()
  {
    image(bgFondo,0,0,width,height);
    for(Sprite1 p: plataforma)
    p.mostrar();
  }
  void crearPlataforma(String archivo)
  {
    String[] lineas= loadStrings(archivo);
    for(int row=0; row< lineas.length; row ++)
    {
      String [] valores = split(lineas [row],";");
      for (int col = 0; col < valores.length; col++)
      {
        int num = obtenerNum(valores[col]);
        if (num < 13)
        {
          Sprite1 s = new Sprite1 (mySprite1[num],num);
          s.center.x= sizeSprite1/2 + col * sizeSprite1;
          s.center.y = sizeSprite1/2 + row * sizeSprite1;
          plataforma.add(s);
        }
        else if(num == 31)
        {
          Sprite1 s = new Sprite1 (mySprite1[13],num);
          s.center.x= sizeSprite1/2 + col * sizeSprite1;
          s.center.y = sizeSprite1/2 + row * sizeSprite1;
          plataforma.add(s);
        }
      }
    }
  }
  int obtenerNum(String txt)
  {
    int num = 0;
    num= Integer.valueOf(txt);
    return num;
  }
}
