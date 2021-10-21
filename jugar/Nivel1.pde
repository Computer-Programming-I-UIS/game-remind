


void Iniciar() {
  
  pushMatrix();
  translate(683, 384);
  image(fondoEscenario, 0, 0, width, height);
  popMatrix();

  alegria.move();
  alegria.controles();
}
