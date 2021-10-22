void jugar() {
  
  pushMatrix();
  translate(683, 384);
  image(fondoEscenario, 0, 0, width, height);
  popMatrix();

  alegria.move();
  alegria.controles();
  enemigo.draw();
  cantRecuerdos = Recuerdos.size();
  for (int i = 0; i < cantRecuerdos; i++) {
    Recuerdo recuerdo = Recuerdos.get(i);
    recuerdo.draw();
  }
  verficarContactoRecuerdoPersonaje();
  
  verficarContactoRecuerdoPersonaje();//verifica en que momento chocan el recuerdo y el personaje
  if ( dist(alegria.xP, alegria.yP, enemigo.xd, enemigo.yd) <= alegria.radio + enemigo.radio ) {
      escenario= 6;
    }
  
    
}
