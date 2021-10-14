class Player extends Animacion
{
  int vidas, estado, timer;
  boolean enPiso, enPlataforma;
  PImage[] irDer, irIzq, saltoDer, saltoIzq;
  Player(PImage image)
  {
    super(image);
    vidas=3;
    timer=0;
    dir = derecha;
    estado= 0;
    enPiso=false;
    enPlataforma=false;
    irDer= new PImage [2];
    irIzq= new PImage [2];
    moverDer= new PImage [8];
    moverIzq= new PImage [8];
    saltoIzq= new PImage [1];
    saltoDer= new PImage[1];
    actual=saltoDer;  
  }
  @Override
  void seleccionarDireccion()
  {
    if(cambio.x>0)
    dir = derecha;
    else if( cambio.x < 0)
    dir = izquierda;
  }
  void seleccionarImageActual()
  {
    if(dir == derecha)
    {
      if(enPiso)
      actual=irDer; //imagenes 
      else if(!enPlataforma)
      actual=saltoDer;
      else
      actual = moverDer;
    }
    else if (dir == izquierda)
    {
      if(enPiso)
      actual=irIzq;
      else if(!enPlataforma)
      actual=saltoIzq;
      else
      actual = moverIzq;
    }
}
}
