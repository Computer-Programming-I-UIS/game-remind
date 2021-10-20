
final static int normal = 0;
final static int derecha = 1;
final static int izquierda=2;
final static float der_margen =400;
final static float izq_margen =32;
final static float ver_margen =40;
//final static float gravedad =0.6;
//final static float salto = 14;
//final static float vel= 5;
final static float size_sprite1=32;
int velocidad;
int xx;
int x=0, y=0;
float view_x=0;
float view_y=0;

PImage [] personaje;
PImage recuerdo;
ArrayList <Sprite1> plataforma;
Player player;
Fondo lv1;

void setnivel()
{
  personaje= new LeerArchivo (100, 100, "sad.jpg").getHoja();
  player=new Player (personaje [0]);
  player.center.x= 65;
  player.center.y = 100;
  lv1 = new Fondo ("Libro1.csv", "Tileset32.png", 32);
  xx=25;
  velocidad=1;
  recuerdo= loadImage("recuerdo.png");
}
/*void draw()
 {
 background(178,245,100);
 jugar();
 }*/

void jugar()
{
  scroll();
  lv1.mostrar();
  jugador.controles();
  jugador.moveP();
  Player player;
  enemigo.draw();

  
  cantRecuerdos = misRecuerdos.size();

  for (int i = 0; i < cantRecuerdos; i++) {
    Recuerdo recuerdo = misRecuerdos.get(i);
    recuerdo.draw();
  }


  verficarContactoRecuerdoPersonaje();//verifica en que momento chocan el recuerdo y el personaje
  if ( dist(jugador.xP, jugador.yP, enemigo.x_mas_ancho, enemigo.y_mas_alto) <= jugador.radio + enemigo.radio ) {
      escenario= 6;
    }
}
void scroll()
{
  setnivel();
  float der_dimension= view_x + width - der_margen;
  if (jugador.pospersonaje() > der_dimension)
  {
    if (view_x <3700)
      view_x += player.getRight () - der_dimension;
  }
  float izq_dimension = view_x - izq_margen;
  if (jugador.pospersonaje() < izq_dimension)
  {
    if (view_x > 0)
      view_x -= izq_dimension - player.getLeft();
  }
  translate(view_x, view_y);
}
