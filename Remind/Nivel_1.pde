
final static int normal = 0;
final static int derecha = 1;
final static int izquierda=2;
final static float der_margen =400;
final static float izq_margen =32;
final static float ver_margen =40;
final static float gravedad =0.6;
final static float salto = 14;
final static float vel= 5;
final static float size_sprite1=32;
public float Velocidad = 5;
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
  personaje= new LeerArchivo (100,100,"sad.jpg").getHoja();
  player=new Player (personaje [0]);
  player.center.x= 65;
  player.center.y = 100;
  lv1 = new Fondo ("Libro1.csv","Tileset32.png",32);
  recuerdo= loadImage("recuerdo.png");
}
/*void draw()
{
  background(178,245,100);
  jugar();
}
*/
void jugar()
{
  scroll();
  lv1.mostrar();
  player.mostrar();
  rd();

}
void scroll()
{
  setnivel();
  float der_dimension= view_x + width - der_margen;
  if(player.getRight()> der_dimension)
  {
    if(view_x <3700)
    view_x += player.getRight () - der_dimension;
  }
  float izq_dimension = view_x - izq_margen;
  if(player.getLeft() < izq_dimension)
  {
    if(view_x > 0)
    view_x -= izq_dimension - player.getLeft();
  }
  translate(view_x,view_y);
}
 void rd()
 {
   image(recuerdo,50,20,50,50);
   
 }
