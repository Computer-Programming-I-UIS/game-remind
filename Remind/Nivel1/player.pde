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
  void cargarSenti()
  {
    timer= 0;
    if( estado == 0)
    {
      saltoDer[0]=personaje[2];
      saltoIzq[0]= personaje[26];
      irIzq[0]= personaje[24];
      irIzq[0]= personaje[25];
      irDer[0]= personaje[0];
      irDer[1]= personaje[1];
      moverDer[0]= personaje[4];
      moverDer[1]= personaje[5];
      moverDer[2]= personaje[6];
      moverDer[3]= personaje[7];
      moverDer[4]= personaje[8];
      moverDer[5]= personaje[9];
      moverDer[6]= personaje[10];
      moverDer[7]= personaje[11];
      moverIzq[0]= personaje[28]; 
      moverIzq[1]= personaje[29];
      moverIzq[2]= personaje[30]; 
      moverIzq[3]= personaje[31]; 
      moverIzq[4]= personaje[32]; 
      moverIzq[5]= personaje[33]; 
      moverIzq[6]= personaje[34];
      moverIzq[7]= personaje[35]; 
     
    }
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
      actual=irDer;
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
